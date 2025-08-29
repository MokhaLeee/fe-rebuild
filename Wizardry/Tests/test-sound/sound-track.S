#include "common.inc"

#include "MPlayDef.inc"
#include "asm_m4a.inc"
.section .rodata

#if CONFIG_DEBUG_M4A_TEST

.align 2
.global test_song_main_bgm
test_song_main_bgm:
@ ****************************** header ******************************
    .byte 0x07                      @ trackCount
    .byte 0x00                      @ blockCount
    .byte 0x0A                      @ priority
    .byte 0x9E                      @ reverb
    .word voicegroup_08381254       @ tone
    .word song_001_track0           @ tracks 0x085671E4
    .word song_001_track1           @ tracks 0x08567308
    .word song_001_track2           @ tracks 0x08567434
    .word song_001_track3           @ tracks 0x0856756C
    .word song_001_track4           @ tracks 0x0856764D
    .word song_001_track5           @ tracks 0x085676F3
    .word song_001_track6           @ tracks 0x08567888

@ ****************************** tracks ******************************
song_001_track0: @ 085671E4
    .byte KEYSH, 0
label_song_001_track0_0:
    .byte TEMPO, 62
    .byte VOICE, 48
    .byte VOL, 94
    .byte PAN, 64
    .byte N44, 60, 100
    .byte W48
    .byte N23, 65
    .byte W24
    .byte N20, 69, 96
    .byte W24
    .byte N44, 69, 100
    .byte W48
    .byte N42, 62, 104
    .byte W48
    .byte N56, 62, 112
    .byte W60
    .byte N11, 64, 104
    .byte W12
    .byte 0x41
    .byte 0x64
    .byte W12
    .byte 0x43
    .byte 0x68
    .byte W12
    .byte N44, 65, 100
    .byte W48
    .byte N40, 64, 104
    .byte W48
    .byte N44, 60, 108
    .byte W48
    .byte N23, 65, 104
    .byte W24
    .byte 0x45
    .byte W24
    .byte N44, 72
    .byte W48
    .byte N23, 70, 100
    .byte W24
    .byte 0x45
    .byte 0x60
    .byte W24
    .byte N56, 62, 108
    .byte W60
    .byte N11, 64
    .byte W12
    .byte 0x41
    .byte 0x64
    .byte W12
    .byte N09, 67
    .byte W12
    .byte N76, 67, 112
    .byte W96
    .byte N44, 60, 104
    .byte W48
    .byte N23, 65
    .byte W24
    .byte N20, 69, 100
    .byte W24
    .byte N44, 69, 108
    .byte W48
    .byte N42, 62
    .byte W48
    .byte N56, 62, 116
    .byte W60
    .byte N11, 64, 112
    .byte W12
    .byte 0x41
    .byte 0x68
    .byte W12
    .byte 0x43
    .byte W12
    .byte N44, 65, 96
    .byte W48
    .byte N36, 64, 108
    .byte W48
    .byte N44, 60, 100
    .byte W48
    .byte N23, 65, 104
    .byte W24
    .byte 0x45
    .byte W24
    .byte N44, 72, 112
    .byte W48
    .byte N23, 70, 104
    .byte W24
    .byte 0x45
    .byte W24
    .byte N56, 62, 108
    .byte W60
    .byte N11, 64, 116
    .byte W12
    .byte 0x41
    .byte 0x68
    .byte W12
    .byte 0x43
    .byte 0x64
    .byte W12
    .byte N64, 65, 104
    .byte W48
    .byte VOL, 86
    .byte W24
    .byte N23, 64, 120
    .byte W24
    .byte 0x3E
    .byte 0x7C
    .byte W24
    .byte N32, 70, 100
    .byte W36
    .byte N11, 67, 108
    .byte W12
    .byte 0x41
    .byte 0x68
    .byte W12
    .byte 0x40
    .byte W12
    .byte N32, 72, 116
    .byte W36
    .byte N11, 69, 104
    .byte W12
    .byte N18, 65
    .byte W24
    .byte N11, 65, 108
    .byte W12
    .byte 0x40
    .byte 0x68
    .byte W12
    .byte N23, 62, 100
    .byte W24
    .byte N32, 74, 108
    .byte W36
    .byte N11, 72, 112
    .byte W12
    .byte 0x46
    .byte 0x60
    .byte W12
    .byte 0x43
    .byte 0x5C
    .byte W12
    .byte N80, 69, 124
    .byte W96
    .byte N23, 62, 120
    .byte W24
    .byte N32, 70, 104
    .byte W36
    .byte N11, 67
    .byte W12
    .byte 0x41
    .byte 0x64
    .byte W12
    .byte 0x40
    .byte 0x6C
    .byte W12
    .byte N32, 72, 116
    .byte W36
    .byte N11, 69, 92
    .byte W12
    .byte N17, 77, 124
    .byte W24
    .byte N11, 77, 120
    .byte W12
    .byte 0x4C
    .byte 0x6C
    .byte W12
    .byte N20, 74, 112
    .byte W24
    .byte N32
    .byte W36
    .byte N11, 76
    .byte W12
    .byte 0x4D
    .byte 0x68
    .byte W12
    .byte 0x4F
    .byte W12
    .byte N44, 77, 112
    .byte W48
    .byte N42, 76, 100
    .byte W48
    .byte GOTO
    .word label_song_001_track0_0
    .byte FINE

