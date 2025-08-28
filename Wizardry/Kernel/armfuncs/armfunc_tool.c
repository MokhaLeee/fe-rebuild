#include "common.h"
#include "armfunc.h"

extern u32 const __iwram_code_lma[];
extern u32 const __iwram_code_lma_end[];
extern u32 __iwram_code_vma[];

_maybe_unused static void (*const DrawGlyph_hook)(u16 const * cvtLut, void * chr, u32 const * glyph, int offset) = DrawGlyph_ram;
_maybe_unused static void (*const DecodeString_hook)(char const * src, char * dst) = DecodeString_ram;
_maybe_unused static void (*const PutOamHi_hook)(int x, int y, u16 const * oam_list, int oam2) = PutOamHi_ram;
_maybe_unused static void (*const PutOamLo_hook)(int x, int y, u16 const * oam_list, int oam2) = PutOamLo_ram;
_maybe_unused static void (*const MapFloodCoreStep_hook)(int connect, int x, int y) = MapFloodCoreStep_ram;
_maybe_unused static void (*const MapFloodCore_hook)(void) = MapFloodCore_ram;
_maybe_unused static void (*const ClearOam_hook)(void * oam, int count) = ClearOam_ram;
_maybe_unused static void (*const TmApplyTsa_hook)(u16 * tm, u8 const * tsa, u16 tileref) = TmApplyTsa_ram;
_maybe_unused static void (*const TmFillRect_hook)(u16 * tm, int width, int height, u16 tileref) = TmFillRect_ram;
_maybe_unused static void (*const ColorFadeTick_hook)(void) = ColorFadeTick_ram;
_maybe_unused static void (*const TmCopyRect_hook)(u16 const * src, u16 * dst, int width, int height) = TmCopyRect_ram;
_maybe_unused static u32 (*const Checksum32_hook)(void const * buf, int size) = Checksum32_ram;

void InitRamFuncs(void)
{
	// memcpy(__iwram_code_vma, __iwram_code_lma, (size_t)(__iwram_code_lma_end - __iwram_code_lma));
}

void PutOamHi(int x, int y, u16 const * oam_list, int oam2)
{
	PutOamHi_hook(x, y, oam_list, oam2);
}

void PutOamLo(int x, int y, u16 const * oam_list, int oam2)
{
	PutOamLo_hook(x, y, oam_list, oam2);
}

void ClearOam(void * oam, int count)
{
	ClearOam_hook(oam, count);
}
