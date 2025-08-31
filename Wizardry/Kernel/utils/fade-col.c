#include "common.h"
#include "proc.h"
#include "armfunc.h"
#include "hardware.h"

/**
 * Core
 */
struct FadeStepProc {
	/* 00 */ PROC_HEADER;
	/* 29 */ STRUCT_PAD(0x29, 0x4C);
	/* 4C */ Func on_end;
	/* 50 */ STRUCT_PAD(0x50, 0x54);
	/* 54 */ int step;
	/* 58 */ int paluse_timer;
	/* 5C */ int progress;
};

static void ColFade_Init(struct FadeStepProc *proc)
{
	proc->paluse_timer = 0;
	proc->progress = 0;
	proc->on_end = NULL;
}

static bool ColFade_Step(struct FadeStepProc *proc)
{
	proc->paluse_timer += proc->step;
	proc->progress += proc->step;

	if (proc->paluse_timer < 0x10) {
		if (proc->progress != proc->step)
			return TRUE;
	}

	proc->paluse_timer = proc->paluse_timer - 0x10;
	if (proc->progress >= 0x200)
		return FALSE;

	ColorFadeTick();
	SetBackdropColor(0);

	return TRUE;
}

static void ColFade_Loop(struct FadeStepProc *proc)
{
	if (!ColFade_Step(proc)) {
		if (proc->on_end)
			proc->on_end();

		Proc_Break(proc);
	}
}

static const struct ProcScr  ProcScr_FadeStep[] = {
	PROC_MARK(PROC_MARK_PAL_CHG),
	PROC_NAME("FadeStep"),

	PROC_CALL(ColFade_Init),
	PROC_YIELD,

	PROC_CALL(ColFade_Step),
	PROC_REPEAT(ColFade_Loop),

	PROC_END,
};

static void StartFadeStep(int kind, int speed, ProcPtr parent, Func end_callback)
{
	struct FadeKindEnt {
		ProcPtr (* spawn_proc)(const struct ProcScr *scr, ProcPtr parent);
		void (* setup_color_fade)(fi8 component_step);
		int unit;
	};

	static struct FadeKindEnt const table[] = {
		{ SpawnProc,        ColFadeFromBlack,        +1 }, // from black
		{ SpawnProc,        ColFadeToBlack,          -1 }, // to black
		{ SpawnProcLocking, ColFadeFromBlack,        +1 }, // from black locking
		{ SpawnProcLocking, ColFadeToBlack,          -1 }, // to black locking
		{ SpawnProc,        ColFadeFromWhite,        -1 }, // from white
		{ SpawnProc,        ColFadeToWhite,          +1 }, // to white
		{ SpawnProcLocking, ColFadeFromWhite,        -1 }, // from white locking
		{ SpawnProcLocking, ColFadeToWhite,          +1 }, // to white locking
	};

	struct FadeStepProc *proc;
	int component_step;

	proc = table[kind].spawn_proc(ProcScr_FadeStep, parent);

	proc->step = speed;
	proc->on_end = end_callback;

	component_step = proc->step >> 4;

	if (component_step == 0)
		component_step = 1;

	table[kind].setup_color_fade(component_step *table[kind].unit);
}

void EndFadeStep(void)
{
	Proc_EndEach(ProcScr_FadeStep);
}

void Fade_CommonCallBack(void)
{
	SetBlendDarken(0x10);
	SetBlendTargetA(1, 1, 1, 1, 1);
	SetBlendBackdropA(1);
	SetBackdropColor(0);
	SetDispEnable(0, 0, 0, 0, 0);
}

/**
 * Users' func
 */
static void FadeToBlack_OnInit(struct Proc *proc)
{
	gDispIo.win_ct.win0_enable_blend = 1;
	gDispIo.win_ct.win1_enable_blend = 1;
	gDispIo.win_ct.wobj_enable_blend = 1;
	gDispIo.win_ct.wout_enable_blend = 1;

	SetBlendDarken(0);

	SetBlendTargetA(1, 1, 1, 1, 1);
	SetBlendBackdropA(1);

	proc->timer1 = 0x10;
	proc->timer2 = 0;
}

