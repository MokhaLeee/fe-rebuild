#include "common.h"
#include "irq.h"
#include "hardware.h"
#include "proc.h"
#include "bm.h"
#include "utils.h"
#include "game-ctrl.h"

#define LOCAL_TRACE 1

EWRAM_DATA static Func MainFunc;
EWRAM_DATA static u32 main_round_counter;

static void StartGame(void);
static void OnVBlank(void);
static void OnMain(void);
static void SetMainFunc(Func func);
static void RunMainFunc(void);

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
	SetGameTime(0);

	main_round_counter = 0;

	REG_DISPSTAT = DISPSTAT_VBLANK_INT_ENABLE;
	REG_IME = true;

	InitProcs();

	StartGame();

	while (1) {
		main_round_counter++;
		LTRACEF("Main loop %ld", main_round_counter);

		RunMainFunc();
		SoftResetIfKeyCombo();
	}
}

static void StartGame(void)
{
	SetMainFunc(OnMain);
	SetOnVBlank(OnVBlank);

	NewGameController();
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

	Proc_ExecRoot(0);

	if (gBmSt.main_loop_ended) {
		gBmSt.main_loop_ended = false;

		SyncDispIo();
		SyncBgsAndPal();
		ApplyDataMoves();
		SyncHiOam();
	}
}

static void OnMain(void)
{
	RefreshKeySt(gKeySt);

	Proc_ExecRoot(1);

	if (GetGameLock() == 0)
		Proc_ExecRoot(2);

	Proc_ExecRoot(3);
	Proc_ExecRoot(5);
	Proc_ExecRoot(4);

	gBmSt.main_loop_ended = TRUE;
	gBmSt.main_loop_end_scanline = REG_VCOUNT;

	VBlankIntrWait();
}
