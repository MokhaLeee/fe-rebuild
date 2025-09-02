#pragma once

#define FORCE_DECLARE __attribute__((unused))
#define _maybe_unused __attribute__((unused))
#define NOINLINE __attribute__((noinline))

#define ALIGNED(n) __attribute__((aligned(n)))

/**
 * sections
 */
#define SECTION(name) __attribute__((section(name)))

#define IWRAM_DATA SECTION(".iwram_data")

#define EWRAM_DATA SECTION(".data.ewram")
#define RELOC_DATA SECTION(".rodata.reloc")

#define EWRAM_OVERLAY(id) SECTION(".ewram_overlay_" # id)
#define EWRAM_OVERLAY_BMAP EWRAM_OVERLAY(0)
#define EWRAM_OVERLAY_ANIM EWRAM_OVERLAY(1)
#define EWRAM_OVERLAY_ENTR EWRAM_OVERLAY(2)
#define EWRAM_OVERLAY_TEST EWRAM_OVERLAY(3)

#define IWRAM_FUNC      SECTION(".iwram_code")
#define IWRAM_FUNC_STUB __attribute__((section(".text.iwram_code.stub"), long_call, noinline))