static void FadeFromBlack_OnInit(struct Proc *proc)
{
	gDispIo.win_ct.win0_enable_blend = 1;
	gDispIo.win_ct.win1_enable_blend = 1;
	gDispIo.win_ct.wobj_enable_blend = 1;
	gDispIo.win_ct.wout_enable_blend = 1;

	SetBlendDarken(0x10);

	SetBlendTargetA(1, 1, 1, 1, 1);
	SetBlendTargetB(1, 1, 1, 1, 1);
	SetBlendBackdropA(1);

	proc->timer1 = 0x10;
	proc->timer2 = 0x100;
}

static void FadeToWhite_OnInit(struct Proc *proc)
{
	FadeToBlack_OnInit(proc);
	SetBlendBrighten(0);
}

static void FadeFromWhite_OnInit(struct Proc *proc)
{
	FadeFromBlack_OnInit(proc);
	SetBlendBrighten(0x10);
}

static void FadeToCommon_OnLoop(struct Proc *proc)
{
	if (gDispIo.blend_y == 0x10) {
		Proc_End(proc);
		return;
	}

	proc->timer2 += proc->timer1;

	if (proc->timer2 >= 0x100)
		proc->timer2 = 0x100;

	gDispIo.blend_y = proc->timer2 >> 4;
}

static void FadeFromCommon_OnLoop(struct Proc *proc)
{
	if (gDispIo.blend_y == 0) {
		Proc_End(proc);
		return;
	}

	proc->timer2 -= proc->timer1;

	if (proc->timer2 <= 0)
		proc->timer2 = 0;

	gDispIo.blend_y = proc->timer2 >> 4;
}

static const struct ProcScr ProcScr_FadeToBlack[] = {
	PROC_CALL(FadeToBlack_OnInit),
	PROC_YIELD,

	PROC_REPEAT(FadeToCommon_OnLoop),
	PROC_BLOCK,
};

static const struct ProcScr ProcScr_FadeFromBlack[] = {
	PROC_CALL(FadeFromBlack_OnInit),
	PROC_YIELD,

	PROC_REPEAT(FadeFromCommon_OnLoop),
	PROC_BLOCK,
};

static const struct ProcScr ProcScr_FadeToWhite[] = {
	PROC_CALL(FadeToWhite_OnInit),
	PROC_YIELD,

	PROC_REPEAT(FadeToCommon_OnLoop),
	PROC_BLOCK,
};

static const struct ProcScr ProcScr_FadeFromWhite[] = {
	PROC_CALL(FadeFromWhite_OnInit),
	PROC_YIELD,

	PROC_REPEAT(FadeFromCommon_OnLoop),
	PROC_BLOCK,
};

bool FadeExists(void)
{
	if (Proc_Exists(ProcScr_FadeFromBlack))
		return true;

	if (Proc_Exists(ProcScr_FadeFromBlack))
		return true;

	if (Proc_Exists(ProcScr_FadeFromBlack))
		return true;

	if (Proc_Exists(ProcScr_FadeFromBlack))
		return true;

	return false;
}

void StartFadeToBlack(int q4_speed)
{
	struct Proc *proc = SpawnProc(ProcScr_FadeToBlack, PROC_TREE_3);

	proc->timer1 = q4_speed;
}

void StartFadeFromBlack(int q4_speed)
{
	struct Proc *proc = SpawnProc(ProcScr_FadeFromBlack, PROC_TREE_3);

	proc->timer1 = q4_speed;
}

void StartLockingFadeToBlack(int q4_speed, ProcPtr parent)
{
	struct Proc *proc = SpawnProcLocking(ProcScr_FadeToBlack, parent);

	proc->timer1 = q4_speed;
}

