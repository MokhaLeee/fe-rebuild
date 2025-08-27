#include "common.h"
#include "hardware.h"

u16 EWRAM_DATA gPal[0x200];

i8 EWRAM_DATA gFadeComponentStep[0x20];
i8 EWRAM_DATA gFadeComponents[0x600];

static bool sPalSyncFlag;

void EnablePalSync(void)
{
    sPalSyncFlag = TRUE;
}

void DisablePalSync(void)
{
    sPalSyncFlag = FALSE;
}

bool CheckePalSync(void)
{
	return sPalSyncFlag;
}
