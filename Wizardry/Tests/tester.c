#include "common.h"
#include "proc.h"
#include "hardware.h"
#include "game-ctrl.h"
#include "test.h"
#include "utils.h"
#include "hardware.h"

#if CONFIG_TEST

struct ProcTester {
	PROC_HEADER;
};

static void Tetser_InitDisp(struct ProcTester *proc)
{
	InitBgs(NULL);

	gDispIo.bg0_ct.priority = 0;
	gDispIo.bg2_ct.priority = 1;
	gDispIo.bg1_ct.priority = 2;
	gDispIo.bg3_ct.priority = 3;

	SetBgOffset(0, 0, 0);
	SetBgOffset(1, 0, 0);
	SetBgOffset(2, 0, 0);
	SetBgOffset(3, 0, 0);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);
	TmFill(gBg3Tm, 0);
}

static void Tetser_Init(struct ProcTester *proc)
{
	ForceEnableSounds();
	SetDispEnable(0, 0, 0, 1, 1);
}

static void Tetser_Main(struct ProcTester *proc)
{
#if CONFIG_DEBUG_TEST_PRINTF
	kprintf_test();
#elif CONFIG_DEBUG_TEST_BGDISP
	StartBgDispTest(proc);
#elif CONFIG_DEBUG_TEST_SPRIT
	sprite_test(proc);
#elif CONFIG_DEBUG_TEST_EKRMAINMINI
	ekrmainmini_test(proc);
#endif
}

static const struct ProcScr ProcScr_Tester[] = {
	PROC_NAME("tester"),
	PROC_CALL(Tetser_InitDisp),
	PROC_CALL(Tetser_Init),
	PROC_YIELD,
	PROC_CALL(Tetser_Main),
	PROC_YIELD,
	PROC_BLOCK
};

void NewGameTester(void)
{
	SpawnProc(ProcScr_Tester, PROC_TREE_3);
}

#endif /* TEST */
