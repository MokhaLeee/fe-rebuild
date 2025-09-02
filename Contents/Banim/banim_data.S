#include "common.inc"
#include "macro.inc"

.section .banim_data

.align 2, 0
.global gBanimTableCount
gBanimTableCount:
	.incbin "roms/fe6.gba", 0x6A0000, 8

.align 2, 0
.global gBanimTable
gBanimTable:
	.incbin "roms/fe6.gba", 0x6A0008, 0x6A1000 - 0x6A0008

.align 2, 0
.global banim_data
banim_data:
	.incbin "roms/fe6.gba", 0x6A1000, 0x7E989C - 0x6A1000
