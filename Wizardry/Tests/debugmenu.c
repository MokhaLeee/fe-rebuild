#include "common.h"
#include "uimenu.h"
#include "utils.h"
#include "face.h"
#include "hardware.h"
#include "bm.h"

#include "test.h"

extern const struct MenuEntInfo MenuEntInfo_DebugMenu[];

#if CONFIG_TEST

static u8 DebugMenu_OnInit(struct MenuProc *menu)
{
	return 0;
}

static u8 DebugMenu_OnEnd(struct MenuProc *menu)
{
	EndFaceById(0);
	EndFaceById(1);

	SetDispEnable(0, 0, 0, 0, 0);
	SetBackdropColor(0);

	return 0;
}

static struct MenuInfo CONST_DATA MenuInfo_DebugMenu = {
	.rect = { 9, 4, 12, 0 },
	.entries = MenuEntInfo_DebugMenu,
	.on_init = DebugMenu_OnInit,
	.on_end = DebugMenu_OnEnd,
};

void StartDebugMenu(ProcPtr parent)
{
	struct MenuProc *menu;

	InitBmDisplay();

	menu = StartMenu(&MenuInfo_DebugMenu);
	StartMuralBackground(menu, (u8 *) BG_VRAM + CHR_SIZE * 0x580, -1);
	EnableBgSyncById(BG_3);
}

#endif
