#include "common.h"
#include "hardware.h"

static unsigned sGameTime;

u32 GetGameTime(void)
{
	return sGameTime;
}

void SetGameTime(u32 time)
{
	sGameTime = time;
}

void IncGameTime(void)
{
	sGameTime++;

	if (sGameTime >= 1000 * FRAMES_PER_HOUR) {
		sGameTime = 990 * FRAMES_PER_HOUR;
		return;
	}
}

bool FormatTime(u32 time, u16 *hours, u16 *minutes, u16 *seconds)
{
	*seconds = k_umod(k_udiv(time, FRAMES_PER_SECOND), 60);
	*minutes = k_umod(k_udiv(time, FRAMES_PER_MINUTE), 60);
	*hours   = k_udiv(time, FRAMES_PER_HOUR);

	return k_udiv(time, 30) & 1; // clock `:` on/off boolean
}
