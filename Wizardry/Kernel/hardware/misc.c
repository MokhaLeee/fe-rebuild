#include "common.h"
#include "proc.h"
#include "hardware.h"

void SoftResetIfKeyCombo(void)
{
	if (gKeySt->held == (KEY_BUTTON_A + KEY_BUTTON_B + KEY_BUTTON_SELECT + KEY_BUTTON_START))
		SoftReset(GBA_RESET_ALL);
}
