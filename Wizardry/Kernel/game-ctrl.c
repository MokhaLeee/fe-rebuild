#include "common.h"
#include "proc.h"
#include "game-ctrl.h"
#include "title.h"
#include "test.h"

static void GameCtrl_ExecTest(ProcPtr proc)
{
#if CONFIG_DEBUG_PRINTF_TEST
	kprintf_test();
#endif

#if CONFIG_DEBUG_M4A_TEST
	m4a_test();
#endif

#if CONFIG_DEBUG_BGDISP_TEST
	StartBgDispTest(proc);
#endif
}

const struct ProcScr ProcScr_GameController[] = {
	PROC_NAME("GAMECTRL"),
	PROC_MARK(PROC_MARK_GAMECTRL),
	PROC_YIELD,

	PROC_CALL(GameCtrl_ExecTest),
	PROC_YIELD,

	PROC_BLOCK,
	PROC_END
};

void NewGameController(void)
{
	struct ProcGameCtrl *proc;

	proc = SpawnProc(ProcScr_GameController, PROC_TREE_3);

	proc->next_action = GAME_ACTION_0;
	proc->next_chapter = 0;
	proc->demo_counter = 0;
}