song_001_track1: @ 08567308
    .byte KEYSH, 0
label_song_001_track1_0:
    .byte VOICE, 56
    .byte VOL, 70
    .byte PAN, 68
    .byte N09, 53, 92
    .byte W12
    .byte N08, 53, 100
    .byte W24
    .byte N05
    .byte W06
    .byte 0x35
    .byte 0x5C
    .byte W06
    .byte N08, 53, 100
    .byte W12
    .byte 0x35
    .byte 0x68
    .byte W36
    .byte 0x35
    .byte 0x60
    .byte W12
    .byte 0x35
    .byte 0x68
    .byte W24
    .byte N05, 53, 96
    .byte W06
    .byte 0x35
    .byte 0x50
    .byte W06
    .byte N08, 53, 96
    .byte W12
    .byte N09, 53, 104
    .byte W36
    .byte N08, 53, 100
    .byte W12
    .byte 0x35
    .byte 0x68
    .byte W24
    .byte N05, 53, 96
    .byte W06
    .byte 0x35
    .byte 0x4C
    .byte W06
    .byte N08, 53, 92
    .byte W12
    .byte 0x35
    .byte 0x60
    .byte W36
    .byte N10, 53, 92
    .byte W12
    .byte N08, 53, 96
    .byte W24
    .byte N05, 53, 88
    .byte W06
    .byte 0x35
    .byte 0x54
    .byte W06
    .byte N09, 52, 88
    .byte W12
    .byte N08, 52, 92
    .byte W36
    .byte N09, 53
    .byte W12
    .byte N10, 53, 104
    .byte W24
    .byte N05, 53, 96
    .byte W06
    .byte 0x35
    .byte 0x54
    .byte W06
    .byte N09, 53, 92
    .byte W12
    .byte 0x35
    .byte 0x68
    .byte W36
    .byte N10, 53, 88
    .byte W12
    .byte N10
    .byte W24
    .byte N05, 53, 84
    .byte W06
    .byte N05
    .byte W06
    .byte N09
    .byte W12
    .byte N08, 53, 92
    .byte W36
    .byte N09, 53, 80
    .byte W12
    .byte 0x35
    .byte 0x58
    .byte W24
    .byte N05, 53, 76
    .byte W06
    .byte 0x35
    .byte 0x54
    .byte W06
    .byte N09, 53, 80
    .byte W12
    .byte 0x35
    .byte 0x58
    .byte W36
    .byte 0x3A
    .byte 0x54
    .byte W12
    .byte 0x3A
    .byte 0x5C
    .byte W24
    .byte N05
    .byte W06
    .byte 0x3A
    .byte 0x50
    .byte W06
    .byte N44, 58, 84
    .byte W48
    .byte VOICE, 56
    .byte VOL, 78
    .byte PAN, 68
    .byte N44, 60, 108
    .byte W48
    .byte N17, 65, 96
    .byte W24
    .byte 0x45
    .byte W24
    .byte N44
    .byte W48
    .byte N40, 62
    .byte W48
    .byte N52, 62, 108
    .byte W60
    .byte N09, 64, 96
    .byte W12
    .byte 0x41
    .byte 0x74
    .byte W12
    .byte 0x43
    .byte 0x6C
    .byte W12
    .byte N40, 65
    .byte W48
    .byte 0x40
    .byte 0x60
    .byte W48
    .byte 0x3C
    .byte 0x6C
    .byte W48
    .byte N17, 65, 96
    .byte W24
    .byte 0x45
    .byte W24
    .byte N40, 72
    .byte W48
    .byte N17, 70, 116
    .byte W24
    .byte 0x45
    .byte 0x6C
    .byte W24
    .byte N52, 62
    .byte W60
    .byte N10, 64
    .byte W12
    .byte 0x41
    .byte 0x74
    .byte W12
    .byte 0x43
    .byte W12
    .byte N76, 65
    .byte W72
    .byte VOICE, 48
    .byte VOL, 69
    .byte PAN, 68
    .byte W24
    .byte N44, 53, 100
    .byte W48
    .byte 0x37
    .byte W48
    .byte 0x34
    .byte 0x74
    .byte W48
    .byte 0x39
    .byte 0x5C
    .byte W48
    .byte 0x35
    .byte 0x58
    .byte W48
    .byte 0x37
    .byte 0x68
    .byte W48
    .byte N92, 52, 108
    .byte W96
    .byte N44, 53, 104
    .byte W48
    .byte 0x37
    .byte 0x64
    .byte W48
    .byte 0x34
    .byte 0x74
    .byte W48
    .byte 0x39
    .byte 0x64
    .byte W48
    .byte 0x35
    .byte 0x74
    .byte W48
    .byte 0x35
    .byte 0x6C
    .byte W48
    .byte N92, 55, 104
    .byte W96
    .byte GOTO
    .word label_song_001_track1_0
    .byte FINE

