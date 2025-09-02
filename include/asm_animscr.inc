@ anim script macros
@ by Mokha

.equ ANFMT_PTRINS, 0x40000000
.equ ANFMT_PTRINS_FUNC,  ANFMT_PTRINS + 0x00000000
.equ ANFMT_PTRINS_FRAME, ANFMT_PTRINS + 0x10000000

.equ ANFMT_NOT_FORCESPRITE, 0x80000000

.equ ANIM_INS_TYPE_STOP    , 0
.equ ANIM_INS_TYPE_END     , 1
.equ ANIM_INS_TYPE_LOOP    , 2
.equ ANIM_INS_TYPE_MOVE    , 3
.equ ANIM_INS_TYPE_WAIT    , 4
.equ ANIM_INS_TYPE_COMMAND , 5
.equ ANIM_INS_TYPE_FRAME   , 6

.equ ANFMT_INS_TYPE_STOP    , (ANIM_INS_TYPE_STOP    << 24)
.equ ANFMT_INS_TYPE_END     , (ANIM_INS_TYPE_END     << 24)
.equ ANFMT_INS_TYPE_LOOP    , (ANIM_INS_TYPE_LOOP    << 24)
.equ ANFMT_INS_TYPE_MOVE    , (ANIM_INS_TYPE_MOVE    << 24)
.equ ANFMT_INS_TYPE_WAIT    , (ANIM_INS_TYPE_WAIT    << 24)
.equ ANFMT_INS_TYPE_COMMAND , (ANIM_INS_TYPE_COMMAND << 24)
.equ ANFMT_INS_TYPE_FRAME   , (ANIM_INS_TYPE_FRAME   << 24)

.macro ANIM_SPRITE oam0, oam1, oam2, x, y
    .short \oam0
    .short \oam1
    .short \oam2
    .short \x
    .short \y
    .short 0
.endm

.macro ANIM_SPRITE_XFLIP oam0, oam1, oam2, x, y
    .short \oam0
    .short \oam1 + ATTR1_FLIP_X
    .short \oam2
    .short \x
    .short \y
    .short 0
.endm

.macro ANIM_SPRITE_AFFIN cnt, pa, pb, pc, pd
    .short \cnt
    .short 0xFFFF
    .short \pa
    .short \pb
    .short \pc
    .short \pd
.endm

.macro ANIM_SPRITE_END
    ANIM_SPRITE 0x1, 0, 0, 0, 0
.endm

.macro ANIMSCR_FORCE_SPRITE anim_sprite, time
    .4byte \anim_sprite + (\time & 0x3) + ((\time & 0x1C) << 26)
.endm

.macro ANIMSCR_WAIT time
    .4byte ANFMT_NOT_FORCESPRITE + ANFMT_INS_TYPE_WAIT + \time
.endm

.macro ANIMSCR_BLOCKED
    .4byte ANFMT_NOT_FORCESPRITE + ANFMT_INS_TYPE_STOP
.endm

.macro ANIMSCR_DISABLED
    .4byte ANFMT_NOT_FORCESPRITE + ANFMT_INS_TYPE_END @ seems the same as ANIM_SPRITE_END?
.endm

.macro ANIMSCR_LOOP
    .4byte ANFMT_NOT_FORCESPRITE + ANFMT_INS_TYPE_LOOP
.endm

.macro ANIMSCR_CMD cmd
    .4byte ANFMT_NOT_FORCESPRITE + ANFMT_INS_TYPE_COMMAND + \cmd
.endm

.macro ANIMSCR_FRAME duration, sheet_addr, frame_number, oam_offset
    .4byte ANFMT_NOT_FORCESPRITE + ANFMT_INS_TYPE_FRAME + (\frame_number << 16) + \duration, \sheet_addr, \oam_offset
.endm

// gba sprites
OBJ_ROT_SCALE_ON        = (1<<8)
OBJ_DISABLE             = (1<<9)
OBJ_MODE_1              = (1<<10)
OBJ_MODE_2              = (2<<10)
OBJ_MODE_3              = (3<<10)
ATTR0_MOSAIC            = (1<<12)
ATTR0_COLOR_256         = (1<<13)
ATTR0_COLOR_16          = (0<<13)
ATTR0_TYPE_NORMAL       = (0<<10)
ATTR0_TYPE_BLENDED      = (1<<10)
ATTR0_TYPE_WINDOWED     = (2<<10)
ATTR0_NORMAL            = (0<<8)
ATTR0_ROTSCALE          = (1<<8)
ATTR0_DISABLED          = (2<<8)
ATTR0_ROTSCALE_DOUBLE   = (3<<8)

SQUARE = 0
WIDE   = 1
TALL   = 2

ATTR0_SQUARE = (SQUARE << 14)
ATTR0_WIDE   = (WIDE   << 14)
ATTR0_TALL   = (TALL   << 14)

/* ATTR1 */
ATTR1_FLIP_X  = (1<<12)
ATTR1_FLIP_Y  = (1<<13)
ATTR1_SIZE_8  = (0<<14)
ATTR1_SIZE_16 = (1<<14)
ATTR1_SIZE_32 = (2<<14)
ATTR1_SIZE_64 = (3<<14)
