#include "common.h"
#include "irq.h"
#include "hardware.h"

int AgbMain(void)
{
	REG_WAITCNT = WAITCNT_SRAM_4
		| WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1
		| WAITCNT_WS1_N_3 | WAITCNT_WS1_S_1
		| WAITCNT_WS2_N_3 | WAITCNT_WS2_S_1
		| WAITCNT_PHI_OUT_NONE
		| WAITCNT_PREFETCH_ENABLE;

	IrqInit();
	io_init();

	REG_DISPSTAT = DISPSTAT_VBLANK_INT_ENABLE;
	REG_IME = true;

#if CONFIG_USE_DEBUG
	kprintf_test();
#endif

	while (1) {

	}

	return 0;
}
