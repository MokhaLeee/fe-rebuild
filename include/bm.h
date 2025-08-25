#pragma once

#include "common.h"

struct BmSt {
	bool main_loop_ended;
	i8 bm_lock, disp_lock;
	u16 main_loop_end_scanline;
};

extern EWRAM_DATA struct BmSt gBmSt;

/**
 * lock
 */
void LockGame(void);
void UnlockGame(void);
u8 GetGameLock(void);
