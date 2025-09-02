#include "common.h"
#include "proc.h"
#include "utils.h"

static void TemporaryLock_Loop(struct Proc *proc)
{
	proc->unk58--;
	if (proc->unk58 <= 0)
		Proc_Break(proc);
}


static const struct ProcScr ProcScr_TemporaryLock[] = {
	PROC_NAME("SoftLock"),
	PROC_YIELD,
	PROC_REPEAT(TemporaryLock_Loop),
	PROC_END,
};

void StartTemporaryLock(ProcPtr proc, int duration)
{
	struct Proc * gproc;

	gproc = SpawnProcLocking(ProcScr_TemporaryLock, proc);
	gproc->unk58 = duration;
}
