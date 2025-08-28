#include "common.h"
#include "proc.h"
#include "utils.h"
#include "hardware.h"

static const struct ProcScr ProcScr_MainTitle[] = {
	PROC_NAME("MainTitle"),

	PROC_BLOCK
};

void StartMainTitle(ProcPtr proc)
{
	SpawnProcLocking(ProcScr_MainTitle, proc);
}
