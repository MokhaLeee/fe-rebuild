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

.align 2, 0
.global Img_UiWindowFrame_ThemeBlue
Img_UiWindowFrame_ThemeBlue: @ 0810F744
	.incbin "roms/fe6.gba", 0x10F744, (0x10FF78 - 0x10F744)

.align 2, 0
.global Pal_UiWindowFrame_ThemeBlue
Pal_UiWindowFrame_ThemeBlue: @ 0810FF78
	.incbin "roms/fe6.gba", 0x10FF78, (0x10FF98 - 0x10FF78)

.align 2, 0
.global Pal_UiStatBar_ThemeBlue
Pal_UiStatBar_ThemeBlue: @ 0810FF98
	.incbin "roms/fe6.gba", 0x10FF98, (0x10FFB8 - 0x10FF98)

.align 2, 0
.global Img_UiWindowFrame_ThemeRed
Img_UiWindowFrame_ThemeRed: @ 0810FFB8
	.incbin "roms/fe6.gba", 0x10FFB8, (0x110838 - 0x10FFB8)

.align 2, 0
.global Pal_UiWindowFrame_ThemeRed
Pal_UiWindowFrame_ThemeRed: @ 08110838
	.incbin "roms/fe6.gba", 0x110838, (0x110858 - 0x110838)

.align 2, 0
.global Pal_UiStatBar_ThemeRed
Pal_UiStatBar_ThemeRed: @ 08110858
	.incbin "roms/fe6.gba", 0x110858, (0x110878 - 0x110858)

.align 2, 0
.global Img_UiWindowFrame_ThemeGray
Img_UiWindowFrame_ThemeGray: @ 08110878
	.incbin "roms/fe6.gba", 0x110878, (0x111110 - 0x110878)

.align 2, 0
.global Pal_UiWindowFrame_ThemeGray
Pal_UiWindowFrame_ThemeGray: @ 08111110
	.incbin "roms/fe6.gba", 0x111110, (0x111130 - 0x111110)

.align 2, 0
.global Pal_UiStatBar_ThemeGray
Pal_UiStatBar_ThemeGray: @ 08111130
	.incbin "roms/fe6.gba", 0x111130, (0x111150 - 0x111130)

.align 2, 0
.global Img_UiWindowFrame_ThemeGreen
Img_UiWindowFrame_ThemeGreen: @ 08111150
	.incbin "roms/fe6.gba", 0x111150, (0x111930 - 0x111150)

.align 2, 0
.global Pal_UiWindowFrame_ThemeGreen
Pal_UiWindowFrame_ThemeGreen: @ 08111930
	.incbin "roms/fe6.gba", 0x111930, (0x111950 - 0x111930)

.align 2, 0
.global Pal_UiStatBar_ThemeGreen
Pal_UiStatBar_ThemeGreen: @ 08111950
	.incbin "roms/fe6.gba", 0x111950, (0x111970 - 0x111950)

.align 2, 0
.global Img_UiUnitNameFrame
Img_UiUnitNameFrame: @ 08111970
	.incbin "roms/fe6.gba", 0x111970, (0x111BC4 - 0x111970) @ length: 0254

.align 2, 0
.global Pal_UiUnitNameFrame
Pal_UiUnitNameFrame: @ 08111BC4
	.incbin "roms/fe6.gba", 0x111BC4, (0x111C44 - 0x111BC4) @ length: 0080
