#pragma once

#include "common.h"

void InitRamFuncs(void);

void DrawGlyph(u16 const *cvtLut, void *chr, u32 const *glyph, int offset);
void DecodeString(char const *src, char *dst);
void PutOamHi(int x, int y, u16 const *oam_list, int oam2);
void PutOamLo(int x, int y, u16 const *oam_list, int oam2);
void MapFloodCoreStep(int connect, int x, int y);
void MapFloodCore(void);
void ClearOam(void *oam, int count);
void TmApplyTsa(u16 *tm, u8 const *tsa, u16 tileref);
void TmFillRect(u16 *tm, int width, int height, u16 tileref);
void ColorFadeTick(void);
void TmCopyRect(u16 const *src, u16 *dst, int width, int height);
u32 Checksum32(void const *buf, int size);
