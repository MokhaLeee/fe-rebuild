#include "common.h"
#include "hardware.h"

u16 EWRAM_DATA gPal[0x200];

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

void ApplyPaletteExt(void const * data, int startOffset, int size)
{
	if (size & 0x1F) // size is not a multiple of 32
		CpuCopy16(data, gPal + (startOffset >> 1), size);
	else
		CpuFastCopy(data, gPal + (startOffset >> 1), size);

	EnablePalSync();
}