song_001_track2: @ 08567434
    .byte KEYSH, 0
label_song_001_track2_0:
    .byte VOICE, 56
    .byte VOL, 70
    .byte PAN, 46
    .byte N09, 57, 124
    .byte W12
    .byte N08, 57, 127
    .byte W24
    .byte N05, 57, 116
    .byte W06
    .byte 0x39
    .byte 0x64
    .byte W06
    .byte N09, 57, 120
    .byte W12
    .byte 0x39
    .byte 0x7C
    .byte W36
    .byte N08, 62, 116
    .byte W12
    .byte 0x3E
    .byte 0x78
    .byte W24
    .byte N05, 62, 112
    .byte W06
    .byte 0x3E
    .byte 0x64
    .byte W06
    .byte N08, 62, 120
    .byte W12
    .byte N10
    .byte W36
    .byte N09, 62, 116
    .byte W12
    .byte 0x3E
    .byte 0x78
    .byte W24
    .byte N05, 62, 116
    .byte W06
    .byte 0x3E
    .byte 0x58
    .byte W06
    .byte N09, 62, 108
    .byte W12
    .byte 0x3E
    .byte 0x7C
    .byte W36
    .byte 0x3C
    .byte 0x6C
    .byte W12
    .byte N08, 60, 112
    .byte W24
    .byte N05, 60, 100
    .byte W06
    .byte 0x3C
    .byte 0x58
    .byte W06
    .byte N09, 60, 104
    .byte W12
    .byte 0x3C
    .byte 0x70
    .byte W36
    .byte 0x39
    .byte 0x78
    .byte W12
    .byte N10
    .byte W24
    .byte N05
    .byte W06
    .byte 0x39
    .byte 0x68
    .byte W06
    .byte N09, 57, 112
    .byte W12
    .byte 0x39
    .byte 0x7C
    .byte W36
    .byte N10, 58, 120
    .byte W12
    .byte 0x3A
    .byte 0x7F
    .byte W24
    .byte N05, 58, 112
    .byte W06
    .byte N05
    .byte W06
    .byte N09
    .byte W12
    .byte 0x3A
    .byte 0x7F
    .byte W36
    .byte 0x37
    .byte 0x78
    .byte W12
    .byte N10, 55, 124
    .byte W24
    .byte N05, 55, 112
    .byte W06
    .byte N05
    .byte W06
    .byte N09
    .byte W12
    .byte 0x37
    .byte 0x6C
    .byte W36
    .byte 0x34
    .byte 0x78
    .byte W12
    .byte 0x34
    .byte 0x7C
    .byte W24
    .byte N05
    .byte W06
    .byte 0x34
    .byte 0x6C
    .byte W06
    .byte N44, 52, 116
    .byte W48
    .byte VOICE, 56
    .byte VOL, 78
    .byte PAN, 60
    .byte N40, 53, 76
    .byte W48
    .byte N17, 57, 56
    .byte W24
    .byte 0x3C
    .byte 0x40
    .byte W24
    .byte N40, 58, 84
    .byte W48
    .byte 0x35
    .byte 0x40
    .byte W48
    .byte N52, 53, 76
    .byte W60
    .byte N10, 55
    .byte W12
    .byte 0x39
    .byte 0x3C
    .byte W12
    .byte 0x3A
    .byte 0x40
    .byte W12
    .byte N40, 57
    .byte W48
    .byte N42, 55, 60
    .byte W48
    .byte N40, 53, 76
    .byte W48
    .byte N17, 57, 60
    .byte W24
    .byte 0x3C
    .byte 0x40
    .byte W24
    .byte N40, 65, 60
    .byte W48
    .byte N22, 65, 76
    .byte W24
    .byte N22
    .byte W24
    .byte N56, 53, 60
    .byte W60
    .byte N10, 55, 84
    .byte W12
    .byte 0x39
    .byte 0x40
    .byte W12
    .byte 0x3A
    .byte 0x54
    .byte W12
    .byte N68, 57, 76
    .byte W72
    .byte VOICE, 48
    .byte VOL, 68
    .byte PAN, 45
    .byte W24
    .byte N44, 46, 104
    .byte W48
    .byte 0x2E
    .byte 0x60
    .byte W48
    .byte 0x2D
    .byte 0x64
    .byte W48
    .byte N23, 50, 120
    .byte W24
    .byte 0x30
    .byte 0x5C
    .byte W24
    .byte N44, 46, 100
    .byte W48
    .byte 0x30
    .byte W48
    .byte N92, 45, 96
    .byte W96
    .byte N44, 46, 92
    .byte W48
    .byte 0x2E
    .byte 0x60
    .byte W48
    .byte 0x2D
    .byte 0x68
    .byte W48
    .byte N23, 50, 124
    .byte W24
    .byte 0x30
    .byte 0x60
    .byte W24
    .byte N44, 46, 108
    .byte W48
    .byte 0x2F
    .byte 0x64
    .byte W48
    .byte 0x30
    .byte 0x78
    .byte W48
    .byte 0x24
    .byte W48
    .byte GOTO
    .word label_song_001_track2_0
    .byte FINE

