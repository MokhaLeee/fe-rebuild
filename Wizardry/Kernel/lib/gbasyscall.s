	.include "macro.inc"
	.include "asm_gbaio.inc"

	.syntax unified

	THUMB_FUNC_START ArcTan2
ArcTan2: @ 0x080D166C
	swi #0xa
	bx lr

	THUMB_FUNC_START BgAffineSet
BgAffineSet: @ 0x080D1670
	swi #0xe
	bx lr

	THUMB_FUNC_START CpuFastSet
CpuFastSet: @ 0x080D1674
	swi #0xc
	bx lr

	THUMB_FUNC_START CpuSet
CpuSet: @ 0x080D1678
	swi #0xb
	bx lr

	THUMB_FUNC_START Div
Div: @ 0x080D167C
	swi #6
	bx lr

	THUMB_FUNC_START DivRem
DivRem: @ 0x080D1684
	swi #6
	adds r0, r1, #0
	bx lr

	THUMB_FUNC_START HuffUnComp
HuffUnComp: @ 0x080D168C
	swi #0x13
	bx lr

	THUMB_FUNC_START LZ77UnCompVram
LZ77UnCompVram: @ 0x080D1690
	swi #0x12
	bx lr

	THUMB_FUNC_START LZ77UnCompWram
LZ77UnCompWram: @ 0x080D1694
	swi #0x11
	bx lr

	THUMB_FUNC_START ObjAffineSet
ObjAffineSet: @ 0x080D16A0
	swi #0xf
	bx lr

	THUMB_FUNC_START RLUnCompVram
RLUnCompVram: @ 0x080D16A4
	swi #0x15
	bx lr

	THUMB_FUNC_START RLUnCompWram
RLUnCompWram: @ 0x080D16A8
	swi #0x14
	bx lr

	THUMB_FUNC_START SoftReset
SoftReset: @ 0x080D16B0
	ldr r3, =REG_IME
	movs r2, #0
	strb r2, [r3]
	ldr r1, =0x03007F00
	mov sp, r1
	swi #1
	swi #0

	.pool

	THUMB_FUNC_START SoundBiasReset
SoundBiasReset: @ 0x080D16C8
	movs r0, #0
	swi #0x19
	bx lr

	THUMB_FUNC_START SoundBiasSet
SoundBiasSet: @ 0x080D16D0
	movs r0, #1
	swi #0x19
	bx lr

	THUMB_FUNC_START Sqrt
Sqrt: @ 0x080D16D8
	swi #8
	bx lr

	THUMB_FUNC_START VBlankIntrWait
VBlankIntrWait: @ 0x080D16DC
	movs r2, #0
	swi #5
	bx lr

	.align 2, 0
