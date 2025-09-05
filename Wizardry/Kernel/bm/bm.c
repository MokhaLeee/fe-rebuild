#include "common.h"
#include "hardware.h"
#include "bm.h"

EWRAM_DATA struct BmSt gBmSt;
EWRAM_DATA struct PlaySt gPlaySt;

void LockGame(void)
{
	gBmSt.lock++;
}

void UnlockGame(void)
{
	gBmSt.lock--;
}

u8 GetGameLock(void)
{
	return gBmSt.lock;
}

void InitBmBgLayers(void)
{
	if (gPlaySt.weather == WEATHER_CLOUDS) {
		gDispIo.bg0_ct.priority = 0;
		gDispIo.bg1_ct.priority = 1;
		gDispIo.bg2_ct.priority = 2;
		gDispIo.bg3_ct.priority = 2;
	} else {
		gDispIo.bg0_ct.priority = 0;
		gDispIo.bg1_ct.priority = 1;
		gDispIo.bg2_ct.priority = 2;
		gDispIo.bg3_ct.priority = 3;
	}
}
