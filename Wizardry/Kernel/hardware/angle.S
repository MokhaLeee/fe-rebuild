	.section .rodata

.align 2, 0
.global gSinLut
gSinLut: @ 080F9998
	.incbin "roms/fe6.gba", 0x0F9998, (0x0F9C18 - 0x0F9998)
