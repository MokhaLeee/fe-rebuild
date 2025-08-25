#pragma once

#include "common/types.h"
#include "common/attributes.h"
#include "common/sections.h"
#include "lib/debug-kit.h"
#include "lib/math.h"

/**
 * GBA lib
 */
#include "gba/gba.h"

/* others */
#ifndef hang
#define hang() do { while (1); } while (0)
#endif
