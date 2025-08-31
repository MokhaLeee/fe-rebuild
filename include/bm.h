#pragma once

#include "common.h"

enum videoalloc_bm {
	/* Object chr */
	OBCHR_SYSTEM_OBJECTS = 0x000,

	/* Object palette */
	OBPAL_SYSTEM_OBJECTS = 0,
};

struct BmSt {
	bool main_loop_ended;
	i8 bm_lock, disp_lock;
	u16 main_loop_end_scanline;
};

extern EWRAM_DATA struct BmSt gBmSt;

enum playst_weathers {
	/* PlaySt::weather */
	WEATHER_NONE,

	WEATHER_SNOW,
	WEATHER_SNOWSTORM,
	WEATHER_NIGHT,
	WEATHER_RAIN,
	WEATHER_FLAMES,
	WEATHER_SANDSTORM,
	WEATHER_CLOUDS,
};

struct PlaySt {
	u8 weather;

	u32 config_se_disable  : 1;
	u32 config_bgm_disable : 1;
};

extern EWRAM_DATA struct PlaySt gPlaySt;

/**
 * lock
 */
void LockGame(void);
void UnlockGame(void);
u8 GetGameLock(void);

/**
 * UI
 */
void ApplySystemObjectsGraphics(void);

/**
 * Misc
 */
void InitBmBgLayers(void);

