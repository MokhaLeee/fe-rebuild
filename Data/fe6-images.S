	.section .rodata

	.align 2, 0
	.global Img_MuralBackground
Img_MuralBackground: @ 08336D5C
	.incbin "roms/fe6.gba", 0x336D5C, (0x33B958 - 0x336D5C)

	.align 2, 0
	.global Pal_MuralBackground
Pal_MuralBackground: @ 0833BFDC
	.incbin "roms/fe6.gba", 0x33BFDC, (0x33C01C - 0x33BFDC)
