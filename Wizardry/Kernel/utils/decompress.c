#include "common.h"
#include "utils.h"

static int GetDataSize(void const * data)
{
	return *((u32 const *) data) >> 8;
}

static void UnpackRaw(void const * src, void * dst)
{
	int size = GetDataSize(src) - 4;

	if (size % 0x20 != 0)
		CpuCopy16(src + 4, dst, size);
	else
		CpuFastCopy(src + 4, dst, size);
}

void Decompress(void const * src, void * dst)
{
	typedef void (* DecompressFunc)(void const *, void *);

	static const DecompressFunc func_lut[] = {
		UnpackRaw,      // 00, vram
		UnpackRaw,      // 00, wram
		LZ77UnCompVram, // 10, vram
		LZ77UnCompWram, // 10, wram
		HuffUnComp,     // 20, vram
		HuffUnComp,     // 20, wram
		RLUnCompVram,   // 30, vram
		RLUnCompWram,   // 30, wram
	};

	int is_wram;

	if ((((u32) dst) - VRAM) < VRAM_SIZE)
		is_wram = FALSE; // is vram
	else
		is_wram = TRUE;

	func_lut[is_wram + ((((u8 const *) src)[0] & 0xF0) >> 3)](src, dst);
}