song_001_track3: @ 0856756C
    .byte KEYSH, 0
label_song_001_track3_0:
    .byte VOICE, 48
    .byte VOL, 82
    .byte PAN, 61
    .byte N92, 41, 124
    .byte W96
    .byte N68, 46, 104
    .byte W72
    .byte N23, 45, 108
    .byte W24
    .byte N92, 43
    .byte W96
    .byte N44, 48, 116
    .byte W48
    .byte 0x24
    .byte 0x64
    .byte W48
    .byte N84, 41, 104
    .byte W96
    .byte N68, 50, 116
    .byte W72
    .byte N23, 48, 112
    .byte W24
    .byte N92, 46, 100
    .byte W96
    .byte N44, 48, 116
    .byte W48
    .byte N23, 36, 108
    .byte W24
    .byte 0x28
    .byte W24
    .byte N92, 41, 112
    .byte W96
    .byte N68, 46, 108
    .byte W72
    .byte N23, 45
    .byte W24
    .byte N92, 43
    .byte W96
    .byte N44, 48, 116
    .byte W48
    .byte 0x24
    .byte 0x70
    .byte W48
    .byte N78, 45, 104
    .byte W96
    .byte N68, 50, 124
    .byte W72
    .byte N23, 48, 112
    .byte W24
    .byte N44, 46, 108
    .byte W48
    .byte 0x30
    .byte 0x70
    .byte W48
    .byte N52, 41, 116
    .byte W72
    .byte VOICE, 73
    .byte VOL, 82
    .byte PAN, 76
    .byte N11, 65, 92
    .byte W12
    .byte 0x40
    .byte W12
    .byte N23, 62, 104
    .byte W24
    .byte N32, 70, 92
    .byte W36
    .byte N11, 67
    .byte W12
    .byte 0x41
    .byte W12
    .byte 0x40
    .byte 0x58
    .byte W12
    .byte N32, 72, 92
    .byte W36
    .byte N11, 69, 104
    .byte W12
    .byte N23, 65, 84
    .byte W24
    .byte N11, 65, 92
    .byte W12
    .byte 0x40
    .byte W12
    .byte N23, 62
    .byte W24
    .byte N32, 74
    .byte W36
    .byte N11, 72
    .byte W12
    .byte 0x46
    .byte W12
    .byte 0x43
    .byte W12
    .byte N84, 69
    .byte W96
    .byte N23, 50
    .byte W24
    .byte N32, 58, 84
    .byte W36
    .byte N11, 55, 92
    .byte W12
    .byte 0x35
    .byte W12
    .byte 0x34
    .byte 0x54
    .byte W12
    .byte N32, 60, 92
    .byte W36
    .byte N11, 57
    .byte W12
    .byte N23, 65, 104
    .byte W24
    .byte N11, 65, 84
    .byte W12
    .byte 0x40
    .byte 0x5C
    .byte W12
    .byte N23, 62
    .byte W24
    .byte N32, 62, 84
    .byte W36
    .byte N11, 64
    .byte W12
    .byte 0x41
    .byte 0x5C
    .byte W12
    .byte 0x43
    .byte 0x54
    .byte W12
    .byte N44, 65, 104
    .byte W48
    .byte 0x40
    .byte 0x5C
    .byte W48
    .byte GOTO
    .word label_song_001_track3_0
    .byte FINE

