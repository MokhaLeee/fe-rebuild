#include "common.h"
#include "proc.h"
#include "game-ctrl.h"
#include "test.h"

struct ProcTester {
	PROC_HEADER;
};

static void Tetser_Init(struct ProcTester *proc)
{
	ForceEnableSounds();
}

static void Tetser_Main(struct ProcTester *proc)
{
#if CONFIG_DEBUG_PRINTF_TEST
	kprintf_test();
#endif

#if CONFIG_DEBUG_BGDISP_TEST
	StartBgDispTest(proc);
#endif

#if CONFIG_DEBUG_SPRITE_TEST
	sprite_test(proc);
#endif
}

static const struct ProcScr ProcScr_Tester[] = {
	PROC_NAME("tester"),
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
