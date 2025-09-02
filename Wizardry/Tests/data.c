#include "common.h"

#if CONFIG_DEBUG_TEST_DATA_SECTION

/* start from 0x02000000, overlay0 */
EWRAM_OVERLAY_BMAP int ewram_overlay_0_array[2];

/* start from 0x02000000, overlay1 */
EWRAM_OVERLAY_ANIM int ewram_overlay_1_array[4];

/* start from 0x02000000, overlay2 */
EWRAM_OVERLAY_ENTR int ewram_overlay_2_array[5];

/* start behind of ewram overlays, same as data section */
EWRAM_DATA int ewram_data_array[2];

int iwram_bss_array[2];

/* reloc */
RELOC_DATA int *const pr_ewram_overlay_0_array = ewram_overlay_0_array;
RELOC_DATA int *const pr_ewram_overlay_1_array = ewram_overlay_1_array;
RELOC_DATA int *const pr_ewram_overlay_2_array = ewram_overlay_2_array;
RELOC_DATA int *const pr_ewram_data_array = ewram_data_array;
RELOC_DATA int *const pr_iwram_bss_array = iwram_bss_array;

#endif