song_001_track4: @ 0856764D
    .byte KEYSH, 0
label_song_001_track4_0:
    .byte W96
    .byte W96
    .byte W72
    .byte VOICE, 60
    .byte MOD, 1
    .byte VOL, 87
    .byte PAN, 53
    .byte W24
    .byte W24
    .byte N17, 48, 108
    .byte W18
    .byte N05, 48, 32
    .byte W06
    .byte N40, 60, 120
    .byte W42
    .byte N11, 60, 32
    .byte W06
    .byte W96
    .byte W96
    .byte W96
    .byte W24
    .byte N17, 48, 104
    .byte W18
    .byte N05, 48, 32
    .byte W06
    .byte N40, 60, 124
    .byte W42
    .byte N11, 60, 32
    .byte W06
    .byte W96
    .byte W24
    .byte N17, 50, 112
    .byte W18
    .byte N05, 50, 32
    .byte W06
    .byte N17, 53, 108
    .byte W18
    .byte N05, 53, 32
    .byte W06
    .byte N17, 58, 104
    .byte W18
    .byte N05, 58, 32
    .byte W06
    .byte N88, 62, 124
    .byte W90
    .byte N05, 62, 32
    .byte W06
    .byte N40, 60, 124
    .byte W42
    .byte N05, 60, 32
    .byte W06
    .byte N40, 48, 104
    .byte W42
    .byte N05, 48, 32
    .byte W06
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte N17, 45, 108
    .byte W18
    .byte N05, 45, 32
    .byte W06
    .byte N17, 52, 112
    .byte W18
    .byte N05, 52, 32
    .byte W06
    .byte N17, 49, 104
    .byte W18
    .byte N05, 49, 32
    .byte W06
    .byte N17, 45, 104
    .byte W18
    .byte N05, 45, 32
    .byte W06
    .byte W96
    .byte W96
    .byte W96
    .byte W24
    .byte N17, 48, 108
    .byte W18
    .byte N05, 48, 32
    .byte W06
    .byte N40, 60, 120
    .byte W42
    .byte N05, 60, 32
    .byte W06
    .byte GOTO
    .word label_song_001_track4_0
    .byte FINE

song_001_track5: @ 085676F3
    .byte KEYSH, 0
