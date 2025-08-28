#pragma once

#include "common.h"

void InitRamFuncs(void);

void DrawGlyph_ram(u16 const * cvtLut, void * chr, u32 const * glyph, int offset);
void DecodeString_ram(char const * src, char * dst);
void PutOamHi_ram(int x, int y, u16 const * oam_list, int oam2);
void PutOamLo_ram(int x, int y, u16 const * oam_list, int oam2);
void MapFloodCoreStep_ram(int connect, int x, int y);
void MapFloodCore_ram(void);
void ClearOam_ram(void * oam, int count);
void TmApplyTsa_ram(u16 * tm, u8 const * tsa, u16 tileref);
void TmFillRect_ram(u16 * tm, int width, int height, u16 tileref);
void ColorFadeTick_ram(void);
void TmCopyRect_ram(u16 const * src, u16 * dst, int width, int height);
u32 Checksum32_ram(void const * buf, int size);

void DrawGlyph(u16 const * cvtLut, void * chr, u32 const * glyph, int offset);
void DecodeString(char const * src, char * dst);
void PutOamHi(int x, int y, u16 const * oam_list, int oam2);
void PutOamLo(int x, int y, u16 const * oam_list, int oam2);
void ClearOam(void * oam, int count);
void MapFloodCoreStep(int connect, int x, int y);
void MapFloodCore(void);
void TmApplyTsa(u16 * tm, u8 const * tsa, u16 tileref);
void TmFillRect(u16 * tm, int width, int height, u16 tileref);
void ColorFadeTick(void);
void TmCopyRect(u16 const * src, u16 * dst, int width, int height);
u32 Checksum32(void const * buf, int size);
