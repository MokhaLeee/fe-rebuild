#include "common.h"
#include "efx.h"

int GetAnimLayer(struct Anim *anim)
{
	if (!(anim->flags2 & ANIM_BIT2_FRONT_FRAME))
		return 0;

	return 1;
}

int GetAnimPosition(struct Anim *anim)
{
	if (!(anim->flags2 & ANIM_BIT2_POS_RIGHT))
		return POS_L;

	return POS_R;
}
