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

	.incbin "roms/fe6.gba", 0x7E989C, (0x7EA008 - 0x7E989C)

.align 2, 0
.global gBanimTerrainTable @ fe8: battle_terrain_table
gBanimTerrainTable:
	.incbin "roms/fe6.gba", 0x7EA008, (0x7FC008 - 0x7EA008)

.align 2, 0
.global gBanimCharaPalTable
gBanimCharaPalTable:
	.incbin "roms/fe6.gba", 0x7FC008, (0x7FF0A4 - 0x7FC008)
