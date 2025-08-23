```c
/* start from 0x02000000, overlay0 */
EWRAM_OVERLAY(bm) int ewram_overlay_0_array[2];

/* start from 0x02000000, overlay1 */
EWRAM_OVERLAY(banim) int ewram_overlay_1_array[2];

/* start from 0x02000000, overlay2 */
EWRAM_OVERLAY(op) int ewram_overlay_2_array[2];

/* start behind of ewram overlays, same as data section */
int ewram_data_array[2] = {};

/* reloc */
RELOC_DATA int * const pr_ewran_data = ewram_data_array;
```
