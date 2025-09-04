#include "common.h"
#include "bm.h"
#include "map.h"
#include "sprite.h"
#include "sound.h"
#include "hardware.h"
#include "constants/songs.h"
#include "constants/videoalloc_global.h"

enum {
	CAMERA_MARGIN_LEFT   = 16*3,
	CAMERA_MARGIN_RIGHT  = 16*11,
	CAMERA_MARGIN_TOP    = 16*2,
	CAMERA_MARGIN_BOTTOM = 16*7,
};

static struct Vec2i EWRAM_DATA sLastCoordMapCursorDrawn;
static u32 EWRAM_DATA sLastTimeMapCursorDrawn;

static const i8 sDirKeysToOffsetLut[][2] = {
	{  0,  0 }, // 0000 none
	{ +1,  0 }, // 0001 right
	{ -1,  0 }, // 0010 left
	{  0,  0 }, // 0011 right + left
	{  0, -1 }, // 0100 up
	{ +1, -1 }, // 0101 up + right
	{ -1, -1 }, // 0110 up + left
	{  0,  0 }, // 0111 up + right + left
	{  0, +1 }, // 1000 down
	{ +1, +1 }, // 1001 down + right
	{ -1, +1 }, // 1010 down + left
	{  0,  0 }, // 1011 down + right + left
	{  0,  0 }, // 1100 down + up
	{  0,  0 }, // 1101 down + up + right
	{  0,  0 }, // 1110 down + up + left
	{  0,  0 }, // 1111 down + up + right + left
};

static u16 CONST_DATA Sprite_MapCursorA[] = {
	4,
	OAM0_Y(-4) | OAM0_SHAPE_8x8, OAM1_X(-2)  | OAM1_SIZE_8x8,                           0,
	OAM0_Y(-4) | OAM0_SHAPE_8x8, OAM1_X(+10) | OAM1_SIZE_8x8 | OAM1_HFLIP,              0,
	OAM0_Y(+9) | OAM0_SHAPE_8x8, OAM1_X(-2)  | OAM1_SIZE_8x8 | OAM1_VFLIP,              0,
	OAM0_Y(+9) | OAM0_SHAPE_8x8, OAM1_X(+10) | OAM1_SIZE_8x8 | OAM1_HFLIP | OAM1_VFLIP, 0,
};

static u16 CONST_DATA Sprite_MapCursorB[] = {
	4,
	OAM0_Y(-3) | OAM0_SHAPE_8x8, OAM1_X(-1) | OAM1_SIZE_8x8,                           0,
	OAM0_Y(-3) | OAM0_SHAPE_8x8, OAM1_X(+9) | OAM1_SIZE_8x8 | OAM1_HFLIP,              0,
	OAM0_Y(+8) | OAM0_SHAPE_8x8, OAM1_X(-1) | OAM1_SIZE_8x8 | OAM1_VFLIP,              0,
	OAM0_Y(+8) | OAM0_SHAPE_8x8, OAM1_X(+9) | OAM1_SIZE_8x8 | OAM1_HFLIP | OAM1_VFLIP, 0,
};

static u16 CONST_DATA Sprite_MapCursorC[] = {
	4,
	OAM0_Y(-2) | OAM0_SHAPE_8x8, OAM1_X(-0) | OAM1_SIZE_8x8,                           0,
	OAM0_Y(-2) | OAM0_SHAPE_8x8, OAM1_X(+8) | OAM1_SIZE_8x8 | OAM1_HFLIP,              0,
	OAM0_Y(+7) | OAM0_SHAPE_8x8, OAM1_X(-0) | OAM1_SIZE_8x8 | OAM1_VFLIP,              0,
	OAM0_Y(+7) | OAM0_SHAPE_8x8, OAM1_X(+8) | OAM1_SIZE_8x8 | OAM1_HFLIP | OAM1_VFLIP, 0,
};

static u16 CONST_DATA Sprite_MapCursorStretched[] = {
	4,
	OAM0_Y(-8)  | OAM0_SHAPE_8x8, OAM1_X(-4)  | OAM1_SIZE_8x8,                           0,
	OAM0_Y(-8)  | OAM0_SHAPE_8x8, OAM1_X(+12) | OAM1_SIZE_8x8 | OAM1_HFLIP,              0,
	OAM0_Y(+10) | OAM0_SHAPE_8x8, OAM1_X(-4)  | OAM1_SIZE_8x8 | OAM1_VFLIP,              0,
	OAM0_Y(+10) | OAM0_SHAPE_8x8, OAM1_X(+12) | OAM1_SIZE_8x8 | OAM1_HFLIP | OAM1_VFLIP, 0,
};

