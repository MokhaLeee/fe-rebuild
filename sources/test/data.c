#include "common.h"

#if 0
/* start from 0x02000000, overlay0 */
EWRAM_OVERLAY(bm) int ewram_overlay_0_array[2] = { 1, 2 };

/* start from 0x02000000, overlay1 */
EWRAM_OVERLAY(banim) int ewram_overlay_1_array[2] = { 3, 4 };

/* start from 0x02000000, overlay2 */
EWRAM_OVERLAY(op) int ewram_overlay_2_array[2] = { 5, 6 };

/* start behind of ewram overlays, same as data section */
int ewram_data_array[2] = { 7, 8 };

int iwram_bss_array[2];

/* reloc */
RELOC_DATA int *const pr_ewram_overlay_0_array = ewram_overlay_0_array;
RELOC_DATA int *const pr_ewram_overlay_1_array = ewram_overlay_1_array;
RELOC_DATA int *const pr_ewram_overlay_2_array = ewram_overlay_2_array;
RELOC_DATA int *const pr_ewram_data_array = ewram_data_array;
RELOC_DATA int *const pr_iwram_bss_array = iwram_bss_array;
#endif
