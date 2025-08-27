#pragma once

#include "common.h"

extern u8 EWRAM_DATA gBuf[0x2000];

/**
 * decomp
 */
void Decompress(void const * src, void * dst);

/* move data */
void RegisterDataMove(void const *src, void *dst, int size);
void RegisterDataFill(u32 value, void * dst, int size);
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
