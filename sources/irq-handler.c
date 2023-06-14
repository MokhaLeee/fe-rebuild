#include "common.h"
#include "irq.h"

IrqFunc gIrqFuncs[II_MAX];
static u32 IntrMainRam[0x200];

static void DummyIrqFunc(void)
{
	return;
}

void IrqInit(void)
{
	int i;
	for (i = 0; i < II_MAX; i++)
		gIrqFuncs[i] = DummyIrqFunc;

	CpuFastCopy(IrqMain, IntrMainRam, sizeof IntrMainRam);

	/* Set irq entry */
	INTR_VECTOR = IntrMainRam;

	/* Enable irq interrupts */
	REG_IME = true;
}

void SetIrqFunc(int iid, IrqFunc func)
{
	gIrqFuncs[iid] = func;
}
