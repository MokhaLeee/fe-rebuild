#include "common.h"
#include "uimenu.h"

#if CONFIG_TEST

static u8 DebugMenu_OnSelect(struct MenuProc *menu, struct MenuEntProc *ent)
{
	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

const struct MenuEntInfo MenuEntInfo_DebugMenu[] = {
	{
		.label = "hello",
		.available = MenuEntryEnabled,
		.on_select = DebugMenu_OnSelect,
	},

	{
		.label = "mokha",
		.available = MenuEntryEnabled,
		.on_select = DebugMenu_OnSelect,
	},

	{
		.label = "test",
		.available = MenuEntryEnabled,
		.on_select = DebugMenu_OnSelect,
	},

	{ 0 }, // end
};

#endif
