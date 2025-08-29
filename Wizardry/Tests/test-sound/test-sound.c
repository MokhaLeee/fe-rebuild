#include "common.h"
#include "sound.h"
#include "test.h"

void m4a_test(void)
{
	StartBgmCore(0x1, NULL);
	StartBgmVolumeChange(0, 0x80, 60, NULL);
}
