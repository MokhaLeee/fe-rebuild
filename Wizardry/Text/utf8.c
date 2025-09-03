#include "common.h"
#include "text.h"

#include "utf8.h"

_maybe_unused static bool is_ascii(u32 unicod)
{
	return unicod < 0x80;
}

int GetChLenUtf8(const char *str)
{
	const u8 *utf8_in = (const u8 *)str;
	u8 cod = utf8_in[0];

	if ((0b11111000 & cod) == 0b11110000)
		return 4;

	if ((0b11110000 & cod) == 0b11100000)
		return 3;

	if ((0b11100000 & cod) == 0b11000000)
		return 2;

	if ((0b10000000 & cod) == 0x0)
		return 1;

	Errorf("Failed on decoding at %p!", str);
	return -1;
}

int DecodeUtf8(const char *str, u32 *unicode_out, int *len)
{
	u32 unicod;
	const u8 *utf8_in = (const u8 *)str;

	switch (GetChLenUtf8(str)) {
	case 1:
		*unicode_out = *utf8_in;
		*len = 1;
		return 0;

	case 2:
		unicod = utf8_in[0] & 0b00011111;
		unicod = (unicod << 0x6) | (utf8_in[1] & 0b00111111);

		*unicode_out = unicod;
		*len = 2;
		return 0;

	case 3:
		unicod = utf8_in[0] & 0b00001111;
		unicod = (unicod << 0x6) | (utf8_in[1] & 0b00111111);
		unicod = (unicod << 0x6) | (utf8_in[2] & 0b00111111);

		*unicode_out = unicod;
		*len = 3;
		return 0;

	case 4:
		unicod = utf8_in[0] & 0b00000111;
		unicod = (unicod << 0x6) | (utf8_in[1] & 0b00111111);
		unicod = (unicod << 0x6) | (utf8_in[2] & 0b00111111);
		unicod = (unicod << 0x6) | (utf8_in[3] & 0b00111111);

		*unicode_out = unicod;
		*len = 4;
		return 0;

	default:

		Errorf("Failed on decoding at %p!", str);

		*unicode_out = 0;
		*len = 0;
		return -1;
	}
}

const struct Glyph *GetCharGlyphUnicode(u32 unicode_ch, struct Font *font)
{
	const struct Glyph *glyph;
	int hi = (unicode_ch >> 0x8) & 0xFF;
	int lo = unicode_ch & 0xFF;

	/* For now, we can only support for group 1 of unicode (U_0000 ~ U_FFFF) */
	if (unicode_ch >= 0x10000) {
		Errorf("Unicode %#lx overflow!", unicode_ch);
		return NULL;
	}

	for (glyph = font->glyphs[lo]; glyph != NULL; glyph = glyph->next) {
		if (glyph->sjis_byte_1 == hi)
			return glyph;
	}

	/**
	 * If we failed to get the glyph, maybe we can try on reverting narrow fonts
	 */
#if 0
	if (!is_ascii(unicode_ch))
		return GetCharGlyphUnicode(NarrowFontsUnicodeToAscii(unicode_ch), font);
#endif

	Errorf("Failed to get glyph: %#lx", unicode_ch);
	return NULL;
}

/**
 * API
 */
const char *GetCharTextLen(const char *str, u32 *width)
{
	const struct Glyph *glyph;
	u32 unicod;
	int ret, decode_len;

	ret = DecodeUtf8(str, &unicod, &decode_len);
	if (ret)
		return GetCharTextLen("?", width);

	glyph = GetCharGlyphUnicode(unicod, gActiveFont);
	if (glyph == NULL)
		return GetCharTextLen("?", width);

	*width = glyph->width;
	return str + decode_len;
}

const char *Text_DrawCharacter(struct Text *text, const char *str)
{
	const struct Glyph *glyph;
	u32 unicod;
	int ret, decode_len;

	ret = DecodeUtf8(str, &unicod, &decode_len);
	if (ret) {
		unicod = '?';
		decode_len = 1;
	}

	glyph = GetCharGlyphUnicode(unicod, gActiveFont);
	if (glyph == NULL)
		glyph = GetCharGlyphUnicode('?', gActiveFont);

	gActiveFont->draw_glyph(text, glyph);
	return str + decode_len;
}
