#include "common.h"
#include "map.h"

struct Vec2i EWRAM_DATA gMapSize;

u8 ** EWRAM_DATA gMapUnit;
u8 ** EWRAM_DATA gMapTerrain;
u8 ** EWRAM_DATA gMapMovement;
u8 ** EWRAM_DATA gMapRange;
u8 ** EWRAM_DATA gMapFog;
u8 ** EWRAM_DATA gMapHidden;
u8 ** EWRAM_DATA gMapOther;