static u16 const * CONST_DATA sMapCursorSpriteLut[] = {
	Sprite_MapCursorA,
	Sprite_MapCursorA,
	Sprite_MapCursorA,
	Sprite_MapCursorA,
	Sprite_MapCursorA,
	Sprite_MapCursorA,
	Sprite_MapCursorA,
	Sprite_MapCursorA,
	Sprite_MapCursorA,
	Sprite_MapCursorA,

	Sprite_MapCursorB,

	Sprite_MapCursorC,
	Sprite_MapCursorC,
	Sprite_MapCursorC,
	Sprite_MapCursorC,

	Sprite_MapCursorB,
};

void HandleMapCursorInput(u16 keys)
{
	int dir = (keys >> 4) & (KEY_DPAD_ANY >> 4);

	struct Vec2i newCursor = {
		.x = gBmSt.cursor.x + sDirKeysToOffsetLut[dir][0],
		.y = gBmSt.cursor.y + sDirKeysToOffsetLut[dir][1],
	};

	if (gBmSt.flags & BM_FLAG_LIMITCURSOR) {
		if (gMapMovement[gBmSt.cursor.y][gBmSt.cursor.x] < MAP_MOVEMENT_MAX)
			if (gMapMovement[newCursor.y][newCursor.x] >= MAP_MOVEMENT_MAX)
				if ((keys & KEY_DPAD_ANY) != (gKeySt->pressed & KEY_DPAD_ANY))
					return;
	}

	if (newCursor.x >= 0 && newCursor.x < gMapSize.x)
	{
		gBmSt.cursor_sprite_target.x += sDirKeysToOffsetLut[dir][0]*16;

		gBmSt.cursor_previous.x = gBmSt.cursor.x;
		gBmSt.cursor.x = newCursor.x;
	}

	if (newCursor.y >= 0 && newCursor.y < gMapSize.y)
	{
		gBmSt.cursor_sprite_target.y += sDirKeysToOffsetLut[dir][1]*16;

		gBmSt.cursor_previous.y = gBmSt.cursor.y;
		gBmSt.cursor.y = newCursor.y;
	}

	if (!(gBmSt.flags & BM_FLAG_CURSORMOVE))
	{
		if (gBmSt.cursor.x != gBmSt.cursor_previous.x || gBmSt.cursor.y != gBmSt.cursor_previous.y)
		{
			PlaySe(SONG_65);
			gBmSt.flags |= BM_FLAG_CURSORMOVE;
		}
	}
	else
	{
		gBmSt.flags &= ~BM_FLAG_CURSORMOVE;
	}
}

void HandleMoveMapCursor(int step)
{
	if (gBmSt.cursor_sprite.x < gBmSt.cursor_sprite_target.x)
		gBmSt.cursor_sprite.x += step;

	if (gBmSt.cursor_sprite.x > gBmSt.cursor_sprite_target.x)
		gBmSt.cursor_sprite.x -= step;

	if (gBmSt.cursor_sprite.y < gBmSt.cursor_sprite_target.y)
		gBmSt.cursor_sprite.y += step;

	if (gBmSt.cursor_sprite.y > gBmSt.cursor_sprite_target.y)
		gBmSt.cursor_sprite.y -= step;
}

void HandleMoveCameraWithMapCursor(int step)
{
	bool updated = FALSE;

	int xCursorSpr = gBmSt.cursor_sprite.x;
	int yCursorSpr = gBmSt.cursor_sprite.y;

	if (gBmSt.camera.x + CAMERA_MARGIN_LEFT > xCursorSpr) {
		if (xCursorSpr - CAMERA_MARGIN_LEFT < 0)
			gBmSt.camera.x = 0;
		else {
			updated = TRUE;

			gBmSt.camera.x -= step;
			gBmSt.unk_36 = -step;

			gBmSt.unk_32 = gBmSt.camera.x & 0xF;
		}
	}

	if (gBmSt.camera.x + CAMERA_MARGIN_RIGHT < xCursorSpr) {
		if (xCursorSpr - CAMERA_MARGIN_RIGHT > gBmSt.camera_max.x)
			gBmSt.camera.x = gBmSt.camera_max.x;
		else {
			updated = TRUE;

			gBmSt.camera.x += step;
			gBmSt.unk_36 = +step;

			gBmSt.unk_32 = gBmSt.camera.x & 0xF;
		}
	}

	if (gBmSt.camera.y + CAMERA_MARGIN_TOP > yCursorSpr) {
		if (yCursorSpr - CAMERA_MARGIN_TOP < 0)
			gBmSt.camera.y = 0;
		else {
			updated = TRUE;

			gBmSt.camera.y -= step;
			gBmSt.unk_37 = -step;

			gBmSt.unk_34 = gBmSt.camera.y & 0xF;
		}
	}

	if (gBmSt.camera.y + CAMERA_MARGIN_BOTTOM < yCursorSpr) {
		if (yCursorSpr - CAMERA_MARGIN_BOTTOM > gBmSt.camera_max.y)
			gBmSt.camera.y = gBmSt.camera_max.y;
		else {
			updated = TRUE;

			gBmSt.camera.y += step;
			gBmSt.unk_37 = +step;

			gBmSt.unk_34 = gBmSt.camera.y & 0xF;
		}
	}

	if (!updated) {
		if (gBmSt.unk_32 != 0) {
			gBmSt.unk_32 = (gBmSt.unk_32 + gBmSt.unk_36) & 0xF;
			gBmSt.camera.x += gBmSt.unk_36;
		}

		if (gBmSt.unk_34 != 0) {
			gBmSt.unk_34 = (gBmSt.unk_34 + gBmSt.unk_37) & 0xF;
			gBmSt.camera.y += gBmSt.unk_37;
		}
	}
}

