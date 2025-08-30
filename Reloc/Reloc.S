#include "config/configs.h"
#include "rel_headers.inc"

.section .rodata.reloc_list

.align 2
.global pr_SongTable
HEADER_SongTable
pr_SongTable: .word gSongTable
