#pragma once

enum irq_index {
	II_VBLANK=0,
	II_HBLANK,
	II_VCOUNT,
	II_TIMER0,
	II_TIMER1,
	II_TIMER2,
	II_TIMER3,
	II_SERIAL,
	II_DMA0,
	II_DMA1,
	II_DMA2,
	II_DMA3,
	II_KEYPAD,
	II_GAMEPAK,
	II_MAX
};

typedef void (*IrqFunc)(void);

extern void IrqMain(void);
void IrqInit(void);
void SetIrqFunc(int iid, IrqFunc func);
