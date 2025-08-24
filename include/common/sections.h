#pragma once

#define SECTION(name) __attribute__((section(name)))

#define EWRAM_DATA SECTION(".data.ewram")
#define RELOC_DATA SECTION(".rodata.reloc")

#define EWRAM_OVERLAY(id) SECTION(".ewram_overlay_" # id)
#define EWRAM_OVERLAY_BMAP EWRAM_OVERLAY(0)
#define EWRAM_OVERLAY_ANIM EWRAM_OVERLAY(1)
#define EWRAM_OVERLAY_ENTR EWRAM_OVERLAY(2)
