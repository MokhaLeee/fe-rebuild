#include "common.h"
#include "proc.h"
#include "test.h"
#include "banim.h"
#include "utils.h"
#include "hardware.h"

#if CONFIG_DEBUG_TEST_EKRMAINMINI

EWRAM_OVERLAY_TEST static struct EkrMainMiniDesc _desc;

EWRAM_OVERLAY_TEST static u16 img_buf[BAS_IMG_MAX_SIZE];
EWRAM_OVERLAY_TEST static u16 pal_buf[0x40];
EWRAM_OVERLAY_TEST static u8 scr_buf[BAS_SCR_MAX_SIZE];
EWRAM_OVERLAY_TEST static u16 oam_buf[BAS_OAM_MAX_SIZE];

struct ProcEkrMainMiniTest {
	PROC_HEADER;

	struct EkrMainMiniDesc *desc;
	int timer;
	bool lock_en;
};

static void EkrMainMiniTest_Init(struct ProcEkrMainMiniTest *proc)
{
	proc->timer = 0;
	proc->lock_en = false;
}

static void EkrMainMiniTest_Start(struct ProcEkrMainMiniTest *proc)
{
	EkrMainMini_SetAnimPosition(proc->desc, 180, 88);
	proc->desc->round_type = ANIM_ROUND_HIT_CLOSE;
	EkrMainMini_UpdateAnim(proc->desc);
}

static void EkrMainMiniTest_Main(struct ProcEkrMainMiniTest *proc)
{
	if (EkrMainMini_CheckBlocking(proc->desc)) {
		if (proc->lock_en == true) {
			// timer triggered
			proc->lock_en = false;
			EkrMainMini_EndBlock(proc->desc);
			return;
		} else {
			// start a timer
			proc->lock_en = true;
			proc->timer = 100;
			return;
		}
	}

	if (EkrMainMini_CheckDone(proc->desc)) {
		if (proc->lock_en == true) {
			// timer triggered
			proc->lock_en = false;
			EkrMainMini_UpdateAnim(proc->desc);
			return;
		} else {
			// start a timer
			proc->lock_en = true;
			proc->timer = 200;
			return;
		}
	}
}

static void EkrMainMiniTest_WaitLock(struct ProcEkrMainMiniTest *proc)
{
	if (proc->lock_en == false) {
		Proc_Break(proc);
		return;
	}

	proc->timer--;
	if (proc->timer <= 0)
		Proc_Break(proc);
}

static void EkrMainMiniTest_OnEnd(struct ProcEkrMainMiniTest *proc)
{
	EndEkrMainMini(proc->desc);
}

static const struct ProcScr ProcScr_EkrMainMiniTest[] = {
	PROC_NAME("EkrMainMiniTest"),
	PROC_ONEND(EkrMainMiniTest_OnEnd),
	PROC_CALL(EkrMainMiniTest_Init),
	PROC_YIELD,
	PROC_CALL(EkrMainMiniTest_Start),

PROC_LABEL(0),
	PROC_YIELD,
	PROC_CALL(EkrMainMiniTest_Main),
	PROC_REPEAT(EkrMainMiniTest_WaitLock),
	PROC_GOTO(0),

PROC_LABEL(99),
	PROC_BLOCK,
	PROC_END
};

void ekrmainmini_test(ProcPtr parent)
{
	struct ProcEkrMainMiniTest *proc;

	proc = SpawnProc(ProcScr_EkrMainMiniTest, parent);
	proc->desc = &_desc;

	NewEfxAnimeDrvProc();

	proc->desc->faction_pal = BANIMPAL_BLUE;
	proc->desc->bid = 3;
	proc->desc->round_type = ANIM_ROUND_TAKING_HIT_CLOSE;
	proc->desc->pos = POS_R;
	proc->desc->oam2_chr = 0x180;
	proc->desc->oam2_pal = 2;
	proc->desc->img_buf = img_buf;
	proc->desc->pal_buf = pal_buf;
	proc->desc->oam_buf = oam_buf;
	proc->desc->scr_buf = scr_buf;
	proc->desc->magicfx_desc = NULL;

	NewEkrUnitMainMini(proc->desc);
}

#endif /* EKRMAINMINI_TEST */
