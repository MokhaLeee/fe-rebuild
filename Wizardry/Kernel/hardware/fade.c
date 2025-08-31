#include "common.h"
#include "hardware.h"

EWRAM_DATA i8 gFadeComponentStep[0x20];
EWRAM_DATA i8 gFadeComponents[0x600];

void ColorFadeInit(void)
{
	int i;

	for (i = 31; i >= 0; i--)
		gFadeComponentStep[i] = 0;
}

void ColFadeDirect(u16 const * in_pal, int bank, int count, int component_step)
{
	int pal_idx, color_idx;

	int add = (component_step < 0) ? 0x20 : 0;
	int component_idx = bank * 0x30;

	for (pal_idx = 0; pal_idx < count; ++pal_idx) {
		gFadeComponentStep[bank + pal_idx] = component_step;

		for (color_idx = 0; color_idx < 0x10; ++color_idx) {
			gFadeComponents[component_idx++] = RGB_GET_RED(*in_pal)   + add;
			gFadeComponents[component_idx++] = RGB_GET_GREEN(*in_pal) + add;
			gFadeComponents[component_idx++] = RGB_GET_BLUE(*in_pal)  + add;

			in_pal++;
		}
	}
}

void ColFadeStep(int pal, int num, int fade_col, int speed)
{
	int pal_idx;
	int color_idx;
	int dst_offset = pal * 16;

	u16 const * src = gPal + dst_offset;

	for (pal_idx = 0; pal_idx < num; ++pal_idx) {
		gFadeComponentStep[pal + pal_idx] = speed;

		for (color_idx = 0; color_idx < 16; ++color_idx) {
			gFadeComponents[dst_offset++] = RGB_GET_RED(*src) + fade_col;
			gFadeComponents[dst_offset++] = RGB_GET_GREEN(*src) + fade_col;
			gFadeComponents[dst_offset++] = RGB_GET_BLUE(*src) + fade_col;

			src++;
		}
	}
}

void ColFadeSet(int a, int b, int component_step)
{
	int i;

	for (i = a; i < a + b; i++)
		gFadeComponentStep[i] = component_step;
}

void ColFadeToBlack(fi8 component_step)
{
	int i, j;

	for (i = 0x1F; i >= 0; i--) {
		gFadeComponentStep[i] = component_step;

		for (j = 0; j < 0x10; j++) {
			gFadeComponents[(i * 0x10 + j) * 3 + 0] = RGB_GET_RED(PAL_COLOR(i, j)) + 0x20;
			gFadeComponents[(i * 0x10 + j) * 3 + 1] = RGB_GET_GREEN(PAL_COLOR(i, j)) + 0x20;
			gFadeComponents[(i * 0x10 + j) * 3 + 2] = RGB_GET_BLUE(PAL_COLOR(i, j)) + 0x20;
		}
	}
}

void ColFadeFromBlack(fi8 component_step)
{
	int i, j;

	for (i = 0x1F; i >= 0; i--) {
		gFadeComponentStep[i] = component_step;

		for (j = 0; j < 0x10; j++) {
			gFadeComponents[(i * 0x10 + j) * 3 + 0] = RGB_GET_RED(PAL_COLOR(i, j));
			gFadeComponents[(i * 0x10 + j) * 3 + 1] = RGB_GET_GREEN(PAL_COLOR(i, j));
			gFadeComponents[(i * 0x10 + j) * 3 + 2] = RGB_GET_BLUE(PAL_COLOR(i, j));
		}
	}
}

void ColFadeToWhite(fi8 component_step)
{
	int i, j;

	for (i = 0x1F; i >= 0; i--) {
		gFadeComponentStep[i] = component_step;

		for (j = 0; j < 0x10; j++) {
			gFadeComponents[(i * 0x10 + j) * 3 + 0] = RGB_GET_RED(PAL_COLOR(i, j)) + 0x20;
			gFadeComponents[(i * 0x10 + j) * 3 + 1] = RGB_GET_GREEN(PAL_COLOR(i, j)) + 0x20;
			gFadeComponents[(i * 0x10 + j) * 3 + 2] = RGB_GET_BLUE(PAL_COLOR(i, j)) + 0x20;
		}
	}
}

void ColFadeFromWhite(fi8 component_step)
{
	int i, j;

	for (i = 0x1F; i >= 0; i--) {
		gFadeComponentStep[i] = component_step;

		for (j = 0; j < 0x10; j++) {
			gFadeComponents[(i * 0x10 + j) * 3 + 0] = RGB_GET_RED(PAL_COLOR(i, j)) + 0x40;
			gFadeComponents[(i * 0x10 + j) * 3 + 1] = RGB_GET_GREEN(PAL_COLOR(i, j)) + 0x40;
			gFadeComponents[(i * 0x10 + j) * 3 + 2] = RGB_GET_BLUE(PAL_COLOR(i, j)) + 0x40;
		}
	}
}

void ColFadeTick(void)
{
	// This is a C implementation of the handwritten ARM function ColorFadeTick
	// with the addition of EnablePalSync at the end

	int i, j;
	short red, green, blue;

	for (i = 0x1F; i >= 0; i--) {
		if (gFadeComponentStep[i] == 0)
			continue;

		for (j = 15; j >= 0; j--) {
			int num = i * 0x10 + j;

			gFadeComponents[num*3 + 0] += gFadeComponentStep[i];
			gFadeComponents[num*3 + 1] += gFadeComponentStep[i];
			gFadeComponents[num*3 + 2] += gFadeComponentStep[i];

			red = gFadeComponents[num*3 + 0] - 0x20;

			if (red > 31)
				red = 31;

			if (red < 0)
				red = 0;

			green = gFadeComponents[num*3 + 1] - 0x20;

			if (green > 31)
				green = 31;

			if (green < 0)
				green = 0;

			blue = gFadeComponents[num*3 + 2] - 0x20;

			if (blue > 31)
				blue = 31;

			if (blue < 0)
				blue = 0;

			gPal[num] = (blue << 10) + (green << 5) + red;
		}
	}

	EnablePalSync();
}