u16 GetCameraAdjustedX(int x)
{
	int result = gBmSt.camera.x;

	if (gBmSt.camera.x + CAMERA_MARGIN_LEFT > x) {
		result = (x - CAMERA_MARGIN_LEFT) < 0
		       ? 0
		       : (x - CAMERA_MARGIN_LEFT);
	}

	if (gBmSt.camera.x + CAMERA_MARGIN_RIGHT < x) {
		result = (x - CAMERA_MARGIN_RIGHT) > gBmSt.camera_max.x
		       ? gBmSt.camera_max.x
		       : (x - CAMERA_MARGIN_RIGHT);
	}

	return result;
}

u16 GetCameraAdjustedY(int y)
{
	int result = gBmSt.camera.y;

	if (gBmSt.camera.y + CAMERA_MARGIN_TOP > y) {
		result = (y - CAMERA_MARGIN_TOP) < 0
		       ? 0
			   : (y - CAMERA_MARGIN_TOP);
	}

	if (gBmSt.camera.y + CAMERA_MARGIN_BOTTOM < y) {
		result = (y - CAMERA_MARGIN_BOTTOM) > gBmSt.camera_max.y
		       ? gBmSt.camera_max.y
			   : (y - CAMERA_MARGIN_BOTTOM);
	}

	return result;
}

u16 GetCameraCenteredX(int x)
{
	int result = x - DISPLAY_WIDTH/2;

	if (result < 0)
		result = 0;

	if (result > gBmSt.camera_max.x)
		result = gBmSt.camera_max.x;

	return result &~ 0xF;
}

u16 GetCameraCenteredY(int y)
{
	int result = y - DISPLAY_HEIGHT/2;

	if (result < 0)
		result = 0;

	if (result > gBmSt.camera_max.y)
		result = gBmSt.camera_max.y;

	return result &~ 0xF;
}

void PutMapCursor(int x, int y, int kind)
{
	int oam2 = 0;
	u16 const *sprite = NULL;

	int frame = (GetGameTime() / 2) % ARRAY_COUNT(sMapCursorSpriteLut);

	switch (kind) {
	case MAP_CURSOR_DEFAULT:
	case MAP_CURSOR_REGULAR:
		oam2 = OAM2_CHR(OBCHR_SYSTEM_OBJECTS + 0x02) + OAM2_PAL(OBPAL_SYSTEM_OBJECTS);
		sprite = sMapCursorSpriteLut[frame];

		break;

	case MAP_CURSOR_RED_MOVING:
		if (GetGameTime()-1 == sLastTimeMapCursorDrawn) {
			x = (x + sLastCoordMapCursorDrawn.x) >> 1;
			y = (y + sLastCoordMapCursorDrawn.y) >> 1;
		}

		oam2 = OAM2_CHR(OBCHR_SYSTEM_OBJECTS + 0x24) + OAM2_PAL(OBPAL_SYSTEM_OBJECTS);
		sprite = sMapCursorSpriteLut[frame];

		sLastCoordMapCursorDrawn.x = x;
		sLastCoordMapCursorDrawn.y = y;
		sLastTimeMapCursorDrawn = GetGameTime();

		break;

	case MAP_CURSOR_STRETCHED:
		oam2 = OAM2_CHR(OBCHR_SYSTEM_OBJECTS + 0x02) + OAM2_PAL(OBPAL_SYSTEM_OBJECTS);
		sprite = Sprite_MapCursorStretched;

		break;

	case MAP_CURSOR_RED_STATIC:
		oam2 = OAM2_CHR(OBCHR_SYSTEM_OBJECTS + 0x24) + OAM2_PAL(OBPAL_SYSTEM_OBJECTS);
		sprite = sMapCursorSpriteLut[0];

		break;

	}

	x = x - gBmSt.camera.x;
	y = y - gBmSt.camera.y;

	PutSprite(4, x, y, sprite, oam2);
}

void SetMapCursorPosition(int x, int y)
{
	gBmSt.cursor.x = x;
	gBmSt.cursor.y = y;

	gBmSt.cursor_sprite_target.x = x*16;
	gBmSt.cursor_sprite_target.y = y*16;

	gBmSt.cursor_sprite.x = x*16;
	gBmSt.cursor_sprite.y = y*16;
}
