#include "common.h"
#include "proc.h"
#include "game-ctrl.h"
#include "title.h"

const struct ProcScr ProcScr_GameController[] = {
	PROC_NAME("GAMECTRL"),
	PROC_MARK(PROC_MARK_GAMECTRL),
	PROC_CALL(StartMainTitle),
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
