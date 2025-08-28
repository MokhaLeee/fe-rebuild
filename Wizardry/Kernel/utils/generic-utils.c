#include "common.h"
#include "hardware.h"
#include "utils.h"

u8 EWRAM_DATA gBuf[0x2000];

int Interpolate(int method, int lo, int hi, int x, int end)
{
	int denom, left, result;
	register int _deno asm("r0");

	if (end == 0)
		return hi;

	switch (method)
	{

	case INTERPOLATE_LINEAR:
		denom = (hi - lo) * x;
		result = lo + Div(denom, end);
		break;

	case INTERPOLATE_SQUARE:
		_deno = x * x;
		denom = _deno * (hi - lo);
		result = lo + Div(denom, end * end);
		break;

	case INTERPOLATE_CUBIC:
		denom = x * x * x * (hi - lo);
		result = lo + Div(denom,  end * end * end);
		break;

	case INTERPOLATE_POW4:
		denom = x * x * x * x * (hi - lo);
		result = lo + Div(denom, end * end * end * end);
		break;

	case INTERPOLATE_RSQUARE:
		left = end - x;
		denom = left * left * (hi - lo);
		result = lo + (hi - lo) - Div(denom, end * end);
		break;

	case INTERPOLATE_RCUBIC:
		left = end - x;
		denom = left * left * left * (hi - lo);
		result = lo + (hi - lo) - Div(denom, end * end * end);
		break;

	default:
		result = 0;

	}

	return result;
}
