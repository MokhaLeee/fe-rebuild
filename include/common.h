#pragma once

#include "gba/gba.h"

/**
 * Section definitions
 */
#define SECTION(name) __attribute__((section(name)))

#define EWRAM_DATA SECTION(".data.ewram")
#define RELOC_DATA SECTION(".rodata.reloc")

#define ewram_overlay_bm ewram_overlay_0
#define ewram_overlay_banim ewram_overlay_1
#define ewram_overlay_op ewram_overlay_2
#define EWRAM_OVERLAY(id) SECTION(".ewram_overlay_" # id)
