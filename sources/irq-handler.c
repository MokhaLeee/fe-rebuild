#include "common.h"
#include "irq.h"
#include "ram-funcs.h"

IrqFunc gIrqFuncs[II_MAX];

static void DummyIrqFunc(void)
{
	return;
}

void IrqInit(void)
{
	int i;
	for (i = 0; i < II_MAX; i++)
		gIrqFuncs[i] = DummyIrqFunc;

	/* Set irq entry */
	INTR_VECTOR = RAM_FUNC_ADDR(IrqMain);

	/* Enable irq interrupts */
	REG_IME = true;
}

void SetIrqFunc(int iid, IrqFunc func)
{
	gIrqFuncs[iid] = func;
}
