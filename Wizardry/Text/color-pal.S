#include "common.inc"
.section .rodata

.align 2, 0
.global Pal_Text
Pal_Text: @ 08100A08
	.incbin "roms/fe6.gba", 0x100A08, (0x100A48 - 0x100A08)

.align 2, 0
.global Pal_GreenTextColors
Pal_GreenTextColors: @ 08100A68
	.incbin "roms/fe6.gba", 0x100A68, (0x100A88 - 0x100A68) @ length: 0020
