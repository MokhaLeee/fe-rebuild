#pragma once

#include "common.h"
#include "proc.h"

enum
{
	// TODO: those have different meanings depending on the state of the game controller

	GAME_ACTION_0,
	GAME_ACTION_1,
	GAME_ACTION_2,
	GAME_ACTION_3,
	GAME_ACTION_4,
	GAME_ACTION_5,
	GAME_ACTION_6,
	GAME_ACTION_7,
	GAME_ACTION_8,
};

struct ProcGameCtrl {
	PROC_HEADER;

	u8 next_action;
	u8 next_chapter;
	u8 demo_counter;
	u8 previous_demo_class_set;
	i16 clock;
};

extern const struct ProcScr ProcScr_GameController[];

void NewGameController(void);
