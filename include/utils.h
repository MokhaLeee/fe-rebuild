#pragma once

#include "common.h"
#include "proc.h"

extern u8 EWRAM_DATA gBuf[0x2000];

enum {
	INTERPOLATE_LINEAR,
	INTERPOLATE_SQUARE,
	INTERPOLATE_CUBIC,
	INTERPOLATE_POW4,
	INTERPOLATE_RSQUARE,
	INTERPOLATE_RCUBIC,
};

int Interpolate(int method, int lo, int hi, int x, int end);

/**
 * decomp
 */
void Decompress(void const *src, void *dst);

/**
 * tm
 */
void Register2dChrMove(u8 const *img, u8 *vram, int width, int height);
void Copy2dChr(void const *src, u8 *dst, int width, int height);
void ApplyBitmap(u8 const *src, void *dst, int width, int height);
void PutAppliedBitmap(u16 *tm, int tileref, int width, int height);
void PutDigits(u16 *tm, u8 const *src, int tileref, int len);

/* move data */
void RegisterDataMove(void const *src, void *dst, int size);
void RegisterDataFill(u32 value, void *dst, int size);
void ApplyDataMoves(void);

#define RegisterVramMove(src, offset, size) \
	RegisterDataMove( \
		(src), \
		(void *) VRAM + (0x1FFFF & (offset)), \
		(size))

#define RegisterVramFill(value, offset, size) \
	RegisterDataFill( \
		(value), \
		(void *) VRAM + (0x1FFFF & (offset)), \
		(size))

/**
 * Fade
 */
ProcPtr StartPalFade(u16 const *colors, int pal, int duration, ProcPtr parent);
void StartPalFadeToBlack(int palid, int duration, ProcPtr parent);
void StartPalFadeToWhite(int palid, int duration, ProcPtr parent);
void SetPalFadeStop(ProcPtr _proc, int val);

bool FadeExists(void);
void StartFadeToBlack(int q4_speed);
void StartFadeFromBlack(int q4_speed);
void StartLockingFadeToBlack(int q4_speed, ProcPtr parent);
void StartLockingFadeFromBlack(int q4_speed, ProcPtr parent);
void StartLockingFadeToWhite(int q4_speed, ProcPtr parent);
void StartLockingFadeFromWhite(int q4_speed, ProcPtr parent);
void StartMidFadeToBlack(void);
void StartSlowFadeToBlack(void);
void StartFastFadeToBlack(void);
void StartMidFadeFromBlack(void);
void StartSlowFadeFromBlack(void);
void StartFastFadeFromBlack(void);
void StartMidLockingFadeToBlack(ProcPtr parent);
void StartSlowLockingFadeToBlack(ProcPtr parent);
void StartFastLockingFadeToBlack(ProcPtr parent);
void StartMidLockingFadeFromBlack(ProcPtr parent);
void StartSlowLockingFadeFromBlack(ProcPtr parent);
void StartFastLockingFadeFromBlack(ProcPtr parent);
void StartSlowLockingFadeToWhite(ProcPtr parent);
void StartSlowLockingFadeFromWhite(ProcPtr parent);
void WhileFadeExists(ProcPtr proc);
void FadeInBlackWithCallBack_Speed04(ProcPtr parent);
void FadeInBlackWithCallBack_Speed08(ProcPtr parent);
void FadeInBlackWithCallBack_Speed10(ProcPtr parent);
void FadeInBlackWithCallBack_Speed20(ProcPtr parent);
void FadeInBlackWithCallBack_Speed40(ProcPtr parent);
void FadeInBlackSpeed04(ProcPtr parent);
void FadeInBlackSpeed08(ProcPtr parent);
void FadeInBlackSpeed10(ProcPtr parent);
void FadeInBlackSpeed20(ProcPtr parent);
void FadeInBlackSpeed40(ProcPtr parent);

extern const u16 Pal_AllBlack[];
extern const u16 Pal_AllWhite[];
extern const u16 Pal_AllRed[];
extern const u16 Pal_AllGreen[];
extern const u16 Pal_AllBlue[];
