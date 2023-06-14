.section ".text.ewram"
.syntax unified
.arm

.include "gba.inc"
.include "macro.inc"

.LPal: .4byte 0x0 @ gPal
.LFadeComponents: .4byte 0x0 @ gFadeComponents
.LFadeComponentStep: .4byte 0x0 @ gFadeComponentStep

	function ColorFadeTick
ColorFadeTick:
	push {r4-r7}

	@ r7 = start offset of next palette
	@ we start from the end, so palette 0x1F
	mov  r7, 0x20 * 0x1F

.Lpal_loop:
	@ r0 = gFadeComponentStep + pal_idx
	ldr  r0, .LFadeComponentStep
	add  r0, r0, r7, lsr 5

	@ r5 = component step for this palette
	ldsb r5, [r0]

	@ skip if step is 0
	tst  r5, r5
	beq  .Lpal_loop_continue

	ldr  r4, .LFadeComponents

	@ r4 = r4 + 0x30 + r7 * 1.5
	lsr  r0, r7, 1
	add  r0, r0, r0, lsl 1
	add  r0, 0x30
	add  r4, r0

	@ r6 = start offset of next color
	@ starting from the end again
	mov  r6, 0x1E

.Lcolor_loop:
	sub  r4, 3

	@ the clamp compares could be made branchless with some conditional operations
	@ eg: subs r0, 0x20 ; movlo r0, 0 ; cmp r0, 0x20 ; movhs r0, 0x1F

	@ get, update and clamp red component (r0)
	ldrb r0, [r4, 0]
	add  r0, r5
	strb r0, [r4, 0]
	subs r0, 0x20
	bpl  1f
	mov  r0, 0
1:  cmp  r0, 0x20
	blo  1f
	mov  r0, 0x1F
1:

	@ get, update and clamp green component (r1)
	ldrb r1, [r4, 1]
	add  r1, r5
	strb r1, [r4, 1]
	subs r1, 0x20
	bpl  1f
	mov  r1, 0
1:  cmp  r1, 0x20
	blo  1f
	mov  r1, 0x1F
1:

	@ get, update and clamp blue component (r2)
	ldrb r2, [r4, 2]
	add  r2, r5
	strb r2, [r4, 2]
	subs r2, 0x20
	bpl  1f
	mov  r2, 0
1:  cmp  r2, 0x20
	blo  1f
	mov  r2, 0x1F
1:

	@ get combined RGB5 color value
	add  r0, r0, r1, lsl 5
	add  r0, r0, r2, lsl 10

	@ store updated color to pal buffer
	ldr  r1, .LPal
	add  r1, r6
	strh r0, [r1, r7]

	subs r6, 2
	bpl  .Lcolor_loop

.Lpal_loop_continue:
	subs r7, 0x20
	bpl  .Lpal_loop

	@ end
	pop  {r4-r7}
	bx   lr

	endfunction ColorFadeTick

	function ClearOam
ClearOam:
	lsr  r1, 4
	sub  r1, 1

	mov  r2, 0xA0

.Loam_loop:
	str  r2, [r0, 0x00]
	str  r2, [r0, 0x08]
	str  r2, [r0, 0x10]
	str  r2, [r0, 0x18]
	str  r2, [r0, 0x20]
	str  r2, [r0, 0x28]
	str  r2, [r0, 0x30]
	str  r2, [r0, 0x38]
	str  r2, [r0, 0x40]
	str  r2, [r0, 0x48]
	str  r2, [r0, 0x50]
	str  r2, [r0, 0x58]
	str  r2, [r0, 0x60]
	str  r2, [r0, 0x68]
	str  r2, [r0, 0x70]
	str  r2, [r0, 0x78]

	add  r0, 0x80

	subs r1, 1
	bpl  .Loam_loop

	@ end
	bx   lr

	endfunction ClearOam

	arm_func_start Checksum32
Checksum32: @ 0x08000360
	push {r4, r5, r6, r7}
	sub r1, r1, #2
	mov r2, #0
	mov r3, #0
.L08000370:
	ldrh r4, [r0]
	add r2, r2, r4
	eor r3, r3, r4
	add r0, r0, #2
	subs r1, r1, #2
	bpl .L08000370
	mov r0, #0x10000
	sub r0, r0, #1
	and r2, r2, r0
	lsl r3, r3, #0x10
	mov r0, r2
	add r0, r0, r3
	pop {r4, r5, r6, r7}
	bx lr

	arm_func_start TmFillRect
TmFillRect: @ 0x080003A8
	push {r4, r5, r6, r7}
	mov r4, r0
	sub r6, r2, #0
.L080003B4:
	sub r5, r1, #0
.L080003B8:
	strh r3, [r4]
	add r4, r4, #2
	subs r5, r5, #1
	bpl .L080003B8
	add r0, r0, #0x40
	mov r4, r0
	subs r6, r6, #1
	bpl .L080003B4
	pop {r4, r5, r6, r7}
	bx lr

	arm_func_start TmCopyRect
TmCopyRect: @ 0x080003E0
	push {r4, r5, r6, r7}
	tst r2, r2
	beq .L08000434
	bmi .L08000434
	tst r3, r3
	beq .L08000434
	bmi .L08000434
	mov r4, #0x40
	sub r4, r4, r2, lsl #1
	sub r6, r3, #1
.L08000408:
	sub r5, r2, #1
.L0800040C:
	ldrh r7, [r0]
	strh r7, [r1]
	add r0, r0, #2
	add r1, r1, #2
	subs r5, r5, #1
	bpl .L0800040C
	add r0, r0, r4
	add r1, r1, r4
	subs r6, r6, #1
	bpl .L08000408
.L08000434:
	pop {r4, r5, r6, r7}
	bx lr

	arm_func_start TmApplyTsa
TmApplyTsa: @ 0x0800043C
	push {r4, r5, r6, r7}
	ldrb r3, [r1]
	ldrb r4, [r1, #1]
	add r1, r1, #2
	lsl r7, r4, #6
	add r0, r0, r7
	mov r6, r4
.L08000458:
	mov r5, r3
.L0800045C:
	ldrh r7, [r1]
	add r7, r7, r2
	strh r7, [r0]
	add r0, r0, #2
	add r1, r1, #2
	subs r5, r5, #1
	bpl .L0800045C
	sub r0, r0, r3, lsl #1
	sub r0, r0, #0x42
	subs r6, r6, #1
	bpl .L08000458
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
