#pragma once

#include "common.h"
#include "text.h"

int GetChLenUtf8(const char *str);
int DecodeUtf8(const char *str, u32 *unicode_out, int *len);
const struct Glyph *GetCharGlyphUnicode(u32 unicode_ch, struct Font *font);

char *Utf8ToNarrowFonts(char *str);
char NarrowFontsUtf8ToAscii(const char *str);
char NarrowFontsUnicodeToAscii(u32 unicod);
