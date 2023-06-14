#pragma once

#include "types.h"

extern u8 __text_cpy_start[];
extern u8 __ewram_text_start[];

#define RAM_FUNC_ADDR(func) (__ewram_text_start + (((u8 *) (void *) func) - __text_cpy_start))
