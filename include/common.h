#pragma once

#include "config/configs.h"

#include "common/types.h"
#include "common/attributes.h"
#include "common/sections.h"
#include "lib/printf.h"
#include "lib/debug.h"
#include "lib/math.h"

/**
 * GBA lib
 */
#include "gba/gba.h"

/* others */
#ifndef hang
#if CONFIG_USE_DEBUG
#define hang() do { while (1); } while (0)
#else
#define hang() do {} while (0)
#endif
#endif

#define STRUCT_PAD(from, to) unsigned char _pad_ ## from[(to) - (from)]
#define ARRAY_COUNT(array) (sizeof(array) / sizeof((array)[0]))
#define ABS(val) ((val) >= 0 ? (val) : -(val))
#define RECT_DISTANCE(xa, ya, xb, yb) (ABS((xa) - (xb)) + ABS((ya) - (yb)))

#define _UNUSED __attribute__((unused))
#define __maybe_unused _UNUSED

#define NONMATCHING 1
