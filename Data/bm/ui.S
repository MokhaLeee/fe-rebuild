#include "common.inc"

.section .rodata

.align 2, 0
.global Img_SystemObjects
Img_SystemObjects: @ 081004A4
	.incbin "roms/fe6.gba", 0x1004A4, (0x100928 - 0x1004A4) @ length: 0484

.align 2, 0
.global Pal_SystemObjects
Pal_SystemObjects: @ 08100928
	.incbin "roms/fe6.gba", 0x100928, (0x100968 - 0x100928) @ length: 0040
