#include "common.h"
#include "armfunc.h"

extern u32 const __iwram_code_lma[];
extern u32 const __iwram_code_lma_end[];
extern u32 __iwram_code_vma[];

void InitRamFuncs(void)
{
	// memcpy(__iwram_code_vma, __iwram_code_lma, (size_t)(__iwram_code_lma_end - __iwram_code_lma));
}

__attribute__((section(".iwram_code.stub"), long_call, noinline)) 
void PutOamHi(int x, int y, u16 const * oam_list, int oam2)
{
	PutOamHi_ram(x, y, oam_list, oam2);
}

void PutOamLo(int x, int y, u16 const * oam_list, int oam2)
{
	PutOamLo_ram(x, y, oam_list, oam2);
}

void ClearOam(void * oam, int count)
{
	ClearOam_ram(oam, count);
}
