#include "common.h"
#include "sprite.h"
#include "bm.h"
#include "hardware.h"

u16 CONST_DATA Sprite_SysUpArrowA[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x4C),
};

u16 CONST_DATA Sprite_SysUpArrowB[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x4D),
};

u16 CONST_DATA Sprite_SysUpArrowC[] = {
	1,
	OAM0_SHAPE_8x16 | OAM0_Y(-1), OAM1_SIZE_8x16, OAM2_CHR(0x4D),
};

u16 CONST_DATA Sprite_SysDownArrowA[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x4E),
};

u16 CONST_DATA Sprite_SysDownArrowB[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x4F),
};

u16 CONST_DATA Sprite_SysDownArrowC[] = {
	1,
	OAM0_SHAPE_8x16 | OAM0_Y(+1), OAM1_SIZE_8x16, OAM2_CHR(0x4F),
};

u16 const *CONST_DATA gSysUpArrowSpriteLut[] = {
	Sprite_SysUpArrowA,
	Sprite_SysUpArrowB,
	Sprite_SysUpArrowC,
};

u16 const *CONST_DATA gSysDownArrowSpriteLut[] = {
	Sprite_SysDownArrowA,
	Sprite_SysDownArrowB,
	Sprite_SysDownArrowC,
};

void PutSysArrow(int x, int y, u8 isDown)
{
	int frame = k_umod(GetGameTime() / 8, ARRAY_COUNT(gSysDownArrowSpriteLut));

	PutSprite(4, x, y,
		isDown ? gSysDownArrowSpriteLut[frame] : gSysUpArrowSpriteLut[frame],
		OAM2_CHR(OBCHR_SYSTEM_OBJECTS) + OAM2_PAL(OBPAL_SYSTEM_OBJECTS));
}

void PutSysAButton(int x, int y, int palid)
{
	u8 frame = (GetGameTime() % 0x10) & 8;

	PutSprite(4, x, y,
		Sprite_16x16,
		OAM2_CHR(OBCHR_SYSTEM_OBJECTS + (frame ? 0x50 : 0x10)) + OAM2_PAL(palid));
}
