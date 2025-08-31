#include "common.h"
#include "hardware.h"

#include "utils.h"

void Register2dChrMove(u8 const *src, u8 *dst, int width, int height)
{
	int i, line_size = width * CHR_SIZE;

	if (height <= 0)
		return;

	for (i = height; i != 0; --i) {
		RegisterDataMove(src, dst, line_size);

		src += line_size;
		dst += CHR_SIZE *0x20;
	}
}

void Copy2dChr(void const *src, u8 *dst, int width, int height)
{
	int i, line_size = width * CHR_SIZE;

	if (height <= 0)
		return;

	for (i = height; i != 0; --i) {
		CpuFastCopy(src, dst, line_size);

		src += line_size;
		dst += CHR_SIZE * 0x20;
	}
}

static void ApplyBitmapTile(u8 const *src, u32 *dst, int width)
{
	int i;

	for (i = 0; i < 8; ++i)
	{
		u32 value = 0;

		value |= src[7];

		value <<= 4;
		value |= src[6];

		value <<= 4;
		value |= src[5];

		value <<= 4;
		value |= src[4];

		value <<= 4;
		value |= src[3];

		value <<= 4;
		value |= src[2];

		value <<= 4;
		value |= src[1];

		value <<= 4;
		value |= src[0];

		*dst++ = value;
		src += width *8;
	}
}

static void ApplyBitmapLine(u8 const *src, void *dst, int width)
{
	int i;

	if (width <= 0)
		return;

	for (i = width; i != 0; i--) {
		ApplyBitmapTile(src, dst, width);

		src += 8;
		dst += CHR_SIZE;
	}
}

void ApplyBitmap(u8 const *src, void *dst, int width, int height)
{
	int i, line_size;

	if (height <= 0)
		return;

	line_size = 8 * 8 * width;

	for (i = height; i != 0; --i) {
		ApplyBitmapLine(src, dst, width);

		src += line_size;
		dst += CHR_SIZE * width;
	}
}

void PutAppliedBitmap(u16 *tm, int tileref, int width, int height)
{
	int ix, iy;

	for (iy = 0; iy < height; ++iy)
		for (ix = 0; ix < width; ++ix)
			tm[TM_OFFSET(ix, iy)] = tileref++;
}

void PutDigits(u16 *tm, u8 const *src, int tileref, int len)
{
	int i;

	for (i = 0; i < len; ++i)
		tm[-i] = 0;

	while (*src != ' ') {
		*tm-- = tileref + *src - '0';
		src--;
	}
}
