#include "common.h"
#include "hardware.h"
#include "proc.h"
#include "bm.h"
#include "game-ctrl.h"
#include "title.h"
#include "test.h"
#include "sound.h"
#include "constants/songs.h"

static void ForceEnableSounds(void)
{
	gPlaySt.config_bgm_disable = FALSE;
	gPlaySt.config_se_disable = FALSE;
}

static void GameCtrl_Init(ProcPtr proc)
{
	ForceEnableSounds();
}

static void GameCtrl_ExecTest(ProcPtr proc)
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

static void GameCtrl_MainLoop(ProcPtr proc)
{
	int pressed = gKeySt->pressed;

	if (pressed & KEY_BUTTON_A) {
		PlaySe(SONG_6A);
		return;
	}

	if (pressed & KEY_BUTTON_B) {
		PlaySe(SONG_6B);
		return;
	}

	if (pressed & KEY_DPAD_ANY) {
		PlaySe(SONG_66);
		return;
	}
}

const struct ProcScr ProcScr_GameController[] = {
	PROC_NAME("GAMECTRL"),
	PROC_MARK(PROC_MARK_GAMECTRL),
	PROC_YIELD,
	PROC_CALL(GameCtrl_Init),
	PROC_YIELD,

	PROC_CALL(GameCtrl_ExecTest),
	PROC_YIELD,

	PROC_REPEAT(GameCtrl_MainLoop),

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