label_song_001_track5_0:
    .byte VOICE, 127
    .byte VOL, 85
    .byte PAN, 64
    .byte N09, 38, 112
    .byte W12
    .byte N09
    .byte W24
    .byte N05
    .byte W06
    .byte N05
    .byte W06
    .byte N08
    .byte W12
    .byte N09
    .byte W24
    .byte N11
    .byte W12
    .byte N09
    .byte W12
    .byte N08
    .byte W24
    .byte N05
    .byte W06
    .byte 0x26
    .byte 0x6C
    .byte W06
    .byte N08, 38, 112
    .byte W12
    .byte N09
    .byte W24
    .byte N11
    .byte W12
    .byte N09
    .byte W12
    .byte N08
    .byte W24
    .byte N05
    .byte W06
    .byte N05
    .byte W06
    .byte N08
    .byte W12
    .byte N09
    .byte W24
    .byte N05, 38, 96
    .byte W06
    .byte 0x26
    .byte 0x6C
    .byte W06
    .byte N08, 38, 112
    .byte W12
    .byte N09
    .byte W24
    .byte N05, 38, 108
    .byte W06
    .byte 0x26
    .byte 0x68
    .byte W06
    .byte N08, 38, 108
    .byte W12
    .byte N09, 38, 112
    .byte W12
    .byte N23, 39, 120
    .byte W24
    .byte N09, 38, 112
    .byte W12
    .byte N09
    .byte W24
    .byte N05
    .byte W06
    .byte 0x26
    .byte 0x64
    .byte W06
    .byte N08, 38, 112
    .byte W12
    .byte N09
    .byte W36
    .byte N09
    .byte W12
    .byte N09
    .byte W24
    .byte N05
    .byte W06
    .byte 0x26
    .byte 0x4C
    .byte W06
    .byte N08, 38, 112
    .byte W12
    .byte N09
    .byte W24
    .byte N11
    .byte W12
    .byte N09
    .byte W12
    .byte N09
    .byte W24
    .byte N05
    .byte W06
    .byte 0x26
    .byte 0x64
    .byte W06
    .byte N08, 38, 112
    .byte W12
    .byte N09
    .byte W24
    .byte N09
    .byte W12
    .byte N09
    .byte W12
    .byte N09
    .byte W30
    .byte N05
    .byte W06
    .byte N44, 39, 120
    .byte W48
    .byte N09, 38, 112
    .byte W12
    .byte N09
    .byte W24
    .byte N05
    .byte W06
    .byte 0x26
    .byte 0x64
    .byte W06
    .byte N08, 38, 112
    .byte W12
    .byte N09
    .byte W24
    .byte N08
    .byte W12
    .byte N09
    .byte W12
    .byte N09
    .byte W24
    .byte N05, 38, 108
    .byte W06
    .byte 0x26
    .byte 0x5C
    .byte W06
    .byte N08, 38, 112
    .byte W12
    .byte N09
    .byte W12
    .byte N10
    .byte W24
    .byte N08
    .byte W12
    .byte N09
    .byte W12
    .byte N07, 38, 68
    .byte W12
    .byte N05, 38, 112
    .byte W06
    .byte 0x26
    .byte 0x68
    .byte W06
    .byte N08, 38, 108
    .byte W12
    .byte N09, 38, 112
    .byte W24
    .byte N09
    .byte W12
    .byte N09
    .byte W12
    .byte N09
    .byte W24
    .byte N05
    .byte W06
    .byte 0x26
    .byte 0x64
    .byte W06
    .byte N08, 38, 96
    .byte W12
    .byte N10, 38, 112
    .byte W12
    .byte N23, 39, 120
    .byte W24
    .byte N09, 38, 112
    .byte W12
    .byte N09
    .byte W24
    .byte N05
    .byte W06
    .byte 0x26
    .byte 0x60
    .byte W06
    .byte N09, 38, 100
    .byte W12
    .byte N10, 38, 112
    .byte W24
    .byte N08
    .byte W12
    .byte N09, 38, 108
    .byte W12
    .byte 0x26
    .byte 0x70
    .byte W24
    .byte N05
    .byte W06
    .byte 0x26
    .byte 0x68
    .byte W06
    .byte N08
    .byte W12
    .byte N09, 38, 112
    .byte W24
    .byte N09
    .byte W12
    .byte N10
    .byte W12
    .byte N10
    .byte W24
    .byte N05, 38, 104
    .byte W06
    .byte 0x26
    .byte 0x64
    .byte W06
    .byte N09
    .byte W12
    .byte N10, 38, 112
    .byte W24
    .byte N08
    .byte W12
    .byte N09
    .byte W12
    .byte N10
    .byte W24
    .byte N05
    .byte W06
    .byte 0x26
    .byte 0x68
    .byte W06
    .byte N09, 38, 108
    .byte W12
    .byte 0x26
    .byte 0x70
    .byte W12
    .byte N23, 39, 120
    .byte W24
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte N08, 38, 108
    .byte W12
    .byte N05, 38, 96
    .byte W06
    .byte 0x26
    .byte 0x50
    .byte W06
    .byte N08, 38, 104
    .byte W12
    .byte N05, 38, 100
    .byte W06
    .byte 0x26
    .byte 0x60
    .byte W06
    .byte N09, 38, 104
    .byte W12
    .byte N05, 38, 100
    .byte W06
    .byte 0x26
    .byte 0x54
    .byte W06
    .byte N09, 38, 100
    .byte W12
    .byte N05
    .byte W06
    .byte 0x26
    .byte 0x4C
    .byte W06
    .byte N09, 38, 108
    .byte W12
    .byte N05, 38, 100
    .byte W06
    .byte 0x26
    .byte 0x58
    .byte W06
    .byte N09, 38, 104
    .byte W12
    .byte N05, 38, 100
    .byte W06
    .byte 0x26
    .byte 0x5C
    .byte W06
    .byte N09, 38, 100
    .byte W12
    .byte N05, 38, 104
    .byte W06
    .byte 0x26
    .byte 0x60
    .byte W06
    .byte N08, 38, 104
    .byte W12
    .byte N09, 38, 112
    .byte W12
    .byte GOTO
    .word label_song_001_track5_0
    .byte FINE