void StartLockingFadeFromBlack(int q4_speed, ProcPtr parent)
{
	struct Proc *proc = SpawnProcLocking(ProcScr_FadeFromBlack, parent);

	proc->timer1 = q4_speed;
}

void StartLockingFadeToWhite(int q4_speed, ProcPtr parent)
{
	struct Proc *proc = SpawnProcLocking(ProcScr_FadeToWhite, parent);

	proc->timer1 = q4_speed;
}

void StartLockingFadeFromWhite(int q4_speed, ProcPtr parent)
{
	struct Proc *proc = SpawnProcLocking(ProcScr_FadeFromWhite, parent);

	proc->timer1 = q4_speed;
}

/**
 * API
 */
void WhileFadeExists(ProcPtr proc)
{
	if (!FadeExists())
		Proc_Break(proc);
}

void StartMidFadeToBlack(void)
{
	StartFadeToBlack(0x10);
}

void StartSlowFadeToBlack(void)
{
	StartFadeToBlack(0x04);
}

void StartFastFadeToBlack(void)
{
	StartFadeToBlack(0x40);
}

void StartMidFadeFromBlack(void)
{
	StartFadeFromBlack(0x10);
}

void StartSlowFadeFromBlack(void)
{
	StartFadeFromBlack(0x04);
}

void StartFastFadeFromBlack(void)
{
	StartFadeFromBlack(0x40);
}

void StartMidLockingFadeToBlack(ProcPtr parent)
{
	StartLockingFadeToBlack(0x10, parent);
}

void StartSlowLockingFadeToBlack(ProcPtr parent)
{
	StartLockingFadeToBlack(0x04, parent);
}

void StartFastLockingFadeToBlack(ProcPtr parent)
{
	StartLockingFadeToBlack(0x40, parent);
}

void StartMidLockingFadeFromBlack(ProcPtr parent)
{
	StartLockingFadeFromBlack(0x10, parent);
}

void StartSlowLockingFadeFromBlack(ProcPtr parent)
{
	StartLockingFadeFromBlack(0x04, parent);
}

void StartFastLockingFadeFromBlack(ProcPtr parent)
{
	StartLockingFadeFromBlack(0x40, parent);
}

void StartSlowLockingFadeToWhite(ProcPtr parent)
{
	StartLockingFadeToWhite(0x04, parent);
}

void StartSlowLockingFadeFromWhite(ProcPtr parent)
{
	StartLockingFadeFromWhite(0x04, parent);
}

void FadeInBlackWithCallBack_Speed04(ProcPtr parent)
{
	StartFadeStep(3, 0x04, parent, Fade_CommonCallBack);
}

void FadeInBlackWithCallBack_Speed08(ProcPtr parent)
{
	StartFadeStep(3, 0x08, parent, Fade_CommonCallBack);
}

void FadeInBlackWithCallBack_Speed10(ProcPtr parent)
{
	StartFadeStep(3, 0x10, parent, Fade_CommonCallBack);
}

void FadeInBlackWithCallBack_Speed20(ProcPtr parent)
{
	StartFadeStep(3, 0x20, parent, Fade_CommonCallBack);
}

void FadeInBlackWithCallBack_Speed40(ProcPtr parent)
{
	StartFadeStep(3, 0x40, parent, Fade_CommonCallBack);
}

void FadeInBlackSpeed04(ProcPtr parent)
{
	StartFadeStep(2, 0x04, parent, NULL);
}

void FadeInBlackSpeed08(ProcPtr parent)
{
	StartFadeStep(2, 0x08, parent, NULL);
}

void FadeInBlackSpeed10(ProcPtr parent)
{
	StartFadeStep(2, 0x10, parent, NULL);
}

void FadeInBlackSpeed20(ProcPtr parent)
{
	StartFadeStep(2, 0x20, parent, NULL);
}

void FadeInBlackSpeed40(ProcPtr parent)
{
	StartFadeStep(2, 0x40, parent, NULL);
}

