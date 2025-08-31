#pragma once

#include "common.h"

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