song_001_track6: @ 08567888
    .byte KEYSH, 0
label_song_001_track6_2:
    .byte VOICE, 127
    .byte VOL, 85
    .byte PAN, 64
    .byte N14, 43, 127
    .byte W84
    .byte N11, 41, 104
    .byte W12
    .byte N16, 43, 124
    .byte W84
    .byte N11, 41, 120
    .byte W12
    .byte N16, 43, 127
    .byte W84
    .byte N11, 41, 116
    .byte W12
    .byte N16, 43, 127
    .byte W36
    .byte N05, 41, 100
    .byte W06
    .byte 0x2B
    .byte W06
    .byte N11, 41, 104
    .byte W12
    .byte N15, 43, 127
    .byte W24
    .byte N15
    .byte W12
    .byte W84
    .byte N11, 41, 108
    .byte W12
label_song_001_track6_1:
    .byte N16, 43, 127
    .byte W84
    .byte N11, 41, 124
    .byte W12
    .byte PEND
    .byte N17, 43, 127
    .byte W36
    .byte N05, 43, 96
    .byte W06
    .byte 0x2B
    .byte 0x5C
    .byte W06
    .byte N11, 43, 104
    .byte W12
    .byte N16, 43, 124
    .byte W36
    .byte 0x29
    .byte 0x7F
    .byte W36
    .byte N05, 41, 120
    .byte W06
    .byte 0x2B
    .byte 0x6C
    .byte W06
    .byte N11, 41, 112
    .byte W12
    .byte 0x2B
    .byte 0x7F
    .byte W12
    .byte N05, 41, 104
    .byte W06
    .byte 0x2B
    .byte 0x60
    .byte W06
    .byte 0x29
    .byte 0x64
    .byte W06
    .byte 0x2B
    .byte 0x70
    .byte W06
    .byte N15, 41, 96
    .byte W84
    .byte N11, 43, 127
    .byte W12
label_song_001_track6_0:
    .byte N16, 43, 127
    .byte W84
    .byte N11, 43, 120
    .byte W12
    .byte PEND
    .byte PATT
    .word label_song_001_track6_0
    .byte N16, 43, 127
    .byte W36
    .byte N05, 43, 124
    .byte W06
    .byte 0x29
    .byte 0x64
    .byte W06
    .byte N11, 43, 108
    .byte W12
    .byte 0x29
    .byte 0x78
    .byte W12
    .byte 0x2B
    .byte 0x7F
    .byte W12
    .byte 0x29
    .byte 0x7C
    .byte W12
    .byte PATT
    .word label_song_001_track6_1
    .byte N17, 43, 127
    .byte W96
    .byte N16, 41, 120
    .byte W48
    .byte 0x2B
    .byte W48
    .byte 0x29
    .byte 0x7C
    .byte W36
    .byte N05, 41, 108
    .byte W06
    .byte 0x2B
    .byte 0x64
    .byte W06
    .byte N11, 41, 104
    .byte W12
    .byte N16, 43, 127
    .byte W36
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte W96
    .byte GOTO
    .word label_song_001_track6_2
    .byte FINE

#endif /* CONFIG_DEBUG_M4A_TEST */
