#include "common.h"
#include "test.h"
#include "irq.h"
#include "hardware.h"
#include "proc.h"
#include "bm.h"
#include "utils.h"
#include "game-ctrl.h"
#include "armfunc.h"
#include "m4a.h"
#include "sprite.h"
#include "sprite_anim.h"

#define LOCAL_TRACE 0

EWRAM_DATA static Func MainFunc;

static void StartGame(void);
static void OnVBlank(void);
static void OnMain(void);
static void SetMainFunc(Func func);
static void RunMainFunc(void);

const char *build_version = CONFIG_VERSION;

void AgbMain(void)
{
	REG_WAITCNT = WAITCNT_SRAM_4
		| WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1
		| WAITCNT_WS1_N_3 | WAITCNT_WS1_S_1
		| WAITCNT_WS2_N_3 | WAITCNT_WS2_S_1
		| WAITCNT_PHI_OUT_NONE
		| WAITCNT_PREFETCH_ENABLE;

	IrqInit();
	SetOnVBlank(NULL);

	io_init();
	dprintf(INFO, "[version=%s] build time: %s-%s", CONFIG_VERSION, __DATE__, __TIME__);

	InitRamFuncs();
	SetGameTime(0);

	REG_DISPSTAT = DISPSTAT_VBLANK_INT_ENABLE;
	REG_IME = true;

	/* key */
	InitKeySt(gKeySt);
	RefreshKeySt(gKeySt);

	/* ram funcs */
	InitRamFuncs();

	InitProcs();
	InitSpriteAnims();

	/* sound */
	m4aSoundInit();

	StartGame();

	while (1) {
		RunMainFunc();
		SoftResetIfKeyCombo();
	}
}

static void StartGame(void)
{
	SetMainFunc(OnMain);
	SetOnVBlank(OnVBlank);

#if CONFIG_DEBUG_EXEC_TEXTER
	NewGameTester();
#else
	NewGameController();
#endif
}

static void SetMainFunc(Func func)
{
	MainFunc = func;
}

static void RunMainFunc(void)
{
	if (MainFunc)
		MainFunc();
}

static void OnVBlank(void)
{
	INTR_CHECK = INTR_FLAG_VBLANK;
	IncGameTime();
	m4aSoundVSync();

	Proc_ExecRoot(0);

	if (gBmSt.main_loop_ended) {
		gBmSt.main_loop_ended = false;

		SyncDispIo();
		SyncBgsAndPal();
		ApplyDataMoves();
		SyncHiOam();
	}

	m4aSoundMain();
}

static void OnMain(void)
{
	RefreshKeySt(gKeySt);
	ClearSprites();

	Proc_ExecRoot(1);

	if (GetGameLock() == 0)
		Proc_ExecRoot(2);

	Proc_ExecRoot(3);
	Proc_ExecRoot(5);

	PutSpriteLayerOam(0);

	Proc_ExecRoot(4);

	PutSpriteLayerOam(13);

	gBmSt.main_loop_ended = TRUE;
	gBmSt.main_loop_end_scanline = REG_VCOUNT;

	VBlankIntrWait();
}
