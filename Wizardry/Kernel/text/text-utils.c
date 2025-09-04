#include "common.h"
#include "utils.h"
#include "hardware.h"
#include "text.h"

static u32 local_log10(u32 number)
{
	if (number >= 100000000) return 9;
	if (number >= 10000000) return 8;
	if (number >= 1000000) return 7;
	if (number >= 100000) return 6;
	if (number >= 10000) return 5;
	if (number >= 1000) return 4;
	if (number >= 100) return 3;
	if (number >= 10) return 2;
	if (number >= 1) return 1;
	return 0;
}

int NumberToString(int number, char *buf)
{
	u32 off, beg;

	off = 0;

	if (number == 0) {
		*buf++ = '0';
		*buf++ = '\0';
		return 1;
	}

	if (number < 0) {
		buf[off++] = '-';
		number = -number;
	}

	off += local_log10(number);
	beg = off;

	while (number > 0) {
		buf[off--] = '0' + k_umod10(number);
		number = k_udiv10(number);
	}

	buf[beg + 1] = '\0';
	return beg + 1;
}

static struct Text tmp_text;

struct Text *PutStringCentered(u16 *tm, int color, int width, char const *str)
{
	struct Text *const text = &tmp_text;

	InitText(text, width);

	Text_SetCursor(text, (width*8 - GetStringTextLen(str) - 1) / 2);
	Text_SetColor(text, color);
	Text_DrawString(text, str);

	PutText(text, tm);

	EnableBgSync(BG0_SYNC_BIT);

	return text;
}

struct Text *PutString(u16 *tm, int color, char const *str)
{
	struct Text *const text = &tmp_text;

	InitText(text, (GetStringTextLen(str)+7) / 8);

	Text_SetColor(text, color);
	Text_DrawString(text, str);

	PutText(text, tm);

	return text;
}
