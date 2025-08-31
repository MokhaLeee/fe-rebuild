#include "common.h"
#include "armfunc.h"

extern u32 const __iwram_code_lma[];
extern u32 const __iwram_code_lma_end[];
extern u32 __iwram_code_vma[];

void InitRamFuncs(void)
{
	// memcpy(__iwram_code_vma, __iwram_code_lma, (size_t)(__iwram_code_lma_end - __iwram_code_lma));
}
