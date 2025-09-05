#pragma once

#include "common.h"
#include "proc.h"

struct FaceProc {
	/* 00 */ PROC_HEADER;

	/* 29 */ STRUCT_PAD(0x29, 0x2A);
	/* 2A */ u16 disp;
	/* 2C */ i8 slot;
	/* 2D */ i8 sprite_layer;
	/* 2E */ i16 x_disp;
	/* 30 */ i16 y_disp;
	/* 32 */ i16 x_offset_mouth;
	/* 34 */ i16 y_offset_mouth;
	/* 36 */ i8 talk_frame;
	/* 37 */ i8 talk_frame_clock;
	/* 38 */ u16 oam2;
	/* 3A */ STRUCT_PAD(0x3A, 0x3C);
	/* 3C */ u16 const * sprite;
	/* 40 */ u8 fid;
};

void InitFaces(void);
struct FaceProc *StartFaceAuto(int fid, int x, int y, int disp);
struct FaceProc *StartFace(int slot, int fid, int x, int y, int disp);
void EndFaceById(int slot);
