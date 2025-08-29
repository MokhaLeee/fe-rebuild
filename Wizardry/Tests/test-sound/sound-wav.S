#include "common.inc"

.section .rodata

#if CONFIG_DEBUG_M4A_TEST

.align 2, 0
.global wav_0839CE98
wav_0839CE98: @ 0039CE98
    .short 0x0                      @ type
    .short 0x4000                   @ status
    .word  0x00D10C00               @ freq
    .word  0x115A                   @ loopStart
    .word  0x2150                   @ size
    .incbin "roms/fe6.gba", 0x39CEA8, 0x2150 + 0x4

.align 2, 0
.global wav_0839EFFC
wav_0839EFFC: @ 0039EFFC
    .short 0x0                      @ type
    .short 0x4000                   @ status
    .word  0x00D10C00               @ freq
    .word  0x47C                    @ loopStart
    .word  0x814                    @ size
    .incbin "roms/fe6.gba", 0x39F00C, 0x814 + 0x4

.align 2, 0
.global wav_0839F824
wav_0839F824: @ 0039F824
    .short 0x0                      @ type
    .short 0x4000                   @ status
    .word  0x00D10C00               @ freq
    .word  0x14E8                   @ loopStart
    .word  0x1C65                   @ size
    .incbin "roms/fe6.gba", 0x39F834, 0x1C65 + 0x3

.align 2, 0
.global wav_083A9750
wav_083A9750: @ 003A9750
    .short 0x0                      @ type
    .short 0x0                      @ status
    .word  0x00D10C00               @ freq
    .word  0x0                      @ loopStart
    .word  0x1478                   @ size
    .incbin "roms/fe6.gba", 0x3A9760, 0x1478 + 0x4

.align 2, 0
.global wav_0839A844
wav_0839A844: @ 0039A844
    .short 0x0                      @ type
    .short 0x4000                   @ status
    .word  0x00D10C00               @ freq
    .word  0xD9F                    @ loopStart
    .word  0x2641                   @ size
    .incbin "roms/fe6.gba", 0x39A854, 0x2641 + 0x3

.align 2, 0
.global wav_083D23C8
wav_083D23C8: @ 003D23C8
    .short 0x0                      @ type
    .short 0x4000                   @ status
    .word  0x00D10C00               @ freq
    .word  0x15F6                   @ loopStart
    .word  0x2388                   @ size
    .incbin "roms/fe6.gba", 0x3D23D8, 0x2388 + 0x4

.align 2, 0
.global wav_083A5518
wav_083A5518: @ 003A5518
    .short 0x0                      @ type
    .short 0x4000                   @ status
    .word  0x00D10C00               @ freq
    .word  0x1215                   @ loopStart
    .word  0x27BB                   @ size
    .incbin "roms/fe6.gba", 0x3A5528, 0x27BB + 0x1

.align 2, 0
.global wav_083C9280
wav_083C9280: @ 003C9280
    .short 0x0                      @ type
    .short 0x4000                   @ status
    .word  0x00D10C00               @ freq
    .word  0x816                    @ loopStart
    .word  0x1C6B                   @ size
    .incbin "roms/fe6.gba", 0x3C9290, 0x1C6B + 0x1

.align 2, 0
.global wav_083EC748
wav_083EC748: @ 003EC748
    .short 0x0                      @ type
    .short 0x4000                   @ status
    .word  0x00D10C00               @ freq
    .word  0x622                    @ loopStart
    .word  0xA20                    @ size
    .incbin "roms/fe6.gba", 0x3EC758, 0xA20 + 0x4

.align 2, 0
.global wav_08404390
wav_08404390: @ 00404390
    .short 0x0                      @ type
    .short 0x0                      @ status
    .word  0x00D10C00               @ freq
    .word  0x0                      @ loopStart
    .word  0x1840                   @ size
    .incbin "roms/fe6.gba", 0x4043A0, 0x1840 + 0x4

.align 2, 0
.global wav_08405BE4
wav_08405BE4: @ 00405BE4
    .short 0x0                      @ type
    .short 0x0                      @ status
    .word  0x00D10C00               @ freq
    .word  0x0                      @ loopStart
    .word  0x2E2                    @ size
    .incbin "roms/fe6.gba", 0x405BF4, 0x2E2 + 0x2

.align 2, 0
.global wav_08405ED8
wav_08405ED8: @ 00405ED8
    .short 0x0                      @ type
    .short 0x0                      @ status
    .word  0x00D10C00               @ freq
    .word  0x0                      @ loopStart
    .word  0xC6C                    @ size
    .incbin "roms/fe6.gba", 0x405EE8, 0xC6C + 0x4

.align 2, 0
.global wav_08406B58
wav_08406B58: @ 00406B58
    .short 0x0                      @ type
    .short 0x4000                   @ status
    .word  0x00D10C00               @ freq
    .word  0x1336                   @ loopStart
    .word  0x2799                   @ size
    .incbin "roms/fe6.gba", 0x406B68, 0x2799 + 0x3

.align 2, 0
.global wav_08409304
wav_08409304: @ 00409304
    .short 0x0                      @ type
    .short 0x0                      @ status
    .word  0x00D10C00               @ freq
    .word  0x0                      @ loopStart
    .word  0x5080                   @ size
    .incbin "roms/fe6.gba", 0x409314, 0x5080 + 0x4

.align 2, 0
.global wav_083BFA6C
wav_083BFA6C: @ 003BFA6C
    .short 0x0                      @ type
    .short 0x0                      @ status
    .word  0x00D10C00               @ freq
    .word  0x0                      @ loopStart
    .word  0x4B16                   @ size
    .incbin "roms/fe6.gba", 0x3BFA7C, 0x4B16 + 0x2

#endif /* CONFIG_DEBUG_M4A_TEST */
