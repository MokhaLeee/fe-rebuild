#include "common.h"
#include "hardware.h"

struct KeySt EWRAM_DATA gKeyStObj;
struct KeySt * const gKeySt = &gKeyStObj;

void RefreshKeyStFromKeys(struct KeySt *keySt, short keys)
{
	keySt->previous = keySt->held;
	keySt->held = keys;

	// keys that are pressed now, but weren't pressed before
	keySt->pressed =
		(keySt->repeated = (keySt->held ^ keySt->previous) & keySt->held) &~ 0;

	if (keySt->pressed)
		keySt->last = keySt->held;

	keySt->ablr_pressed = 0;

	if (keySt->held == 0) {
		if (keySt->last && keySt->last == (keySt->previous & (KEY_BUTTON_L | KEY_BUTTON_R | KEY_BUTTON_B | KEY_BUTTON_A)))
			keySt->ablr_pressed = keySt->previous;
	}

	// keys are being held
	if (keySt->held && keySt->held == keySt->previous) {
		keySt->repeat_clock--;

		if (keySt->repeat_clock == 0) {
			keySt->repeated = keySt->held;
			keySt->repeat_clock = keySt->repeat_interval; // reset repeat timer
		}
	} else {
		// held key combination has changed. reset timer
		keySt->repeat_clock = keySt->repeat_delay;
	}

	keySt->pressed2 = (keySt->held ^ keySt->pressed2) & keySt->held;

	if (keys & (KEY_BUTTON_A | KEY_BUTTON_B | KEY_DPAD_ANY | KEY_BUTTON_R | KEY_BUTTON_L)) // any button other than start and select
		keySt->time_since_start_select = 0;
	else if (keySt->time_since_start_select < UINT16_MAX)
		keySt->time_since_start_select++;
}

void RefreshKeySt(struct KeySt *keySt)
{
	RefreshKeyStFromKeys(keySt, (~REG_KEYINPUT) & KEY_ANY);
}

void ClearKeySt(struct KeySt *keySt)
{
	keySt->pressed = 0;
	keySt->repeated = 0;
	keySt->held = 0;
}

void InitKeySt(struct KeySt *keySt)
{
	keySt->repeat_delay = 12;
	keySt->repeat_interval = 4;

	keySt->previous = 0;
	keySt->held = 0;
	keySt->pressed = 0;

	keySt->repeat_clock = 0;
	keySt->time_since_start_select = 0;
}
