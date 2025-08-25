#include "common.h"
#include "bm.h"

EWRAM_DATA struct BmSt gBmSt;

void LockGame(void)
{
	gBmSt.bm_lock++;
}

void UnlockGame(void)
{
	gBmSt.bm_lock--;
}

u8 GetGameLock(void)
{
	return gBmSt.bm_lock;
}
