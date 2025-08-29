#include "MPlayDef.inc"
.section .rodata

.macro tone_data type, key, length, pan_sweep, wav, attack, decay, sustain, release
	.byte \type, \key, \length, \pan_sweep
	.word \wav
	.byte \attack, \decay, \sustain, \release
.endm

.align 2
.global song_000
song_000:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_05A
song_05A:
@ ****************************** header ******************************
	.byte 0x04                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x3C                      @ priority
	.byte 0x00                      @ reverb
	.word song_05A_tone             @ tone
	.word song_05A_track0           @ tracks 0x08587E04
	.word song_05A_track1           @ tracks 0x08587E22
	.word song_05A_track2           @ tracks 0x08587E3E
	.word song_05A_track3           @ tracks 0x08587E51

@ ****************************** tracks ******************************
.align 2
song_05A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 80
	.byte PAN, 74
	.byte N03, 72, 127
	.byte W06
	.byte 0x4F
	.byte W06
	.byte 0x4B
	.byte W06
	.byte 0x4F
	.byte W06
	.byte 0x52
	.byte W06
	.byte 0x54
	.byte W06
	.byte N44, 86
	.byte W12
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_05A_track1:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte VOL, 80
	.byte PAN, 54
	.byte N03, 67, 127
	.byte W06
	.byte 0x4A
	.byte W06
	.byte 0x46
	.byte W06
	.byte 0x4A
	.byte W06
	.byte 0x4D
	.byte W06
	.byte 0x4F
	.byte W06
	.byte N44, 81
	.byte W12
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_05A_track2:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte VOL, 80
	.byte PAN, 84
	.byte N32, 63, 127
	.byte W24
	.byte W12
	.byte N44, 67
	.byte W12
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_05A_track3:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte VOL, 80
	.byte PAN, 44
	.byte N32, 58, 127
	.byte W24
	.byte W12
	.byte N44, 60
	.byte W12
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_05A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00456C54, 0xFF, 0xF9, 0x00, 0x7F @ index=84


.align 2
.global song_05B
song_05B:
@ ****************************** header ******************************
	.byte 0x04                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x3C                      @ priority
	.byte 0x00                      @ reverb
	.word song_05B_tone             @ tone
	.word song_05B_track0           @ tracks 0x08587E7C
	.word song_05B_track1           @ tracks 0x08587E95
	.word song_05B_track2           @ tracks 0x08587EAC
	.word song_05B_track3           @ tracks 0x08587EBE

@ ****************************** tracks ******************************
.align 2
song_05B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 87
	.byte VOICE, 0
	.byte VOL, 100
	.byte PAN, 74
	.byte N22, 72, 127
	.byte W24
	.byte N05, 74
	.byte W08
	.byte 0x48
	.byte W08
	.byte 0x4A
	.byte W08
	.byte N44, 76
	.byte W48
	.byte FINE

.align 2
song_05B_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 100
	.byte PAN, 54
	.byte N22, 63, 127
	.byte W24
	.byte N05, 70
	.byte W08
	.byte 0x41
	.byte W08
	.byte 0x46
	.byte W08
	.byte N44, 67
	.byte W48
	.byte FINE

.align 2
song_05B_track2:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 100
	.byte PAN, 84
	.byte N22, 60, 127
	.byte W24
	.byte N22
	.byte W24
	.byte N44, 55
	.byte W48
	.byte FINE

.align 2
song_05B_track3:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 100
	.byte PAN, 44
	.byte N22, 56, 127
	.byte W24
	.byte 0x35
	.byte W24
	.byte N44, 48
	.byte W48
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_05B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00455098, 0xFF, 0x00, 0xFF, 0x59 @ index=81
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00453730, 0xFF, 0x00, 0xFF, 0x59 @ index=80


.align 2
.global song_05C
song_05C:
@ ****************************** header ******************************
	.byte 0x04                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x3C                      @ priority
	.byte 0x00                      @ reverb
	.word song_05C_tone             @ tone
	.word song_05C_track0           @ tracks 0x08587EE8
	.word song_05C_track1           @ tracks 0x08587F08
	.word song_05C_track2           @ tracks 0x08587F2A
	.word song_05C_track3           @ tracks 0x08587F74

@ ****************************** tracks ******************************
.align 2
song_05C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 90
	.byte PAN, 54
	.byte W02
	.byte N07, 75, 127
	.byte W09
	.byte 0x4D
	.byte W09
	.byte 0x4B
	.byte W04
	.byte W05
	.byte N12, 74
	.byte W14
	.byte 0x48
	.byte W05
	.byte W09
	.byte N44, 74
	.byte W15
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_05C_track1:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte PAN, 84
	.byte VOL, 56
	.byte BENDR, 1
	.byte BEND, 70
	.byte W05
	.byte N07, 75, 127
	.byte W09
	.byte 0x4D
	.byte W09
	.byte 0x4B
	.byte W01
	.byte W08
	.byte N12, 74
	.byte W14
	.byte 0x48
	.byte W02
	.byte W12
	.byte N44, 74
	.byte W12
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_05C_track2:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte PAN, 92
	.byte LFOS, 9
	.byte LFODL, 1
	.byte MOD, 4
	.byte W02
	.byte VOL, 14
	.byte TIE, 70, 84
	.byte W02
	.byte VOL, 19
	.byte W02
	.byte 0x1A
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x26
	.byte W02
	.byte 0x2D
	.byte W02
	.byte 0x33
	.byte W02
	.byte 0x3A
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x4D
	.byte W02
	.byte 0x52
	.byte W02
	.byte 0x5A
	.byte W22
	.byte W12
	.byte 0x59
	.byte W04
	.byte 0x52
	.byte W04
	.byte 0x4B
	.byte W04
	.byte 0x45
	.byte W04
	.byte 0x3F
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x32
	.byte W04
	.byte 0x2B
	.byte W04
	.byte 0x24
	.byte W04
	.byte 0x1E
	.byte W04
	.byte 0x18
	.byte W04
	.byte 0x11
	.byte W04
	.byte EOT
	.byte VOL, 11
	.byte W12
	.byte FINE

.align 2
song_05C_track3:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte PAN, 36
	.byte LFOS, 9
	.byte LFODL, 2
	.byte MOD, 4
	.byte W02
	.byte VOL, 14
	.byte TIE, 68, 84
	.byte W02
	.byte VOL, 19
	.byte W02
	.byte 0x1A
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x26
	.byte W02
	.byte 0x2D
	.byte W02
	.byte 0x33
	.byte W02
	.byte 0x3A
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x4D
	.byte W02
	.byte 0x52
	.byte W02
	.byte 0x5A
	.byte W22
	.byte W12
	.byte 0x59
	.byte W04
	.byte 0x52
	.byte W04
	.byte 0x4B
	.byte W04
	.byte 0x45
	.byte W04
	.byte 0x3F
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x32
	.byte W04
	.byte 0x2B
	.byte W04
	.byte 0x24
	.byte W04
	.byte 0x1E
	.byte W04
	.byte 0x18
	.byte W04
	.byte 0x11
	.byte W04
	.byte EOT
	.byte VOL, 11
	.byte W12
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_05C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00455098, 0xFF, 0x00, 0xFF, 0x59 @ index=81


.align 2
.global song_05D
song_05D:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_05E
song_05E:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_05F
song_05F:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_060
song_060:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_060_tone             @ tone
	.word song_060_track0           @ tracks 0x08587FD8
	.word song_060_track1           @ tracks 0x08587FF3

@ ****************************** tracks ******************************
.align 2
song_060_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N04, 83, 127
	.byte W04
	.byte 0x5C
	.byte W04
	.byte N06, 90
	.byte W06
	.byte N04, 95
	.byte W04
	.byte 0x5A
	.byte W04
	.byte N10, 97
	.byte W02
	.byte W24
	.byte FINE

.align 2
song_060_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 48
	.byte N04, 83, 127
	.byte W04
	.byte 0x5C
	.byte W04
	.byte N06, 90
	.byte W06
	.byte N04, 95
	.byte W04
	.byte 0x5A
	.byte W04
	.byte N10, 97
	.byte W02
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_060_tone:
	tone_data 0x03, 0x3C, 0x00, 0x00, wav_0x0039943C, 0x00, 0x00, 0x0F, 0x00 @ index=48
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x02, 0x00, 0x00 @ index=49


.align 2
.global song_061
song_061:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_061_tone             @ tone
	.word song_061_track0           @ tracks 0x0858801C

@ ****************************** tracks ******************************
.align 2
song_061_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 5
	.byte VOL, 60
	.byte BEND, 0
	.byte N06, 93, 127
	.byte W01
	.byte BEND, 64
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x40
	.byte W02
	.byte VOICE, 1
	.byte BEND, 0
	.byte N16, 98, 112
	.byte W01
	.byte BEND, 64
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x40
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_061_tone:
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x01, 0x00, 0x00 @ index=50
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x02, 0x00, 0x00 @ index=51


.align 2
.global song_062
song_062:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_063
song_063:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_064
song_064:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_065
song_065:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x1E                      @ priority
	.byte 0x00                      @ reverb
	.word song_065_tone             @ tone
	.word song_065_track0           @ tracks 0x0858806C

@ ****************************** tracks ******************************
.align 2
song_065_track0:
	.byte VOL, 40
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte N03, 80, 127
	.byte W04
	.byte N05, 78
	.byte W20
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_065_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x01, 0x00, 0x00 @ index=0


.align 2
.global song_066
song_066:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x1E                      @ priority
	.byte 0x00                      @ reverb
	.word song_066_tone             @ tone
	.word song_066_track0           @ tracks 0x08588088

@ ****************************** tracks ******************************
.align 2
song_066_track0:
	.byte VOL, 55
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte N04, 81, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_066_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000001, 0x00, 0x01, 0x00, 0x00 @ index=1


.align 2
.global song_067
song_067:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x1E                      @ priority
	.byte 0x00                      @ reverb
	.word song_067_tone             @ tone
	.word song_067_track0           @ tracks 0x085880A4

@ ****************************** tracks ******************************
.align 2
song_067_track0:
	.byte VOL, 55
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte N04, 83, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_067_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000001, 0x00, 0x01, 0x00, 0x00 @ index=1


.align 2
.global song_068
song_068:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x1F                      @ priority
	.byte 0x00                      @ reverb
	.word song_068_tone             @ tone
	.word song_068_track0           @ tracks 0x085880C0

@ ****************************** tracks ******************************
.align 2
song_068_track0:
	.byte VOL, 55
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 5
	.byte PRIO, 10
	.byte BEND, 64
	.byte N10, 87, 127
	.byte W02
	.byte BEND, 127
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x7F
	.byte W02
	.byte 0x40
	.byte W02
	.byte PRIO, 0
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_068_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x02, 0x00, 0x00 @ index=5


.align 2
.global song_069
song_069:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x1F                      @ priority
	.byte 0x00                      @ reverb
	.word song_069_tone             @ tone
	.word song_069_track0           @ tracks 0x085880EC

@ ****************************** tracks ******************************
.align 2
song_069_track0:
	.byte VOL, 55
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 5
	.byte PRIO, 10
	.byte N06, 87, 127
	.byte W01
	.byte BEND, 127
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W04
	.byte VOICE, 1
	.byte BEND, 64
	.byte N10
	.byte W02
	.byte BEND, 127
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x7F
	.byte W02
	.byte 0x40
	.byte W02
	.byte PRIO, 0
	.byte W07
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_069_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x02, 0x00, 0x00 @ index=4
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x02, 0x00, 0x00 @ index=5


.align 2
.global song_06A
song_06A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x20                      @ priority
	.byte 0x00                      @ reverb
	.word song_06A_tone             @ tone
	.word song_06A_track0           @ tracks 0x08588124

@ ****************************** tracks ******************************
.align 2
song_06A_track0:
	.byte VOL, 60
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 5
	.byte PRIO, 10
	.byte N02, 95, 127
	.byte W02
	.byte BEND, 0
	.byte N08
	.byte W01
	.byte BEND, 64
	.byte W01
	.byte VOICE, 1
	.byte BEND, 0
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x40
	.byte W01
	.byte PRIO, 0
	.byte W14
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_06A_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x02, 0x00, 0x00 @ index=4
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x02, 0x00, 0x00 @ index=5


.align 2
.global song_06B
song_06B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x1F                      @ priority
	.byte 0x00                      @ reverb
	.word song_06B_tone             @ tone
	.word song_06B_track0           @ tracks 0x0858815C

@ ****************************** tracks ******************************
.align 2
song_06B_track0:
	.byte VOL, 55
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte PRIO, 10
	.byte N04, 89, 127
	.byte W04
	.byte N03, 89, 80
	.byte W03
	.byte 0x59
	.byte 0x3C
	.byte W03
	.byte 0x59
	.byte 0x34
	.byte W03
	.byte 0x59
	.byte 0x28
	.byte W03
	.byte PRIO, 0
	.byte 0x59
	.byte 0x20
	.byte W03
	.byte 0x59
	.byte 0x14
	.byte W05
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_06B_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x02, 0x00, 0x00 @ index=4


.align 2
.global song_06C
song_06C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_06C_tone             @ tone
	.word song_06C_track0           @ tracks 0x0858818C

@ ****************************** tracks ******************************
.align 2
song_06C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte PRIO, 10
	.byte VOL, 110
	.byte N02, 48, 127
	.byte W04
	.byte N17, 48, 108
	.byte W12
	.byte PRIO, 0
	.byte W08
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_06C_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x01, 0x0B, 0x00 @ index=3


.align 2
.global song_06D
song_06D:
@ ****************************** header ******************************
	.byte 0x03                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_06D_tone             @ tone
	.word song_06D_track0           @ tracks 0x085881B0
	.word song_06D_track1           @ tracks 0x085881F2
	.word song_06D_track2           @ tracks 0x08588243

@ ****************************** tracks ******************************
.align 2
song_06D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 48
	.byte PAN, 64
	.byte N05, 79, 127
	.byte W05
	.byte 0x56
	.byte W05
	.byte 0x54
	.byte W05
	.byte 0x56
	.byte W05
	.byte N06, 91
	.byte W04
	.byte W02
	.byte N05, 79, 80
	.byte W05
	.byte 0x56
	.byte W05
	.byte 0x54
	.byte W05
	.byte 0x56
	.byte W05
	.byte N06, 91
	.byte W02
	.byte W04
	.byte N05, 79, 56
	.byte W05
	.byte 0x56
	.byte W05
	.byte 0x54
	.byte W05
	.byte 0x56
	.byte W05
	.byte N06, 91
	.byte W06
	.byte N05, 79, 32
	.byte W05
	.byte 0x56
	.byte W05
	.byte 0x54
	.byte W05
	.byte 0x56
	.byte W03
	.byte W02
	.byte N06, 91
	.byte W22
	.byte FINE

.align 2
song_06D_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 32
	.byte PAN, 64
	.byte W04
	.byte N05, 79, 127
	.byte W01
	.byte PAN, 0
	.byte W04
	.byte N05, 86
	.byte W05
	.byte 0x54
	.byte W05
	.byte 0x56
	.byte W05
	.byte N06, 91
	.byte W06
	.byte N05, 79, 80
	.byte W01
	.byte PAN, 127
	.byte W04
	.byte N05, 86
	.byte W05
	.byte 0x54
	.byte W05
	.byte 0x56
	.byte W03
	.byte W02
	.byte N06, 91
	.byte W06
	.byte N05, 79, 56
	.byte W01
	.byte PAN, 0
	.byte W04
	.byte N05, 86
	.byte W05
	.byte 0x54
	.byte W05
	.byte 0x56
	.byte W01
	.byte W04
	.byte N06, 91
	.byte W06
	.byte N05, 79, 32
	.byte W01
	.byte PAN, 127
	.byte W04
	.byte N05, 86
	.byte W05
	.byte 0x54
	.byte W04
	.byte W01
	.byte 0x56
	.byte W05
	.byte N06, 91
	.byte W18
	.byte FINE

.align 2
song_06D_track2:
	.byte KEYSH, 0
	.byte VOICE, 2
	.byte VOL, 127
	.byte PAN, 64
	.byte N05, 79, 127
	.byte W05
	.byte 0x56
	.byte W05
	.byte 0x54
	.byte W05
	.byte 0x56
	.byte W05
	.byte N06, 91
	.byte W04
	.byte W02
	.byte N05, 79, 96
	.byte W05
	.byte 0x56
	.byte W05
	.byte 0x54
	.byte W05
	.byte 0x56
	.byte W05
	.byte N06, 91
	.byte W02
	.byte W04
	.byte N05, 79, 56
	.byte W05
	.byte 0x56
	.byte W05
	.byte 0x54
	.byte W05
	.byte 0x56
	.byte W05
	.byte N06, 91
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_06D_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x02, 0x00, 0x00 @ index=26
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x02, 0x00, 0x00 @ index=27
	tone_data 0x03, 0x3C, 0x00, 0x00, wav_0x0039943C, 0x00, 0x00, 0x0F, 0x00 @ index=28


.align 2
.global song_06E
song_06E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_06E_tone             @ tone
	.word song_06E_track0           @ tracks 0x0858828C

@ ****************************** tracks ******************************
.align 2
song_06E_track0:
	.byte VOL, 50
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte N02, 76, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_06E_tone:
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x01, 0x00, 0x00 @ index=8


.align 2
.global song_06F
song_06F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_06F_tone             @ tone
	.word song_06F_track0           @ tracks 0x085882A8

@ ****************************** tracks ******************************
.align 2
song_06F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 60
	.byte BENDR, 8
	.byte BEND, 64
	.byte N12, 73, 127
	.byte W01
	.byte BEND, 104
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x68
	.byte W19
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_06F_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x01, 0x06, 0x02 @ index=9


.align 2
.global song_070
song_070:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_070_tone             @ tone
	.word song_070_track0           @ tracks 0x08588300
	.word song_070_track1           @ tracks 0x08588315

@ ****************************** tracks ******************************
.align 2
song_070_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N06, 81, 127
	.byte W06
	.byte 0x58
	.byte W06
	.byte 0x56
	.byte W06
	.byte 0x58
	.byte W06
	.byte 0x5D
	.byte W24
	.byte FINE

.align 2
song_070_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 40
	.byte N06, 93, 127
	.byte W06
	.byte 0x64
	.byte W06
	.byte 0x62
	.byte W06
	.byte 0x64
	.byte W06
	.byte 0x69
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_070_tone:
	tone_data 0x03, 0x3C, 0x00, 0x00, wav_0x0039943C, 0x00, 0x00, 0x0F, 0x00 @ index=32
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x01, 0x00, 0x00 @ index=33


.align 2
.global song_071
song_071:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_071_tone             @ tone
	.word song_071_track0           @ tracks 0x08588338
	.word song_071_track1           @ tracks 0x0858834C

@ ****************************** tracks ******************************
.align 2
song_071_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N06, 93, 127
	.byte W06
	.byte 0x56
	.byte W06
	.byte 0x58
	.byte W06
	.byte 0x51
	.byte W06
	.byte W24
	.byte FINE

.align 2
song_071_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 40
	.byte N06, 105, 127
	.byte W06
	.byte 0x62
	.byte W06
	.byte 0x64
	.byte W06
	.byte 0x5D
	.byte W06
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_071_tone:
	tone_data 0x03, 0x3C, 0x00, 0x00, wav_0x0039943C, 0x00, 0x00, 0x0F, 0x00 @ index=32
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x01, 0x00, 0x00 @ index=33


.align 2
.global song_072
song_072:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_072_tone             @ tone
	.word song_072_track0           @ tracks 0x08588370

@ ****************************** tracks ******************************
.align 2
song_072_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 80
	.byte N01, 61, 127
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x3E
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x3F
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x47
	.byte W08
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_072_tone:
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x01, 0x00, 0x00 @ index=15


.align 2
.global song_073
song_073:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x3C                      @ priority
	.byte 0x00                      @ reverb
	.word song_073_tone             @ tone
	.word song_073_track0           @ tracks 0x0858839C
	.word song_073_track1           @ tracks 0x085883CA

@ ****************************** tracks ******************************
.align 2
song_073_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte W04
	.byte PAN, 14
	.byte N72, 60, 127
	.byte W02
	.byte PAN, 22
	.byte W02
	.byte 0x1E
	.byte W02
	.byte 0x26
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x37
	.byte W02
	.byte 0x40
	.byte W08
	.byte W24
	.byte W10
	.byte 0x40
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x50
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x61
	.byte W02
	.byte 0x69
	.byte W02
	.byte 0x72
	.byte W02
	.byte W24
	.byte FINE

.align 2
song_073_track1:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 4
	.byte N88, 55, 80
	.byte W02
	.byte PAN, 9
	.byte W02
	.byte 0x0E
	.byte W02
	.byte 0x13
	.byte W02
	.byte 0x18
	.byte W02
	.byte 0x1D
	.byte W02
	.byte 0x22
	.byte W02
	.byte 0x27
	.byte W02
	.byte 0x2C
	.byte W02
	.byte 0x31
	.byte W02
	.byte 0x36
	.byte W02
	.byte 0x3B
	.byte W02
	.byte 0x40
	.byte W24
	.byte W14
	.byte 0x40
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x59
	.byte W02
	.byte 0x5E
	.byte W02
	.byte 0x63
	.byte W02
	.byte 0x68
	.byte W02
	.byte 0x6D
	.byte W02
	.byte 0x72
	.byte W02
	.byte 0x77
	.byte W02
	.byte 0x7C
	.byte W10
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_073_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0043D914, 0xFF, 0x00, 0xFF, 0x00 @ index=10


.align 2
.global song_074
song_074:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_074_tone             @ tone
	.word song_074_track0           @ tracks 0x0858841C

@ ****************************** tracks ******************************
.align 2
song_074_track0:
	.byte VOL, 55
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 5
	.byte BEND, 64
	.byte TIE, 76, 127
	.byte W01
	.byte BEND, 127
	.byte W01
label_song_074_track0_1:
	.byte BEND, 64
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
label_song_074_track0_0:
	.byte BEND, 64
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte PEND
	.byte PATT
	.word label_song_074_track0_0
	.byte PATT
	.word label_song_074_track0_0
	.byte BEND, 64
	.byte W01
	.byte 0x7F
	.byte W01
	.byte GOTO
	.word label_song_074_track0_1
	.byte BEND, 64
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x7F
	.byte W01
	.byte EOT, 76
	.byte W18
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_074_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x00, 0x0B, 0x00 @ index=6


.align 2
.global song_075
song_075:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_075_tone             @ tone
	.word song_075_track0           @ tracks 0x085884BC

@ ****************************** tracks ******************************
.align 2
song_075_track0:
	.byte VOL, 100
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte N22, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_075_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00440CE0, 0xFF, 0x00, 0xFF, 0x00 @ index=21


.align 2
.global song_076
song_076:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_076_tone             @ tone
	.word song_076_track0           @ tracks 0x085884D8
	.word song_076_track1           @ tracks 0x085884F4

@ ****************************** tracks ******************************
.align 2
song_076_track0:
	.byte VOL, 60
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte N04, 98, 127
	.byte W04
	.byte 0x62
	.byte 0x64
	.byte W04
	.byte 0x62
	.byte 0x50
	.byte W04
	.byte 0x62
	.byte 0x3C
	.byte W04
	.byte 0x62
	.byte 0x28
	.byte W04
	.byte 0x62
	.byte 0x14
	.byte W04
	.byte FINE

.align 2
song_076_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte BENDR, 1
	.byte VOL, 45
	.byte BEND, 80
	.byte N04, 98, 127
	.byte W04
	.byte 0x62
	.byte 0x64
	.byte W04
	.byte 0x62
	.byte 0x50
	.byte W04
	.byte 0x62
	.byte 0x3C
	.byte W04
	.byte 0x62
	.byte 0x28
	.byte W04
	.byte 0x62
	.byte 0x14
	.byte W04
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_076_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x01, 0x00, 0x00 @ index=11
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000003, 0x00, 0x01, 0x00, 0x00 @ index=12


.align 2
.global song_077
song_077:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_077_tone             @ tone
	.word song_077_track0           @ tracks 0x08588524
	.word song_077_track1           @ tracks 0x0858853D

@ ****************************** tracks ******************************
.align 2
song_077_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 65
	.byte N02, 81, 127
	.byte W02
	.byte 0x51
	.byte 0x48
	.byte W02
	.byte 0x56
	.byte 0x7F
	.byte W02
	.byte 0x56
	.byte 0x48
	.byte W02
	.byte 0x56
	.byte 0x28
	.byte W16
	.byte FINE

.align 2
song_077_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 49
	.byte BENDR, 1
	.byte BEND, 80
	.byte N02, 81, 127
	.byte W02
	.byte 0x51
	.byte 0x48
	.byte W02
	.byte 0x56
	.byte 0x7F
	.byte W02
	.byte 0x56
	.byte 0x48
	.byte W02
	.byte 0x56
	.byte 0x28
	.byte W16
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_077_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000001, 0x00, 0x01, 0x00, 0x00 @ index=30
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000001, 0x00, 0x01, 0x00, 0x00 @ index=31


.align 2
.global song_078
song_078:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x1E                      @ priority
	.byte 0x00                      @ reverb
	.word song_078_tone             @ tone
	.word song_078_track0           @ tracks 0x08588568
	.word song_078_track1           @ tracks 0x085885AC

@ ****************************** tracks ******************************
.align 2
song_078_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 18
	.byte VOL, 40
	.byte BEND, 64
	.byte N20, 55, 127
	.byte W01
	.byte BEND, 65
	.byte W01
	.byte 0x43
	.byte W01
	.byte 0x44
	.byte W01
	.byte VOL, 34
	.byte BEND, 70
	.byte W01
	.byte 0x47
	.byte W01
	.byte 0x49
	.byte W01
	.byte 0x4B
	.byte W01
	.byte VOL, 28
	.byte BEND, 76
	.byte W01
	.byte 0x4E
	.byte W01
	.byte 0x50
	.byte W01
	.byte 0x50
	.byte W01
	.byte VOL, 22
	.byte BEND, 82
	.byte W01
	.byte 0x55
	.byte W01
	.byte 0x59
	.byte W01
	.byte 0x5E
	.byte W01
	.byte VOL, 16
	.byte BEND, 101
	.byte W01
	.byte 0x6D
	.byte W01
	.byte 0x76
	.byte W01
	.byte 0x7F
	.byte W05
	.byte FINE

.align 2
song_078_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 127
	.byte BENDR, 18
	.byte BEND, 63
	.byte N20, 55, 127
	.byte W01
	.byte BEND, 64
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x44
	.byte W01
	.byte 0x45
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x49
	.byte W01
	.byte 0x4A
	.byte W01
	.byte 0x4C
	.byte W01
	.byte 0x4D
	.byte W01
	.byte 0x4F
	.byte W01
	.byte 0x50
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x57
	.byte W01
	.byte 0x5E
	.byte W01
	.byte 0x67
	.byte W01
	.byte 0x72
	.byte W01
	.byte 0x7E
	.byte W05
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_078_tone:
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x00 @ index=37
	tone_data 0x03, 0x3C, 0x00, 0x00, wav_0x0039943C, 0x00, 0x00, 0x0F, 0x00 @ index=38


.align 2
.global song_079
song_079:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x1E                      @ priority
	.byte 0x00                      @ reverb
	.word song_079_tone             @ tone
	.word song_079_track0           @ tracks 0x085885F4
	.word song_079_track1           @ tracks 0x08588638

@ ****************************** tracks ******************************
.align 2
song_079_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 16
	.byte BENDR, 18
	.byte BEND, 127
	.byte N20, 55, 127
	.byte W01
	.byte BEND, 127
	.byte W01
	.byte 0x7F
	.byte W01
	.byte 0x7F
	.byte W01
	.byte VOL, 24
	.byte BEND, 126
	.byte W01
	.byte 0x7D
	.byte W01
	.byte 0x7C
	.byte W01
	.byte 0x7B
	.byte W01
	.byte VOL, 32
	.byte BEND, 122
	.byte W01
	.byte 0x78
	.byte W01
	.byte 0x76
	.byte W01
	.byte 0x75
	.byte W01
	.byte VOL, 40
	.byte BEND, 115
	.byte W01
	.byte 0x6F
	.byte W01
	.byte 0x6B
	.byte W01
	.byte 0x65
	.byte W01
	.byte VOL, 48
	.byte BEND, 93
	.byte W01
	.byte 0x55
	.byte W01
	.byte 0x4B
	.byte W01
	.byte 0x40
	.byte W05
	.byte FINE

.align 2
song_079_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 127
	.byte BENDR, 18
	.byte BEND, 126
	.byte N20, 55, 127
	.byte W01
	.byte BEND, 126
	.byte W01
	.byte 0x7E
	.byte W01
	.byte 0x7E
	.byte W01
	.byte 0x7D
	.byte W01
	.byte 0x7C
	.byte W01
	.byte 0x7B
	.byte W01
	.byte 0x7A
	.byte W01
	.byte 0x79
	.byte W01
	.byte 0x77
	.byte W01
	.byte 0x75
	.byte W01
	.byte 0x74
	.byte W01
	.byte 0x72
	.byte W01
	.byte 0x6E
	.byte W01
	.byte 0x6A
	.byte W01
	.byte 0x64
	.byte W01
	.byte 0x5C
	.byte W01
	.byte 0x54
	.byte W01
	.byte 0x4A
	.byte W01
	.byte 0x3F
	.byte W05
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_079_tone:
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x00 @ index=37
	tone_data 0x03, 0x3C, 0x00, 0x00, wav_0x0039943C, 0x00, 0x00, 0x0F, 0x00 @ index=38


.align 2
.global song_07A
song_07A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_07A_tone             @ tone
	.word song_07A_track0           @ tracks 0x08588680

@ ****************************** tracks ******************************
.align 2
song_07A_track0:
	.byte VOL, 30
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte N02, 76, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_07A_tone:
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x00 @ index=39


.align 2
.global song_07B
song_07B:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x1E                      @ priority
	.byte 0x00                      @ reverb
	.word song_07B_tone             @ tone
	.word song_07B_track0           @ tracks 0x0858869C
	.word song_07B_track1           @ tracks 0x085886C4

@ ****************************** tracks ******************************
.align 2
song_07B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 1
	.byte VOL, 95
	.byte BEND, 80
	.byte N06, 48, 127
	.byte W14
	.byte N06
	.byte W10
	.byte W04
	.byte N06
	.byte W14
	.byte N06
	.byte W06
	.byte W08
	.byte N06
	.byte W14
	.byte N06
	.byte W02
	.byte W12
	.byte N06
	.byte W12
	.byte W02
	.byte N06
	.byte W14
	.byte N06
	.byte W08
	.byte W06
	.byte N06
	.byte W18
	.byte FINE

.align 2
song_07B_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 71
	.byte N06, 48, 127
	.byte W14
	.byte N06
	.byte W10
	.byte W04
	.byte N06
	.byte W14
	.byte N06
	.byte W06
	.byte W08
	.byte N06
	.byte W14
	.byte N06
	.byte W02
	.byte W12
	.byte N06
	.byte W12
	.byte W02
	.byte N06
	.byte W14
	.byte N06
	.byte W08
	.byte W06
	.byte N06
	.byte W18
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_07B_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x03, 0x00, 0x00 @ index=35
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x01 @ index=36


.align 2
.global song_07C
song_07C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_07C_tone             @ tone
	.word song_07C_track0           @ tracks 0x085886F8

@ ****************************** tracks ******************************
.align 2
song_07C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 70
	.byte N02, 108, 127
	.byte W04
	.byte N02
	.byte W04
	.byte N02
	.byte W04
	.byte N02
	.byte W12
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_07C_tone:
	tone_data 0x03, 0x3C, 0x00, 0x00, wav_0x0039943C, 0x00, 0x00, 0x0F, 0x00 @ index=34


.align 2
.global song_07D
song_07D:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_07D_tone             @ tone
	.word song_07D_track0           @ tracks 0x08588718
	.word song_07D_track1           @ tracks 0x08588727

@ ****************************** tracks ******************************
.align 2
song_07D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 40
	.byte N04, 73, 127
	.byte W04
	.byte 0x4E
	.byte W20
	.byte FINE

.align 2
song_07D_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte BENDR, 2
	.byte VOL, 40
	.byte BEND, 58
	.byte N04, 73, 127
	.byte W04
	.byte 0x4E
	.byte W20
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_07D_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000001, 0x00, 0x02, 0x00, 0x00 @ index=41
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x01, 0x00, 0x00 @ index=42


.align 2
.global song_07E
song_07E:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_07E_tone             @ tone
	.word song_07E_track0           @ tracks 0x08588748
	.word song_07E_track1           @ tracks 0x08588767

@ ****************************** tracks ******************************
.align 2
song_07E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 40
	.byte N04, 83, 127
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W18
	.byte FINE

.align 2
song_07E_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte BENDR, 2
	.byte VOL, 40
	.byte BEND, 60
	.byte N04, 83, 112
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte N04
	.byte W18
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_07E_tone:
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000001, 0x00, 0x02, 0x00, 0x00 @ index=41
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000002, 0x00, 0x01, 0x00, 0x00 @ index=42


.align 2
.global song_07F
song_07F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_07F_tone             @ tone
	.word song_07F_track0           @ tracks 0x08588798

@ ****************************** tracks ******************************
.align 2
song_07F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 6
	.byte BEND, 64
	.byte N24, 60, 127
	.byte W02
	.byte VOL, 120
	.byte BEND, 64
	.byte W01
	.byte VOL, 110
	.byte W01
	.byte 0x65
	.byte BEND, 66
	.byte W01
	.byte VOL, 92
	.byte W01
	.byte 0x54
	.byte BEND, 68
	.byte W01
	.byte VOL, 76
	.byte W01
	.byte 0x45
	.byte BEND, 72
	.byte W01
	.byte VOL, 62
	.byte W01
	.byte 0x38
	.byte BEND, 77
	.byte W01
	.byte VOL, 50
	.byte W01
	.byte 0x2C
	.byte BEND, 83
	.byte W01
	.byte VOL, 39
	.byte W01
	.byte 0x23
	.byte BEND, 90
	.byte W01
	.byte VOL, 31
	.byte W01
	.byte 0x1B
	.byte BEND, 97
	.byte W01
	.byte VOL, 24
	.byte W01
	.byte 0x15
	.byte BEND, 106
	.byte W01
	.byte VOL, 19
	.byte W01
	.byte 0x12
	.byte BEND, 117
	.byte W01
	.byte VOL, 16
	.byte W01
	.byte BEND, 127
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_07F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00442224, 0xFF, 0x00, 0xFF, 0x00 @ index=44


.align 2
.global song_080
song_080:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_080_tone             @ tone
	.word song_080_track0           @ tracks 0x08588800

@ ****************************** tracks ******************************
.align 2
song_080_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 1
	.byte N04, 60, 127
	.byte W05
	.byte BEND, 80
	.byte N04, 60, 72
	.byte W05
	.byte BEND, 96
	.byte N04, 60, 56
	.byte W05
	.byte BEND, 112
	.byte N04, 60, 40
	.byte W05
	.byte BEND, 127
	.byte N04, 60, 28
	.byte W04
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_080_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00441EB8, 0xFF, 0x00, 0xFF, 0x00 @ index=43


.align 2
.global song_081
song_081:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_081_tone             @ tone
	.word song_081_track0           @ tracks 0x08588834

@ ****************************** tracks ******************************
.align 2
song_081_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 32
	.byte MODT, 2
	.byte MOD, 40
	.byte LFOS, 10
	.byte TIE, 60, 127
	.byte W02
	.byte VOL, 39
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x37
	.byte W02
	.byte 0x3F
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x67
	.byte W02
	.byte 0x6F
	.byte W02
	.byte 0x77
	.byte W02
	.byte 0x7F
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte 0x78
	.byte W06
	.byte 0x74
	.byte W06
	.byte 0x70
	.byte W06
	.byte 0x6C
	.byte W06
	.byte 0x69
	.byte W06
	.byte 0x65
	.byte W06
	.byte 0x61
	.byte W06
	.byte 0x5E
	.byte W06
	.byte 0x5A
	.byte W06
	.byte 0x56
	.byte W06
	.byte 0x53
	.byte W06
	.byte 0x50
	.byte W02
	.byte 0x4E
	.byte W04
label_song_081_track0_0:
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte GOTO
	.word label_song_081_track0_0
	.byte W08
	.byte EOT, 60
	.byte W16
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_081_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004460EC, 0xFF, 0x00, 0xFF, 0x00 @ index=45


.align 2
.global song_082
song_082:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_082_tone             @ tone
	.word song_082_track0           @ tracks 0x085888A4

@ ****************************** tracks ******************************
.align 2
song_082_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 1
	.byte VOL, 56
	.byte BEND, 0
	.byte N64, 61, 127
	.byte W02
	.byte VOL, 69
	.byte BEND, 10
	.byte W02
	.byte VOL, 83
	.byte BEND, 21
	.byte W02
	.byte VOL, 97
	.byte BEND, 31
	.byte W02
	.byte VOL, 112
	.byte BEND, 42
	.byte W02
	.byte 0x35
	.byte W02
	.byte 0x40
	.byte W12
	.byte W16
	.byte VOL, 105
	.byte W02
	.byte 0x61
	.byte W02
	.byte 0x59
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x39
	.byte W02
	.byte 0x31
	.byte W02
	.byte 0x29
	.byte W02
	.byte 0x21
	.byte W02
	.byte 0x19
	.byte W02
	.byte 0x11
	.byte W10
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_082_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045F984, 0xFF, 0x00, 0xFF, 0x00 @ index=30


.align 2
.global song_083
song_083:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_083_tone             @ tone
	.word song_083_track0           @ tracks 0x085888F4

@ ****************************** tracks ******************************
.align 2
song_083_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 64
	.byte N48, 61, 127
	.byte W05
	.byte VOL, 65
	.byte W03
	.byte 0x42
	.byte W04
	.byte 0x44
	.byte W04
	.byte 0x48
	.byte W04
	.byte 0x4D
	.byte W04
	.byte 0x52
	.byte W04
	.byte 0x59
	.byte W04
	.byte 0x61
	.byte W04
	.byte 0x6A
	.byte W04
	.byte 0x74
	.byte W04
	.byte 0x7F
	.byte W04
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_083_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004719E4, 0xFF, 0x00, 0xFF, 0x00 @ index=35


.align 2
.global song_084
song_084:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_084_tone             @ tone
	.word song_084_track0           @ tracks 0x08588924

@ ****************************** tracks ******************************
.align 2
song_084_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 80
	.byte N14, 88, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_084_tone:
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x01, 0x00, 0x00 @ index=36


.align 2
.global song_085
song_085:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_085_tone             @ tone
	.word song_085_track0           @ tracks 0x08588940

@ ****************************** tracks ******************************
.align 2
song_085_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N84, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_085_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0046A810, 0xFF, 0x00, 0xFF, 0x00 @ index=33


.align 2
.global song_086
song_086:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_086_tone             @ tone
	.word song_086_track0           @ tracks 0x0858895C

@ ****************************** tracks ******************************
.align 2
song_086_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 3
	.byte VOL, 63
	.byte N56, 63, 127
	.byte W02
	.byte VOL, 79
	.byte W02
	.byte 0x5F
	.byte BEND, 64
	.byte W02
	.byte VOL, 111
	.byte W02
	.byte 0x7F
	.byte BEND, 70
	.byte W04
	.byte 0x4C
	.byte W04
	.byte 0x53
	.byte W04
	.byte 0x59
	.byte W04
	.byte 0x5F
	.byte W04
	.byte 0x66
	.byte W04
	.byte 0x6C
	.byte W04
	.byte 0x73
	.byte W04
	.byte VOL, 120
	.byte BEND, 121
	.byte W02
	.byte VOL, 105
	.byte W02
	.byte 0x5B
	.byte BEND, 127
	.byte W02
	.byte VOL, 77
	.byte W02
	.byte 0x3E
	.byte W02
	.byte 0x30
	.byte W02
	.byte 0x22
	.byte W02
	.byte 0x14
	.byte W18
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_086_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00462F0C, 0xFF, 0x00, 0xFF, 0x00 @ index=31


.align 2
.global song_087
song_087:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_087_tone             @ tone
	.word song_087_track0           @ tracks 0x085889AC

@ ****************************** tracks ******************************
.align 2
song_087_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 8
	.byte VOL, 28
	.byte BEND, 64
	.byte N48, 61, 127
	.byte W01
	.byte VOL, 56
	.byte W01
	.byte 0x54
	.byte BEND, 69
	.byte W01
	.byte VOL, 112
	.byte W01
	.byte BEND, 74
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x68
	.byte W02
	.byte 0x6B
	.byte W02
	.byte 0x6E
	.byte W02
	.byte 0x71
	.byte W02
	.byte 0x73
	.byte W02
	.byte 0x76
	.byte W02
	.byte 0x78
	.byte W02
	.byte VOL, 105
	.byte BEND, 122
	.byte W02
	.byte VOL, 92
	.byte BEND, 123
	.byte W02
	.byte VOL, 80
	.byte BEND, 124
	.byte W02
	.byte VOL, 67
	.byte BEND, 126
	.byte W02
	.byte VOL, 54
	.byte BEND, 126
	.byte W02
	.byte VOL, 42
	.byte BEND, 127
	.byte W02
	.byte VOL, 29
	.byte BEND, 127
	.byte W02
	.byte VOL, 17
	.byte BEND, 127
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_087_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0046EE24, 0xFF, 0x00, 0xFF, 0x00 @ index=34


.align 2
.global song_088
song_088:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_088_tone             @ tone
	.word song_088_track0           @ tracks 0x08588A18

@ ****************************** tracks ******************************
.align 2
song_088_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 3
	.byte VOL, 52
	.byte BEND, 64
	.byte N48, 61, 127
	.byte W02
	.byte VOL, 64
	.byte BEND, 71
	.byte W02
	.byte VOL, 77
	.byte BEND, 79
	.byte W02
	.byte VOL, 90
	.byte BEND, 87
	.byte W02
	.byte VOL, 104
	.byte BEND, 95
	.byte W02
	.byte 0x67
	.byte W02
	.byte 0x6F
	.byte W02
	.byte 0x77
	.byte W02
	.byte 0x7F
	.byte W08
	.byte W08
	.byte VOL, 98
	.byte W02
	.byte 0x55
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x3F
	.byte W02
	.byte 0x32
	.byte W02
	.byte 0x27
	.byte W02
	.byte 0x1B
	.byte W02
	.byte 0x10
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_088_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0046627C, 0xFF, 0x00, 0xFF, 0x00 @ index=32


.align 2
.global song_089
song_089:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_089_tone             @ tone
	.word song_089_track0           @ tracks 0x08588A64

@ ****************************** tracks ******************************
.align 2
song_089_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 3
	.byte VOL, 64
	.byte BEND, 64
	.byte N48, 57, 127
	.byte W01
	.byte VOL, 79
	.byte W01
	.byte 0x5F
	.byte BEND, 64
	.byte W01
	.byte VOL, 111
	.byte W01
	.byte 0x7F
	.byte BEND, 64
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x50
	.byte W02
	.byte 0x53
	.byte W02
	.byte 0x57
	.byte W02
	.byte VOL, 126
	.byte BEND, 92
	.byte W02
	.byte VOL, 107
	.byte BEND, 97
	.byte W02
	.byte VOL, 89
	.byte BEND, 102
	.byte W02
	.byte VOL, 74
	.byte BEND, 108
	.byte W02
	.byte VOL, 60
	.byte BEND, 114
	.byte W02
	.byte VOL, 48
	.byte BEND, 121
	.byte W02
	.byte VOL, 38
	.byte BEND, 127
	.byte W02
	.byte VOL, 30
	.byte W02
	.byte 0x18
	.byte W02
	.byte 0x13
	.byte W02
	.byte 0x10
	.byte W04
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_089_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047332C, 0xFF, 0x00, 0xFF, 0x00 @ index=37


.align 2
.global song_08A
song_08A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_08A_tone             @ tone
	.word song_08A_track0           @ tracks 0x08588AD0

@ ****************************** tracks ******************************
.align 2
song_08A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 6
	.byte VOL, 64
	.byte BEND, 64
	.byte N48, 60, 127
	.byte W01
	.byte VOL, 79
	.byte W01
	.byte 0x5F
	.byte BEND, 64
	.byte W01
	.byte VOL, 111
	.byte W01
	.byte 0x7F
	.byte BEND, 64
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x50
	.byte W02
	.byte 0x53
	.byte W02
	.byte 0x57
	.byte W02
	.byte VOL, 126
	.byte BEND, 92
	.byte W02
	.byte VOL, 107
	.byte BEND, 97
	.byte W02
	.byte VOL, 89
	.byte BEND, 102
	.byte W02
	.byte VOL, 74
	.byte BEND, 108
	.byte W02
	.byte VOL, 60
	.byte BEND, 114
	.byte W02
	.byte VOL, 48
	.byte BEND, 121
	.byte W02
	.byte VOL, 38
	.byte BEND, 127
	.byte W02
	.byte VOL, 30
	.byte W02
	.byte 0x18
	.byte W02
	.byte 0x13
	.byte W02
	.byte 0x10
	.byte W04
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_08A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047332C, 0xFF, 0x00, 0xFF, 0x00 @ index=37


.align 2
.global song_08B
song_08B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_08B_tone             @ tone
	.word song_08B_track0           @ tracks 0x08588B3C

@ ****************************** tracks ******************************
.align 2
song_08B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 10
	.byte VOL, 64
	.byte BEND, 64
	.byte N48, 60, 127
	.byte W01
	.byte VOL, 79
	.byte W01
	.byte 0x5F
	.byte BEND, 69
	.byte W01
	.byte VOL, 111
	.byte W01
	.byte 0x7F
	.byte BEND, 74
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x68
	.byte W02
	.byte 0x6B
	.byte W02
	.byte 0x6E
	.byte W02
	.byte VOL, 126
	.byte BEND, 113
	.byte W02
	.byte VOL, 107
	.byte BEND, 115
	.byte W02
	.byte VOL, 89
	.byte BEND, 118
	.byte W02
	.byte VOL, 74
	.byte BEND, 120
	.byte W02
	.byte VOL, 60
	.byte BEND, 122
	.byte W02
	.byte VOL, 48
	.byte BEND, 123
	.byte W02
	.byte VOL, 38
	.byte BEND, 124
	.byte W02
	.byte VOL, 30
	.byte BEND, 126
	.byte W02
	.byte VOL, 24
	.byte BEND, 126
	.byte W02
	.byte VOL, 19
	.byte BEND, 127
	.byte W02
	.byte VOL, 16
	.byte BEND, 127
	.byte W02
	.byte 0x7F
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_08B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047332C, 0xFF, 0x00, 0xFF, 0x00 @ index=37


.align 2
.global song_08C
song_08C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_08C_tone             @ tone
	.word song_08C_track0           @ tracks 0x08588BB4

@ ****************************** tracks ******************************
.align 2
song_08C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 10
	.byte MODT, 1
	.byte LFOS, 60
	.byte MOD, 10
	.byte VOL, 69
	.byte BEND, 0
	.byte N96, 67, 127
	.byte W02
	.byte VOL, 112
	.byte BEND, 10
	.byte W02
	.byte VOL, 127
	.byte BEND, 19
	.byte W02
	.byte 0x1B
	.byte W02
	.byte 0x23
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x34
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x3B
	.byte W02
	.byte 0x3E
	.byte W02
	.byte 0x3F
	.byte W02
	.byte 0x40
	.byte W06
	.byte 0x44
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x42
	.byte W02
	.byte 0x41
	.byte W10
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W02
	.byte VOL, 126
	.byte BEND, 64
	.byte W02
	.byte VOL, 125
	.byte BEND, 64
	.byte W02
	.byte VOL, 122
	.byte BEND, 65
	.byte W02
	.byte VOL, 117
	.byte BEND, 66
	.byte W02
	.byte VOL, 111
	.byte BEND, 69
	.byte W02
	.byte VOL, 103
	.byte BEND, 72
	.byte W02
	.byte VOL, 93
	.byte BEND, 75
	.byte W02
	.byte VOL, 81
	.byte BEND, 79
	.byte W02
	.byte VOL, 67
	.byte BEND, 84
	.byte W02
	.byte VOL, 52
	.byte BEND, 89
	.byte W02
	.byte VOL, 34
	.byte BEND, 96
	.byte W02
	.byte VOL, 16
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_08C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047332C, 0xFF, 0x00, 0xFF, 0x00 @ index=37


.align 2
.global song_08D
song_08D:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_08D_tone             @ tone
	.word song_08D_track0           @ tracks 0x08588C54
	.word song_08D_track1           @ tracks 0x08588C8D

@ ****************************** tracks ******************************
.align 2
song_08D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 100
	.byte BENDR, 12
	.byte W22
	.byte N07, 57, 68
	.byte W02
	.byte W05
	.byte N06, 58
	.byte W06
	.byte 0x3C
	.byte 0x58
	.byte W06
	.byte N07, 62
	.byte W07
	.byte N48, 63, 108
	.byte W24
	.byte VOL, 127
	.byte W02
	.byte 0x6A
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x2B
	.byte W02
	.byte 0x1F
	.byte W02
	.byte 0x16
	.byte W02
	.byte 0x0E
	.byte W02
	.byte xIECV
	.byte W02
	.byte 0x03
	.byte W02
	.byte 0x00
	.byte W02
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_08D_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte BENDR, 12
	.byte VOL, 127
	.byte BEND, 0
	.byte TIE, 65, 108
	.byte W02
	.byte BEND, 0
	.byte W02
	.byte 0x01
	.byte W02
	.byte 0x04
	.byte W02
	.byte 0x07
	.byte W02
	.byte 0x0B
	.byte W02
	.byte 0x10
	.byte W02
	.byte 0x15
	.byte W02
	.byte 0x1C
	.byte W02
	.byte 0x24
	.byte W02
	.byte 0x2C
	.byte W02
	.byte 0x35
	.byte W02
	.byte 0x40
	.byte W24
	.byte 0x40
	.byte W24
	.byte VOL, 127
	.byte W02
	.byte 0x79
	.byte W02
	.byte 0x74
	.byte W02
	.byte 0x6F
	.byte W02
	.byte 0x69
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x3F
	.byte W02
	.byte 0x3A
	.byte W02
	.byte 0x35
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x25
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x1A
	.byte W02
	.byte 0x15
	.byte W02
	.byte 0x10
	.byte W02
	.byte 0x0A
	.byte W02
	.byte 0x05
	.byte W02
	.byte EOT
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_08D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004761FC, 0xFF, 0x00, 0xFF, 0x00 @ index=41
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00474AA0, 0xFF, 0x00, 0xFF, 0x00 @ index=40


.align 2
.global song_08E
song_08E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x32                      @ priority
	.byte 0x00                      @ reverb
	.word song_08E_tone             @ tone
	.word song_08E_track0           @ tracks 0x08588CFC

@ ****************************** tracks ******************************
.align 2
song_08E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte MODT, 2
	.byte MOD, 30
	.byte LFOS, 10
	.byte VOL, 32
	.byte TIE, 60, 127
	.byte W04
	.byte VOL, 33
	.byte W02
	.byte 0x22
	.byte W02
	.byte 0x24
	.byte W02
	.byte 0x27
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x2E
	.byte W02
	.byte 0x32
	.byte W02
	.byte 0x37
	.byte W02
	.byte 0x3D
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x59
	.byte W02
	.byte 0x62
	.byte W02
	.byte 0x6B
	.byte W02
	.byte 0x74
	.byte W02
	.byte 0x7F
	.byte W12
	.byte W24
	.byte 0x7E
	.byte W02
	.byte 0x78
	.byte W02
	.byte 0x73
	.byte W02
	.byte 0x6D
	.byte W02
	.byte 0x68
	.byte W02
	.byte 0x62
	.byte W02
	.byte 0x5D
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x52
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x41
	.byte W02
label_song_08E_track0_0:
	.byte VOL, 60
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte GOTO
	.word label_song_08E_track0_0
	.byte W08
	.byte EOT, 60
	.byte W16
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_08E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004460EC, 0xFF, 0x00, 0xFF, 0x00 @ index=87


.align 2
.global song_08F
song_08F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x33                      @ priority
	.byte 0x00                      @ reverb
	.word song_08F_tone             @ tone
	.word song_08F_track0           @ tracks 0x08588D78

@ ****************************** tracks ******************************
.align 2
song_08F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte MODT, 2
	.byte MOD, 30
	.byte LFOS, 12
	.byte BENDR, 1
	.byte VOL, 64
	.byte BEND, 64
	.byte TIE, 60, 127
	.byte W02
	.byte BEND, 65
	.byte W02
	.byte VOL, 65
	.byte BEND, 67
	.byte W02
	.byte VOL, 67
	.byte BEND, 69
	.byte W02
	.byte VOL, 71
	.byte BEND, 71
	.byte W02
	.byte VOL, 74
	.byte BEND, 72
	.byte W02
	.byte VOL, 79
	.byte BEND, 74
	.byte W02
	.byte VOL, 85
	.byte BEND, 76
	.byte W02
	.byte VOL, 92
	.byte BEND, 78
	.byte W02
	.byte VOL, 99
	.byte BEND, 79
	.byte W02
	.byte VOL, 107
	.byte BEND, 81
	.byte W02
	.byte VOL, 117
	.byte BEND, 83
	.byte W02
	.byte VOL, 127
	.byte BEND, 85
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x5E
	.byte W02
	.byte 0x60
	.byte W12
	.byte W24
	.byte W24
	.byte W12
	.byte VOL, 126
	.byte W04
	.byte 0x7D
	.byte W05
	.byte 0x7C
	.byte W03
	.byte W02
	.byte 0x7B
	.byte W05
	.byte 0x79
	.byte W05
	.byte 0x77
	.byte W04
	.byte 0x75
	.byte W04
	.byte 0x72
	.byte W04
	.byte 0x6F
	.byte W04
	.byte 0x6C
	.byte W04
	.byte 0x69
	.byte W04
	.byte 0x65
	.byte W04
	.byte 0x60
	.byte W04
	.byte 0x5C
	.byte W04
	.byte 0x57
	.byte W04
	.byte 0x51
	.byte W04
	.byte 0x4C
	.byte W04
	.byte 0x45
	.byte W04
	.byte 0x3F
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x31
	.byte W04
	.byte 0x2A
	.byte W04
	.byte 0x22
	.byte W04
	.byte 0x1A
	.byte W04
	.byte 0x11
	.byte W04
	.byte xIECL
	.byte W04
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_08F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004460EC, 0xFF, 0x00, 0xFF, 0x00 @ index=87


.align 2
.global song_090
song_090:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_090_tone             @ tone
	.word song_090_track0           @ tracks 0x08588E1C
	.word song_090_track1           @ tracks 0x08588E76

@ ****************************** tracks ******************************
.align 2
song_090_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 8
	.byte PAN, 64
	.byte TIE, 45, 127
	.byte W04
	.byte VOL, 16
	.byte W04
	.byte 0x18
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x40
	.byte W04
	.byte 0x48
	.byte W04
	.byte 0x50
	.byte W04
	.byte 0x58
	.byte W04
	.byte 0x60
	.byte W04
	.byte 0x68
	.byte W04
	.byte 0x70
	.byte W04
	.byte 0x78
	.byte W04
	.byte 0x7F
	.byte W12
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W17
	.byte 0x78
	.byte W05
	.byte 0x70
	.byte W02
	.byte W03
	.byte 0x68
	.byte W05
	.byte 0x60
	.byte W05
	.byte 0x58
	.byte W05
	.byte 0x50
	.byte W05
	.byte 0x48
	.byte W01
	.byte W04
	.byte 0x40
	.byte W05
	.byte 0x38
	.byte W05
	.byte 0x30
	.byte W05
	.byte 0x28
	.byte W05
	.byte 0x20
	.byte W05
	.byte 0x18
	.byte W05
	.byte 0x10
	.byte W05
	.byte xIECV
	.byte W01
	.byte EOT
	.byte W08
	.byte FINE

.align 2
song_090_track1:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte BENDR, 1
	.byte PAN, 64
	.byte MODT, 2
	.byte LFOS, 3
	.byte MOD, 60
	.byte BEND, 69
	.byte W03
	.byte VOL, 8
	.byte TIE, 45, 127
	.byte W04
	.byte VOL, 16
	.byte W04
	.byte 0x18
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x30
	.byte W01
	.byte W03
	.byte 0x38
	.byte W04
	.byte 0x40
	.byte W04
	.byte 0x48
	.byte W04
	.byte 0x50
	.byte W04
	.byte 0x58
	.byte W04
	.byte 0x60
	.byte W01
	.byte W03
	.byte 0x68
	.byte W04
	.byte 0x70
	.byte W04
	.byte 0x78
	.byte W04
	.byte 0x7F
	.byte W09
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W20
	.byte 0x78
	.byte W04
	.byte W01
	.byte 0x70
	.byte W05
	.byte 0x68
	.byte W05
	.byte 0x60
	.byte W05
	.byte 0x58
	.byte W05
	.byte 0x50
	.byte W03
	.byte W02
	.byte 0x48
	.byte W05
	.byte 0x40
	.byte W05
	.byte 0x38
	.byte W05
	.byte 0x30
	.byte W05
	.byte 0x28
	.byte W02
	.byte W03
	.byte 0x20
	.byte W05
	.byte 0x18
	.byte W05
	.byte 0x10
	.byte W05
	.byte xIECV
	.byte W01
	.byte EOT
	.byte W05
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_090_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0044D698, 0xFF, 0x00, 0xFF, 0x00 @ index=47


.align 2
.global song_091
song_091:
@ ****************************** header ******************************
	.byte 0x03                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_091_tone             @ tone
	.word song_091_track0           @ tracks 0x08588EEC
	.word song_091_track1           @ tracks 0x08588F62
	.word song_091_track2           @ tracks 0x08588FD8

@ ****************************** tracks ******************************
.align 2
song_091_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 2
	.byte W17
	.byte VOL, 48
	.byte PAN, 4
	.byte BEND, 96
	.byte N84, 60, 127
	.byte W02
	.byte VOL, 64
	.byte W02
	.byte 0x50
	.byte PAN, 9
	.byte BEND, 92
	.byte W02
	.byte VOL, 96
	.byte W01
	.byte W01
	.byte 0x70
	.byte PAN, 15
	.byte BEND, 89
	.byte W02
	.byte VOL, 127
	.byte W02
	.byte PAN, 21
	.byte BEND, 86
	.byte W04
	.byte PAN, 51
	.byte BEND, 70
	.byte W04
	.byte PAN, 57
	.byte BEND, 67
	.byte W04
	.byte PAN, 63
	.byte BEND, 64
	.byte W04
	.byte PAN, 69
	.byte BEND, 60
	.byte W03
	.byte W01
	.byte PAN, 75
	.byte BEND, 57
	.byte W04
	.byte PAN, 81
	.byte BEND, 54
	.byte W04
	.byte PAN, 87
	.byte BEND, 51
	.byte W04
	.byte PAN, 93
	.byte BEND, 48
	.byte W04
	.byte PAN, 99
	.byte BEND, 44
	.byte W04
	.byte PAN, 105
	.byte BEND, 41
	.byte W03
	.byte W01
	.byte PAN, 111
	.byte BEND, 38
	.byte W04
	.byte PAN, 117
	.byte BEND, 35
	.byte W04
	.byte PAN, 124
	.byte BEND, 32
	.byte W15
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_091_track1:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte BENDR, 2
	.byte W17
	.byte PAN, 124
	.byte VOL, 48
	.byte BEND, 32
	.byte N84, 60, 127
	.byte W02
	.byte VOL, 64
	.byte W02
	.byte PAN, 116
	.byte VOL, 80
	.byte BEND, 35
	.byte W02
	.byte VOL, 96
	.byte W01
	.byte W01
	.byte PAN, 109
	.byte VOL, 112
	.byte BEND, 39
	.byte W02
	.byte VOL, 127
	.byte W02
	.byte PAN, 101
	.byte BEND, 43
	.byte W04
	.byte PAN, 94
	.byte BEND, 47
	.byte W04
	.byte PAN, 86
	.byte BEND, 51
	.byte W04
	.byte PAN, 79
	.byte BEND, 55
	.byte W04
	.byte PAN, 71
	.byte BEND, 59
	.byte W03
	.byte W01
	.byte PAN, 64
	.byte BEND, 63
	.byte W04
	.byte PAN, 56
	.byte BEND, 67
	.byte W04
	.byte PAN, 49
	.byte BEND, 71
	.byte W04
	.byte PAN, 41
	.byte BEND, 75
	.byte W04
	.byte PAN, 34
	.byte BEND, 79
	.byte W04
	.byte PAN, 26
	.byte BEND, 83
	.byte W03
	.byte W01
	.byte PAN, 19
	.byte BEND, 87
	.byte W04
	.byte PAN, 11
	.byte BEND, 91
	.byte W04
	.byte PAN, 4
	.byte BEND, 96
	.byte W15
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_091_track2:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 2
	.byte PAN, 64
	.byte W01
	.byte TIE, 48, 127
	.byte W23
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W08
	.byte EOT
	.byte W16
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_091_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00449398, 0xFF, 0x00, 0xFF, 0x00 @ index=46


.align 2
.global song_092
song_092:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_092_tone             @ tone
	.word song_092_track0           @ tracks 0x08589008

@ ****************************** tracks ******************************
.align 2
song_092_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N44, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_092_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0044DD10, 0xFF, 0x00, 0xFF, 0x00 @ index=52


.align 2
.global song_093
song_093:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_093_tone             @ tone
	.word song_093_track0           @ tracks 0x08589024

@ ****************************** tracks ******************************
.align 2
song_093_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N20, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_093_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045006C, 0xFF, 0x00, 0xFF, 0x00 @ index=53


.align 2
.global song_094
song_094:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_094_tone             @ tone
	.word song_094_track0           @ tracks 0x08589040

@ ****************************** tracks ******************************
.align 2
song_094_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N72, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_094_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00450C00, 0xFF, 0x00, 0xFF, 0x00 @ index=54


.align 2
.global song_095
song_095:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_096
song_096:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_096_tone             @ tone
	.word song_096_track0           @ tracks 0x0858905C

@ ****************************** tracks ******************************
.align 2
song_096_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_096_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004578BC, 0xFF, 0x00, 0xFF, 0x00 @ index=0


.align 2
.global song_097
song_097:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_097_tone             @ tone
	.word song_097_track0           @ tracks 0x08589078

@ ****************************** tracks ******************************
.align 2
song_097_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N12, 59, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_097_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004578BC, 0xFF, 0x00, 0xFF, 0x00 @ index=0


.align 2
.global song_098
song_098:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_098_tone             @ tone
	.word song_098_track0           @ tracks 0x08589094

@ ****************************** tracks ******************************
.align 2
song_098_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_098_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004578BC, 0xFF, 0x00, 0xFF, 0x00 @ index=0


.align 2
.global song_099
song_099:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_099_tone             @ tone
	.word song_099_track0           @ tracks 0x085890B0

@ ****************************** tracks ******************************
.align 2
song_099_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N12, 59, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_099_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004578BC, 0xFF, 0x00, 0xFF, 0x00 @ index=0


.align 2
.global song_09A
song_09A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_09A_tone             @ tone
	.word song_09A_track0           @ tracks 0x085890CC

@ ****************************** tracks ******************************
.align 2
song_09A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 112
	.byte PAN, 64
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_09A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00458208, 0xFF, 0x00, 0xFF, 0x00 @ index=4


.align 2
.global song_09B
song_09B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_09B_tone             @ tone
	.word song_09B_track0           @ tracks 0x085890E8

@ ****************************** tracks ******************************
.align 2
song_09B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 112
	.byte PAN, 64
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_09B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004584AC, 0xFF, 0x00, 0xFF, 0x00 @ index=5


.align 2
.global song_09C
song_09C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_09C_tone             @ tone
	.word song_09C_track0           @ tracks 0x08589104

@ ****************************** tracks ******************************
.align 2
song_09C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 112
	.byte PAN, 64
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_09C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00458ADC, 0xFF, 0x00, 0xFF, 0x00 @ index=6


.align 2
.global song_09D
song_09D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_09D_tone             @ tone
	.word song_09D_track0           @ tracks 0x08589120

@ ****************************** tracks ******************************
.align 2
song_09D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 112
	.byte PAN, 64
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_09D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00458208, 0xFF, 0x00, 0xFF, 0x00 @ index=4


.align 2
.global song_09E
song_09E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_09E_tone             @ tone
	.word song_09E_track0           @ tracks 0x0858913C

@ ****************************** tracks ******************************
.align 2
song_09E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 112
	.byte PAN, 64
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_09E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004584AC, 0xFF, 0x00, 0xFF, 0x00 @ index=5


.align 2
.global song_09F
song_09F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_09F_tone             @ tone
	.word song_09F_track0           @ tracks 0x08589158

@ ****************************** tracks ******************************
.align 2
song_09F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 112
	.byte PAN, 64
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_09F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00458ADC, 0xFF, 0x00, 0xFF, 0x00 @ index=6


.align 2
.global song_0A0
song_0A0:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0A0_tone             @ tone
	.word song_0A0_track0           @ tracks 0x08589174

@ ****************************** tracks ******************************
.align 2
song_0A0_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N11, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0A0_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004590BC, 0xFF, 0x00, 0xFF, 0x00 @ index=8


.align 2
.global song_0A1
song_0A1:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0A1_tone             @ tone
	.word song_0A1_track0           @ tracks 0x08589190

@ ****************************** tracks ******************************
.align 2
song_0A1_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N11, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0A1_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004590BC, 0xFF, 0x00, 0xFF, 0x00 @ index=8


.align 2
.global song_0A2
song_0A2:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0A2_tone             @ tone
	.word song_0A2_track0           @ tracks 0x085891AC

@ ****************************** tracks ******************************
.align 2
song_0A2_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N16, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0A2_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00457CB8, 0xFF, 0x00, 0xFF, 0x00 @ index=1


.align 2
.global song_0A3
song_0A3:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0A3_tone             @ tone
	.word song_0A3_track0           @ tracks 0x085891C8

@ ****************************** tracks ******************************
.align 2
song_0A3_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N16, 59, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0A3_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00457CB8, 0xFF, 0x00, 0xFF, 0x00 @ index=1


.align 2
.global song_0A4
song_0A4:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0A4_tone             @ tone
	.word song_0A4_track0           @ tracks 0x085891E4

@ ****************************** tracks ******************************
.align 2
song_0A4_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N16, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0A4_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00457CB8, 0xFF, 0x00, 0xFF, 0x00 @ index=1


.align 2
.global song_0A5
song_0A5:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0A5_tone             @ tone
	.word song_0A5_track0           @ tracks 0x08589200

@ ****************************** tracks ******************************
.align 2
song_0A5_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N16, 59, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0A5_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00457CB8, 0xFF, 0x00, 0xFF, 0x00 @ index=1


.align 2
.global song_0A6
song_0A6:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0A6_tone             @ tone
	.word song_0A6_track0           @ tracks 0x0858921C

@ ****************************** tracks ******************************
.align 2
song_0A6_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N14, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0A6_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004598F4, 0xFF, 0x00, 0xFF, 0x00 @ index=9


.align 2
.global song_0A7
song_0A7:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0A7_tone             @ tone
	.word song_0A7_track0           @ tracks 0x08589238

@ ****************************** tracks ******************************
.align 2
song_0A7_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte PAN, 64
	.byte N14, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0A7_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004598F4, 0xFF, 0x00, 0xFF, 0x00 @ index=9


.align 2
.global song_0A8
song_0A8:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0A8_tone             @ tone
	.word song_0A8_track0           @ tracks 0x08589254
	.word song_0A8_track1           @ tracks 0x08589299

@ ****************************** tracks ******************************
.align 2
song_0A8_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 5
	.byte BEND, 64
	.byte N32, 60, 127
	.byte W02
	.byte BEND, 68
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x55
	.byte W02
	.byte 0x59
	.byte W02
	.byte 0x5D
	.byte W02
	.byte 0x62
	.byte W02
	.byte 0x66
	.byte W02
	.byte VOL, 120
	.byte BEND, 106
	.byte W02
	.byte 0x6E
	.byte W01
	.byte VOL, 110
	.byte W01
	.byte BEND, 115
	.byte W02
	.byte VOL, 100
	.byte BEND, 119
	.byte W02
	.byte VOL, 90
	.byte BEND, 123
	.byte W01
	.byte VOL, 80
	.byte W01
	.byte 0x46
	.byte BEND, 127
	.byte W01
	.byte VOL, 60
	.byte W17
	.byte FINE

.align 2
song_0A8_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 100
	.byte W24
	.byte N03, 56, 127
	.byte W03
	.byte N06, 61
	.byte W06
	.byte N03, 57, 52
	.byte W03
	.byte N04, 62
	.byte W12
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0A8_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00478128, 0xFF, 0x00, 0xFF, 0x00 @ index=43
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047B0F8, 0xFF, 0x00, 0xFF, 0x00 @ index=44


.align 2
.global song_0A9
song_0A9:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0A9_tone             @ tone
	.word song_0A9_track0           @ tracks 0x085892C0

@ ****************************** tracks ******************************
.align 2
song_0A9_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 100
	.byte N04, 73, 127
	.byte W03
	.byte 0x4B
	.byte 0x7C
	.byte W03
	.byte 0x4D
	.byte 0x74
	.byte W03
	.byte 0x4E
	.byte 0x70
	.byte W03
	.byte 0x50
	.byte 0x6C
	.byte W03
	.byte 0x52
	.byte 0x64
	.byte W03
	.byte 0x53
	.byte 0x60
	.byte W03
	.byte 0x55
	.byte 0x5C
	.byte W02
	.byte N03, 82, 48
	.byte W01
	.byte W02
	.byte 0x53
	.byte 0x28
	.byte W03
	.byte 0x55
	.byte 0x24
	.byte W19
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0A9_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x003CFD14, 0xFF, 0xEB, 0x00, 0x00 @ index=42


.align 2
.global song_0AA
song_0AA:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0AA_tone             @ tone
	.word song_0AA_track0           @ tracks 0x085892FC

@ ****************************** tracks ******************************
.align 2
song_0AA_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 100
	.byte BENDR, 12
	.byte BEND, 64
	.byte N48, 55, 127
	.byte W02
	.byte BEND, 64
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x42
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x59
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x66
	.byte W02
	.byte 0x6B
	.byte W02
	.byte VOL, 94
	.byte BEND, 112
	.byte W02
	.byte VOL, 92
	.byte BEND, 116
	.byte W02
	.byte VOL, 90
	.byte BEND, 119
	.byte W02
	.byte VOL, 86
	.byte BEND, 122
	.byte W02
	.byte VOL, 81
	.byte BEND, 125
	.byte W02
	.byte VOL, 74
	.byte BEND, 126
	.byte W02
	.byte VOL, 65
	.byte BEND, 127
	.byte W02
	.byte VOL, 55
	.byte BEND, 127
	.byte W02
	.byte VOL, 43
	.byte W02
	.byte 0x1D
	.byte W02
	.byte 0x12
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0AA_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00474AA0, 0xFF, 0x00, 0xFF, 0x00 @ index=45


.align 2
.global song_0AB
song_0AB:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0AB_tone             @ tone
	.word song_0AB_track0           @ tracks 0x08589364

@ ****************************** tracks ******************************
.align 2
song_0AB_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N44, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0AB_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047B2B8, 0xFF, 0x00, 0xFF, 0x00 @ index=46


.align 2
.global song_0AC
song_0AC:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0AC_tone             @ tone
	.word song_0AC_track0           @ tracks 0x08589380

@ ****************************** tracks ******************************
.align 2
song_0AC_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N20, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0AC_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047CC2C, 0xFF, 0x00, 0xFF, 0x00 @ index=47


.align 2
.global song_0AD
song_0AD:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_0AE
song_0AE:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_0AF
song_0AF:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0AF_tone             @ tone
	.word song_0AF_track0           @ tracks 0x0858939C

@ ****************************** tracks ******************************
.align 2
song_0AF_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N48, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0AF_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00481C90, 0xFF, 0x00, 0xFF, 0x00 @ index=68


.align 2
.global song_0B0
song_0B0:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0B0_tone             @ tone
	.word song_0B0_track0           @ tracks 0x085893B8

@ ****************************** tracks ******************************
.align 2
song_0B0_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0B0_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00481C90, 0xFF, 0xE2, 0x40, 0x00 @ index=69


.align 2
.global song_0B1
song_0B1:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0B1_tone             @ tone
	.word song_0B1_track0           @ tracks 0x085893D4

@ ****************************** tracks ******************************
.align 2
song_0B1_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N20, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0B1_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004833EC, 0xFF, 0x00, 0xFF, 0x00 @ index=70


.align 2
.global song_0B2
song_0B2:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_0B3
song_0B3:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0B3_tone             @ tone
	.word song_0B3_track0           @ tracks 0x085893F0
	.word song_0B3_track1           @ tracks 0x08589433

@ ****************************** tracks ******************************
.align 2
song_0B3_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N24, 52, 100
	.byte W24
	.byte VOICE, 1
	.byte W08
	.byte BENDR, 16
	.byte BEND, 64
	.byte N64, 62, 36
	.byte W03
	.byte BEND, 67
	.byte W03
	.byte 0x46
	.byte W03
	.byte 0x49
	.byte W03
	.byte 0x4C
	.byte W03
	.byte 0x4F
	.byte W01
	.byte W02
	.byte 0x53
	.byte W03
	.byte 0x56
	.byte W03
	.byte 0x59
	.byte W03
	.byte 0x5C
	.byte W03
	.byte 0x5F
	.byte W03
	.byte 0x63
	.byte W03
	.byte 0x66
	.byte W03
	.byte 0x69
	.byte W01
	.byte W02
	.byte 0x6C
	.byte W03
	.byte 0x6F
	.byte W03
	.byte 0x73
	.byte W03
	.byte 0x76
	.byte W03
	.byte 0x79
	.byte W03
	.byte 0x7C
	.byte W03
	.byte 0x7F
	.byte W04
	.byte FINE

.align 2
song_0B3_track1:
	.byte KEYSH, 0
	.byte VOICE, 2
	.byte BENDR, 12
	.byte VOL, 127
	.byte W24
	.byte W08
	.byte BEND, 64
	.byte N64, 96, 20
	.byte W03
	.byte BEND, 67
	.byte W03
	.byte 0x46
	.byte W03
	.byte 0x49
	.byte W03
	.byte 0x4C
	.byte W03
	.byte 0x4F
	.byte W01
	.byte W02
	.byte 0x53
	.byte W03
	.byte 0x56
	.byte W03
	.byte 0x59
	.byte W03
	.byte 0x5C
	.byte W03
	.byte 0x5F
	.byte W03
	.byte 0x63
	.byte W03
	.byte 0x66
	.byte W03
	.byte 0x69
	.byte W01
	.byte W02
	.byte 0x6C
	.byte W03
	.byte 0x6F
	.byte W03
	.byte 0x73
	.byte W03
	.byte 0x76
	.byte W03
	.byte 0x79
	.byte W03
	.byte 0x7C
	.byte W03
	.byte 0x7F
	.byte W04
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0B3_tone:
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000001, 0x00, 0x02, 0x00, 0x00 @ index=72
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x01 @ index=73
	tone_data 0x01, 0x3C, 0x00, 0x00, 0x00000003, 0x00, 0x00, 0x0F, 0x01 @ index=74


.align 2
.global song_0B4
song_0B4:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0B4_tone             @ tone
	.word song_0B4_track0           @ tracks 0x08589480

@ ****************************** tracks ******************************
.align 2
song_0B4_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N84, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0B4_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00442224, 0xFF, 0x00, 0xFF, 0x00 @ index=78


.align 2
.global song_0B5
song_0B5:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0B5_tone             @ tone
	.word song_0B5_track0           @ tracks 0x0858949C

@ ****************************** tracks ******************************
.align 2
song_0B5_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte W04
	.byte N44, 60, 127
	.byte W20
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0B5_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0048B098, 0xFF, 0x00, 0xFF, 0x00 @ index=79


.align 2
.global song_0B6
song_0B6:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0B6_tone             @ tone
	.word song_0B6_track0           @ tracks 0x085894B8

@ ****************************** tracks ******************************
.align 2
song_0B6_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N60, 62, 127
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0B6_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00483F54, 0xFF, 0x00, 0xFF, 0x00 @ index=75


.align 2
.global song_0B7
song_0B7:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0B7_tone             @ tone
	.word song_0B7_track0           @ tracks 0x085894D4

@ ****************************** tracks ******************************
.align 2
song_0B7_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N48, 62, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0B7_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00489068, 0xFF, 0x00, 0xFF, 0x00 @ index=77


.align 2
.global song_0B8
song_0B8:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0B8_tone             @ tone
	.word song_0B8_track0           @ tracks 0x085894F0
	.word song_0B8_track1           @ tracks 0x08589521

@ ****************************** tracks ******************************
.align 2
song_0B8_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 80
	.byte N01, 49, 127
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x39
	.byte W02
	.byte 0x32
	.byte W02
	.byte 0x39
	.byte W02
	.byte 0x3A
	.byte W02
	.byte 0x33
	.byte W02
	.byte 0x3A
	.byte W02
	.byte 0x3B
	.byte W02
	.byte 0x34
	.byte W02
	.byte 0x3B
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x34
	.byte 0x48
	.byte W02
	.byte 0x3B
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x34
	.byte 0x28
	.byte W02
	.byte 0x3B
	.byte W02
	.byte 0x3C
	.byte W14
	.byte FINE

.align 2
song_0B8_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte BENDR, 12
	.byte VOL, 70
	.byte BEND, 64
	.byte N36, 53, 127
	.byte W01
	.byte BEND, 32
	.byte W01
	.byte VOL, 55
	.byte BEND, 64
	.byte W01
	.byte 0x20
	.byte W01
	.byte VOL, 40
	.byte BEND, 64
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x22
	.byte W01
	.byte 0x43
	.byte W01
	.byte 0x23
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x26
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x28
	.byte W01
	.byte 0x4B
	.byte W01
	.byte 0x2B
	.byte W01
	.byte 0x4F
	.byte W01
	.byte 0x2F
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x33
	.byte W01
	.byte 0x58
	.byte W01
	.byte 0x38
	.byte W01
	.byte 0x61
	.byte W01
	.byte 0x41
	.byte W01
	.byte VOL, 36
	.byte BEND, 106
	.byte W01
	.byte 0x4A
	.byte W01
	.byte 0x71
	.byte W01
	.byte 0x51
	.byte W01
	.byte VOL, 32
	.byte BEND, 119
	.byte W01
	.byte 0x57
	.byte W01
	.byte 0x7B
	.byte W01
	.byte 0x5B
	.byte W01
	.byte VOL, 28
	.byte BEND, 126
	.byte W01
	.byte 0x5E
	.byte W01
	.byte VOL, 24
	.byte BEND, 127
	.byte W01
	.byte 0x5F
	.byte W13
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0B8_tone:
	tone_data 0x02, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x01, 0x00, 0x00 @ index=82
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x01 @ index=83


.align 2
.global song_0B9
song_0B9:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0B9_tone             @ tone
	.word song_0B9_track0           @ tracks 0x0858959C

@ ****************************** tracks ******************************
.align 2
song_0B9_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N48, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0B9_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00486984, 0xFF, 0x00, 0xFF, 0x00 @ index=76


.align 2
.global song_0BA
song_0BA:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0BA_tone             @ tone
	.word song_0BA_track0           @ tracks 0x085895B8

@ ****************************** tracks ******************************
.align 2
song_0BA_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N12, 51, 127
	.byte W20
	.byte N40, 58
	.byte W04
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0BA_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047F088, 0xFF, 0x00, 0xFF, 0xBC @ index=49


.align 2
.global song_0BB
song_0BB:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0BB_tone             @ tone
	.word song_0BB_track0           @ tracks 0x085895D8

@ ****************************** tracks ******************************
.align 2
song_0BB_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 6
	.byte VOL, 60
	.byte BEND, 0
	.byte N12, 60, 127
	.byte W01
	.byte VOL, 80
	.byte BEND, 11
	.byte W01
	.byte VOL, 100
	.byte BEND, 23
	.byte W01
	.byte VOL, 127
	.byte BEND, 34
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x3A
	.byte W01
	.byte VOL, 110
	.byte BEND, 69
	.byte W01
	.byte VOL, 90
	.byte BEND, 81
	.byte W01
	.byte VOL, 70
	.byte BEND, 93
	.byte W01
	.byte VOL, 50
	.byte BEND, 104
	.byte W01
	.byte VOL, 40
	.byte BEND, 116
	.byte W01
	.byte VOL, 30
	.byte BEND, 127
	.byte W13
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0BB_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049441C, 0xFF, 0x00, 0xFF, 0x00 @ index=84


.align 2
.global song_0BC
song_0BC:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0BC_tone             @ tone
	.word song_0BC_track0           @ tracks 0x08589628

@ ****************************** tracks ******************************
.align 2
song_0BC_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N40, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0BC_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045A8C4, 0xFF, 0x00, 0xFF, 0x00 @ index=25


.align 2
.global song_0BD
song_0BD:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0BD_tone             @ tone
	.word song_0BD_track0           @ tracks 0x08589644

@ ****************************** tracks ******************************
.align 2
song_0BD_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 4
	.byte BEND, 119
	.byte N08, 60, 127
	.byte W08
	.byte BEND, 109
	.byte N08, 60, 80
	.byte W08
	.byte BEND, 98
	.byte N07, 60, 68
	.byte W07
	.byte BEND, 89
	.byte N07, 60, 56
	.byte W01
	.byte W06
	.byte BEND, 80
	.byte N06, 60, 44
	.byte W06
	.byte BEND, 72
	.byte N06, 60, 32
	.byte W06
	.byte BEND, 64
	.byte N14, 60, 20
	.byte W06
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0BD_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045A1E0, 0xFF, 0x00, 0xFF, 0x00 @ index=22


.align 2
.global song_0BE
song_0BE:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0BE_tone             @ tone
	.word song_0BE_track0           @ tracks 0x08589688

@ ****************************** tracks ******************************
.align 2
song_0BE_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 4
	.byte BEND, 64
	.byte N08, 60, 127
	.byte W08
	.byte BEND, 74
	.byte N08, 60, 80
	.byte W08
	.byte BEND, 85
	.byte N07, 60, 68
	.byte W07
	.byte BEND, 94
	.byte N07, 60, 56
	.byte W01
	.byte W06
	.byte BEND, 103
	.byte N06, 60, 44
	.byte W06
	.byte BEND, 111
	.byte N06, 60, 32
	.byte W06
	.byte BEND, 119
	.byte N10, 60, 20
	.byte W06
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0BE_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045A1E0, 0xFF, 0x00, 0xFF, 0x00 @ index=22


.align 2
.global song_0BF
song_0BF:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0BF_tone             @ tone
	.word song_0BF_track0           @ tracks 0x085896CC

@ ****************************** tracks ******************************
.align 2
song_0BF_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte BENDR, 6
	.byte BEND, 64
	.byte N24, 60, 127
	.byte W01
	.byte BEND, 71
	.byte W01
	.byte 0x4F
	.byte W01
	.byte 0x57
	.byte W01
	.byte 0x5F
	.byte W01
	.byte 0x67
	.byte W01
	.byte 0x6F
	.byte W01
	.byte 0x77
	.byte W01
	.byte 0x7F
	.byte W16
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0BF_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047F088, 0xFF, 0x00, 0xFF, 0xBC @ index=49


.align 2
.global song_0C0
song_0C0:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_0C1
song_0C1:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_0C2
song_0C2:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_0C3
song_0C3:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_0C4
song_0C4:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0C4_tone             @ tone
	.word song_0C4_track0           @ tracks 0x085896FC

@ ****************************** tracks ******************************
.align 2
song_0C4_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 5
	.byte VOL, 20
	.byte TIE, 60, 127
	.byte W06
	.byte VOL, 29
	.byte W06
	.byte 0x27
	.byte W06
	.byte 0x31
	.byte W06
	.byte 0x3A
	.byte W06
	.byte 0x44
	.byte W06
	.byte 0x4E
	.byte W06
	.byte 0x57
	.byte W06
	.byte 0x61
	.byte W06
	.byte 0x6B
	.byte W06
	.byte 0x75
	.byte W06
	.byte 0x7F
	.byte W30
label_song_0C4_track0_0:
	.byte W96
	.byte BEND, 64
	.byte W04
	.byte 0x42
	.byte W04
	.byte 0x45
	.byte W04
	.byte 0x48
	.byte W04
	.byte 0x4B
	.byte W04
	.byte 0x4E
	.byte W04
	.byte 0x51
	.byte W04
	.byte 0x54
	.byte W04
	.byte 0x57
	.byte W04
	.byte 0x5A
	.byte W04
	.byte 0x5D
	.byte W04
	.byte 0x5F
	.byte W04
	.byte 0x62
	.byte W04
	.byte 0x65
	.byte W04
	.byte 0x68
	.byte W04
	.byte 0x6B
	.byte W04
	.byte 0x6E
	.byte W04
	.byte 0x71
	.byte W04
	.byte 0x74
	.byte W04
	.byte 0x77
	.byte W04
	.byte 0x7A
	.byte W04
	.byte 0x7D
	.byte W04
	.byte 0x7F
	.byte W08
	.byte W48
	.byte 0x7F
	.byte W04
	.byte 0x7E
	.byte W04
	.byte 0x7C
	.byte W04
	.byte 0x7A
	.byte W04
	.byte 0x78
	.byte W04
	.byte 0x76
	.byte W04
	.byte 0x74
	.byte W04
	.byte 0x72
	.byte W04
	.byte 0x70
	.byte W04
	.byte 0x6E
	.byte W04
	.byte 0x6C
	.byte W04
	.byte 0x6A
	.byte W04
	.byte 0x68
	.byte W04
	.byte 0x66
	.byte W04
	.byte 0x64
	.byte W04
	.byte 0x62
	.byte W04
	.byte 0x60
	.byte W04
	.byte 0x5F
	.byte W04
	.byte 0x5D
	.byte W04
	.byte 0x5B
	.byte W04
	.byte 0x59
	.byte W04
	.byte 0x57
	.byte W04
	.byte 0x55
	.byte W04
	.byte 0x53
	.byte W04
	.byte 0x51
	.byte W04
	.byte 0x4F
	.byte W04
	.byte 0x4D
	.byte W04
	.byte 0x4B
	.byte W04
	.byte 0x49
	.byte W04
	.byte 0x47
	.byte W04
	.byte 0x45
	.byte W04
	.byte 0x43
	.byte W04
	.byte 0x41
	.byte W04
	.byte 0x40
	.byte W12
	.byte W96
	.byte 0x40
	.byte W04
	.byte 0x3F
	.byte W04
	.byte 0x3E
	.byte W04
	.byte 0x3D
	.byte W04
	.byte 0x3D
	.byte W04
	.byte 0x3C
	.byte W04
	.byte 0x3B
	.byte W04
	.byte 0x3A
	.byte W04
	.byte 0x3A
	.byte W04
	.byte 0x39
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x37
	.byte W04
	.byte 0x36
	.byte W04
	.byte 0x35
	.byte W04
	.byte 0x35
	.byte W04
	.byte 0x34
	.byte W04
	.byte 0x33
	.byte W04
	.byte 0x32
	.byte W04
	.byte 0x32
	.byte W04
	.byte 0x31
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x31
	.byte W04
	.byte 0x32
	.byte W04
	.byte 0x33
	.byte W04
	.byte 0x34
	.byte W04
	.byte 0x35
	.byte W04
	.byte 0x36
	.byte W04
	.byte 0x37
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x39
	.byte W04
	.byte 0x3A
	.byte W04
	.byte 0x3B
	.byte W04
	.byte 0x3C
	.byte W04
	.byte 0x3D
	.byte W04
	.byte 0x3E
	.byte W04
	.byte 0x3F
	.byte W04
	.byte 0x41
	.byte W04
	.byte 0x42
	.byte W04
	.byte 0x43
	.byte W04
	.byte 0x44
	.byte W04
	.byte 0x45
	.byte W04
	.byte 0x46
	.byte W04
	.byte 0x47
	.byte W04
	.byte 0x48
	.byte W04
	.byte 0x49
	.byte W04
	.byte 0x4A
	.byte W04
	.byte 0x4B
	.byte W04
	.byte 0x4C
	.byte W04
	.byte 0x4D
	.byte W04
	.byte 0x4E
	.byte W04
	.byte 0x4F
	.byte W04
	.byte 0x51
	.byte W04
	.byte 0x52
	.byte W04
	.byte 0x53
	.byte W04
	.byte 0x54
	.byte W04
	.byte 0x55
	.byte W04
	.byte 0x56
	.byte W04
	.byte 0x57
	.byte W04
	.byte 0x58
	.byte W04
	.byte 0x59
	.byte W04
	.byte 0x5A
	.byte W04
	.byte 0x5B
	.byte W04
	.byte 0x5C
	.byte W04
	.byte 0x5D
	.byte W04
	.byte 0x5E
	.byte W04
	.byte 0x60
	.byte W20
	.byte W48
	.byte 0x60
	.byte W06
	.byte 0x5F
	.byte W06
	.byte 0x5E
	.byte W06
	.byte 0x5D
	.byte W06
	.byte 0x5C
	.byte W06
	.byte 0x5C
	.byte W06
	.byte 0x5B
	.byte W06
	.byte 0x5A
	.byte W06
	.byte 0x59
	.byte W06
	.byte 0x58
	.byte W06
	.byte 0x58
	.byte W06
	.byte 0x57
	.byte W06
	.byte 0x56
	.byte W06
	.byte 0x55
	.byte W06
	.byte 0x55
	.byte W06
	.byte 0x54
	.byte W06
	.byte 0x53
	.byte W06
	.byte 0x52
	.byte W06
	.byte 0x51
	.byte W06
	.byte 0x51
	.byte W06
	.byte 0x50
	.byte W06
	.byte 0x4F
	.byte W06
	.byte 0x4E
	.byte W06
	.byte 0x4E
	.byte W06
	.byte 0x4D
	.byte W06
	.byte 0x4C
	.byte W06
	.byte 0x4B
	.byte W06
	.byte 0x4A
	.byte W06
	.byte 0x4A
	.byte W06
	.byte 0x49
	.byte W06
	.byte 0x48
	.byte W06
	.byte 0x47
	.byte W06
	.byte 0x47
	.byte W06
	.byte 0x46
	.byte W06
	.byte 0x45
	.byte W06
	.byte 0x44
	.byte W06
	.byte 0x43
	.byte W06
	.byte 0x43
	.byte W06
	.byte 0x42
	.byte W06
	.byte 0x41
	.byte W06
	.byte 0x40
	.byte W06
	.byte 0x40
	.byte W90
	.byte 0x40
	.byte W05
	.byte 0x3E
	.byte W05
	.byte 0x3D
	.byte W05
	.byte 0x3C
	.byte W05
	.byte 0x3B
	.byte W05
	.byte 0x3A
	.byte W05
	.byte 0x38
	.byte W05
	.byte 0x37
	.byte W05
	.byte 0x36
	.byte W05
	.byte 0x35
	.byte W05
	.byte 0x34
	.byte W05
	.byte 0x32
	.byte W05
	.byte 0x31
	.byte W05
	.byte 0x30
	.byte W05
	.byte 0x2F
	.byte W05
	.byte 0x2E
	.byte W05
	.byte 0x2C
	.byte W05
	.byte 0x2B
	.byte W05
	.byte 0x2A
	.byte W05
	.byte 0x29
	.byte W01
	.byte W04
	.byte 0x28
	.byte W44
	.byte 0x28
	.byte W05
	.byte 0x2B
	.byte W05
	.byte 0x2F
	.byte W05
	.byte 0x32
	.byte W05
	.byte 0x36
	.byte W05
	.byte 0x39
	.byte W05
	.byte 0x3D
	.byte W05
	.byte 0x41
	.byte W05
	.byte 0x44
	.byte W05
	.byte 0x48
	.byte W03
	.byte W02
	.byte 0x4B
	.byte W05
	.byte 0x4F
	.byte W05
	.byte 0x53
	.byte W05
	.byte 0x56
	.byte W05
	.byte 0x5A
	.byte W05
	.byte 0x5D
	.byte W05
	.byte 0x61
	.byte W05
	.byte 0x65
	.byte W05
	.byte 0x68
	.byte W05
	.byte 0x6C
	.byte W05
	.byte 0x70
	.byte W44
	.byte W48
	.byte 0x70
	.byte W06
	.byte 0x6E
	.byte W06
	.byte 0x6C
	.byte W06
	.byte 0x6B
	.byte W06
	.byte 0x69
	.byte W06
	.byte 0x68
	.byte W06
	.byte 0x66
	.byte W06
	.byte 0x64
	.byte W06
	.byte 0x63
	.byte W06
	.byte 0x61
	.byte W06
	.byte 0x60
	.byte W06
	.byte 0x5E
	.byte W06
	.byte 0x5C
	.byte W06
	.byte 0x5B
	.byte W06
	.byte 0x59
	.byte W06
	.byte 0x58
	.byte W06
	.byte 0x56
	.byte W06
	.byte 0x54
	.byte W06
	.byte 0x53
	.byte W06
	.byte 0x51
	.byte W06
	.byte 0x50
	.byte W06
	.byte 0x4E
	.byte W06
	.byte 0x4C
	.byte W06
	.byte 0x4B
	.byte W06
	.byte 0x49
	.byte W06
	.byte 0x48
	.byte W06
	.byte 0x46
	.byte W06
	.byte 0x44
	.byte W06
	.byte 0x43
	.byte W06
	.byte 0x41
	.byte W06
	.byte 0x40
	.byte W60
	.byte W72
	.byte GOTO
	.word label_song_0C4_track0_0
	.byte W12
	.byte EOT, 60
	.byte W12
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0C4_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0048D294, 0xFF, 0x00, 0xFF, 0x00 @ index=80


.align 2
.global song_0C5
song_0C5:
@ ****************************** header ******************************
	.byte 0x03                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0C5_tone             @ tone
	.word song_0C5_track0           @ tracks 0x08589920
	.word song_0C5_track1           @ tracks 0x08589961
	.word song_0C5_track2           @ tracks 0x08589BD8

@ ****************************** tracks ******************************
.align 2
song_0C5_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 5
	.byte VOL, 20
	.byte TIE, 60, 100
	.byte W06
	.byte VOL, 29
	.byte W06
	.byte 0x27
	.byte W06
	.byte 0x31
	.byte W06
	.byte 0x3A
	.byte W06
	.byte 0x44
	.byte W06
	.byte 0x4E
	.byte W06
	.byte 0x57
	.byte W06
label_song_0C5_track0_0:
	.byte VOL, 97
	.byte W06
	.byte 0x6B
	.byte W06
	.byte 0x75
	.byte W06
	.byte 0x7F
	.byte W30
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte GOTO
	.word label_song_0C5_track0_0
	.byte W44
	.byte W03
	.byte EOT, 60
	.byte W48
	.byte W01
	.byte FINE

.align 2
song_0C5_track1:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte BENDR, 5
	.byte PAN, 32
	.byte W48
label_song_0C5_track1_0:
	.byte W24
	.byte VOL, 32
	.byte BEND, 64
	.byte TIE, 60, 127
	.byte W04
	.byte VOL, 39
	.byte W04
	.byte 0x2F
	.byte BEND, 67
	.byte W04
	.byte VOL, 55
	.byte W04
	.byte 0x3F
	.byte BEND, 71
	.byte W04
	.byte VOL, 71
	.byte W04
	.byte 0x4F
	.byte BEND, 75
	.byte W04
	.byte VOL, 87
	.byte W04
	.byte 0x5F
	.byte BEND, 79
	.byte W04
	.byte VOL, 103
	.byte W04
	.byte 0x6F
	.byte BEND, 83
	.byte W04
	.byte VOL, 119
	.byte W04
	.byte 0x7F
	.byte BEND, 87
	.byte W08
	.byte 0x5B
	.byte W08
	.byte 0x5F
	.byte W08
	.byte 0x63
	.byte W08
	.byte 0x67
	.byte W08
	.byte 0x6B
	.byte W08
	.byte 0x70
	.byte W24
	.byte W36
	.byte 0x70
	.byte W08
	.byte 0x6B
	.byte W04
	.byte VOL, 127
	.byte W04
	.byte BEND, 103
	.byte W04
	.byte VOL, 117
	.byte W04
	.byte BEND, 98
	.byte W04
	.byte VOL, 108
	.byte W04
	.byte BEND, 94
	.byte W04
	.byte VOL, 99
	.byte W04
	.byte BEND, 89
	.byte W04
	.byte VOL, 90
	.byte W04
	.byte BEND, 85
	.byte W04
	.byte VOL, 80
	.byte W04
	.byte BEND, 80
	.byte W04
	.byte VOL, 71
	.byte W04
	.byte BEND, 76
	.byte W04
	.byte VOL, 62
	.byte W04
	.byte BEND, 72
	.byte W04
	.byte VOL, 53
	.byte W08
	.byte 0x2B
	.byte W08
	.byte 0x22
	.byte W08
	.byte 0x19
	.byte W08
	.byte 0x10
	.byte W04
	.byte 0x00
	.byte W36
	.byte 0x0A
	.byte BEND, 80
	.byte W02
	.byte 0x5B
	.byte W02
	.byte VOL, 25
	.byte BEND, 103
	.byte W02
	.byte 0x73
	.byte W02
	.byte PAN, 16
	.byte VOL, 40
	.byte BEND, 127
	.byte W04
	.byte VOL, 55
	.byte W04
	.byte 0x46
	.byte BEND, 122
	.byte W04
	.byte VOL, 85
	.byte W04
	.byte 0x64
	.byte BEND, 117
	.byte W08
	.byte 0x6F
	.byte W08
	.byte 0x6A
	.byte W08
	.byte 0x65
	.byte W06
	.byte VOL, 96
	.byte W02
	.byte BEND, 96
	.byte W03
	.byte VOL, 91
	.byte W05
	.byte 0x56
	.byte BEND, 90
	.byte W05
	.byte VOL, 81
	.byte W03
	.byte BEND, 85
	.byte W02
	.byte VOL, 76
	.byte W05
	.byte 0x48
	.byte W01
	.byte BEND, 80
	.byte W04
	.byte VOL, 67
	.byte W04
	.byte BEND, 74
	.byte W01
	.byte VOL, 62
	.byte W05
	.byte 0x38
	.byte W02
	.byte BEND, 69
	.byte W03
	.byte VOL, 50
	.byte W05
	.byte 0x28
	.byte BEND, 64
	.byte W02
	.byte VOL, 30
	.byte W01
	.byte BEND, 64
	.byte W01
	.byte VOL, 20
	.byte W02
	.byte 0x0A
	.byte W02
	.byte 0x00
	.byte W16
	.byte 0x10
	.byte PAN, 48
	.byte W08
	.byte VOL, 32
	.byte W08
	.byte 0x30
	.byte W08
	.byte 0x38
	.byte W12
	.byte 0x40
	.byte W12
	.byte 0x48
	.byte W13
	.byte 0x50
	.byte W11
	.byte BEND, 64
	.byte W03
	.byte VOL, 88
	.byte W05
	.byte BEND, 62
	.byte W08
	.byte 0x3C
	.byte W08
	.byte 0x3A
	.byte W01
	.byte VOL, 96
	.byte W07
	.byte BEND, 56
	.byte W08
	.byte 0x36
	.byte W08
	.byte VOL, 104
	.byte BEND, 52
	.byte W08
	.byte 0x32
	.byte W08
	.byte 0x30
	.byte W08
	.byte VOL, 112
	.byte BEND, 46
	.byte W08
	.byte 0x2C
	.byte W08
	.byte 0x2A
	.byte W08
	.byte VOL, 120
	.byte BEND, 40
	.byte W24
	.byte 0x28
	.byte W04
	.byte 0x2B
	.byte W04
	.byte 0x2E
	.byte W04
	.byte VOL, 112
	.byte BEND, 49
	.byte W04
	.byte 0x35
	.byte W04
	.byte 0x38
	.byte W04
	.byte VOL, 104
	.byte BEND, 59
	.byte W04
	.byte 0x3F
	.byte W04
	.byte 0x42
	.byte W04
	.byte VOL, 96
	.byte BEND, 69
	.byte W04
	.byte 0x49
	.byte W04
	.byte 0x4C
	.byte W04
	.byte VOL, 88
	.byte BEND, 80
	.byte W12
	.byte VOL, 80
	.byte W12
	.byte 0x48
	.byte W12
	.byte 0x40
	.byte W12
	.byte 0x38
	.byte W12
	.byte 0x30
	.byte W12
	.byte 0x28
	.byte W12
	.byte 0x20
	.byte W12
	.byte 0x18
	.byte W06
	.byte 0x14
	.byte W05
	.byte 0x0A
	.byte W04
	.byte 0x00
	.byte W09
	.byte W72
	.byte 0x14
	.byte PAN, 4
	.byte BEND, 40
	.byte W08
	.byte VOL, 30
	.byte BEND, 45
	.byte W08
	.byte VOL, 40
	.byte BEND, 51
	.byte W08
	.byte VOL, 50
	.byte BEND, 57
	.byte W08
	.byte VOL, 60
	.byte BEND, 63
	.byte W08
	.byte VOL, 70
	.byte BEND, 69
	.byte W08
	.byte VOL, 80
	.byte BEND, 75
	.byte W08
	.byte VOL, 90
	.byte BEND, 81
	.byte W08
	.byte VOL, 100
	.byte BEND, 87
	.byte W08
	.byte VOL, 110
	.byte BEND, 93
	.byte W08
	.byte VOL, 120
	.byte BEND, 99
	.byte W08
	.byte 0x69
	.byte W08
	.byte 0x70
	.byte W24
	.byte 0x70
	.byte W08
	.byte 0x6C
	.byte W08
	.byte 0x69
	.byte W08
	.byte VOL, 112
	.byte BEND, 102
	.byte W08
	.byte 0x63
	.byte W04
	.byte VOL, 104
	.byte W04
	.byte BEND, 96
	.byte W08
	.byte VOL, 96
	.byte BEND, 92
	.byte W08
	.byte 0x59
	.byte W04
	.byte VOL, 88
	.byte W04
	.byte BEND, 86
	.byte W08
	.byte VOL, 80
	.byte BEND, 83
	.byte W08
	.byte 0x50
	.byte W04
	.byte VOL, 72
	.byte W04
	.byte BEND, 76
	.byte W08
	.byte VOL, 64
	.byte BEND, 73
	.byte W08
	.byte 0x46
	.byte W04
	.byte VOL, 56
	.byte W04
	.byte BEND, 67
	.byte W08
	.byte VOL, 48
	.byte BEND, 64
	.byte W12
	.byte VOL, 40
	.byte W12
	.byte 0x20
	.byte W12
	.byte 0x18
	.byte W12
	.byte 0x0E
	.byte W12
	.byte 0x00
	.byte W12
	.byte W96
	.byte 0x30
	.byte PAN, 40
	.byte BEND, 64
	.byte W05
	.byte 0x45
	.byte W03
	.byte VOL, 56
	.byte W02
	.byte BEND, 75
	.byte W05
	.byte 0x50
	.byte W01
	.byte VOL, 64
	.byte W04
	.byte BEND, 86
	.byte W04
	.byte VOL, 72
	.byte W01
	.byte BEND, 91
	.byte W05
	.byte 0x61
	.byte W02
	.byte VOL, 80
	.byte W03
	.byte BEND, 103
	.byte W05
	.byte VOL, 88
	.byte BEND, 108
	.byte W05
	.byte 0x72
	.byte W03
	.byte VOL, 98
	.byte W02
	.byte BEND, 120
	.byte W05
	.byte VOL, 106
	.byte W07
	.byte 0x74
	.byte W07
	.byte 0x7F
	.byte W19
	.byte BEND, 120
	.byte W08
	.byte VOL, 120
	.byte BEND, 115
	.byte W08
	.byte VOL, 112
	.byte BEND, 110
	.byte W08
	.byte VOL, 104
	.byte BEND, 106
	.byte W08
	.byte VOL, 96
	.byte BEND, 101
	.byte W08
	.byte VOL, 88
	.byte BEND, 96
	.byte W08
	.byte VOL, 80
	.byte BEND, 92
	.byte W08
	.byte VOL, 72
	.byte BEND, 87
	.byte W08
	.byte VOL, 64
	.byte BEND, 82
	.byte W08
	.byte VOL, 54
	.byte BEND, 78
	.byte W07
	.byte VOL, 48
	.byte W01
	.byte BEND, 73
	.byte W04
	.byte VOL, 40
	.byte W04
	.byte BEND, 68
	.byte W01
	.byte VOL, 30
	.byte W04
	.byte 0x14
	.byte W03
	.byte 0x00
	.byte BEND, 64
	.byte W03
	.byte EOT
	.byte W05
	.byte GOTO
	.word label_song_0C5_track1_0
	.byte W96
	.byte FINE

.align 2
song_0C5_track2:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte BENDR, 5
	.byte PAN, 84
	.byte W48
label_song_0C5_track2_0:
	.byte W12
	.byte VOL, 20
	.byte BEND, 76
	.byte TIE, 60, 127
	.byte W04
	.byte VOL, 25
	.byte BEND, 80
	.byte W04
	.byte VOL, 30
	.byte W04
	.byte 0x23
	.byte BEND, 82
	.byte W04
	.byte VOL, 40
	.byte W04
	.byte 0x2D
	.byte BEND, 85
	.byte W04
	.byte VOL, 50
	.byte W04
	.byte 0x37
	.byte BEND, 87
	.byte W04
	.byte VOL, 60
	.byte W04
	.byte 0x41
	.byte BEND, 90
	.byte W04
	.byte VOL, 70
	.byte W04
	.byte 0x4B
	.byte BEND, 93
	.byte W04
	.byte VOL, 80
	.byte W04
	.byte BEND, 96
	.byte W32
	.byte VOL, 72
	.byte W08
	.byte 0x40
	.byte W08
	.byte 0x38
	.byte W08
	.byte 0x30
	.byte W08
	.byte 0x28
	.byte W08
	.byte 0x20
	.byte W08
	.byte 0x18
	.byte W08
	.byte 0x10
	.byte W08
	.byte xIECV
	.byte W08
	.byte 0x00
	.byte W08
	.byte BEND, 92
	.byte W08
	.byte 0x5A
	.byte W08
	.byte VOL, 20
	.byte PAN, 114
	.byte BEND, 88
	.byte W06
	.byte VOL, 30
	.byte W02
	.byte BEND, 86
	.byte W04
	.byte VOL, 40
	.byte W04
	.byte BEND, 85
	.byte W02
	.byte VOL, 50
	.byte W06
	.byte 0x3C
	.byte BEND, 84
	.byte W06
	.byte VOL, 70
	.byte W02
	.byte BEND, 83
	.byte W04
	.byte VOL, 80
	.byte W04
	.byte BEND, 82
	.byte W02
	.byte VOL, 90
	.byte W06
	.byte BEND, 81
	.byte W08
	.byte 0x50
	.byte W08
	.byte 0x4F
	.byte W08
	.byte 0x4E
	.byte W08
	.byte 0x4D
	.byte W08
	.byte 0x4C
	.byte W08
	.byte VOL, 90
	.byte BEND, 75
	.byte W06
	.byte VOL, 83
	.byte W02
	.byte BEND, 74
	.byte W04
	.byte VOL, 77
	.byte W04
	.byte BEND, 73
	.byte W02
	.byte VOL, 71
	.byte W06
	.byte 0x41
	.byte BEND, 72
	.byte W06
	.byte VOL, 59
	.byte W02
	.byte BEND, 71
	.byte W04
	.byte VOL, 53
	.byte W04
	.byte BEND, 70
	.byte W02
	.byte VOL, 47
	.byte W06
	.byte 0x29
	.byte BEND, 69
	.byte W06
	.byte VOL, 35
	.byte W02
	.byte BEND, 68
	.byte W04
	.byte VOL, 29
	.byte W04
	.byte BEND, 67
	.byte W02
	.byte VOL, 23
	.byte W06
	.byte 0x11
	.byte BEND, 66
	.byte W06
	.byte VOL, 11
	.byte W02
	.byte BEND, 65
	.byte W04
	.byte VOL, 5
	.byte W04
	.byte BEND, 64
	.byte W02
	.byte VOL, 0
	.byte W42
	.byte 0x14
	.byte PAN, 94
	.byte BEND, 72
	.byte W04
	.byte VOL, 37
	.byte BEND, 76
	.byte W04
	.byte VOL, 55
	.byte BEND, 80
	.byte W04
	.byte VOL, 73
	.byte BEND, 85
	.byte W04
	.byte VOL, 91
	.byte BEND, 89
	.byte W04
	.byte VOL, 109
	.byte BEND, 94
	.byte W04
	.byte VOL, 127
	.byte BEND, 98
	.byte W04
	.byte 0x67
	.byte W04
	.byte 0x6B
	.byte W04
	.byte 0x70
	.byte W24
	.byte 0x70
	.byte W08
	.byte 0x6A
	.byte W08
	.byte 0x65
	.byte W08
	.byte VOL, 127
	.byte BEND, 96
	.byte W04
	.byte VOL, 119
	.byte W04
	.byte 0x70
	.byte BEND, 90
	.byte W04
	.byte VOL, 105
	.byte W04
	.byte 0x62
	.byte BEND, 85
	.byte W04
	.byte VOL, 91
	.byte W04
	.byte 0x54
	.byte BEND, 80
	.byte W04
	.byte VOL, 77
	.byte W04
	.byte 0x46
	.byte BEND, 74
	.byte W04
	.byte VOL, 63
	.byte W04
	.byte 0x38
	.byte BEND, 69
	.byte W04
	.byte VOL, 49
	.byte W04
	.byte 0x2A
	.byte BEND, 64
	.byte W04
	.byte VOL, 35
	.byte W04
	.byte 0x1C
	.byte BEND, 58
	.byte W04
	.byte VOL, 21
	.byte W04
	.byte 0x0E
	.byte BEND, 53
	.byte W04
	.byte VOL, 7
	.byte W04
	.byte 0x00
	.byte BEND, 48
	.byte W48
	.byte VOL, 20
	.byte PAN, 124
	.byte BEND, 72
	.byte W04
	.byte VOL, 30
	.byte W04
	.byte 0x28
	.byte BEND, 73
	.byte W04
	.byte VOL, 50
	.byte W04
	.byte 0x3C
	.byte BEND, 74
	.byte W04
	.byte VOL, 70
	.byte W04
	.byte 0x50
	.byte BEND, 75
	.byte W08
	.byte 0x4D
	.byte W08
	.byte 0x4E
	.byte W08
	.byte 0x4F
	.byte W08
	.byte 0x51
	.byte W08
	.byte 0x52
	.byte W08
	.byte 0x53
	.byte W08
	.byte 0x55
	.byte W08
	.byte 0x56
	.byte W08
	.byte 0x58
	.byte W48
	.byte VOL, 80
	.byte BEND, 88
	.byte W04
	.byte 0x5B
	.byte W04
	.byte VOL, 86
	.byte BEND, 94
	.byte W04
	.byte 0x61
	.byte W04
	.byte VOL, 93
	.byte BEND, 101
	.byte W04
	.byte 0x68
	.byte W04
	.byte VOL, 99
	.byte BEND, 107
	.byte W04
	.byte 0x6F
	.byte W04
	.byte VOL, 106
	.byte BEND, 114
	.byte W04
	.byte 0x75
	.byte W04
	.byte VOL, 113
	.byte BEND, 121
	.byte W04
	.byte 0x7C
	.byte W04
	.byte VOL, 120
	.byte BEND, 127
	.byte W48
	.byte VOL, 114
	.byte BEND, 127
	.byte W08
	.byte VOL, 104
	.byte BEND, 123
	.byte W08
	.byte VOL, 95
	.byte BEND, 119
	.byte W08
	.byte VOL, 85
	.byte BEND, 115
	.byte W08
	.byte VOL, 76
	.byte BEND, 111
	.byte W08
	.byte VOL, 66
	.byte BEND, 107
	.byte W08
	.byte VOL, 57
	.byte BEND, 103
	.byte W08
	.byte VOL, 47
	.byte BEND, 99
	.byte W08
	.byte VOL, 38
	.byte BEND, 96
	.byte W08
	.byte VOL, 28
	.byte BEND, 92
	.byte W08
	.byte VOL, 19
	.byte BEND, 88
	.byte W08
	.byte VOL, 9
	.byte BEND, 84
	.byte W08
	.byte VOL, 0
	.byte BEND, 80
	.byte W48
	.byte VOL, 10
	.byte PAN, 104
	.byte W04
	.byte VOL, 19
	.byte W04
	.byte 0x1D
	.byte W04
	.byte 0x27
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x3A
	.byte W04
	.byte 0x44
	.byte W04
	.byte 0x4E
	.byte W04
	.byte 0x57
	.byte W04
	.byte 0x61
	.byte W04
	.byte 0x6B
	.byte W04
	.byte 0x75
	.byte W04
	.byte 0x7F
	.byte BEND, 80
	.byte W08
	.byte 0x52
	.byte W08
	.byte 0x55
	.byte W08
	.byte 0x57
	.byte W08
	.byte 0x5A
	.byte W08
	.byte 0x5D
	.byte W08
	.byte 0x60
	.byte W08
	.byte 0x5E
	.byte W08
	.byte 0x5C
	.byte W08
	.byte 0x5A
	.byte W08
	.byte 0x58
	.byte W08
	.byte 0x56
	.byte W08
	.byte 0x54
	.byte W08
	.byte 0x52
	.byte W08
	.byte 0x50
	.byte W08
	.byte 0x4E
	.byte W08
	.byte 0x4C
	.byte W08
	.byte 0x4A
	.byte W08
	.byte VOL, 122
	.byte BEND, 72
	.byte W07
	.byte VOL, 117
	.byte W08
	.byte 0x70
	.byte W08
	.byte 0x6B
	.byte W07
	.byte 0x66
	.byte W08
	.byte 0x61
	.byte W08
	.byte 0x5C
	.byte W07
	.byte 0x57
	.byte W08
	.byte 0x53
	.byte W08
	.byte 0x4E
	.byte W07
	.byte 0x49
	.byte W08
	.byte 0x44
	.byte W08
	.byte 0x3F
	.byte W04
	.byte W03
	.byte 0x3A
	.byte W08
	.byte 0x35
	.byte W08
	.byte 0x30
	.byte W07
	.byte 0x2C
	.byte W08
	.byte 0x27
	.byte W08
	.byte 0x22
	.byte W07
	.byte 0x1D
	.byte W08
	.byte 0x18
	.byte W08
	.byte 0x13
	.byte W07
	.byte 0x0E
	.byte W08
	.byte xIECL
	.byte W08
	.byte 0x05
	.byte W08
	.byte 0x00
	.byte W96
	.byte EOT
	.byte GOTO
	.word label_song_0C5_track2_0
	.byte W96
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0C5_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0048D294, 0xFF, 0x00, 0xFF, 0x00 @ index=80


.align 2
.global song_0C6
song_0C6:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0C6_tone             @ tone
	.word song_0C6_track0           @ tracks 0x08589E60
	.word song_0C6_track1           @ tracks 0x08589F2F

@ ****************************** tracks ******************************
.align 2
song_0C6_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 1
	.byte PAN, 69
	.byte VOL, 127
	.byte BEND, 103
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W05
	.byte PAN, 39
	.byte BEND, 95
	.byte N02, 60, 92
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W03
	.byte PAN, 74
	.byte BEND, 87
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x70
	.byte W05
	.byte PAN, 37
	.byte BEND, 75
	.byte N02, 60, 72
	.byte W02
	.byte 0x3C
	.byte 0x60
	.byte W03
	.byte PAN, 69
	.byte VOL, 127
	.byte BEND, 87
	.byte N02, 60, 76
	.byte W02
	.byte 0x3C
	.byte 0x70
	.byte W06
	.byte PAN, 39
	.byte BEND, 99
	.byte N02, 60, 92
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W03
	.byte PAN, 74
	.byte BEND, 91
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W05
	.byte PAN, 37
	.byte BEND, 103
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W02
	.byte W03
	.byte PAN, 80
	.byte BEND, 95
	.byte N02, 60, 92
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W03
	.byte PAN, 44
	.byte BEND, 91
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W04
	.byte PAN, 59
	.byte BEND, 83
	.byte N02, 60, 92
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W05
	.byte PAN, 98
	.byte BEND, 79
	.byte N02, 60, 100
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W01
	.byte W03
	.byte PAN, 46
	.byte BEND, 87
	.byte N02, 60, 104
	.byte W02
	.byte 0x3C
	.byte 0x78
	.byte W03
	.byte PAN, 52
	.byte BEND, 83
	.byte N02, 60, 96
	.byte W02
	.byte 0x3C
	.byte 0x6C
	.byte W05
	.byte PAN, 102
	.byte BEND, 79
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x64
	.byte W03
	.byte PAN, 56
	.byte BEND, 71
	.byte N02, 60, 68
	.byte W02
	.byte 0x3C
	.byte 0x54
	.byte W02
	.byte W02
	.byte PAN, 80
	.byte BEND, 64
	.byte N02, 60, 44
	.byte W02
	.byte N03, 60, 60
	.byte W20
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_0C6_track1:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte BENDR, 1
	.byte VOL, 70
	.byte W01
	.byte PAN, 74
	.byte BEND, 79
	.byte N02, 60, 72
	.byte W02
	.byte 0x3C
	.byte 0x60
	.byte W06
	.byte PAN, 64
	.byte BEND, 103
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W05
	.byte PAN, 79
	.byte BEND, 95
	.byte N02, 60, 88
	.byte W02
	.byte 0x3C
	.byte 0x7C
	.byte W04
	.byte PAN, 49
	.byte BEND, 91
	.byte N02, 60, 76
	.byte W02
	.byte 0x3C
	.byte 0x68
	.byte W04
	.byte PAN, 74
	.byte BEND, 79
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x70
	.byte W06
	.byte PAN, 64
	.byte BEND, 103
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W05
	.byte PAN, 79
	.byte BEND, 95
	.byte N02, 60, 92
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W03
	.byte W01
	.byte PAN, 49
	.byte BEND, 91
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W04
	.byte PAN, 56
	.byte BEND, 103
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W04
	.byte PAN, 79
	.byte BEND, 95
	.byte N02, 60, 92
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W03
	.byte PAN, 64
	.byte BEND, 91
	.byte N02, 60, 80
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W04
	.byte PAN, 74
	.byte BEND, 83
	.byte N02, 60, 92
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W04
	.byte PAN, 44
	.byte BEND, 79
	.byte N02, 60, 100
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W03
	.byte PAN, 79
	.byte BEND, 87
	.byte N02, 60, 100
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W04
	.byte PAN, 36
	.byte BEND, 83
	.byte N02, 60, 96
	.byte W02
	.byte 0x3C
	.byte 0x74
	.byte W04
	.byte PAN, 54
	.byte BEND, 79
	.byte N02, 60, 88
	.byte W01
	.byte VOL, 100
	.byte W01
	.byte N02, 60, 108
	.byte W03
	.byte PAN, 56
	.byte BEND, 71
	.byte N02, 60, 96
	.byte W02
	.byte 0x3C
	.byte 0x70
	.byte W04
	.byte PAN, 44
	.byte BEND, 64
	.byte N02, 60, 88
	.byte W02
	.byte N03, 60, 112
	.byte W06
	.byte PAN, 44
	.byte BEND, 103
	.byte N02, 60, 92
	.byte W02
	.byte 0x3C
	.byte 0x6C
	.byte W04
	.byte W01
	.byte PAN, 79
	.byte BEND, 95
	.byte N02, 60, 100
	.byte W02
	.byte 0x3C
	.byte 0x78
	.byte W03
	.byte PAN, 47
	.byte BEND, 91
	.byte N02, 60, 88
	.byte W02
	.byte 0x3C
	.byte 0x70
	.byte W04
	.byte PAN, 64
	.byte BEND, 83
	.byte N02, 60, 104
	.byte W02
	.byte 0x3C
	.byte 0x78
	.byte W05
	.byte PAN, 89
	.byte BEND, 79
	.byte N02, 60, 100
	.byte W02
	.byte 0x3C
	.byte 0x74
	.byte W03
	.byte W01
	.byte PAN, 49
	.byte BEND, 87
	.byte N02, 60, 92
	.byte W02
	.byte 0x3C
	.byte 0x74
	.byte W03
	.byte PAN, 54
	.byte BEND, 83
	.byte N02, 60, 76
	.byte W02
	.byte 0x3C
	.byte 0x64
	.byte W05
	.byte PAN, 94
	.byte BEND, 79
	.byte N02, 60, 64
	.byte W02
	.byte 0x3C
	.byte 0x54
	.byte W03
	.byte PAN, 59
	.byte BEND, 71
	.byte N02, 60, 52
	.byte W02
	.byte 0x3C
	.byte 0x48
	.byte W04
	.byte PAN, 79
	.byte BEND, 64
	.byte N02, 60, 40
	.byte W02
	.byte N03, 60, 56
	.byte W22
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0C6_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045A748, 0xFF, 0x00, 0xFF, 0x00 @ index=23


.align 2
.global song_0C7
song_0C7:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0C7_tone             @ tone
	.word song_0C7_track0           @ tracks 0x0858A088

@ ****************************** tracks ******************************
.align 2
song_0C7_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 6
	.byte VOL, 12
	.byte TIE, 58, 127
	.byte W06
	.byte VOL, 18
	.byte W06
	.byte 0x18
	.byte W06
	.byte 0x1E
	.byte W06
	.byte 0x24
	.byte W06
	.byte 0x2A
	.byte W06
	.byte 0x31
	.byte W06
	.byte 0x36
	.byte W06
	.byte 0x3D
	.byte W06
	.byte 0x43
	.byte W06
	.byte 0x49
	.byte W06
	.byte 0x50
	.byte W06
	.byte BEND, 64
	.byte W08
	.byte 0x45
	.byte W08
	.byte 0x4B
	.byte W08
label_song_0C7_track0_0:
	.byte BEND, 81
	.byte W08
	.byte 0x57
	.byte W08
	.byte 0x5D
	.byte W08
	.byte 0x62
	.byte W08
	.byte 0x68
	.byte W08
	.byte 0x6E
	.byte W08
	.byte 0x74
	.byte W08
	.byte 0x7A
	.byte W08
	.byte 0x7F
	.byte W32
	.byte 0x7F
	.byte W08
	.byte 0x7C
	.byte W08
	.byte 0x78
	.byte W08
	.byte 0x74
	.byte W08
	.byte 0x70
	.byte W08
	.byte 0x6C
	.byte W08
	.byte 0x68
	.byte W08
	.byte 0x64
	.byte W08
	.byte 0x60
	.byte W08
	.byte 0x5D
	.byte W08
	.byte 0x59
	.byte W08
	.byte 0x55
	.byte W08
	.byte 0x51
	.byte W08
	.byte 0x4D
	.byte W08
	.byte 0x49
	.byte W08
	.byte 0x45
	.byte W08
	.byte 0x41
	.byte W04
	.byte 0x40
	.byte W60
	.byte W24
	.byte 0x40
	.byte W08
	.byte 0x3E
	.byte W08
	.byte 0x3D
	.byte W08
	.byte 0x3B
	.byte W08
	.byte 0x3A
	.byte W08
	.byte 0x38
	.byte W08
	.byte 0x37
	.byte W08
	.byte 0x35
	.byte W08
	.byte 0x34
	.byte W08
	.byte 0x32
	.byte W08
	.byte 0x31
	.byte W08
	.byte 0x30
	.byte W08
	.byte 0x32
	.byte W08
	.byte 0x34
	.byte W08
	.byte 0x36
	.byte W08
	.byte 0x38
	.byte W08
	.byte 0x3A
	.byte W08
	.byte 0x3C
	.byte W08
	.byte 0x3E
	.byte W08
	.byte 0x41
	.byte W08
	.byte 0x43
	.byte W08
	.byte 0x45
	.byte W08
	.byte 0x47
	.byte W08
	.byte 0x49
	.byte W08
	.byte 0x4B
	.byte W08
	.byte 0x4D
	.byte W08
	.byte 0x4F
	.byte W08
	.byte 0x52
	.byte W08
	.byte 0x54
	.byte W08
	.byte 0x56
	.byte W08
	.byte 0x58
	.byte W08
	.byte 0x5A
	.byte W08
	.byte 0x5C
	.byte W08
	.byte 0x5E
	.byte W08
	.byte 0x60
	.byte W16
	.byte 0x60
	.byte W06
	.byte 0x5F
	.byte W06
	.byte 0x5E
	.byte W06
	.byte 0x5D
	.byte W06
	.byte 0x5C
	.byte W06
	.byte 0x5C
	.byte W06
	.byte 0x5B
	.byte W06
	.byte 0x5A
	.byte W06
	.byte 0x59
	.byte W06
	.byte 0x58
	.byte W06
	.byte 0x58
	.byte W06
	.byte 0x57
	.byte W06
	.byte 0x56
	.byte W06
	.byte 0x55
	.byte W06
	.byte 0x55
	.byte W06
	.byte 0x54
	.byte W06
	.byte 0x53
	.byte W06
	.byte 0x52
	.byte W06
	.byte 0x51
	.byte W06
	.byte 0x51
	.byte W06
	.byte 0x50
	.byte W06
	.byte 0x4F
	.byte W06
	.byte 0x4E
	.byte W06
	.byte 0x4E
	.byte W06
	.byte 0x4D
	.byte W06
	.byte 0x4C
	.byte W06
	.byte 0x4B
	.byte W06
	.byte 0x4A
	.byte W06
	.byte 0x4A
	.byte W06
	.byte 0x49
	.byte W06
	.byte 0x48
	.byte W06
	.byte 0x47
	.byte W06
	.byte 0x47
	.byte W06
	.byte 0x46
	.byte W06
	.byte 0x45
	.byte W06
	.byte 0x44
	.byte W06
	.byte 0x43
	.byte W06
	.byte 0x43
	.byte W06
	.byte 0x42
	.byte W06
	.byte 0x41
	.byte W30
	.byte 0x40
	.byte W06
	.byte 0x41
	.byte W06
	.byte 0x43
	.byte W06
	.byte 0x44
	.byte W06
	.byte 0x46
	.byte W06
	.byte 0x47
	.byte W06
	.byte 0x49
	.byte W06
	.byte 0x4B
	.byte W06
	.byte 0x4C
	.byte W06
	.byte 0x4E
	.byte W06
	.byte 0x4F
	.byte W06
	.byte 0x51
	.byte W06
	.byte 0x53
	.byte W06
	.byte 0x54
	.byte W06
	.byte 0x56
	.byte W06
	.byte 0x57
	.byte W06
	.byte 0x59
	.byte W06
	.byte 0x5B
	.byte W06
	.byte 0x5C
	.byte W06
	.byte 0x5E
	.byte W06
	.byte 0x60
	.byte W12
	.byte 0x60
	.byte W06
	.byte 0x5D
	.byte W06
	.byte 0x5B
	.byte W06
	.byte 0x59
	.byte W06
	.byte 0x57
	.byte W06
	.byte 0x55
	.byte W06
	.byte 0x52
	.byte W06
	.byte 0x50
	.byte W06
	.byte 0x4E
	.byte W06
	.byte 0x4C
	.byte W06
	.byte 0x4A
	.byte W06
	.byte 0x48
	.byte W06
	.byte 0x45
	.byte W06
	.byte 0x43
	.byte W06
	.byte 0x41
	.byte W06
	.byte 0x3F
	.byte W06
	.byte 0x3D
	.byte W06
	.byte 0x3A
	.byte W06
	.byte 0x38
	.byte W06
	.byte 0x36
	.byte W06
	.byte 0x34
	.byte W06
	.byte 0x32
	.byte W06
	.byte 0x30
	.byte W06
	.byte 0x31
	.byte W06
	.byte 0x33
	.byte W06
	.byte 0x35
	.byte W06
	.byte 0x37
	.byte W06
	.byte 0x39
	.byte W06
	.byte 0x3B
	.byte W06
	.byte 0x3C
	.byte W07
	.byte 0x3A
	.byte W05
	.byte 0x38
	.byte W05
	.byte 0x37
	.byte W05
	.byte 0x36
	.byte W05
	.byte 0x35
	.byte W05
	.byte 0x34
	.byte W05
	.byte 0x32
	.byte W05
	.byte 0x31
	.byte W05
	.byte 0x30
	.byte W05
	.byte 0x2F
	.byte W05
	.byte 0x2E
	.byte W05
	.byte 0x2C
	.byte W05
	.byte 0x2B
	.byte W05
	.byte 0x2A
	.byte W05
	.byte 0x29
	.byte W01
	.byte W04
	.byte 0x28
	.byte W44
	.byte 0x28
	.byte W05
	.byte 0x2B
	.byte W05
	.byte 0x2F
	.byte W05
	.byte 0x32
	.byte W05
	.byte 0x36
	.byte W05
	.byte 0x39
	.byte W05
	.byte 0x3D
	.byte W05
	.byte 0x41
	.byte W05
	.byte 0x44
	.byte W05
	.byte 0x48
	.byte W03
	.byte W02
	.byte 0x4B
	.byte W05
	.byte 0x4F
	.byte W05
	.byte 0x53
	.byte W05
	.byte 0x56
	.byte W05
	.byte 0x5A
	.byte W05
	.byte 0x5D
	.byte W05
	.byte 0x61
	.byte W05
	.byte 0x65
	.byte W05
	.byte 0x68
	.byte W05
	.byte 0x6C
	.byte W05
	.byte 0x70
	.byte W44
	.byte W48
	.byte 0x70
	.byte W06
	.byte 0x6E
	.byte W06
	.byte 0x6C
	.byte W06
	.byte 0x6B
	.byte W06
	.byte 0x69
	.byte W06
	.byte 0x68
	.byte W06
	.byte 0x66
	.byte W06
	.byte 0x64
	.byte W06
	.byte 0x63
	.byte W06
	.byte 0x61
	.byte W06
	.byte 0x60
	.byte W06
	.byte 0x5E
	.byte W06
	.byte 0x5C
	.byte W06
	.byte 0x5B
	.byte W06
	.byte 0x59
	.byte W06
	.byte 0x58
	.byte W06
	.byte 0x56
	.byte W06
	.byte 0x54
	.byte W06
	.byte 0x53
	.byte W06
	.byte 0x51
	.byte W06
	.byte 0x50
	.byte W06
	.byte 0x4E
	.byte W06
	.byte 0x4C
	.byte W06
	.byte 0x4B
	.byte W06
	.byte 0x49
	.byte W06
	.byte 0x48
	.byte W06
	.byte 0x46
	.byte W06
	.byte 0x44
	.byte W06
	.byte 0x43
	.byte W06
	.byte 0x41
	.byte W06
	.byte 0x40
	.byte W36
	.byte GOTO
	.word label_song_0C7_track0_0
	.byte W18
	.byte EOT, 58
	.byte W06
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0C7_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00495154, 0xFF, 0x00, 0xFF, 0x00 @ index=86


.align 2
.global song_0C8
song_0C8:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0C8_tone             @ tone
	.word song_0C8_track0           @ tracks 0x0858A28C

@ ****************************** tracks ******************************
.align 2
song_0C8_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 90
	.byte N13, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0C8_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004986DC, 0xFF, 0x00, 0xFF, 0x00 @ index=0


.align 2
.global song_0C9
song_0C9:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0C9_tone             @ tone
	.word song_0C9_track0           @ tracks 0x0858A2A8

@ ****************************** tracks ******************************
.align 2
song_0C9_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 80
	.byte N16, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0C9_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004991A4, 0xFF, 0x00, 0xFF, 0x00 @ index=1


.align 2
.global song_0CA
song_0CA:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0CA_tone             @ tone
	.word song_0CA_track0           @ tracks 0x0858A2C4

@ ****************************** tracks ******************************
.align 2
song_0CA_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 85
	.byte N14, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0CA_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00499BF0, 0xFF, 0x00, 0xFF, 0x00 @ index=2


.align 2
.global song_0CB
song_0CB:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0CB_tone             @ tone
	.word song_0CB_track0           @ tracks 0x0858A2E0

@ ****************************** tracks ******************************
.align 2
song_0CB_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N16, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0CB_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049AB58, 0xFF, 0x00, 0xFF, 0x00 @ index=7


.align 2
.global song_0CC
song_0CC:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0CC_tone             @ tone
	.word song_0CC_track0           @ tracks 0x0858A2FC

@ ****************************** tracks ******************************
.align 2
song_0CC_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0CC_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049B810, 0xFF, 0x00, 0xFF, 0x00 @ index=10


.align 2
.global song_0CD
song_0CD:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0CD_tone             @ tone
	.word song_0CD_track0           @ tracks 0x0858A318

@ ****************************** tracks ******************************
.align 2
song_0CD_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0CD_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049A494, 0xFF, 0x00, 0xFF, 0x00 @ index=6


.align 2
.global song_0CE
song_0CE:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0CE_tone             @ tone
	.word song_0CE_track0           @ tracks 0x0858A334

@ ****************************** tracks ******************************
.align 2
song_0CE_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0CE_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049441C, 0xFF, 0x00, 0xFF, 0x00 @ index=8


.align 2
.global song_0CF
song_0CF:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0CF_tone             @ tone
	.word song_0CF_track0           @ tracks 0x0858A350

@ ****************************** tracks ******************************
.align 2
song_0CF_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N12, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0CF_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00494A90, 0xFF, 0x00, 0xFF, 0x00 @ index=9


.align 2
.global song_0D0
song_0D0:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0D0_tone             @ tone
	.word song_0D0_track0           @ tracks 0x0858A36C

@ ****************************** tracks ******************************
.align 2
song_0D0_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N20, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0D0_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049C4FC, 0xFF, 0x00, 0xFF, 0x00 @ index=13


.align 2
.global song_0D1
song_0D1:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0D1_tone             @ tone
	.word song_0D1_track0           @ tracks 0x0858A388

@ ****************************** tracks ******************************
.align 2
song_0D1_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 2
	.byte BEND, 24
	.byte N02, 60, 127
	.byte W02
	.byte BEND, 32
	.byte N02, 60, 120
	.byte W02
	.byte BEND, 40
	.byte N04, 60, 116
	.byte W04
	.byte BEND, 48
	.byte N06, 60, 112
	.byte W06
	.byte BEND, 56
	.byte N08, 60, 108
	.byte W08
	.byte BEND, 64
	.byte N09, 60, 100
	.byte W02
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0D1_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049C0F8, 0xFF, 0x00, 0xFF, 0x00 @ index=11


.align 2
.global song_0D2
song_0D2:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0D2_tone             @ tone
	.word song_0D2_track0           @ tracks 0x0858A3C4

@ ****************************** tracks ******************************
.align 2
song_0D2_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0D2_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004BE014, 0xFF, 0x00, 0xFF, 0x00 @ index=110


.align 2
.global song_0D3
song_0D3:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0D3_tone             @ tone
	.word song_0D3_track0           @ tracks 0x0858A3E0

@ ****************************** tracks ******************************
.align 2
song_0D3_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0D3_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004BEA9C, 0xFF, 0x00, 0xFF, 0x00 @ index=111


.align 2
.global song_0D4
song_0D4:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0D4_tone             @ tone
	.word song_0D4_track0           @ tracks 0x0858A3FC

@ ****************************** tracks ******************************
.align 2
song_0D4_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0D4_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004BF3C4, 0xFF, 0x00, 0xFF, 0x00 @ index=112


.align 2
.global song_0D5
song_0D5:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0D5_tone             @ tone
	.word song_0D5_track0           @ tracks 0x0858A418

@ ****************************** tracks ******************************
.align 2
song_0D5_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0D5_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004BFDC4, 0xFF, 0x00, 0xFF, 0x00 @ index=113


.align 2
.global song_0D6
song_0D6:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0D6_tone             @ tone
	.word song_0D6_track0           @ tracks 0x0858A434

@ ****************************** tracks ******************************
.align 2
song_0D6_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 80
	.byte N48, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0D6_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004BBB10, 0xFF, 0x00, 0xFF, 0x00 @ index=103


.align 2
.global song_0D7
song_0D7:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0D7_tone             @ tone
	.word song_0D7_track0           @ tracks 0x0858A450

@ ****************************** tracks ******************************
.align 2
song_0D7_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte W10
	.byte N14, 60, 127
	.byte W14
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0D7_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004A61B0, 0xFF, 0x00, 0xFF, 0x00 @ index=26


.align 2
.global song_0D8
song_0D8:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0D8_tone             @ tone
	.word song_0D8_track0           @ tracks 0x0858A46C

@ ****************************** tracks ******************************
.align 2
song_0D8_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte BENDR, 32
	.byte N03, 52, 127
	.byte W03
	.byte BEND, 64
	.byte N04
	.byte W01
	.byte BEND, 80
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x40
	.byte N04, 52, 120
	.byte W01
	.byte BEND, 80
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x40
	.byte N04, 52, 108
	.byte W01
	.byte BEND, 80
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x40
	.byte N04, 52, 100
	.byte W01
	.byte BEND, 80
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x40
	.byte N04, 52, 88
	.byte W01
	.byte BEND, 80
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x40
	.byte N04, 52, 80
	.byte W01
	.byte BEND, 80
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x40
	.byte N04, 52, 68
	.byte W01
	.byte BEND, 80
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x40
	.byte N04, 52, 60
	.byte W01
	.byte BEND, 80
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x40
	.byte N04, 52, 48
	.byte W01
	.byte BEND, 80
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x40
	.byte N04, 52, 40
	.byte W01
	.byte BEND, 80
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x40
	.byte N04, 52, 28
	.byte W01
	.byte BEND, 80
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x42
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0D8_tone:
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000001, 0x00, 0x01, 0x00, 0x00 @ index=4


.align 2
.global song_0D9
song_0D9:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_0DA
song_0DA:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_0DB
song_0DB:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_0DC
song_0DC:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0DC_tone             @ tone
	.word song_0DC_track0           @ tracks 0x0858A50C

@ ****************************** tracks ******************************
.align 2
song_0DC_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 12
	.byte N48, 64, 127
	.byte W04
	.byte VOL, 124
	.byte W02
	.byte 0x76
	.byte W02
	.byte 0x66
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x28
	.byte W02
	.byte 0x35
	.byte W02
	.byte 0x42
	.byte BEND, 64
	.byte W02
	.byte VOL, 76
	.byte BEND, 71
	.byte W02
	.byte VOL, 84
	.byte BEND, 78
	.byte W02
	.byte VOL, 91
	.byte BEND, 85
	.byte W02
	.byte VOL, 96
	.byte BEND, 91
	.byte W02
	.byte VOL, 99
	.byte BEND, 97
	.byte W02
	.byte VOL, 100
	.byte BEND, 102
	.byte W02
	.byte 0x6B
	.byte W02
	.byte 0x6F
	.byte W02
	.byte 0x73
	.byte W02
	.byte 0x76
	.byte W02
	.byte 0x79
	.byte W02
	.byte 0x7B
	.byte W02
	.byte 0x7D
	.byte W02
	.byte 0x7E
	.byte W02
	.byte 0x7F
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0DC_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049F2EC, 0xFF, 0x00, 0xFF, 0x00 @ index=20


.align 2
.global song_0DD
song_0DD:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0DD_tone             @ tone
	.word song_0DD_track0           @ tracks 0x0858A568

@ ****************************** tracks ******************************
.align 2
song_0DD_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 12
	.byte VOL, 50
	.byte BEND, 127
	.byte N60, 64, 127
	.byte W02
	.byte VOL, 51
	.byte BEND, 118
	.byte W02
	.byte VOL, 54
	.byte BEND, 109
	.byte W02
	.byte VOL, 60
	.byte BEND, 101
	.byte W02
	.byte VOL, 69
	.byte BEND, 93
	.byte W02
	.byte VOL, 80
	.byte BEND, 86
	.byte W02
	.byte VOL, 93
	.byte BEND, 79
	.byte W02
	.byte VOL, 109
	.byte BEND, 72
	.byte W02
	.byte VOL, 127
	.byte BEND, 66
	.byte W02
	.byte 0x3D
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x33
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x2B
	.byte W02
	.byte 0x28
	.byte W02
	.byte 0x26
	.byte W02
	.byte 0x23
	.byte W02
	.byte 0x22
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x20
	.byte W08
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0DD_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004A2324, 0xFF, 0x00, 0xFF, 0x00 @ index=21


.align 2
.global song_0DE
song_0DE:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0DE_tone             @ tone
	.word song_0DE_track0           @ tracks 0x0858A5C8

@ ****************************** tracks ******************************
.align 2
song_0DE_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 9
	.byte VOL, 50
	.byte BEND, 64
	.byte N48, 65, 127
	.byte W02
	.byte VOL, 62
	.byte BEND, 65
	.byte W02
	.byte VOL, 72
	.byte BEND, 68
	.byte W02
	.byte VOL, 77
	.byte BEND, 73
	.byte W02
	.byte VOL, 80
	.byte BEND, 80
	.byte W02
	.byte 0x59
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x71
	.byte W02
	.byte 0x7F
	.byte W04
	.byte VOL, 70
	.byte W02
	.byte 0x3D
	.byte W02
	.byte 0x35
	.byte BEND, 126
	.byte W02
	.byte VOL, 45
	.byte BEND, 125
	.byte W02
	.byte VOL, 39
	.byte BEND, 122
	.byte W02
	.byte VOL, 32
	.byte BEND, 117
	.byte W02
	.byte VOL, 27
	.byte BEND, 111
	.byte W02
	.byte VOL, 22
	.byte BEND, 103
	.byte W02
	.byte VOL, 17
	.byte BEND, 93
	.byte W02
	.byte VOL, 14
	.byte BEND, 81
	.byte W02
	.byte VOL, 11
	.byte BEND, 67
	.byte W02
	.byte VOL, 8
	.byte BEND, 52
	.byte W02
	.byte VOL, 7
	.byte BEND, 34
	.byte W02
	.byte VOL, 6
	.byte BEND, 16
	.byte W02
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0DE_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004AEBE8, 0xFF, 0x00, 0xFF, 0x00 @ index=90


.align 2
.global song_0DF
song_0DF:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0DF_tone             @ tone
	.word song_0DF_track0           @ tracks 0x0858A644

@ ****************************** tracks ******************************
.align 2
song_0DF_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 8
	.byte BEND, 64
	.byte TIE, 52, 127
	.byte W01
	.byte BEND, 65
	.byte W01
	.byte 0x44
	.byte W01
	.byte 0x49
	.byte W01
	.byte 0x50
	.byte W01
	.byte 0x59
	.byte W01
	.byte 0x64
	.byte W01
	.byte 0x71
	.byte W01
	.byte 0x7F
	.byte W04
	.byte 0x7F
	.byte W02
	.byte 0x71
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x59
	.byte W02
	.byte 0x50
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x40
	.byte W20
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0DF_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004AEBE8, 0xFF, 0x00, 0xFF, 0x00 @ index=90


.align 2
.global song_0E0
song_0E0:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0E0_tone             @ tone
	.word song_0E0_track0           @ tracks 0x0858A68C

@ ****************************** tracks ******************************
.align 2
song_0E0_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 12
	.byte BEND, 32
	.byte N64, 60, 127
	.byte W02
	.byte BEND, 32
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x21
	.byte W02
	.byte 0x22
	.byte W02
	.byte 0x23
	.byte W02
	.byte 0x24
	.byte W02
	.byte 0x26
	.byte W02
	.byte 0x28
	.byte W02
	.byte 0x29
	.byte W02
	.byte 0x2B
	.byte W02
	.byte 0x2E
	.byte W02
	.byte 0x30
	.byte W02
	.byte 0x33
	.byte W02
	.byte 0x36
	.byte W02
	.byte 0x39
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x40
	.byte W04
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x42
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x4D
	.byte W02
	.byte 0x50
	.byte W10
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0E0_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00478128, 0xFF, 0x00, 0xFF, 0x00 @ index=24


.align 2
.global song_0E1
song_0E1:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0E1_tone             @ tone
	.word song_0E1_track0           @ tracks 0x0858A6E8

@ ****************************** tracks ******************************
.align 2
song_0E1_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N03, 55, 127
	.byte W03
	.byte N06, 60
	.byte W06
	.byte N03, 56, 52
	.byte W03
	.byte N04, 61
	.byte W04
	.byte N03, 57, 20
	.byte W03
	.byte N05, 62
	.byte W05
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0E1_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047B0F8, 0xFF, 0x00, 0xFF, 0x00 @ index=25


.align 2
.global song_0E2
song_0E2:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0E2_tone             @ tone
	.word song_0E2_track0           @ tracks 0x0858A714

@ ****************************** tracks ******************************
.align 2
song_0E2_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N72, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0E2_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004A836C, 0xFF, 0x00, 0xFF, 0x00 @ index=29


.align 2
.global song_0E3
song_0E3:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0E3_tone             @ tone
	.word song_0E3_track0           @ tracks 0x0858A730

@ ****************************** tracks ******************************
.align 2
song_0E3_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte TIE, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W12
	.byte EOT
	.byte W12
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0E3_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004B5DA4, 0xFF, 0x00, 0xFF, 0x00 @ index=96


.align 2
.global song_0E4
song_0E4:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0E4_tone             @ tone
	.word song_0E4_track0           @ tracks 0x0858A750

@ ****************************** tracks ******************************
.align 2
song_0E4_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte TIE, 55, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W16
	.byte EOT
	.byte W08
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0E4_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004B5DA4, 0xFF, 0x00, 0xFF, 0x00 @ index=96


.align 2
.global song_0E5
song_0E5:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0E5_tone             @ tone
	.word song_0E5_track0           @ tracks 0x0858A770

@ ****************************** tracks ******************************
.align 2
song_0E5_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte TIE, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0E5_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004B5DA4, 0xFF, 0x00, 0xFF, 0x00 @ index=96


.align 2
.global song_0E6
song_0E6:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0E6_tone             @ tone
	.word song_0E6_track0           @ tracks 0x0858A790

@ ****************************** tracks ******************************
.align 2
song_0E6_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte TIE, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W12
	.byte EOT
	.byte W12
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0E6_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004AEBE8, 0xFF, 0x00, 0xFF, 0x00 @ index=90


.align 2
.global song_0E7
song_0E7:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0E7_tone             @ tone
	.word song_0E7_track0           @ tracks 0x0858A7B0

@ ****************************** tracks ******************************
.align 2
song_0E7_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N60, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0E7_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004B2FC0, 0xFF, 0x00, 0xFF, 0x00 @ index=91


.align 2
.global song_0E8
song_0E8:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0E8_tone             @ tone
	.word song_0E8_track0           @ tracks 0x0858A7CC
	.word song_0E8_track1           @ tracks 0x0858A7E1

@ ****************************** tracks ******************************
.align 2
song_0E8_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N84, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_0E8_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte BENDR, 11
	.byte VOL, 36
	.byte BEND, 64
	.byte TIE, 60, 127
	.byte W01
	.byte BEND, 62
	.byte W01
	.byte 0x3C
	.byte W01
	.byte 0x3A
	.byte W01
	.byte 0x38
	.byte W01
	.byte 0x36
	.byte W01
	.byte 0x34
	.byte W01
	.byte 0x32
	.byte W01
	.byte 0x30
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x2A
	.byte W01
	.byte 0x28
	.byte W01
	.byte 0x26
	.byte W01
	.byte 0x24
	.byte W01
	.byte 0x22
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x1E
	.byte W01
	.byte 0x1C
	.byte W01
	.byte 0x1A
	.byte W01
	.byte 0x18
	.byte W01
	.byte 0x16
	.byte W01
	.byte 0x14
	.byte W01
	.byte 0x12
	.byte W01
	.byte 0x10
	.byte W01
	.byte 0x0E
	.byte W01
	.byte 0x0D
	.byte W01
	.byte 0x0C
	.byte W01
	.byte 0x0B
	.byte W01
	.byte 0x0A
	.byte W01
	.byte xIECL
	.byte W01
	.byte xIECV
	.byte W01
	.byte 0x07
	.byte W01
	.byte 0x06
	.byte W01
	.byte 0x05
	.byte W01
	.byte 0x04
	.byte W01
	.byte 0x04
	.byte W01
	.byte 0x03
	.byte W01
	.byte 0x02
	.byte W01
	.byte 0x02
	.byte W01
	.byte 0x01
	.byte W01
	.byte 0x01
	.byte W01
	.byte 0x01
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W24
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x01
	.byte W01
	.byte 0x02
	.byte W01
	.byte 0x02
	.byte W01
	.byte 0x03
	.byte W01
	.byte 0x04
	.byte W01
	.byte 0x05
	.byte W01
	.byte 0x06
	.byte W01
	.byte xIECV
	.byte W01
	.byte xIECL
	.byte W01
	.byte 0x0A
	.byte W01
	.byte 0x0C
	.byte W01
	.byte 0x0E
	.byte W01
	.byte 0x10
	.byte W01
	.byte 0x12
	.byte W01
	.byte 0x14
	.byte W01
	.byte 0x16
	.byte W01
	.byte 0x18
	.byte W01
	.byte 0x1A
	.byte W01
	.byte 0x1D
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x22
	.byte W01
	.byte 0x24
	.byte W01
	.byte 0x26
	.byte W01
	.byte 0x28
	.byte W01
	.byte 0x2A
	.byte W01
	.byte 0x2B
	.byte W01
	.byte 0x2D
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2F
	.byte W01
	.byte 0x2F
	.byte W01
	.byte 0x30
	.byte W01
	.byte 0x2F
	.byte W01
	.byte 0x2F
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2D
	.byte W01
	.byte 0x2B
	.byte W01
	.byte 0x2A
	.byte W01
	.byte 0x28
	.byte W01
	.byte 0x26
	.byte W01
	.byte 0x24
	.byte W01
	.byte 0x22
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x1E
	.byte W01
	.byte 0x1D
	.byte W01
	.byte 0x1C
	.byte W01
	.byte 0x1B
	.byte W01
	.byte 0x1A
	.byte W01
	.byte 0x19
	.byte W01
	.byte 0x18
	.byte W01
	.byte 0x17
	.byte W01
	.byte 0x16
	.byte W01
	.byte 0x15
	.byte W01
	.byte 0x14
	.byte W01
	.byte 0x14
	.byte W01
	.byte 0x13
	.byte W01
	.byte 0x12
	.byte W01
	.byte 0x12
	.byte W01
	.byte 0x11
	.byte W01
	.byte 0x11
	.byte W01
	.byte 0x11
	.byte W01
	.byte 0x10
	.byte W01
	.byte 0x10
	.byte W01
	.byte 0x10
	.byte W01
	.byte 0x10
	.byte W01
	.byte 0x10
	.byte W01
	.byte VOL, 32
	.byte BEND, 16
	.byte W01
	.byte 0x11
	.byte W01
	.byte 0x12
	.byte W01
	.byte 0x13
	.byte W01
	.byte 0x14
	.byte W01
	.byte 0x15
	.byte W01
	.byte 0x16
	.byte W01
	.byte 0x18
	.byte W01
	.byte VOL, 32
	.byte W01
	.byte BEND, 23
	.byte W02
	.byte 0x16
	.byte W02
	.byte 0x15
	.byte W02
	.byte 0x14
	.byte W01
	.byte VOL, 28
	.byte W01
	.byte BEND, 19
	.byte W02
	.byte 0x12
	.byte W02
	.byte 0x11
	.byte W02
	.byte 0x10
	.byte W01
	.byte VOL, 24
	.byte W01
	.byte BEND, 15
	.byte W02
	.byte 0x0E
	.byte W02
	.byte 0x0D
	.byte W02
	.byte 0x0C
	.byte W01
	.byte VOL, 20
	.byte W01
	.byte BEND, 11
	.byte W02
	.byte 0x0A
	.byte W02
	.byte xIECL
	.byte W02
	.byte xIECV
	.byte W01
	.byte VOL, 16
	.byte W01
	.byte BEND, 7
	.byte W02
	.byte 0x06
	.byte W02
	.byte 0x05
	.byte W02
	.byte 0x04
	.byte W01
	.byte VOL, 12
	.byte W01
	.byte BEND, 3
	.byte W02
	.byte 0x02
	.byte W02
	.byte 0x01
	.byte W02
	.byte 0x00
	.byte W01
	.byte VOL, 8
	.byte W08
	.byte 0x04
	.byte W08
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0E8_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049F2EC, 0xFF, 0x00, 0xFF, 0x00 @ index=20
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x00 @ index=22


.align 2
.global song_0E9
song_0E9:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0E9_tone             @ tone
	.word song_0E9_track0           @ tracks 0x0858A954
	.word song_0E9_track1           @ tracks 0x0858A965

@ ****************************** tracks ******************************
.align 2
song_0E9_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N72, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_0E9_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte BENDR, 11
	.byte VOL, 36
	.byte BEND, 64
	.byte TIE, 60, 127
	.byte W01
	.byte BEND, 62
	.byte W01
	.byte 0x3C
	.byte W01
	.byte 0x3A
	.byte W01
	.byte 0x38
	.byte W01
	.byte 0x36
	.byte W01
	.byte 0x34
	.byte W01
	.byte 0x32
	.byte W01
	.byte 0x30
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x2A
	.byte W01
	.byte 0x28
	.byte W01
	.byte 0x26
	.byte W01
	.byte 0x24
	.byte W01
	.byte 0x22
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x1E
	.byte W01
	.byte 0x1C
	.byte W01
	.byte 0x1A
	.byte W01
	.byte 0x18
	.byte W01
	.byte 0x16
	.byte W01
	.byte 0x14
	.byte W01
	.byte 0x12
	.byte W01
	.byte 0x10
	.byte W01
	.byte 0x0E
	.byte W01
	.byte 0x0D
	.byte W01
	.byte 0x0C
	.byte W01
	.byte 0x0B
	.byte W01
	.byte 0x0A
	.byte W01
	.byte xIECL
	.byte W01
	.byte xIECV
	.byte W01
	.byte 0x07
	.byte W01
	.byte 0x06
	.byte W01
	.byte 0x05
	.byte W01
	.byte 0x04
	.byte W01
	.byte 0x04
	.byte W01
	.byte 0x03
	.byte W01
	.byte 0x02
	.byte W01
	.byte 0x02
	.byte W01
	.byte 0x01
	.byte W01
	.byte 0x01
	.byte W01
	.byte 0x01
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x00
	.byte W01
	.byte 0x01
	.byte W01
	.byte 0x02
	.byte W01
	.byte 0x02
	.byte W01
	.byte 0x03
	.byte W01
	.byte 0x04
	.byte W01
	.byte 0x05
	.byte W01
	.byte 0x06
	.byte W01
	.byte xIECV
	.byte W01
	.byte xIECL
	.byte W01
	.byte 0x0A
	.byte W01
	.byte 0x0C
	.byte W01
	.byte 0x0E
	.byte W01
	.byte 0x10
	.byte W01
	.byte 0x12
	.byte W01
	.byte 0x14
	.byte W01
	.byte 0x16
	.byte W01
	.byte 0x18
	.byte W01
	.byte 0x1A
	.byte W01
	.byte 0x1D
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x22
	.byte W01
	.byte 0x24
	.byte W01
	.byte 0x26
	.byte W01
	.byte 0x28
	.byte W01
	.byte 0x2A
	.byte W01
	.byte 0x2B
	.byte W01
	.byte 0x2D
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2F
	.byte W01
	.byte 0x2F
	.byte W01
	.byte 0x30
	.byte W01
	.byte 0x2F
	.byte W01
	.byte 0x2F
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2D
	.byte W01
	.byte 0x2B
	.byte W01
	.byte 0x2A
	.byte W01
	.byte 0x28
	.byte W01
	.byte 0x26
	.byte W01
	.byte 0x24
	.byte W01
	.byte 0x22
	.byte W01
	.byte 0x20
	.byte W02
	.byte 0x1D
	.byte W02
	.byte 0x1A
	.byte W02
	.byte 0x18
	.byte W02
	.byte VOL, 32
	.byte BEND, 21
	.byte W02
	.byte 0x12
	.byte W02
	.byte VOL, 24
	.byte BEND, 16
	.byte W02
	.byte 0x0D
	.byte W02
	.byte VOL, 16
	.byte BEND, 10
	.byte W02
	.byte xIECV
	.byte W02
	.byte VOL, 8
	.byte BEND, 5
	.byte W02
	.byte 0x02
	.byte W02
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0E9_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004A2324, 0xFF, 0x00, 0xFF, 0x00 @ index=21
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x00 @ index=22


.align 2
.global song_0EA
song_0EA:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0EA_tone             @ tone
	.word song_0EA_track0           @ tracks 0x0858AA68

@ ****************************** tracks ******************************
.align 2
song_0EA_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N20, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0EA_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049CCD0, 0xFF, 0x00, 0xFF, 0x00 @ index=14


.align 2
.global song_0EB
song_0EB:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0EB_tone             @ tone
	.word song_0EB_track0           @ tracks 0x0858AA84

@ ****************************** tracks ******************************
.align 2
song_0EB_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N20, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0EB_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049D514, 0xFF, 0x00, 0xFF, 0x00 @ index=15


.align 2
.global song_0EC
song_0EC:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0EC_tone             @ tone
	.word song_0EC_track0           @ tracks 0x0858AAA0

@ ****************************** tracks ******************************
.align 2
song_0EC_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N48, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0EC_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0049DE00, 0xFF, 0x00, 0xFF, 0x00 @ index=16


.align 2
.global song_0ED
song_0ED:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0ED_tone             @ tone
	.word song_0ED_track0           @ tracks 0x0858AABC

@ ****************************** tracks ******************************
.align 2
song_0ED_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N10, 60, 112
	.byte W10
	.byte N06, 60, 127
	.byte W06
	.byte N10, 60, 104
	.byte W08
	.byte W02
	.byte N06, 60, 116
	.byte W06
	.byte N10, 60, 96
	.byte W10
	.byte N18, 60, 127
	.byte W06
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0ED_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004B5864, 0xFF, 0x00, 0xFF, 0x00 @ index=92


.align 2
.global song_0EE
song_0EE:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0EE_tone             @ tone
	.word song_0EE_track0           @ tracks 0x0858AAEC

@ ****************************** tracks ******************************
.align 2
song_0EE_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N06, 72, 127
	.byte W04
	.byte 0x4A
	.byte 0x7C
	.byte W04
	.byte 0x4C
	.byte 0x74
	.byte W04
	.byte 0x4D
	.byte 0x70
	.byte W04
	.byte 0x4F
	.byte 0x6C
	.byte W04
	.byte 0x51
	.byte 0x64
	.byte W04
	.byte 0x52
	.byte 0x60
	.byte W04
	.byte N07, 84, 92
	.byte W04
	.byte N04, 82, 40
	.byte W04
	.byte 0x54
	.byte 0x24
	.byte W12
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0EE_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x003CFD14, 0xFF, 0xEB, 0x00, 0x00 @ index=95


.align 2
.global song_0EF
song_0EF:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0EF_tone             @ tone
	.word song_0EF_track0           @ tracks 0x0858AB24

@ ****************************** tracks ******************************
.align 2
song_0EF_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N40, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0EF_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004AB92C, 0xFF, 0x00, 0xFF, 0x00 @ index=32


.align 2
.global song_0F0
song_0F0:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0F0_tone             @ tone
	.word song_0F0_track0           @ tracks 0x0858AB40

@ ****************************** tracks ******************************
.align 2
song_0F0_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 100
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0F0_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045C488, 0xFF, 0x00, 0xFF, 0x00 @ index=3


.align 2
.global song_0F1
song_0F1:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0F1_tone             @ tone
	.word song_0F1_track0           @ tracks 0x0858AB5C

@ ****************************** tracks ******************************
.align 2
song_0F1_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte N36, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0F1_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004C0FAC, 0xFF, 0x00, 0xFF, 0x00 @ index=0


.align 2
.global song_0F2
song_0F2:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0F2_tone             @ tone
	.word song_0F2_track0           @ tracks 0x0858AB78

@ ****************************** tracks ******************************
.align 2
song_0F2_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N32, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0F2_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004C2AD0, 0xFF, 0x00, 0xFF, 0x00 @ index=1


.align 2
.global song_0F3
song_0F3:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0F3_tone             @ tone
	.word song_0F3_track0           @ tracks 0x0858AB94

@ ****************************** tracks ******************************
.align 2
song_0F3_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 10
	.byte VOL, 100
	.byte BEND, 64
	.byte N60, 60, 127
	.byte W02
	.byte BEND, 73
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x60
	.byte W04
	.byte VOL, 94
	.byte W02
	.byte 0x55
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x37
	.byte BEND, 98
	.byte W02
	.byte VOL, 70
	.byte BEND, 100
	.byte W01
	.byte VOL, 83
	.byte W01
	.byte 0x5C
	.byte BEND, 103
	.byte W01
	.byte VOL, 97
	.byte W01
	.byte 0x64
	.byte BEND, 105
	.byte W02
	.byte 0x6C
	.byte W02
	.byte 0x6E
	.byte W02
	.byte 0x71
	.byte W02
	.byte 0x73
	.byte W02
	.byte 0x76
	.byte W02
	.byte 0x78
	.byte W02
	.byte 0x7B
	.byte W02
	.byte 0x7D
	.byte W02
	.byte VOL, 99
	.byte BEND, 127
	.byte W01
	.byte VOL, 83
	.byte W01
	.byte 0x44
	.byte W01
	.byte 0x37
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x21
	.byte W01
	.byte 0x18
	.byte W01
	.byte 0x11
	.byte W01
	.byte 0x0B
	.byte W01
	.byte 0x06
	.byte W01
	.byte 0x02
	.byte W01
	.byte 0x00
	.byte W13
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0F3_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004FEC3C, 0xFF, 0x00, 0xFF, 0x00 @ index=44


.align 2
.global song_0F4
song_0F4:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0F4_tone             @ tone
	.word song_0F4_track0           @ tracks 0x0858AC0C

@ ****************************** tracks ******************************
.align 2
song_0F4_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 100
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0F4_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004FCDFC, 0xFF, 0x00, 0xFF, 0x00 @ index=35


.align 2
.global song_0F5
song_0F5:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0F5_tone             @ tone
	.word song_0F5_track0           @ tracks 0x0858AC28

@ ****************************** tracks ******************************
.align 2
song_0F5_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N72, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0F5_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00450C00, 0xFF, 0x00, 0xFF, 0x00 @ index=61


.align 2
.global song_0F6
song_0F6:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0F6_tone             @ tone
	.word song_0F6_track0           @ tracks 0x0858AC44

@ ****************************** tracks ******************************
.align 2
song_0F6_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N24, 60, 48
	.byte W24
	.byte N02, 60, 40
	.byte W02
	.byte 0x3C
	.byte 0x2C
	.byte W02
	.byte N01, 60, 48
	.byte W01
	.byte N02
	.byte W02
	.byte N03, 60, 52
	.byte W03
	.byte N02, 60, 56
	.byte W02
	.byte N01, 60, 60
	.byte W01
	.byte N02
	.byte W02
	.byte 0x3C
	.byte 0x40
	.byte W02
	.byte N01, 60, 68
	.byte W01
	.byte N02
	.byte W02
	.byte 0x3C
	.byte 0x48
	.byte W02
	.byte N01, 60, 76
	.byte W01
	.byte N02
	.byte W01
	.byte W01
	.byte N03, 60, 80
	.byte W03
	.byte N01, 60, 84
	.byte W01
	.byte N02, 60, 88
	.byte W02
	.byte N02
	.byte W02
	.byte N01, 60, 92
	.byte W01
	.byte N02, 60, 96
	.byte W02
	.byte N02
	.byte W02
	.byte 0x3C
	.byte 0x64
	.byte W02
	.byte N01, 60, 104
	.byte W01
	.byte N02
	.byte W02
	.byte 0x3C
	.byte 0x6C
	.byte W02
	.byte N01, 60, 112
	.byte W01
	.byte N02
	.byte W02
	.byte N03, 60, 116
	.byte W03
	.byte N01, 60, 120
	.byte W01
	.byte N02, 60, 124
	.byte W02
	.byte 0x3C
	.byte 0x7F
	.byte W02
	.byte N28
	.byte W16
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0F6_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004A4C30, 0xFF, 0x00, 0xFF, 0x59 @ index=26


.align 2
.global song_0F7
song_0F7:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0F7_tone             @ tone
	.word song_0F7_track0           @ tracks 0x0858ACC8

@ ****************************** tracks ******************************
.align 2
song_0F7_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte BENDR, 12
	.byte LFOS, 30
	.byte MOD, 0
	.byte MODT, 0
	.byte MOD, 30
	.byte BEND, 0
	.byte N06, 67, 127
	.byte W01
	.byte BEND, 5
	.byte W01
	.byte 0x0A
	.byte W01
	.byte 0x0F
	.byte W01
	.byte 0x15
	.byte W01
	.byte 0x1A
	.byte W01
	.byte 0x1F
	.byte N40, 67, 124
	.byte W01
	.byte BEND, 37
	.byte W01
	.byte 0x2A
	.byte W01
	.byte 0x2F
	.byte W01
	.byte 0x35
	.byte W01
	.byte 0x3A
	.byte W01
	.byte 0x40
	.byte W12
	.byte VOL, 110
	.byte W01
	.byte 0x64
	.byte W01
	.byte 0x5B
	.byte W01
	.byte 0x54
	.byte W01
	.byte 0x4C
	.byte W01
	.byte 0x44
	.byte W01
	.byte 0x3D
	.byte W01
	.byte 0x36
	.byte W01
	.byte 0x30
	.byte W01
	.byte 0x2A
	.byte W01
	.byte 0x25
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x1A
	.byte W01
	.byte 0x16
	.byte W01
	.byte 0x13
	.byte W01
	.byte 0x0E
	.byte W01
	.byte 0x0C
	.byte W01
	.byte xIECV
	.byte W01
	.byte 0x06
	.byte W06
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0F7_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004C443C, 0xFF, 0x00, 0xFF, 0x00 @ index=7


.align 2
.global song_0F8
song_0F8:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0F8_tone             @ tone
	.word song_0F8_track0           @ tracks 0x0858AD34

@ ****************************** tracks ******************************
.align 2
song_0F8_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N44, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0F8_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004C443C, 0xFF, 0x00, 0xFF, 0x00 @ index=7


.align 2
.global song_0F9
song_0F9:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0F9_tone             @ tone
	.word song_0F9_track0           @ tracks 0x0858AD50

@ ****************************** tracks ******************************
.align 2
song_0F9_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 8
	.byte VOL, 16
	.byte BEND, 64
	.byte N96, 60, 127
	.byte W01
	.byte VOL, 52
	.byte W01
	.byte 0x59
	.byte BEND, 69
	.byte W01
	.byte VOL, 127
	.byte W01
	.byte BEND, 73
	.byte W02
	.byte 0x4D
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x55
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x5D
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x62
	.byte W02
	.byte 0x65
	.byte W02
	.byte 0x67
	.byte W02
	.byte 0x69
	.byte W02
	.byte 0x6B
	.byte W02
	.byte 0x6D
	.byte W02
	.byte 0x6F
	.byte W02
	.byte 0x71
	.byte W02
	.byte 0x73
	.byte W02
	.byte 0x75
	.byte W02
	.byte 0x76
	.byte W02
	.byte 0x77
	.byte W02
	.byte 0x79
	.byte W02
	.byte 0x7A
	.byte W02
	.byte 0x7B
	.byte W02
	.byte 0x7C
	.byte W02
	.byte 0x7D
	.byte W02
	.byte 0x7D
	.byte W02
	.byte 0x7E
	.byte W02
	.byte 0x7F
	.byte W02
	.byte 0x7F
	.byte W02
	.byte 0x7F
	.byte W02
	.byte 0x7F
	.byte W02
	.byte VOL, 127
	.byte BEND, 127
	.byte W01
	.byte VOL, 116
	.byte W01
	.byte 0x6A
	.byte W01
	.byte 0x61
	.byte W01
	.byte 0x58
	.byte W01
	.byte 0x4F
	.byte W01
	.byte 0x47
	.byte W01
	.byte 0x3F
	.byte W01
	.byte 0x38
	.byte W01
	.byte 0x31
	.byte W01
	.byte 0x2B
	.byte W01
	.byte 0x25
	.byte W01
	.byte 0x1F
	.byte W01
	.byte 0x1A
	.byte W01
	.byte 0x16
	.byte W01
	.byte 0x11
	.byte W01
	.byte 0x0E
	.byte W01
	.byte 0x0A
	.byte W01
	.byte xIECV
	.byte W01
	.byte 0x05
	.byte W01
	.byte 0x03
	.byte W01
	.byte 0x02
	.byte W01
	.byte 0x00
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0F9_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0046EE24, 0xFF, 0x00, 0xFF, 0x00 @ index=40


.align 2
.global song_0FA
song_0FA:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0FA_tone             @ tone
	.word song_0FA_track0           @ tracks 0x0858ADF0

@ ****************************** tracks ******************************
.align 2
song_0FA_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 40
	.byte BENDR, 5
	.byte BEND, 64
	.byte N64, 58, 127
	.byte W02
	.byte BEND, 66
	.byte W02
	.byte 0x4A
	.byte W02
	.byte VOL, 40
	.byte BEND, 87
	.byte W02
	.byte VOL, 42
	.byte BEND, 105
	.byte W02
	.byte VOL, 42
	.byte BEND, 127
	.byte W02
	.byte VOL, 44
	.byte W02
	.byte 0x2D
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x31
	.byte W02
	.byte 0x34
	.byte W02
	.byte 0x36
	.byte W02
	.byte 0x39
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x50
	.byte W12
	.byte 0x4F
	.byte W02
	.byte 0x3D
	.byte W02
	.byte 0x2E
	.byte W02
	.byte 0x22
	.byte W02
	.byte 0x17
	.byte W02
	.byte 0x0F
	.byte W02
	.byte xIECL
	.byte W02
	.byte 0x05
	.byte W02
	.byte 0x05
	.byte W08
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0FA_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004719E4, 0xFF, 0x00, 0xFF, 0x00 @ index=9


.align 2
.global song_0FB
song_0FB:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0FB_tone             @ tone
	.word song_0FB_track0           @ tracks 0x0858AE50

@ ****************************** tracks ******************************
.align 2
song_0FB_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 64
	.byte BENDR, 5
	.byte N36, 60, 127
	.byte W05
	.byte VOL, 65
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x53
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x5C
	.byte W01
	.byte W01
	.byte 0x60
	.byte W02
	.byte 0x66
	.byte W02
	.byte 0x6B
	.byte W02
	.byte 0x71
	.byte W02
	.byte 0x78
	.byte W02
	.byte 0x7F
	.byte W13
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0FB_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004719E4, 0xFF, 0x00, 0xFF, 0x00 @ index=9


.align 2
.global song_0FC
song_0FC:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0FC_tone             @ tone
	.word song_0FC_track0           @ tracks 0x0858AE90

@ ****************************** tracks ******************************
.align 2
song_0FC_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 80
	.byte N14, 88, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0FC_tone:
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x01, 0x00, 0x00 @ index=10


.align 2
.global song_0FD
song_0FD:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0FD_tone             @ tone
	.word song_0FD_track0           @ tracks 0x0858AEAC

@ ****************************** tracks ******************************
.align 2
song_0FD_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 64
	.byte BENDR, 1
	.byte BEND, 0
	.byte TIE, 60, 127
	.byte W02
	.byte VOL, 71
	.byte BEND, 7
	.byte W02
	.byte VOL, 79
	.byte BEND, 15
	.byte W02
	.byte VOL, 87
	.byte BEND, 23
	.byte W02
	.byte VOL, 95
	.byte BEND, 31
	.byte W02
	.byte VOL, 103
	.byte BEND, 39
	.byte W02
	.byte VOL, 111
	.byte BEND, 47
	.byte W02
	.byte VOL, 119
	.byte BEND, 55
	.byte W02
	.byte VOL, 127
	.byte BEND, 64
	.byte W08
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W20
	.byte VOL, 126
	.byte W02
	.byte 0x6A
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x39
	.byte W02
	.byte 0x2C
	.byte W02
	.byte 0x21
	.byte W02
	.byte 0x17
	.byte W02
	.byte 0x0F
	.byte W02
	.byte xIECL
	.byte W02
	.byte 0x05
	.byte W02
	.byte 0x02
	.byte W02
	.byte EOT
	.byte W04
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0FD_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045F984, 0xFF, 0x00, 0xFF, 0x00 @ index=41


.align 2
.global song_0FE
song_0FE:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0FE_tone             @ tone
	.word song_0FE_track0           @ tracks 0x0858AF14

@ ****************************** tracks ******************************
.align 2
song_0FE_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 2
	.byte BEND, 64
	.byte N32, 61, 127
	.byte W02
	.byte VOL, 119
	.byte W01
	.byte BEND, 68
	.byte W01
	.byte VOL, 111
	.byte W01
	.byte BEND, 73
	.byte W01
	.byte VOL, 103
	.byte W01
	.byte BEND, 77
	.byte W01
	.byte VOL, 95
	.byte W01
	.byte BEND, 82
	.byte W01
	.byte VOL, 87
	.byte W01
	.byte BEND, 86
	.byte W01
	.byte VOL, 79
	.byte W01
	.byte BEND, 91
	.byte W01
	.byte VOL, 71
	.byte W01
	.byte BEND, 95
	.byte W01
	.byte VOL, 63
	.byte W01
	.byte BEND, 100
	.byte W01
	.byte VOL, 55
	.byte W01
	.byte BEND, 105
	.byte W01
	.byte VOL, 47
	.byte W01
	.byte BEND, 109
	.byte W01
	.byte VOL, 39
	.byte W01
	.byte BEND, 114
	.byte W01
	.byte VOL, 31
	.byte W01
	.byte BEND, 118
	.byte W01
	.byte VOL, 23
	.byte W01
	.byte BEND, 123
	.byte W01
	.byte VOL, 15
	.byte W01
	.byte BEND, 127
	.byte W01
	.byte VOL, 8
	.byte W18
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0FE_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004F6BB8, 0xFF, 0x00, 0xFF, 0x00 @ index=31


.align 2
.global song_0FF
song_0FF:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_0FF_tone             @ tone
	.word song_0FF_track0           @ tracks 0x0858AF88

@ ****************************** tracks ******************************
.align 2
song_0FF_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 2
	.byte BEND, 64
	.byte N32, 61, 127
	.byte W02
	.byte VOL, 119
	.byte W01
	.byte BEND, 68
	.byte W01
	.byte VOL, 111
	.byte W01
	.byte BEND, 73
	.byte W01
	.byte VOL, 103
	.byte W01
	.byte BEND, 77
	.byte W01
	.byte VOL, 95
	.byte W01
	.byte BEND, 82
	.byte W01
	.byte VOL, 87
	.byte W01
	.byte BEND, 86
	.byte W01
	.byte VOL, 79
	.byte W01
	.byte BEND, 91
	.byte W01
	.byte VOL, 71
	.byte W01
	.byte BEND, 95
	.byte W01
	.byte VOL, 63
	.byte W01
	.byte BEND, 100
	.byte W01
	.byte VOL, 55
	.byte W01
	.byte BEND, 105
	.byte W01
	.byte VOL, 47
	.byte W01
	.byte BEND, 109
	.byte W01
	.byte VOL, 39
	.byte W01
	.byte BEND, 114
	.byte W01
	.byte VOL, 31
	.byte W01
	.byte BEND, 118
	.byte W01
	.byte VOL, 23
	.byte W01
	.byte BEND, 123
	.byte W01
	.byte VOL, 15
	.byte W01
	.byte BEND, 127
	.byte W01
	.byte VOL, 8
	.byte W18
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_0FF_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004F6BB8, 0xFF, 0x00, 0xFF, 0x00 @ index=31


.align 2
.global song_100
song_100:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_100_tone             @ tone
	.word song_100_track0           @ tracks 0x0858AFFC

@ ****************************** tracks ******************************
.align 2
song_100_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte BENDR, 12
	.byte BEND, 0
	.byte N72, 62, 127
	.byte W02
	.byte BEND, 1
	.byte W02
	.byte 0x04
	.byte W02
	.byte xIECL
	.byte W02
	.byte 0x10
	.byte W02
	.byte 0x19
	.byte W02
	.byte 0x24
	.byte W02
	.byte 0x31
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x4E
	.byte W02
	.byte VOL, 110
	.byte BEND, 81
	.byte W02
	.byte VOL, 96
	.byte BEND, 84
	.byte W02
	.byte VOL, 84
	.byte BEND, 87
	.byte W02
	.byte VOL, 71
	.byte BEND, 91
	.byte W02
	.byte VOL, 61
	.byte BEND, 95
	.byte W02
	.byte VOL, 51
	.byte BEND, 98
	.byte W02
	.byte VOL, 42
	.byte BEND, 103
	.byte W02
	.byte VOL, 34
	.byte BEND, 107
	.byte W02
	.byte VOL, 26
	.byte BEND, 112
	.byte W02
	.byte VOL, 20
	.byte BEND, 117
	.byte W02
	.byte VOL, 14
	.byte BEND, 122
	.byte W02
	.byte VOL, 10
	.byte BEND, 127
	.byte W02
	.byte VOL, 6
	.byte W02
	.byte 0x03
	.byte W02
	.byte 0x01
	.byte W02
	.byte 0x00
	.byte W02
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_100_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00511E5C, 0xFF, 0x00, 0xFF, 0x00 @ index=54


.align 2
.global song_101
song_101:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_101_tone             @ tone
	.word song_101_track0           @ tracks 0x0858B088

@ ****************************** tracks ******************************
.align 2
song_101_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BEND, 64
	.byte N72, 60, 127
	.byte W02
	.byte VOL, 126
	.byte BEND, 64
	.byte W06
	.byte VOL, 125
	.byte W02
	.byte 0x7C
	.byte W02
	.byte 0x7B
	.byte W02
	.byte 0x7A
	.byte W02
	.byte 0x78
	.byte W02
	.byte 0x77
	.byte W02
	.byte 0x75
	.byte W02
	.byte 0x73
	.byte W02
	.byte 0x70
	.byte W02
	.byte 0x6E
	.byte W02
	.byte 0x6B
	.byte W02
	.byte 0x68
	.byte W02
	.byte 0x65
	.byte W02
	.byte 0x62
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x5B
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x53
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x37
	.byte W02
	.byte 0x32
	.byte W02
	.byte 0x2C
	.byte W02
	.byte 0x26
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x1A
	.byte W02
	.byte 0x14
	.byte W02
	.byte 0x0D
	.byte W02
	.byte 0x06
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_101_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0050E8B4, 0xFF, 0x00, 0xFF, 0x00 @ index=53


.align 2
.global song_102
song_102:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_102_tone             @ tone
	.word song_102_track0           @ tracks 0x0858B0EC

@ ****************************** tracks ******************************
.align 2
song_102_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 12
	.byte VOL, 27
	.byte TIE, 60, 127
	.byte W01
	.byte VOL, 55
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x6E
	.byte W21
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W02
	.byte 0x6D
	.byte W01
	.byte 0x68
	.byte W01
	.byte 0x65
	.byte W01
	.byte 0x61
	.byte W01
	.byte 0x5D
	.byte W01
	.byte 0x59
	.byte W01
	.byte 0x55
	.byte W01
	.byte 0x51
	.byte W01
	.byte 0x4D
	.byte W01
	.byte 0x49
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x3E
	.byte W01
	.byte 0x3A
	.byte W01
	.byte 0x36
	.byte W01
	.byte 0x32
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2A
	.byte W01
	.byte 0x26
	.byte W01
	.byte 0x22
	.byte W01
	.byte 0x1F
	.byte W01
	.byte 0x1A
	.byte W01
	.byte 0x17
	.byte W01
	.byte 0x13
	.byte W01
	.byte 0x0F
	.byte W01
	.byte 0x0B
	.byte W01
	.byte 0x07
	.byte W01
	.byte 0x03
	.byte W01
	.byte EOT
	.byte VOL, 0
	.byte W18
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_102_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0046627C, 0xFF, 0x00, 0xFF, 0x00 @ index=39


.align 2
.global song_103
song_103:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_103_tone             @ tone
	.word song_103_track0           @ tracks 0x0858B154

@ ****************************** tracks ******************************
.align 2
song_103_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 8
	.byte BEND, 64
	.byte TIE, 62, 127
	.byte W02
	.byte BEND, 64
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x41
	.byte W02
	.byte 0x41
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x43
	.byte W01
	.byte 0x43
	.byte W01
	.byte 0x43
	.byte W01
	.byte 0x43
	.byte W01
	.byte 0x43
	.byte W02
	.byte 0x43
	.byte W01
	.byte 0x44
	.byte W01
	.byte 0x44
	.byte W01
	.byte 0x44
	.byte W01
	.byte 0x44
	.byte W01
	.byte 0x44
	.byte W01
	.byte 0x45
	.byte W01
	.byte 0x45
	.byte W01
	.byte 0x45
	.byte W01
	.byte 0x45
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x46
	.byte W02
	.byte 0x46
	.byte W01
	.byte 0x47
	.byte W01
	.byte 0x47
	.byte W01
	.byte 0x47
	.byte W01
	.byte 0x47
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x49
	.byte W01
	.byte 0x49
	.byte W01
	.byte 0x49
	.byte W01
	.byte 0x4A
	.byte W01
	.byte 0x4A
	.byte W01
	.byte 0x4A
	.byte W02
	.byte 0x4B
	.byte W01
	.byte 0x4B
	.byte W01
	.byte 0x4B
	.byte W01
	.byte 0x4C
	.byte W01
	.byte 0x4C
	.byte W01
	.byte 0x4C
	.byte W01
	.byte 0x4D
	.byte W01
	.byte 0x4D
	.byte W01
	.byte 0x4D
	.byte W01
	.byte 0x4E
	.byte W01
	.byte 0x4E
	.byte W01
	.byte 0x4E
	.byte W01
	.byte 0x4F
	.byte W02
	.byte 0x4F
	.byte W01
	.byte 0x50
	.byte W01
	.byte 0x50
	.byte W01
	.byte 0x50
	.byte W01
	.byte 0x51
	.byte W01
	.byte 0x51
	.byte W01
	.byte 0x52
	.byte W01
	.byte 0x52
	.byte W01
	.byte 0x52
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x52
	.byte W24
	.byte W24
	.byte W12
	.byte VOL, 127
	.byte W02
	.byte 0x6E
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x2D
	.byte W02
	.byte 0x24
	.byte W02
	.byte 0x1B
	.byte W02
	.byte 0x14
	.byte W02
	.byte 0x0E
	.byte W02
	.byte xIECL
	.byte W02
	.byte 0x05
	.byte W02
	.byte 0x02
	.byte W02
	.byte 0x00
	.byte W02
	.byte EOT
	.byte W06
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_103_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00462F0C, 0xFF, 0x00, 0xFF, 0x00 @ index=3


.align 2
.global song_104
song_104:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_104_tone             @ tone
	.word song_104_track0           @ tracks 0x0858B248

@ ****************************** tracks ******************************
.align 2
song_104_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte TIE, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte VOL, 120
	.byte W08
	.byte 0x70
	.byte W08
	.byte 0x68
	.byte W08
	.byte 0x62
	.byte W08
	.byte 0x56
	.byte W02
	.byte EOT
	.byte W14
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_104_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00517570, 0xFF, 0x00, 0xFF, 0x00 @ index=58


.align 2
.global song_105
song_105:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_105_tone             @ tone
	.word song_105_track0           @ tracks 0x0858B274
	.word song_105_track1           @ tracks 0x0858B34B

@ ****************************** tracks ******************************
.align 2
song_105_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 5
	.byte MOD, 0
	.byte VOL, 40
	.byte BEND, 0
	.byte TIE, 60, 112
	.byte W04
	.byte VOL, 43
	.byte W02
	.byte BEND, 0
	.byte W02
	.byte VOL, 47
	.byte W04
	.byte 0x32
	.byte BEND, 0
	.byte W04
	.byte VOL, 54
	.byte W02
	.byte BEND, 1
	.byte W02
	.byte VOL, 58
	.byte W04
	.byte 0x3D
	.byte BEND, 2
	.byte W04
	.byte VOL, 65
	.byte W02
	.byte BEND, 3
	.byte W02
	.byte VOL, 68
	.byte W04
	.byte 0x48
	.byte BEND, 4
	.byte W04
	.byte VOL, 76
	.byte W02
	.byte BEND, 6
	.byte W02
	.byte VOL, 79
	.byte W04
	.byte 0x53
	.byte BEND, 8
	.byte W04
	.byte VOL, 87
	.byte W02
	.byte BEND, 10
	.byte W02
	.byte VOL, 90
	.byte W04
	.byte 0x5E
	.byte BEND, 12
	.byte W04
	.byte VOL, 97
	.byte W02
	.byte BEND, 15
	.byte W02
	.byte VOL, 101
	.byte W04
	.byte 0x69
	.byte BEND, 18
	.byte W04
	.byte VOL, 108
	.byte W02
	.byte BEND, 21
	.byte W02
	.byte VOL, 112
	.byte W04
	.byte 0x74
	.byte BEND, 24
	.byte W04
	.byte VOL, 119
	.byte W02
	.byte BEND, 28
	.byte W02
	.byte VOL, 123
	.byte W04
	.byte 0x7F
	.byte BEND, 32
	.byte W06
	.byte 0x24
	.byte W06
	.byte 0x28
	.byte W06
	.byte 0x2D
	.byte W06
	.byte 0x32
	.byte W06
	.byte 0x37
	.byte W06
	.byte MODT, 0
	.byte MOD, 30
	.byte LFOS, 3
	.byte BEND, 60
	.byte W06
	.byte 0x40
	.byte W06
	.byte W24
	.byte W24
	.byte W24
	.byte W12
	.byte MOD, 40
	.byte W12
	.byte W24
	.byte W24
	.byte W24
	.byte W02
	.byte VOL, 127
	.byte W02
	.byte 0x76
	.byte W02
	.byte 0x6E
	.byte W02
	.byte 0x66
	.byte W02
	.byte 0x5E
	.byte W02
	.byte LFOS, 4
	.byte MOD, 35
	.byte VOL, 87
	.byte W02
	.byte 0x50
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x3E
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x33
	.byte W02
	.byte 0x2E
	.byte W02
	.byte 0x29
	.byte W02
	.byte 0x25
	.byte W02
	.byte 0x21
	.byte W02
	.byte 0x1D
	.byte W02
	.byte 0x1A
	.byte W02
	.byte 0x17
	.byte W02
	.byte 0x14
	.byte W02
	.byte 0x11
	.byte W02
	.byte 0x0F
	.byte W02
	.byte 0x0E
	.byte W02
	.byte 0x0C
	.byte W02
	.byte 0x0B
	.byte W02
	.byte 0x0A
	.byte W08
	.byte EOT
	.byte W12
	.byte FINE

.align 2
song_105_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W02
	.byte TIE, 60, 100
	.byte W22
	.byte W24
	.byte W24
	.byte W24
	.byte W08
	.byte EOT
	.byte W16
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_105_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0051EEE8, 0xFF, 0x00, 0xFF, 0x00 @ index=59
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00521508, 0xFF, 0x00, 0xFF, 0x00 @ index=60


.align 2
.global song_106
song_106:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_106_tone             @ tone
	.word song_106_track0           @ tracks 0x0858B378

@ ****************************** tracks ******************************
.align 2
song_106_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 14
	.byte LFOS, 40
	.byte MODT, 0
	.byte MOD, 40
	.byte BEND, 64
	.byte TIE, 57, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W04
	.byte BEND, 64
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x42
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x4E
	.byte W02
	.byte 0x50
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x53
	.byte W02
	.byte VOL, 126
	.byte BEND, 85
	.byte W02
	.byte VOL, 120
	.byte BEND, 87
	.byte W02
	.byte 0x5A
	.byte W02
	.byte VOL, 111
	.byte BEND, 92
	.byte W02
	.byte 0x5E
	.byte W02
	.byte VOL, 102
	.byte BEND, 97
	.byte W02
	.byte 0x64
	.byte W02
	.byte VOL, 93
	.byte BEND, 102
	.byte W02
	.byte 0x69
	.byte W02
	.byte VOL, 85
	.byte BEND, 108
	.byte W02
	.byte 0x6F
	.byte W02
	.byte VOL, 77
	.byte BEND, 114
	.byte W02
	.byte 0x75
	.byte W02
	.byte VOL, 69
	.byte BEND, 121
	.byte W02
	.byte 0x7C
	.byte W02
	.byte VOL, 62
	.byte BEND, 127
	.byte W04
	.byte VOL, 55
	.byte W04
	.byte 0x31
	.byte W04
	.byte 0x2B
	.byte W04
	.byte 0x25
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x1B
	.byte W04
	.byte 0x17
	.byte W04
	.byte 0x13
	.byte W04
	.byte 0x0F
	.byte W04
	.byte 0x0C
	.byte W04
	.byte xIECL
	.byte W04
	.byte 0x06
	.byte W04
	.byte 0x04
	.byte W06
	.byte 0x02
	.byte W02
	.byte EOT
	.byte VOL, 1
	.byte W04
	.byte 0x00
	.byte W08
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_106_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0051EEE8, 0xFF, 0x00, 0xFF, 0x00 @ index=59


.align 2
.global song_107
song_107:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_108
song_108:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_108_tone             @ tone
	.word song_108_track0           @ tracks 0x0858B428

@ ****************************** tracks ******************************
.align 2
song_108_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte N84, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_108_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004E49F4, 0xFF, 0x00, 0xFF, 0x00 @ index=21


.align 2
.global song_109
song_109:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_109_tone             @ tone
	.word song_109_track0           @ tracks 0x0858B444

@ ****************************** tracks ******************************
.align 2
song_109_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte N48, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_109_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004E8B24, 0xFF, 0x00, 0xFF, 0x00 @ index=24


.align 2
.global song_10A
song_10A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_10A_tone             @ tone
	.word song_10A_track0           @ tracks 0x0858B460

@ ****************************** tracks ******************************
.align 2
song_10A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 100
	.byte TIE, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte VOL, 100
	.byte W02
	.byte 0x63
	.byte W04
	.byte 0x61
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x5D
	.byte W02
	.byte 0x5B
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x55
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x4E
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x37
	.byte W02
	.byte 0x31
	.byte W02
	.byte 0x2B
	.byte W02
	.byte 0x25
	.byte W02
	.byte 0x1D
	.byte W02
	.byte 0x16
	.byte W02
	.byte 0x0F
	.byte W02
	.byte 0x07
	.byte W02
	.byte 0x00
	.byte W02
	.byte EOT
	.byte W22
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_10A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004E9ACC, 0xFF, 0x00, 0xFF, 0x00 @ index=27


.align 2
.global song_10B
song_10B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_10B_tone             @ tone
	.word song_10B_track0           @ tracks 0x0858B4B0

@ ****************************** tracks ******************************
.align 2
song_10B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 12
	.byte VOL, 25
	.byte TIE, 60, 127
	.byte W02
	.byte VOL, 25
	.byte W02
	.byte 0x1C
	.byte W02
	.byte 0x21
	.byte W02
	.byte 0x27
	.byte W02
	.byte 0x30
	.byte W02
	.byte 0x3A
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x64
	.byte W06
	.byte W24
	.byte W24
	.byte W18
	.byte BEND, 64
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x31
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x23
	.byte W02
	.byte 0x1C
	.byte W02
	.byte 0x15
	.byte W02
	.byte 0x0E
	.byte W02
	.byte 0x07
	.byte W02
	.byte 0x00
	.byte W12
	.byte W24
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_10B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004ED490, 0xFF, 0x00, 0xFF, 0x00 @ index=28


.align 2
.global song_10C
song_10C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_10C_tone             @ tone
	.word song_10C_track0           @ tracks 0x0858B4F8

@ ****************************** tracks ******************************
.align 2
song_10C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N40, 62, 127
	.byte W12
	.byte VOL, 127
	.byte W02
	.byte 0x6D
	.byte W02
	.byte 0x5D
	.byte W02
	.byte 0x4E
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x34
	.byte W02
	.byte 0x29
	.byte W02
	.byte 0x1F
	.byte W02
	.byte 0x17
	.byte W02
	.byte 0x10
	.byte W02
	.byte 0x0A
	.byte W02
	.byte 0x05
	.byte W02
	.byte 0x02
	.byte W02
	.byte 0x00
	.byte W10
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_10C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00513440, 0xFF, 0x00, 0xFF, 0x00 @ index=55


.align 2
.global song_10D
song_10D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_10D_tone             @ tone
	.word song_10D_track0           @ tracks 0x0858B530

@ ****************************** tracks ******************************
.align 2
song_10D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 8
	.byte VOL, 55
	.byte BEND, 0
	.byte N72, 67, 127
	.byte W02
	.byte VOL, 72
	.byte BEND, 10
	.byte W02
	.byte VOL, 90
	.byte BEND, 21
	.byte W02
	.byte VOL, 107
	.byte BEND, 31
	.byte W02
	.byte VOL, 107
	.byte BEND, 42
	.byte W02
	.byte VOL, 105
	.byte BEND, 53
	.byte W02
	.byte VOL, 104
	.byte BEND, 64
	.byte W02
	.byte VOL, 103
	.byte BEND, 74
	.byte W02
	.byte VOL, 100
	.byte BEND, 85
	.byte W02
	.byte VOL, 97
	.byte BEND, 95
	.byte W02
	.byte VOL, 91
	.byte BEND, 106
	.byte W02
	.byte VOL, 86
	.byte BEND, 117
	.byte W02
	.byte VOL, 79
	.byte BEND, 127
	.byte W02
	.byte VOL, 71
	.byte W02
	.byte 0x3E
	.byte W02
	.byte 0x34
	.byte BEND, 64
	.byte W02
	.byte VOL, 48
	.byte BEND, 74
	.byte W02
	.byte VOL, 51
	.byte BEND, 85
	.byte W02
	.byte VOL, 54
	.byte BEND, 95
	.byte W02
	.byte VOL, 58
	.byte BEND, 106
	.byte W02
	.byte VOL, 61
	.byte BEND, 117
	.byte W02
	.byte 0x7F
	.byte W02
	.byte VOL, 64
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x47
	.byte BEND, 64
	.byte W02
	.byte VOL, 76
	.byte BEND, 74
	.byte W02
	.byte VOL, 70
	.byte BEND, 85
	.byte W02
	.byte VOL, 63
	.byte BEND, 95
	.byte W02
	.byte VOL, 56
	.byte BEND, 106
	.byte W02
	.byte VOL, 49
	.byte BEND, 117
	.byte W02
	.byte VOL, 42
	.byte BEND, 127
	.byte W02
	.byte VOL, 35
	.byte W02
	.byte 0x1B
	.byte W02
	.byte 0x14
	.byte BEND, 64
	.byte W02
	.byte VOL, 13
	.byte BEND, 74
	.byte W02
	.byte VOL, 6
	.byte BEND, 85
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_10D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047F088, 0xFF, 0x00, 0xFF, 0x00 @ index=56


.align 2
.global song_10E
song_10E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_10E_tone             @ tone
	.word song_10E_track0           @ tracks 0x0858B5E8

@ ****************************** tracks ******************************
.align 2
song_10E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 3
	.byte VOL, 32
	.byte BEND, 64
	.byte N48, 57, 127
	.byte W01
	.byte VOL, 63
	.byte W01
	.byte 0x5F
	.byte BEND, 64
	.byte W01
	.byte VOL, 127
	.byte W01
	.byte BEND, 64
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x50
	.byte W02
	.byte 0x53
	.byte W02
	.byte 0x57
	.byte W02
	.byte VOL, 127
	.byte BEND, 92
	.byte W01
	.byte VOL, 117
	.byte W01
	.byte 0x6B
	.byte BEND, 97
	.byte W01
	.byte VOL, 98
	.byte W01
	.byte 0x59
	.byte BEND, 102
	.byte W01
	.byte VOL, 81
	.byte W01
	.byte 0x49
	.byte BEND, 108
	.byte W01
	.byte VOL, 65
	.byte W01
	.byte 0x3A
	.byte BEND, 114
	.byte W01
	.byte VOL, 52
	.byte W01
	.byte 0x2E
	.byte BEND, 121
	.byte W01
	.byte VOL, 40
	.byte W01
	.byte 0x22
	.byte BEND, 127
	.byte W01
	.byte VOL, 29
	.byte W01
	.byte 0x19
	.byte W01
	.byte 0x15
	.byte W01
	.byte 0x11
	.byte W01
	.byte 0x0E
	.byte W01
	.byte 0x0B
	.byte W01
	.byte xIECL
	.byte W01
	.byte 0x07
	.byte W01
	.byte 0x05
	.byte W01
	.byte 0x04
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_10E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047332C, 0xFF, 0x00, 0xFF, 0x00 @ index=42


.align 2
.global song_10F
song_10F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_10F_tone             @ tone
	.word song_10F_track0           @ tracks 0x0858B668

@ ****************************** tracks ******************************
.align 2
song_10F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 3
	.byte VOL, 32
	.byte BEND, 64
	.byte N48, 57, 127
	.byte W01
	.byte VOL, 63
	.byte W01
	.byte 0x5F
	.byte BEND, 64
	.byte W01
	.byte VOL, 127
	.byte W01
	.byte BEND, 64
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x50
	.byte W02
	.byte 0x53
	.byte W02
	.byte 0x57
	.byte W02
	.byte VOL, 127
	.byte BEND, 92
	.byte W01
	.byte VOL, 117
	.byte W01
	.byte 0x6B
	.byte BEND, 97
	.byte W01
	.byte VOL, 98
	.byte W01
	.byte 0x59
	.byte BEND, 102
	.byte W01
	.byte VOL, 81
	.byte W01
	.byte 0x49
	.byte BEND, 108
	.byte W01
	.byte VOL, 65
	.byte W01
	.byte 0x3A
	.byte BEND, 114
	.byte W01
	.byte VOL, 52
	.byte W01
	.byte 0x2E
	.byte BEND, 121
	.byte W01
	.byte VOL, 40
	.byte W01
	.byte 0x22
	.byte BEND, 127
	.byte W01
	.byte VOL, 29
	.byte W01
	.byte 0x19
	.byte W01
	.byte 0x15
	.byte W01
	.byte 0x11
	.byte W01
	.byte 0x0E
	.byte W01
	.byte 0x0B
	.byte W01
	.byte xIECL
	.byte W01
	.byte 0x07
	.byte W01
	.byte 0x05
	.byte W01
	.byte 0x04
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_10F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047332C, 0xFF, 0x00, 0xFF, 0x00 @ index=42


.align 2
.global song_110
song_110:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_110_tone             @ tone
	.word song_110_track0           @ tracks 0x0858B6E8

@ ****************************** tracks ******************************
.align 2
song_110_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 6
	.byte VOL, 32
	.byte BEND, 64
	.byte N48, 60, 127
	.byte W01
	.byte VOL, 63
	.byte BEND, 64
	.byte W01
	.byte VOL, 95
	.byte BEND, 64
	.byte W01
	.byte VOL, 127
	.byte BEND, 64
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x42
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x4D
	.byte W02
	.byte 0x52
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x62
	.byte W02
	.byte 0x69
	.byte W02
	.byte 0x70
	.byte W02
	.byte 0x77
	.byte W01
	.byte VOL, 127
	.byte W01
	.byte 0x6D
	.byte BEND, 127
	.byte W01
	.byte VOL, 92
	.byte W01
	.byte 0x4D
	.byte W01
	.byte 0x3F
	.byte W01
	.byte 0x32
	.byte W01
	.byte 0x27
	.byte W01
	.byte 0x1E
	.byte W01
	.byte 0x16
	.byte W01
	.byte 0x0F
	.byte W01
	.byte 0x0A
	.byte W01
	.byte 0x06
	.byte W01
	.byte 0x04
	.byte W01
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_110_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047332C, 0xFF, 0x00, 0xFF, 0x00 @ index=42


.align 2
.global song_111
song_111:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_111_tone             @ tone
	.word song_111_track0           @ tracks 0x0858B754

@ ****************************** tracks ******************************
.align 2
song_111_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 6
	.byte VOL, 32
	.byte BEND, 64
	.byte N48, 60, 127
	.byte W01
	.byte VOL, 63
	.byte BEND, 64
	.byte W01
	.byte VOL, 95
	.byte BEND, 64
	.byte W01
	.byte VOL, 127
	.byte BEND, 64
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x42
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x4D
	.byte W02
	.byte 0x52
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x62
	.byte W02
	.byte 0x69
	.byte W02
	.byte 0x70
	.byte W02
	.byte 0x77
	.byte W01
	.byte VOL, 127
	.byte W01
	.byte 0x6D
	.byte BEND, 127
	.byte W01
	.byte VOL, 92
	.byte W01
	.byte 0x4D
	.byte W01
	.byte 0x3F
	.byte W01
	.byte 0x32
	.byte W01
	.byte 0x27
	.byte W01
	.byte 0x1E
	.byte W01
	.byte 0x16
	.byte W01
	.byte 0x0F
	.byte W01
	.byte 0x0A
	.byte W01
	.byte 0x06
	.byte W01
	.byte 0x04
	.byte W01
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_111_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047332C, 0xFF, 0x00, 0xFF, 0x00 @ index=42


.align 2
.global song_112
song_112:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_112_tone             @ tone
	.word song_112_track0           @ tracks 0x0858B7C0

@ ****************************** tracks ******************************
.align 2
song_112_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 10
	.byte VOL, 32
	.byte BEND, 64
	.byte N48, 60, 127
	.byte W01
	.byte VOL, 63
	.byte W01
	.byte 0x5F
	.byte BEND, 69
	.byte W01
	.byte VOL, 127
	.byte W01
	.byte BEND, 74
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x68
	.byte W02
	.byte 0x6B
	.byte W02
	.byte 0x6E
	.byte W02
	.byte 0x71
	.byte W02
	.byte 0x73
	.byte W02
	.byte 0x76
	.byte W02
	.byte 0x78
	.byte W02
	.byte 0x7A
	.byte W02
	.byte 0x7B
	.byte W02
	.byte VOL, 127
	.byte BEND, 124
	.byte W01
	.byte VOL, 107
	.byte W01
	.byte 0x59
	.byte BEND, 126
	.byte W01
	.byte VOL, 72
	.byte W01
	.byte 0x39
	.byte BEND, 126
	.byte W01
	.byte VOL, 44
	.byte W01
	.byte 0x21
	.byte BEND, 127
	.byte W01
	.byte VOL, 23
	.byte W01
	.byte 0x10
	.byte BEND, 127
	.byte W01
	.byte VOL, 9
	.byte W01
	.byte 0x05
	.byte BEND, 127
	.byte W01
	.byte VOL, 2
	.byte W01
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_112_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047332C, 0xFF, 0x00, 0xFF, 0x00 @ index=42


.align 2
.global song_113
song_113:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_113_tone             @ tone
	.word song_113_track0           @ tracks 0x0858B834

@ ****************************** tracks ******************************
.align 2
song_113_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 10
	.byte VOL, 32
	.byte BEND, 64
	.byte N48, 60, 127
	.byte W01
	.byte VOL, 63
	.byte W01
	.byte 0x5F
	.byte BEND, 69
	.byte W01
	.byte VOL, 127
	.byte W01
	.byte BEND, 74
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x68
	.byte W02
	.byte 0x6B
	.byte W02
	.byte 0x6E
	.byte W02
	.byte 0x71
	.byte W02
	.byte 0x73
	.byte W02
	.byte 0x76
	.byte W02
	.byte 0x78
	.byte W02
	.byte 0x7A
	.byte W02
	.byte 0x7B
	.byte W02
	.byte VOL, 127
	.byte BEND, 124
	.byte W01
	.byte VOL, 107
	.byte W01
	.byte 0x59
	.byte BEND, 126
	.byte W01
	.byte VOL, 72
	.byte W01
	.byte 0x39
	.byte BEND, 126
	.byte W01
	.byte VOL, 44
	.byte W01
	.byte 0x21
	.byte BEND, 127
	.byte W01
	.byte VOL, 23
	.byte W01
	.byte 0x10
	.byte BEND, 127
	.byte W01
	.byte VOL, 9
	.byte W01
	.byte 0x05
	.byte BEND, 127
	.byte W01
	.byte VOL, 2
	.byte W01
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_113_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047332C, 0xFF, 0x00, 0xFF, 0x00 @ index=42


.align 2
.global song_114
song_114:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_114_tone             @ tone
	.word song_114_track0           @ tracks 0x0858B8A8

@ ****************************** tracks ******************************
.align 2
song_114_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 12
	.byte MODT, 1
	.byte LFOS, 60
	.byte MOD, 10
	.byte VOL, 69
	.byte BEND, 0
	.byte TIE, 67, 127
	.byte W02
	.byte VOL, 112
	.byte BEND, 10
	.byte W02
	.byte VOL, 127
	.byte BEND, 19
	.byte W02
	.byte 0x1B
	.byte W02
	.byte 0x23
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x34
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x3B
	.byte W02
	.byte 0x3E
	.byte W02
	.byte 0x3F
	.byte W02
	.byte 0x40
	.byte W20
	.byte 0x4C
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x42
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W22
	.byte W01
	.byte 0x4A
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x42
	.byte W01
	.byte W01
	.byte 0x42
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W17
	.byte W07
	.byte 0x4C
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x45
	.byte W01
	.byte W01
	.byte 0x44
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x42
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x41
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W01
	.byte VOL, 127
	.byte W01
	.byte BEND, 66
	.byte W01
	.byte VOL, 126
	.byte W01
	.byte BEND, 69
	.byte W01
	.byte VOL, 125
	.byte W01
	.byte BEND, 73
	.byte W01
	.byte VOL, 123
	.byte W01
	.byte BEND, 78
	.byte W01
	.byte VOL, 119
	.byte W01
	.byte BEND, 84
	.byte W01
	.byte VOL, 114
	.byte BEND, 88
	.byte W02
	.byte VOL, 108
	.byte W02
	.byte 0x65
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x1A
	.byte W02
	.byte xIECV
	.byte W02
	.byte EOT
	.byte VOL, 0
	.byte W04
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_114_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047332C, 0xFF, 0x00, 0xFF, 0x00 @ index=42


.align 2
.global song_115
song_115:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_116
song_116:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_117
song_117:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_117_tone             @ tone
	.word song_117_track0           @ tracks 0x0858B98C

@ ****************************** tracks ******************************
.align 2
song_117_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N01, 60, 127
	.byte W01
	.byte N24
	.byte W23
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_117_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004A4C30, 0xFF, 0x00, 0xFF, 0x59 @ index=23


.align 2
.global song_118
song_118:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_118_tone             @ tone
	.word song_118_track0           @ tracks 0x0858B9A8

@ ****************************** tracks ******************************
.align 2
song_118_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N13, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_118_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004A4C30, 0xFF, 0x00, 0xFF, 0x59 @ index=23


.align 2
.global song_119
song_119:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_119_tone             @ tone
	.word song_119_track0           @ tracks 0x0858B9C4

@ ****************************** tracks ******************************
.align 2
song_119_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N14, 60, 127
	.byte W18
	.byte N05, 58, 56
	.byte W06
	.byte 0x3C
	.byte 0x58
	.byte W06
	.byte 0x3D
	.byte 0x38
	.byte W06
	.byte N06, 60, 104
	.byte W07
	.byte N03, 62, 52
	.byte W05
	.byte N12, 60, 84
	.byte W12
	.byte 0x3E
	.byte 0x44
	.byte W12
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_119_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004FCDFC, 0xFF, 0x00, 0xFF, 0x00 @ index=35


.align 2
.global song_11A
song_11A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_11A_tone             @ tone
	.word song_11A_track0           @ tracks 0x0858B9F8

@ ****************************** tracks ******************************
.align 2
song_11A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N72, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_11A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00450C00, 0xFF, 0x00, 0xFF, 0x00 @ index=61


.align 2
.global song_11B
song_11B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_11B_tone             @ tone
	.word song_11B_track0           @ tracks 0x0858BA14

@ ****************************** tracks ******************************
.align 2
song_11B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte N60, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_11B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00478128, 0xFF, 0x00, 0xFF, 0x00 @ index=37


.align 2
.global song_11C
song_11C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_11C_tone             @ tone
	.word song_11C_track0           @ tracks 0x0858BA30

@ ****************************** tracks ******************************
.align 2
song_11C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N96, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_11C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0046A810, 0xFF, 0x00, 0xFF, 0x00 @ index=38


.align 2
.global song_11D
song_11D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_11D_tone             @ tone
	.word song_11D_track0           @ tracks 0x0858BA4C

@ ****************************** tracks ******************************
.align 2
song_11D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 88
	.byte N44, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_11D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004C443C, 0xFF, 0x00, 0xFF, 0x00 @ index=7


.align 2
.global song_11E
song_11E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_11E_tone             @ tone
	.word song_11E_track0           @ tracks 0x0858BA68

@ ****************************** tracks ******************************
.align 2
song_11E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 4
	.byte VOL, 52
	.byte BEND, 64
	.byte N72, 60, 127
	.byte W04
	.byte VOL, 54
	.byte W02
	.byte 0x3A
	.byte W02
	.byte 0x3E
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x53
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x68
	.byte W06
	.byte BEND, 64
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x41
	.byte W20
	.byte VOL, 104
	.byte W02
	.byte 0x56
	.byte W02
	.byte 0x48
	.byte BEND, 68
	.byte W02
	.byte VOL, 58
	.byte BEND, 71
	.byte W02
	.byte VOL, 45
	.byte BEND, 75
	.byte W02
	.byte VOL, 35
	.byte BEND, 80
	.byte W02
	.byte VOL, 25
	.byte BEND, 85
	.byte W02
	.byte VOL, 18
	.byte BEND, 92
	.byte W02
	.byte VOL, 11
	.byte BEND, 100
	.byte W02
	.byte VOL, 6
	.byte BEND, 108
	.byte W02
	.byte VOL, 2
	.byte BEND, 117
	.byte W02
	.byte VOL, 0
	.byte BEND, 127
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_11E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004FD41C, 0xFF, 0x00, 0xFF, 0x00 @ index=43


.align 2
.global song_11F
song_11F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_11F_tone             @ tone
	.word song_11F_track0           @ tracks 0x0858BAD4

@ ****************************** tracks ******************************
.align 2
song_11F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 96
	.byte BENDR, 8
	.byte N64, 60, 127
	.byte W24
	.byte W18
	.byte VOL, 80
	.byte W02
	.byte 0x42
	.byte W02
	.byte 0x35
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x17
	.byte W02
	.byte 0x10
	.byte W02
	.byte 0x0A
	.byte W02
	.byte 0x06
	.byte W02
	.byte 0x02
	.byte W02
	.byte 0x00
	.byte W10
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_11F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00514F04, 0xFF, 0x00, 0xFF, 0x00 @ index=57


.align 2
.global song_120
song_120:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_120_tone             @ tone
	.word song_120_track0           @ tracks 0x0858BB08

@ ****************************** tracks ******************************
.align 2
song_120_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 62
	.byte N96, 60, 127
	.byte W01
	.byte VOL, 70
	.byte W01
	.byte 0x4E
	.byte W01
	.byte 0x56
	.byte W01
	.byte 0x5E
	.byte W01
	.byte 0x64
	.byte W19
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_120_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005080DC, 0xFF, 0x00, 0xFF, 0x00 @ index=48


.align 2
.global song_121
song_121:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_121_tone             @ tone
	.word song_121_track0           @ tracks 0x0858BB30

@ ****************************** tracks ******************************
.align 2
song_121_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 56
	.byte N96, 60, 127
	.byte W01
	.byte VOL, 63
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x4D
	.byte W01
	.byte 0x55
	.byte W01
	.byte 0x5A
	.byte W19
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_121_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005095EC, 0xFF, 0x00, 0xFF, 0x00 @ index=49


.align 2
.global song_122
song_122:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_122_tone             @ tone
	.word song_122_track0           @ tracks 0x0858BB58

@ ****************************** tracks ******************************
.align 2
song_122_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte BENDR, 12
	.byte BEND, 60
	.byte TIE, 60, 127
	.byte W01
	.byte BEND, 60
	.byte W01
	.byte 0x3D
	.byte W01
	.byte 0x3E
	.byte W01
	.byte 0x3E
	.byte W01
	.byte 0x3F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x43
	.byte W01
	.byte 0x43
	.byte W01
	.byte 0x44
	.byte W01
	.byte 0x45
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x47
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x49
	.byte W01
	.byte 0x4A
	.byte W01
	.byte 0x4B
	.byte W01
	.byte 0x4B
	.byte W01
	.byte 0x4C
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x47
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x45
	.byte W01
	.byte 0x44
	.byte W01
	.byte 0x43
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x3F
	.byte W01
	.byte 0x3E
	.byte W01
	.byte 0x3D
	.byte W01
	.byte 0x3C
	.byte W01
	.byte 0x3B
	.byte W01
	.byte 0x3A
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x38
	.byte W01
	.byte 0x37
	.byte W01
	.byte 0x36
	.byte W01
	.byte 0x35
	.byte W01
	.byte 0x34
	.byte W01
	.byte 0x33
	.byte W01
	.byte 0x2E
	.byte W01
	.byte 0x2F
	.byte W01
	.byte 0x30
	.byte W01
	.byte 0x31
	.byte W01
	.byte 0x32
	.byte W01
	.byte 0x34
	.byte W01
	.byte 0x35
	.byte W01
	.byte 0x36
	.byte W01
	.byte 0x37
	.byte W01
	.byte 0x38
	.byte W01
	.byte 0x3A
	.byte W01
	.byte 0x3B
	.byte W01
	.byte 0x3C
	.byte W01
	.byte 0x3D
	.byte W01
	.byte 0x3E
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x3E
	.byte W01
	.byte 0x3F
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x42
	.byte W01
	.byte 0x43
	.byte W01
	.byte 0x44
	.byte W01
	.byte VOL, 110
	.byte W01
	.byte BEND, 69
	.byte W01
	.byte 0x45
	.byte W01
	.byte VOL, 104
	.byte BEND, 70
	.byte W01
	.byte 0x47
	.byte W01
	.byte 0x48
	.byte W01
	.byte VOL, 100
	.byte BEND, 73
	.byte W01
	.byte 0x4A
	.byte W01
	.byte 0x4B
	.byte W01
	.byte VOL, 96
	.byte BEND, 75
	.byte W01
	.byte 0x4C
	.byte W01
	.byte 0x4D
	.byte W01
	.byte VOL, 90
	.byte BEND, 78
	.byte W01
	.byte 0x4E
	.byte W01
	.byte 0x4C
	.byte W01
	.byte VOL, 86
	.byte BEND, 75
	.byte W01
	.byte 0x4A
	.byte W01
	.byte 0x49
	.byte W01
	.byte VOL, 82
	.byte BEND, 72
	.byte W01
	.byte 0x47
	.byte W01
	.byte 0x46
	.byte W01
	.byte VOL, 77
	.byte BEND, 68
	.byte W01
	.byte 0x43
	.byte W01
	.byte 0x42
	.byte W01
	.byte VOL, 72
	.byte BEND, 65
	.byte W01
	.byte 0x40
	.byte W01
	.byte 0x3E
	.byte W01
	.byte VOL, 68
	.byte W01
	.byte BEND, 59
	.byte W01
	.byte 0x3A
	.byte W01
	.byte VOL, 64
	.byte W01
	.byte BEND, 56
	.byte W01
	.byte 0x37
	.byte W01
	.byte VOL, 62
	.byte BEND, 54
	.byte W01
	.byte 0x35
	.byte W01
	.byte 0x32
	.byte W01
	.byte VOL, 60
	.byte BEND, 49
	.byte W01
	.byte 0x31
	.byte W01
	.byte 0x30
	.byte W01
	.byte VOL, 56
	.byte BEND, 48
	.byte W01
	.byte 0x2A
	.byte W01
	.byte 0x2D
	.byte W01
	.byte VOL, 51
	.byte W01
	.byte BEND, 46
	.byte W01
	.byte 0x30
	.byte W01
	.byte VOL, 47
	.byte BEND, 49
	.byte W01
	.byte 0x33
	.byte W01
	.byte 0x35
	.byte W01
	.byte VOL, 43
	.byte BEND, 54
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x3B
	.byte W01
	.byte VOL, 38
	.byte BEND, 61
	.byte W01
	.byte 0x3E
	.byte W01
	.byte 0x3E
	.byte W01
	.byte VOL, 34
	.byte BEND, 62
	.byte W01
	.byte 0x41
	.byte W01
	.byte 0x44
	.byte W01
	.byte VOL, 30
	.byte BEND, 71
	.byte W01
	.byte 0x4A
	.byte W01
	.byte 0x4D
	.byte W01
	.byte VOL, 25
	.byte BEND, 80
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x57
	.byte W01
	.byte VOL, 21
	.byte BEND, 90
	.byte W01
	.byte 0x5D
	.byte W01
	.byte VOL, 17
	.byte BEND, 96
	.byte W01
	.byte 0x63
	.byte W01
	.byte VOL, 12
	.byte BEND, 105
	.byte W01
	.byte 0x6D
	.byte W01
	.byte VOL, 8
	.byte BEND, 112
	.byte W01
	.byte 0x73
	.byte W01
	.byte VOL, 0
	.byte BEND, 118
	.byte W01
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_122_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004FD41C, 0xFF, 0x00, 0xFF, 0x00 @ index=43


.align 2
.global song_123
song_123:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_123_tone             @ tone
	.word song_123_track0           @ tracks 0x0858BCE0

@ ****************************** tracks ******************************
.align 2
song_123_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 80
	.byte N12, 60, 127
	.byte W12
	.byte N11, 60, 96
	.byte W12
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_123_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0050B9B8, 0xFF, 0x00, 0xFF, 0x00 @ index=50


.align 2
.global song_124
song_124:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_124_tone             @ tone
	.word song_124_track0           @ tracks 0x0858BD00

@ ****************************** tracks ******************************
.align 2
song_124_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 100
	.byte BEND, 64
	.byte N56, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_124_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004FFCC0, 0xFF, 0x00, 0xFF, 0x00 @ index=45


.align 2
.global song_125
song_125:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_125_tone             @ tone
	.word song_125_track0           @ tracks 0x0858BD20

@ ****************************** tracks ******************************
.align 2
song_125_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N84, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_125_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00501E00, 0xFF, 0x00, 0xFF, 0x00 @ index=46


.align 2
.global song_126
song_126:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_126_tone             @ tone
	.word song_126_track0           @ tracks 0x0858BD3C

@ ****************************** tracks ******************************
.align 2
song_126_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 11
	.byte N60, 60, 127
	.byte W01
	.byte VOL, 23
	.byte W02
	.byte 0x27
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x64
	.byte W17
	.byte W14
	.byte 0x53
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x37
	.byte W02
	.byte 0x2C
	.byte W02
	.byte 0x21
	.byte W02
	.byte 0x18
	.byte W02
	.byte 0x11
	.byte W02
	.byte 0x0B
	.byte W02
	.byte 0x06
	.byte W02
	.byte 0x02
	.byte W02
	.byte 0x00
	.byte W14
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_126_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005050D4, 0xFF, 0x00, 0xFF, 0x00 @ index=47


.align 2
.global song_127
song_127:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_127_tone             @ tone
	.word song_127_track0           @ tracks 0x0858BD78

@ ****************************** tracks ******************************
.align 2
song_127_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N40, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_127_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0050D150, 0xFF, 0x00, 0xFF, 0x00 @ index=51


.align 2
.global song_128
song_128:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_128_tone             @ tone
	.word song_128_track0           @ tracks 0x0858BD94

@ ****************************** tracks ******************************
.align 2
song_128_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 18
	.byte VOL, 110
	.byte BEND, 0
	.byte N12, 67, 127
	.byte W01
	.byte BEND, 45
	.byte W01
	.byte 0x3E
	.byte W01
	.byte 0x50
	.byte W01
	.byte BENDR, 21
	.byte VOL, 109
	.byte BEND, 92
	.byte W01
	.byte VOL, 107
	.byte BEND, 108
	.byte W01
	.byte VOL, 103
	.byte BEND, 127
	.byte W01
	.byte VOL, 95
	.byte W01
	.byte 0x55
	.byte W01
	.byte 0x48
	.byte W01
	.byte 0x38
	.byte W01
	.byte 0x26
	.byte W02
	.byte 0x6E
	.byte N06, 67, 48
	.byte W07
	.byte N04, 67, 20
	.byte W04
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_128_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0050D150, 0xFF, 0x00, 0xFF, 0x00 @ index=51


.align 2
.global song_129
song_129:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_129_tone             @ tone
	.word song_129_track0           @ tracks 0x0858BDE0

@ ****************************** tracks ******************************
.align 2
song_129_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N72, 63, 127
	.byte W02
	.byte VOL, 109
	.byte W06
	.byte 0x6C
	.byte W02
	.byte 0x6B
	.byte W02
	.byte 0x6A
	.byte W02
	.byte 0x69
	.byte W02
	.byte 0x68
	.byte W02
	.byte 0x67
	.byte W02
	.byte 0x65
	.byte W02
	.byte 0x63
	.byte W02
	.byte 0x61
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x5E
	.byte W02
	.byte 0x5B
	.byte W02
	.byte 0x59
	.byte W02
	.byte 0x56
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x4D
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x3B
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x33
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x2B
	.byte W02
	.byte 0x26
	.byte W02
	.byte 0x21
	.byte W02
	.byte 0x1C
	.byte W02
	.byte 0x17
	.byte W02
	.byte 0x12
	.byte W02
	.byte 0x0C
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_129_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0050E8B4, 0xFF, 0x00, 0xFF, 0x00 @ index=52


.align 2
.global song_12A
song_12A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_12A_tone             @ tone
	.word song_12A_track0           @ tracks 0x0858BE3C

@ ****************************** tracks ******************************
.align 2
song_12A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 5
	.byte BEND, 0
	.byte TIE, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W11
	.byte BEND, 0
	.byte W01
	.byte VOL, 127
	.byte W01
	.byte BEND, 1
	.byte W01
	.byte VOL, 125
	.byte W01
	.byte BEND, 6
	.byte W01
	.byte VOL, 121
	.byte W01
	.byte BEND, 13
	.byte W01
	.byte VOL, 115
	.byte W01
	.byte BEND, 24
	.byte W01
	.byte VOL, 105
	.byte W01
	.byte BEND, 38
	.byte W01
	.byte VOL, 94
	.byte W01
	.byte BEND, 54
	.byte W01
	.byte VOL, 80
	.byte BEND, 64
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_12A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047D848, 0xFF, 0x00, 0xFF, 0x00 @ index=22


.align 2
.global song_12B
song_12B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_12B_tone             @ tone
	.word song_12B_track0           @ tracks 0x0858BE94

@ ****************************** tracks ******************************
.align 2
song_12B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 2
	.byte VOL, 32
	.byte BEND, 96
	.byte N60, 63, 127
	.byte W02
	.byte BEND, 86
	.byte W02
	.byte VOL, 33
	.byte BEND, 77
	.byte W02
	.byte VOL, 34
	.byte BEND, 69
	.byte W02
	.byte VOL, 36
	.byte BEND, 61
	.byte W02
	.byte VOL, 39
	.byte BEND, 54
	.byte W02
	.byte VOL, 42
	.byte BEND, 47
	.byte W02
	.byte VOL, 46
	.byte BEND, 40
	.byte W02
	.byte VOL, 50
	.byte BEND, 34
	.byte W02
	.byte VOL, 55
	.byte BEND, 29
	.byte W02
	.byte VOL, 61
	.byte BEND, 24
	.byte W02
	.byte VOL, 67
	.byte BEND, 19
	.byte W02
	.byte VOL, 74
	.byte BEND, 15
	.byte W02
	.byte VOL, 81
	.byte BEND, 11
	.byte W02
	.byte VOL, 89
	.byte BEND, 8
	.byte W02
	.byte VOL, 98
	.byte BEND, 6
	.byte W02
	.byte VOL, 107
	.byte BEND, 3
	.byte W02
	.byte VOL, 116
	.byte BEND, 2
	.byte W02
	.byte VOL, 127
	.byte BEND, 0
	.byte W02
	.byte 0x00
	.byte W02
	.byte 0x00
	.byte W08
	.byte W08
	.byte VOL, 110
	.byte W02
	.byte 0x3C
	.byte W14
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_12B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004761FC, 0xFF, 0x00, 0xFF, 0x00 @ index=23


.align 2
.global song_12C
song_12C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_12C_tone             @ tone
	.word song_12C_track0           @ tracks 0x0858BF14

@ ****************************** tracks ******************************
.align 2
song_12C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 100
	.byte BENDR, 16
	.byte BEND, 64
	.byte TIE, 56, 127
	.byte W02
	.byte BEND, 64
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x42
	.byte W02
	.byte 0x42
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x49
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x4D
	.byte W02
	.byte 0x4E
	.byte W02
	.byte 0x50
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x52
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x55
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x5E
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x62
	.byte W02
	.byte 0x63
	.byte W02
	.byte 0x66
	.byte W02
	.byte 0x68
	.byte W02
	.byte 0x6A
	.byte W02
	.byte 0x6C
	.byte W02
	.byte 0x6E
	.byte W02
	.byte VOL, 100
	.byte BEND, 112
	.byte W02
	.byte VOL, 99
	.byte BEND, 115
	.byte W02
	.byte VOL, 98
	.byte BEND, 117
	.byte W02
	.byte VOL, 96
	.byte BEND, 120
	.byte W02
	.byte VOL, 94
	.byte BEND, 122
	.byte W02
	.byte VOL, 92
	.byte BEND, 125
	.byte W02
	.byte VOL, 88
	.byte BEND, 127
	.byte W02
	.byte VOL, 84
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x3E
	.byte W02
	.byte 0x37
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x27
	.byte W02
	.byte 0x1D
	.byte W02
	.byte 0x14
	.byte W02
	.byte 0x0A
	.byte W02
	.byte EOT
	.byte VOL, 0
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_12C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0046627C, 0xFF, 0x00, 0xFF, 0x00 @ index=39


.align 2
.global song_12D
song_12D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_12D_tone             @ tone
	.word song_12D_track0           @ tracks 0x0858BFC4

@ ****************************** tracks ******************************
.align 2
song_12D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 16
	.byte VOL, 9
	.byte BEND, 0
	.byte N48, 58, 127
	.byte W02
	.byte VOL, 12
	.byte BEND, 16
	.byte W02
	.byte VOL, 23
	.byte BEND, 30
	.byte W02
	.byte VOL, 41
	.byte BEND, 41
	.byte W02
	.byte VOL, 67
	.byte BEND, 50
	.byte W02
	.byte VOL, 100
	.byte BEND, 56
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x3E
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x5D
	.byte W02
	.byte 0x68
	.byte W02
	.byte 0x71
	.byte W02
	.byte 0x78
	.byte W02
	.byte 0x7D
	.byte W02
	.byte 0x7F
	.byte W01
	.byte 0x7F
	.byte W09
	.byte VOL, 100
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x37
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x21
	.byte W02
	.byte 0x1F
	.byte W02
	.byte BENDR, 14
	.byte VOL, 50
	.byte BEND, 0
	.byte N44, 59
	.byte W02
	.byte VOL, 53
	.byte BEND, 14
	.byte W02
	.byte VOL, 62
	.byte BEND, 26
	.byte W02
	.byte VOL, 77
	.byte BEND, 37
	.byte W02
	.byte VOL, 100
	.byte BEND, 46
	.byte W02
	.byte 0x35
	.byte W02
	.byte 0x4E
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x65
	.byte W02
	.byte 0x6E
	.byte W02
	.byte 0x75
	.byte W02
	.byte 0x7A
	.byte W02
	.byte 0x7D
	.byte W02
	.byte 0x7E
	.byte W04
	.byte VOL, 100
	.byte W02
	.byte 0x55
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x3E
	.byte W02
	.byte 0x34
	.byte W02
	.byte 0x2E
	.byte W02
	.byte 0x28
	.byte W02
	.byte 0x26
	.byte W02
	.byte BENDR, 14
	.byte VOL, 37
	.byte W02
	.byte 0x1D
	.byte BEND, 0
	.byte N42, 60
	.byte W02
	.byte VOL, 45
	.byte BEND, 14
	.byte W02
	.byte VOL, 54
	.byte BEND, 26
	.byte W02
	.byte VOL, 70
	.byte BEND, 37
	.byte W02
	.byte VOL, 92
	.byte BEND, 46
	.byte W02
	.byte 0x35
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x65
	.byte W02
	.byte 0x6E
	.byte W02
	.byte 0x75
	.byte W02
	.byte 0x7A
	.byte W02
	.byte 0x7D
	.byte W02
	.byte VOL, 85
	.byte BEND, 126
	.byte W02
	.byte VOL, 71
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x33
	.byte W02
	.byte 0x2B
	.byte W02
	.byte 0x25
	.byte W02
	.byte 0x21
	.byte W02
	.byte 0x1E
	.byte W06
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_12D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047F088, 0xFF, 0x00, 0xFF, 0x00 @ index=56


.align 2
.global song_12E
song_12E:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_12E_tone             @ tone
	.word song_12E_track0           @ tracks 0x0858C0A0
	.word song_12E_track1           @ tracks 0x0858C0C5

@ ****************************** tracks ******************************
.align 2
song_12E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte PAN, 0
	.byte N14, 60, 127
	.byte W18
	.byte PAN, 30
	.byte N14
	.byte W06
	.byte W10
	.byte PAN, 0
	.byte N15, 59
	.byte W14
	.byte W02
	.byte PAN, 22
	.byte N13, 61
	.byte W15
	.byte PAN, 0
	.byte N24, 62
	.byte W07
	.byte W24
	.byte FINE

.align 2
song_12E_track1:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte VOL, 110
	.byte PAN, 127
	.byte W08
	.byte N15, 59, 127
	.byte W16
	.byte PAN, 94
	.byte N15, 61
	.byte W17
	.byte PAN, 114
	.byte N12, 60
	.byte W07
	.byte W09
	.byte PAN, 127
	.byte N19, 59
	.byte W15
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_12E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004C8D3C, 0xFF, 0x00, 0xFF, 0x00 @ index=11


.align 2
.global song_12F
song_12F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_12F_tone             @ tone
	.word song_12F_track0           @ tracks 0x0858C0F4

@ ****************************** tracks ******************************
.align 2
song_12F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 8
	.byte VOL, 64
	.byte PAN, 64
	.byte BEND, 0
	.byte TIE, 67, 127
	.byte W02
	.byte VOL, 70
	.byte BEND, 10
	.byte W02
	.byte VOL, 77
	.byte BEND, 21
	.byte W02
	.byte VOL, 84
	.byte BEND, 31
	.byte W02
	.byte VOL, 91
	.byte BEND, 42
	.byte W02
	.byte VOL, 98
	.byte BEND, 53
	.byte W02
	.byte VOL, 105
	.byte BEND, 64
	.byte W02
	.byte VOL, 112
	.byte BEND, 74
	.byte W02
	.byte VOL, 119
	.byte BEND, 85
	.byte W02
	.byte VOL, 127
	.byte BEND, 95
	.byte W02
	.byte VOL, 120
	.byte BEND, 106
	.byte W02
	.byte VOL, 113
	.byte BEND, 117
	.byte W02
	.byte VOL, 107
	.byte BEND, 127
	.byte W02
	.byte VOL, 100
	.byte W02
	.byte 0x5E
	.byte W02
	.byte 0x57
	.byte BEND, 64
	.byte W02
	.byte VOL, 81
	.byte BEND, 74
	.byte W02
	.byte VOL, 74
	.byte BEND, 85
	.byte W02
	.byte VOL, 66
	.byte BEND, 95
	.byte W02
	.byte VOL, 71
	.byte BEND, 106
	.byte W02
	.byte VOL, 76
	.byte BEND, 117
	.byte W02
	.byte VOL, 81
	.byte BEND, 127
	.byte W02
	.byte VOL, 86
	.byte W02
	.byte 0x5B
	.byte W02
	.byte 0x60
	.byte BEND, 64
	.byte W02
	.byte VOL, 101
	.byte BEND, 74
	.byte W02
	.byte VOL, 106
	.byte BEND, 85
	.byte W02
	.byte VOL, 111
	.byte BEND, 95
	.byte W02
	.byte VOL, 116
	.byte BEND, 106
	.byte W02
	.byte VOL, 121
	.byte BEND, 117
	.byte W02
	.byte VOL, 127
	.byte BEND, 127
	.byte W02
	.byte VOL, 119
	.byte W02
	.byte 0x70
	.byte W02
	.byte 0x69
	.byte BEND, 64
	.byte W02
	.byte VOL, 98
	.byte BEND, 74
	.byte W02
	.byte VOL, 91
	.byte BEND, 85
	.byte W02
	.byte VOL, 84
	.byte BEND, 95
	.byte W02
	.byte VOL, 77
	.byte BEND, 106
	.byte W02
	.byte VOL, 70
	.byte BEND, 117
	.byte W02
	.byte VOL, 64
	.byte BEND, 127
	.byte W04
	.byte VOL, 65
	.byte W02
	.byte 0x3E
	.byte BEND, 64
	.byte W02
	.byte VOL, 72
	.byte BEND, 74
	.byte W02
	.byte VOL, 81
	.byte BEND, 85
	.byte W02
	.byte VOL, 88
	.byte BEND, 95
	.byte W02
	.byte VOL, 97
	.byte BEND, 106
	.byte W02
	.byte 0x75
	.byte W02
	.byte VOL, 100
	.byte BEND, 127
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x51
	.byte W02
	.byte VOL, 96
	.byte BEND, 92
	.byte W02
	.byte VOL, 93
	.byte BEND, 104
	.byte W02
	.byte 0x74
	.byte W02
	.byte VOL, 86
	.byte BEND, 127
	.byte W02
	.byte VOL, 75
	.byte BEND, 74
	.byte W02
	.byte VOL, 68
	.byte BEND, 85
	.byte W02
	.byte VOL, 60
	.byte BEND, 95
	.byte W02
	.byte VOL, 51
	.byte BEND, 106
	.byte W02
	.byte 0x75
	.byte W01
	.byte VOL, 41
	.byte W01
	.byte BEND, 127
	.byte W01
	.byte VOL, 30
	.byte W02
	.byte 0x13
	.byte W02
	.byte 0x06
	.byte W02
	.byte EOT
	.byte W17
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_12F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047F088, 0xFF, 0x00, 0xFF, 0x00 @ index=56


.align 2
.global song_130
song_130:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_130_tone             @ tone
	.word song_130_track0           @ tracks 0x0858C220

@ ****************************** tracks ******************************
.align 2
song_130_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 52
	.byte TIE, 60, 127
	.byte W02
	.byte VOL, 58
	.byte W02
	.byte 0x40
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x4D
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x61
	.byte W02
	.byte 0x68
	.byte W08
	.byte W24
	.byte W24
	.byte W24
	.byte 0x62
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x52
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x3E
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x32
	.byte W02
	.byte 0x2D
	.byte W02
	.byte 0x28
	.byte W02
	.byte 0x23
	.byte W02
	.byte 0x1F
	.byte W02
	.byte 0x1B
	.byte W02
	.byte 0x17
	.byte W02
	.byte 0x14
	.byte W02
	.byte 0x11
	.byte W02
	.byte 0x0E
	.byte W02
	.byte 0x0C
	.byte W02
	.byte 0x0A
	.byte W02
	.byte xIECL
	.byte W02
	.byte 0x07
	.byte W02
	.byte 0x06
	.byte W06
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_130_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004CA510, 0xFF, 0x00, 0xFF, 0x00 @ index=12


.align 2
.global song_131
song_131:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_131_tone             @ tone
	.word song_131_track0           @ tracks 0x0858C27C

@ ****************************** tracks ******************************
.align 2
song_131_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N96, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_131_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004CD894, 0xFF, 0x00, 0xFF, 0x00 @ index=13


.align 2
.global song_132
song_132:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_132_tone             @ tone
	.word song_132_track0           @ tracks 0x0858C29C

@ ****************************** tracks ******************************
.align 2
song_132_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N48, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_132_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004C8D3C, 0xFF, 0x00, 0xFF, 0x00 @ index=11


.align 2
.global song_133
song_133:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_133_tone             @ tone
	.word song_133_track0           @ tracks 0x0858C2B8

@ ****************************** tracks ******************************
.align 2
song_133_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 112
	.byte N48, 60, 127
	.byte W24
	.byte VOL, 111
	.byte W02
	.byte 0x69
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x59
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x46
	.byte W02
	.byte 0x34
	.byte W02
	.byte 0x23
	.byte W02
	.byte 0x11
	.byte W02
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_133_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004D1764, 0xFF, 0x00, 0xFF, 0x00 @ index=14


.align 2
.global song_134
song_134:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_134_tone             @ tone
	.word song_134_track0           @ tracks 0x0858C2EC

@ ****************************** tracks ******************************
.align 2
song_134_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N24, 60, 72
	.byte W24
	.byte N02
	.byte W02
	.byte N02
	.byte W02
	.byte N01, 60, 76
	.byte W01
	.byte N02
	.byte W02
	.byte N03, 60, 80
	.byte W03
	.byte N02, 60, 88
	.byte W02
	.byte N01, 60, 96
	.byte W01
	.byte N02, 60, 100
	.byte W02
	.byte 0x3C
	.byte 0x6C
	.byte W02
	.byte N01, 60, 116
	.byte W01
	.byte N14, 60, 127
	.byte W06
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_134_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004A4C30, 0xFF, 0x00, 0xFF, 0x59 @ index=26


.align 2
.global song_135
song_135:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_135_tone             @ tone
	.word song_135_track0           @ tracks 0x0858C32C

@ ****************************** tracks ******************************
.align 2
song_135_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N06, 64, 120
	.byte W06
	.byte 0x42
	.byte W06
	.byte VOL, 127
	.byte N20, 72
	.byte W02
	.byte VOL, 114
	.byte W02
	.byte 0x65
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x3F
	.byte W02
	.byte 0x32
	.byte W02
	.byte 0x26
	.byte W02
	.byte 0x19
	.byte W02
	.byte 0x0C
	.byte W02
	.byte 0x00
	.byte W16
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_135_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004CA510, 0xFF, 0x00, 0xFF, 0x00 @ index=64


.align 2
.global song_136
song_136:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_136_tone             @ tone
	.word song_136_track0           @ tracks 0x0858C364

@ ****************************** tracks ******************************
.align 2
song_136_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_136_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004A69FC, 0xFF, 0x00, 0xFF, 0x00 @ index=27


.align 2
.global song_137
song_137:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_137_tone             @ tone
	.word song_137_track0           @ tracks 0x0858C380

@ ****************************** tracks ******************************
.align 2
song_137_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 12
	.byte VOL, 20
	.byte BEND, 127
	.byte N20, 60, 127
	.byte W01
	.byte VOL, 30
	.byte BEND, 124
	.byte W01
	.byte VOL, 41
	.byte BEND, 121
	.byte W01
	.byte VOL, 51
	.byte BEND, 117
	.byte W01
	.byte VOL, 62
	.byte BEND, 114
	.byte W01
	.byte VOL, 73
	.byte BEND, 111
	.byte W01
	.byte VOL, 83
	.byte BEND, 107
	.byte W01
	.byte VOL, 94
	.byte BEND, 104
	.byte W01
	.byte VOL, 105
	.byte BEND, 101
	.byte W01
	.byte VOL, 115
	.byte BEND, 97
	.byte W01
	.byte VOL, 127
	.byte BEND, 94
	.byte W01
	.byte 0x5A
	.byte W01
	.byte 0x57
	.byte W01
	.byte 0x54
	.byte W01
	.byte 0x50
	.byte W01
	.byte 0x4D
	.byte W01
	.byte VOL, 120
	.byte BEND, 74
	.byte W01
	.byte VOL, 110
	.byte BEND, 70
	.byte W01
	.byte VOL, 85
	.byte BEND, 67
	.byte W01
	.byte VOL, 30
	.byte BEND, 64
	.byte W05
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_137_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004A7234, 0xFF, 0x00, 0xFF, 0x00 @ index=28


.align 2
.global song_138
song_138:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_138_tone             @ tone
	.word song_138_track0           @ tracks 0x0858C3F0

@ ****************************** tracks ******************************
.align 2
song_138_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 12
	.byte VOL, 0
	.byte LFOS, 30
	.byte MODT, 0
	.byte MOD, 0
	.byte TIE, 60, 127
	.byte W02
	.byte VOL, 8
	.byte W02
	.byte 0x11
	.byte W02
	.byte 0x19
	.byte W02
	.byte 0x22
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x33
	.byte W02
	.byte 0x3B
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x55
	.byte W02
	.byte 0x5E
	.byte W02
	.byte 0x68
	.byte W02
	.byte MOD, 1
	.byte W10
	.byte 0x02
	.byte W06
	.byte 0x03
	.byte W06
	.byte W02
	.byte 0x04
	.byte W04
	.byte 0x05
	.byte W06
	.byte 0x06
	.byte W04
	.byte 0x07
	.byte W06
	.byte xIECV
	.byte W02
	.byte W02
	.byte xIECL
	.byte W04
	.byte 0x0A
	.byte W04
	.byte 0x0B
	.byte W02
	.byte 0x0C
	.byte W04
	.byte 0x0D
	.byte W04
	.byte 0x0E
	.byte W02
	.byte 0x0F
	.byte W02
	.byte W02
	.byte 0x10
	.byte W02
	.byte 0x11
	.byte BEND, 64
	.byte W04
	.byte MOD, 18
	.byte W02
	.byte 0x13
	.byte W02
	.byte 0x14
	.byte W04
	.byte 0x15
	.byte W02
	.byte 0x16
	.byte W02
	.byte 0x17
	.byte W04
	.byte 0x18
	.byte W02
	.byte 0x19
	.byte W02
	.byte 0x1A
	.byte W02
	.byte 0x1B
	.byte W02
	.byte 0x1C
	.byte W02
	.byte 0x1D
	.byte W04
	.byte 0x1E
	.byte W02
	.byte 0x1F
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x21
	.byte W02
	.byte 0x22
	.byte W02
	.byte 0x23
	.byte W02
	.byte 0x24
	.byte W02
	.byte 0x25
	.byte W02
	.byte 0x26
	.byte W02
	.byte 0x27
	.byte W02
	.byte 0x28
	.byte W02
	.byte 0x29
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x2B
	.byte W02
	.byte 0x2D
	.byte W02
	.byte 0x2E
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x30
	.byte W02
	.byte 0x31
	.byte W02
	.byte 0x32
	.byte W02
	.byte 0x33
	.byte W02
	.byte 0x35
	.byte W02
	.byte 0x36
	.byte W02
	.byte 0x37
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x3A
	.byte W02
	.byte 0x3B
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x3D
	.byte W02
	.byte 0x40
	.byte VOL, 98
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x53
	.byte W02
	.byte 0x4C
	.byte W02
	.byte 0x45
	.byte W02
	.byte 0x3F
	.byte W02
	.byte 0x3A
	.byte W02
	.byte 0x34
	.byte W02
	.byte 0x2E
	.byte W02
	.byte 0x29
	.byte W02
	.byte 0x25
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x1D
	.byte W02
	.byte 0x19
	.byte W02
	.byte 0x16
	.byte W02
	.byte 0x12
	.byte W02
	.byte 0x10
	.byte W02
	.byte 0x0D
	.byte W02
	.byte 0x0C
	.byte W02
	.byte xIECL
	.byte W02
	.byte xIECL
	.byte W02
	.byte 0x07
	.byte W02
	.byte 0x06
	.byte W04
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_138_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004D3FEC, 0xFF, 0x00, 0xFF, 0x00 @ index=15


.align 2
.global song_139
song_139:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_139_tone             @ tone
	.word song_139_track0           @ tracks 0x0858C4D8

@ ****************************** tracks ******************************
.align 2
song_139_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 112
	.byte TIE, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W08
	.byte EOT
	.byte W16
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_139_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004D8350, 0xFF, 0x00, 0xFF, 0x00 @ index=16


.align 2
.global song_13A
song_13A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_13A_tone             @ tone
	.word song_13A_track0           @ tracks 0x0858C4F8

@ ****************************** tracks ******************************
.align 2
song_13A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 12
	.byte VOL, 26
	.byte TIE, 60, 127
	.byte W02
	.byte VOL, 27
	.byte W02
	.byte 0x1D
	.byte W02
	.byte 0x22
	.byte W02
	.byte 0x28
	.byte W02
	.byte 0x31
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x48
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x68
	.byte W06
	.byte W24
	.byte W24
	.byte W18
	.byte BEND, 64
	.byte W02
	.byte 0x38
	.byte W02
	.byte 0x31
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x23
	.byte W02
	.byte 0x1C
	.byte W02
	.byte 0x15
	.byte W02
	.byte 0x0E
	.byte W02
	.byte 0x07
	.byte W02
	.byte 0x00
	.byte W12
	.byte W24
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_13A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004ED490, 0xFF, 0x00, 0xFF, 0x00 @ index=28


.align 2
.global song_13B
song_13B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_13B_tone             @ tone
	.word song_13B_track0           @ tracks 0x0858C540

@ ****************************** tracks ******************************
.align 2
song_13B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N96, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_13B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004DD1B8, 0xFF, 0x00, 0xFF, 0x00 @ index=17


.align 2
.global song_13C
song_13C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_13C_tone             @ tone
	.word song_13C_track0           @ tracks 0x0858C560

@ ****************************** tracks ******************************
.align 2
song_13C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N96, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_13C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004E0DD8, 0xFF, 0x00, 0xFF, 0x00 @ index=18


.align 2
.global song_13D
song_13D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_13D_tone             @ tone
	.word song_13D_track0           @ tracks 0x0858C57C

@ ****************************** tracks ******************************
.align 2
song_13D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte MOD, 0
	.byte BENDR, 12
	.byte BEND, 0
	.byte TIE, 55, 127
	.byte W04
	.byte BEND, 4
	.byte W04
	.byte xIECV
	.byte W04
	.byte 0x0D
	.byte W04
	.byte 0x11
	.byte W04
	.byte 0x15
	.byte W04
	.byte 0x1A
	.byte W04
	.byte 0x1E
	.byte W04
	.byte 0x22
	.byte W04
	.byte 0x27
	.byte W04
	.byte 0x2B
	.byte W04
	.byte 0x2F
	.byte W04
	.byte 0x34
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x3C
	.byte W04
	.byte 0x41
	.byte W04
	.byte 0x45
	.byte W04
	.byte 0x49
	.byte W04
	.byte 0x4E
	.byte W04
	.byte 0x52
	.byte W04
	.byte 0x56
	.byte W04
	.byte VOL, 126
	.byte BEND, 91
	.byte W02
	.byte VOL, 113
	.byte W02
	.byte 0x65
	.byte BEND, 95
	.byte W02
	.byte VOL, 90
	.byte W02
	.byte 0x4F
	.byte BEND, 99
	.byte W02
	.byte VOL, 69
	.byte W02
	.byte 0x3C
	.byte BEND, 104
	.byte W02
	.byte VOL, 52
	.byte W02
	.byte 0x2C
	.byte BEND, 108
	.byte W02
	.byte VOL, 37
	.byte W02
	.byte 0x1F
	.byte BEND, 112
	.byte W02
	.byte VOL, 25
	.byte W02
	.byte 0x15
	.byte BEND, 117
	.byte W02
	.byte VOL, 17
	.byte W02
	.byte 0x0D
	.byte BEND, 121
	.byte W02
	.byte VOL, 11
	.byte W02
	.byte xIECL
	.byte BEND, 125
	.byte W02
	.byte VOL, 8
	.byte W02
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_13D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00474AA0, 0xFF, 0x00, 0xFF, 0x00 @ index=19


.align 2
.global song_13E
song_13E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_13E_tone             @ tone
	.word song_13E_track0           @ tracks 0x0858C608

@ ****************************** tracks ******************************
.align 2
song_13E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N20, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_13E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045006C, 0xFF, 0x00, 0xFF, 0x00 @ index=20


.align 2
.global song_13F
song_13F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_13F_tone             @ tone
	.word song_13F_track0           @ tracks 0x0858C624

@ ****************************** tracks ******************************
.align 2
song_13F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N09, 60, 127
	.byte W09
	.byte N09
	.byte W09
	.byte 0x3C
	.byte 0x5C
	.byte W06
	.byte W03
	.byte N13, 60, 60
	.byte W21
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_13F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045E444, 0xFF, 0x00, 0xFF, 0x00 @ index=97


.align 2
.global song_140
song_140:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_140_tone             @ tone
	.word song_140_track0           @ tracks 0x0858C648

@ ****************************** tracks ******************************
.align 2
song_140_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 2
	.byte BEND, 64
	.byte N18, 58, 92
	.byte W02
	.byte BEND, 67
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x4B
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x53
	.byte W02
	.byte 0x57
	.byte W02
	.byte 0x5B
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x48
	.byte N17, 58, 100
	.byte W02
	.byte BEND, 76
	.byte W02
	.byte 0x51
	.byte W02
	.byte 0x55
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x5E
	.byte W02
	.byte 0x63
	.byte W03
	.byte 0x68
	.byte W02
	.byte 0x50
	.byte N16, 58, 112
	.byte W02
	.byte BEND, 84
	.byte W02
	.byte 0x59
	.byte W02
	.byte 0x5D
	.byte W02
	.byte 0x62
	.byte W02
	.byte 0x66
	.byte W02
	.byte 0x6B
	.byte W01
	.byte W01
	.byte 0x70
	.byte W02
	.byte 0x58
	.byte N15, 58, 120
	.byte W02
	.byte BEND, 93
	.byte W02
	.byte 0x62
	.byte W02
	.byte 0x67
	.byte W02
	.byte 0x6D
	.byte W02
	.byte 0x72
	.byte W03
	.byte 0x78
	.byte W02
	.byte 0x60
	.byte N14, 58, 127
	.byte W02
	.byte BEND, 101
	.byte W02
	.byte 0x6A
	.byte W02
	.byte 0x6F
	.byte W02
	.byte 0x75
	.byte W02
	.byte 0x7A
	.byte W02
	.byte 0x7F
	.byte W18
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_140_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004A4C30, 0xFF, 0x00, 0xFF, 0x59 @ index=23


.align 2
.global song_141
song_141:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_141_tone             @ tone
	.word song_141_track0           @ tracks 0x0858C6C4

@ ****************************** tracks ******************************
.align 2
song_141_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_141_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004AA874, 0xFF, 0x00, 0xFF, 0x00 @ index=30


.align 2
.global song_142
song_142:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_142_tone             @ tone
	.word song_142_track0           @ tracks 0x0858C6E0

@ ****************************** tracks ******************************
.align 2
song_142_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_142_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004AB360, 0xFF, 0x00, 0xFF, 0x00 @ index=31


.align 2
.global song_143
song_143:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_143_tone             @ tone
	.word song_143_track0           @ tracks 0x0858C6FC

@ ****************************** tracks ******************************
.align 2
song_143_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N36, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_143_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004AD740, 0xFF, 0x00, 0xFF, 0x00 @ index=33


.align 2
.global song_144
song_144:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0xB2                      @ reverb
	.word song_144_tone             @ tone
	.word song_144_track0           @ tracks 0x0858C718
	.word song_144_track1           @ tracks 0x0858C73E

@ ****************************** tracks ******************************
.align 2
song_144_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte MODT, 2
	.byte LFOS, 12
	.byte LFODL, 48
	.byte MOD, 32
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte TIE, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W12
	.byte EOT
	.byte W12
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_144_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 16
	.byte BENDR, 11
	.byte BEND, 0
	.byte TIE, 60, 127
	.byte W08
	.byte VOL, 20
	.byte W04
	.byte BEND, 0
	.byte W04
	.byte VOL, 24
	.byte BEND, 0
	.byte W04
	.byte 0x03
	.byte W04
	.byte VOL, 28
	.byte BEND, 8
	.byte W04
	.byte 0x0E
	.byte W04
	.byte VOL, 32
	.byte BEND, 22
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x36
	.byte W03
	.byte 0x3C
	.byte W03
	.byte 0x40
	.byte W04
	.byte 0x3C
	.byte W02
	.byte 0x38
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x18
	.byte W04
	.byte 0x10
	.byte W04
	.byte 0x0B
	.byte W04
	.byte 0x07
	.byte W04
	.byte 0x04
	.byte W04
	.byte 0x01
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x00
	.byte W16
	.byte 0x00
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x03
	.byte W04
	.byte xIECV
	.byte W04
	.byte 0x0E
	.byte W04
	.byte 0x16
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x35
	.byte W04
	.byte 0x3C
	.byte W04
	.byte 0x40
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x18
	.byte W04
	.byte 0x10
	.byte W04
	.byte 0x0B
	.byte W04
	.byte 0x07
	.byte W04
	.byte 0x04
	.byte W04
	.byte 0x01
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x00
	.byte W04
	.byte W07
	.byte 0x00
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x03
	.byte W04
	.byte xIECV
	.byte W04
	.byte 0x0E
	.byte W01
	.byte W03
	.byte 0x16
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x35
	.byte W03
	.byte 0x39
	.byte W02
	.byte 0x34
	.byte W04
	.byte 0x2E
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x1B
	.byte W04
	.byte 0x17
	.byte W04
	.byte 0x14
	.byte W04
	.byte 0x11
	.byte W04
	.byte 0x10
	.byte W04
	.byte 0x10
	.byte W04
	.byte 0x14
	.byte W03
	.byte 0x16
	.byte W03
	.byte 0x17
	.byte W02
	.byte VOL, 28
	.byte W02
	.byte BEND, 21
	.byte W04
	.byte 0x13
	.byte W04
	.byte 0x11
	.byte W02
	.byte VOL, 24
	.byte W02
	.byte BEND, 15
	.byte W04
	.byte 0x0D
	.byte W04
	.byte 0x0B
	.byte W02
	.byte VOL, 20
	.byte W02
	.byte BEND, 9
	.byte W04
	.byte 0x07
	.byte W04
	.byte 0x05
	.byte W02
	.byte VOL, 16
	.byte W02
	.byte BEND, 3
	.byte W04
	.byte 0x00
	.byte W06
	.byte VOL, 12
	.byte W12
	.byte xIECV
	.byte W12
	.byte EOT
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_144_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004B5DA4, 0xFF, 0x00, 0xFF, 0x00 @ index=96
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x00 @ index=22


.align 2
.global song_145
song_145:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_145_tone             @ tone
	.word song_145_track0           @ tracks 0x0858C82C
	.word song_145_track1           @ tracks 0x0858C917

@ ****************************** tracks ******************************
.align 2
song_145_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 7
	.byte VOL, 24
	.byte BEND, 0
	.byte TIE, 57, 127
	.byte W04
	.byte VOL, 30
	.byte W04
label_song_145_track0_3:
	.byte W02
	.byte VOL, 36
	.byte W02
	.byte BEND, 0
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x03
	.byte W04
label_song_145_track0_0:
	.byte BEND, 8
	.byte W04
	.byte 0x0E
	.byte W04
	.byte 0x16
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x30
	.byte W04
	.byte PEND
label_song_145_track0_1:
	.byte BEND, 53
	.byte W04
	.byte 0x3C
	.byte W04
	.byte 0x40
	.byte W04
	.byte 0x3C
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x30
	.byte W04
	.byte PEND
label_song_145_track0_2:
	.byte BEND, 40
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x18
	.byte W04
	.byte 0x10
	.byte W04
	.byte 0x0B
	.byte W04
	.byte 0x07
	.byte W04
	.byte PEND
	.byte 0x04
	.byte W04
	.byte 0x01
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x00
	.byte W12
label_song_145_track0_4:
	.byte W04
	.byte BEND, 0
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x03
	.byte W04
	.byte xIECV
	.byte W04
	.byte 0x0E
	.byte W04
	.byte PEND
label_song_145_track0_5:
	.byte BEND, 22
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x35
	.byte W04
	.byte 0x3C
	.byte W04
	.byte PEND
	.byte 0x40
	.byte W04
	.byte 0x3C
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x18
	.byte W04
	.byte 0x10
	.byte W04
	.byte 0x0B
	.byte W04
	.byte 0x07
	.byte W04
	.byte 0x04
	.byte W04
	.byte 0x01
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x00
	.byte W16
	.byte 0x00
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x03
	.byte W04
	.byte xIECV
	.byte W04
	.byte 0x0E
	.byte W04
	.byte 0x16
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x35
	.byte W04
	.byte 0x3C
	.byte W04
	.byte 0x40
	.byte W04
	.byte 0x3C
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x20
	.byte W04
	.byte 0x18
	.byte W04
	.byte 0x10
	.byte W04
	.byte 0x0B
	.byte W04
	.byte 0x07
	.byte W04
	.byte 0x04
	.byte W04
	.byte 0x01
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x00
	.byte W04
	.byte W12
	.byte 0x00
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x03
	.byte W04
	.byte PATT
	.word label_song_145_track0_0
	.byte PATT
	.word label_song_145_track0_1
	.byte PATT
	.word label_song_145_track0_2
	.byte BEND, 4
	.byte W04
	.byte 0x01
	.byte W04
	.byte 0x00
	.byte W04
	.byte 0x00
	.byte W08
	.byte GOTO
	.word label_song_145_track0_3
	.byte W04
	.byte PATT
	.word label_song_145_track0_4
	.byte PATT
	.word label_song_145_track0_5
	.byte EOT, 57
	.byte FINE

.align 2
song_145_track1:
	.byte KEYSH, 0
	.byte W08
label_song_145_track1_0:
	.byte W16
	.byte W12
	.byte VOICE, 1
	.byte VOL, 127
	.byte BENDR, 4
	.byte W08
	.byte PAN, 70
	.byte VOL, 127
	.byte BEND, 64
	.byte N44, 57, 60
	.byte W02
	.byte BEND, 79
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x6F
	.byte W02
	.byte 0x7F
	.byte W02
	.byte 0x7B
	.byte W02
	.byte 0x77
	.byte W02
	.byte 0x72
	.byte W02
	.byte VOL, 120
	.byte BEND, 110
	.byte W02
	.byte 0x69
	.byte W02
	.byte 0x65
	.byte W02
	.byte VOL, 112
	.byte BEND, 96
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x58
	.byte W02
	.byte VOL, 104
	.byte BEND, 83
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x4A
	.byte W02
	.byte VOL, 96
	.byte BEND, 70
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x3D
	.byte W02
	.byte VOL, 88
	.byte BEND, 56
	.byte W02
	.byte 0x34
	.byte W02
	.byte 0x30
	.byte W08
	.byte W24
	.byte W24
	.byte W18
	.byte PAN, 52
	.byte VOL, 127
	.byte BEND, 112
	.byte N40, 56, 68
	.byte W02
	.byte BEND, 108
	.byte W02
	.byte 0x68
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x5D
	.byte W02
	.byte 0x59
	.byte W02
	.byte 0x55
	.byte W01
	.byte VOL, 120
	.byte W01
	.byte BEND, 81
	.byte W02
	.byte 0x4D
	.byte W01
	.byte VOL, 109
	.byte W01
	.byte BEND, 74
	.byte W02
	.byte 0x46
	.byte W01
	.byte VOL, 98
	.byte W01
	.byte BEND, 66
	.byte W02
	.byte 0x3E
	.byte W01
	.byte VOL, 87
	.byte W01
	.byte BEND, 58
	.byte W02
	.byte 0x37
	.byte W01
	.byte VOL, 76
	.byte W01
	.byte BEND, 51
	.byte W02
	.byte 0x2F
	.byte W01
	.byte VOL, 65
	.byte W01
	.byte BEND, 43
	.byte W02
	.byte 0x28
	.byte W01
	.byte VOL, 60
	.byte W15
	.byte W24
	.byte W24
	.byte W12
	.byte PAN, 44
	.byte VOL, 127
	.byte BEND, 48
	.byte N48, 55, 64
	.byte W02
	.byte BEND, 74
	.byte W02
	.byte 0x65
	.byte W03
	.byte 0x7F
	.byte W05
	.byte 0x7F
	.byte W02
	.byte 0x79
	.byte W02
	.byte 0x73
	.byte W02
	.byte 0x6D
	.byte W02
	.byte 0x67
	.byte W02
	.byte 0x61
	.byte W02
	.byte VOL, 120
	.byte BEND, 92
	.byte W02
	.byte 0x56
	.byte W02
	.byte 0x50
	.byte W02
	.byte VOL, 110
	.byte BEND, 74
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x3E
	.byte W02
	.byte VOL, 100
	.byte BEND, 56
	.byte W02
	.byte 0x32
	.byte W02
	.byte 0x2C
	.byte W02
	.byte VOL, 90
	.byte BEND, 38
	.byte W02
	.byte 0x20
	.byte W16
	.byte W24
	.byte W24
	.byte W12
	.byte PAN, 80
	.byte VOL, 127
	.byte BEND, 127
	.byte N40, 56, 72
	.byte W02
	.byte BEND, 122
	.byte W02
	.byte 0x75
	.byte W02
	.byte 0x6F
	.byte W02
	.byte 0x6A
	.byte W02
	.byte 0x65
	.byte W02
	.byte VOL, 120
	.byte BEND, 96
	.byte W02
	.byte 0x5A
	.byte W02
	.byte VOL, 110
	.byte BEND, 85
	.byte W02
	.byte 0x50
	.byte W02
	.byte VOL, 100
	.byte BEND, 74
	.byte W02
	.byte 0x45
	.byte W02
	.byte VOL, 90
	.byte BEND, 64
	.byte W02
	.byte 0x3A
	.byte W02
	.byte VOL, 80
	.byte BEND, 53
	.byte W02
	.byte 0x30
	.byte W02
	.byte VOL, 70
	.byte BEND, 42
	.byte W02
	.byte 0x25
	.byte W02
	.byte VOL, 60
	.byte BEND, 32
	.byte W20
	.byte GOTO
	.word label_song_145_track1_0
	.byte W04
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_145_tone:
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x00 @ index=22
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004B5DA4, 0xFF, 0x00, 0xFF, 0x00 @ index=96


.align 2
.global song_146
song_146:
@ ****************************** header ******************************
	.byte 0x04                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_146_tone             @ tone
	.word song_146_track0           @ tracks 0x0858CA5C
	.word song_146_track1           @ tracks 0x0858CB5F
	.word song_146_track2           @ tracks 0x0858CC67
	.word song_146_track3           @ tracks 0x0858CCED

@ ****************************** tracks ******************************
.align 2
song_146_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 8
	.byte VOL, 44
	.byte BEND, 32
	.byte TIE, 57, 127
	.byte W04
	.byte BEND, 35
	.byte W04
	.byte 0x27
	.byte W04
	.byte 0x2A
	.byte W04
	.byte 0x2E
	.byte W04
	.byte 0x31
	.byte W04
	.byte 0x35
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x3C
	.byte W04
	.byte 0x3C
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x34
	.byte W04
	.byte 0x31
	.byte W04
	.byte 0x2D
	.byte W04
	.byte 0x2A
	.byte W04
	.byte 0x26
	.byte W04
	.byte 0x23
	.byte W04
	.byte 0x1F
	.byte W04
	.byte 0x1C
	.byte W04
	.byte 0x1F
	.byte W04
	.byte 0x23
	.byte W04
	.byte 0x26
	.byte W04
	.byte 0x2A
	.byte W04
	.byte 0x2D
	.byte W04
	.byte 0x31
	.byte W04
	.byte 0x34
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x38
	.byte W04
	.byte 0x34
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x2D
	.byte W04
	.byte 0x29
	.byte W04
	.byte 0x26
	.byte W04
	.byte 0x22
	.byte W04
	.byte 0x1F
	.byte W04
	.byte 0x1B
	.byte W04
	.byte 0x18
	.byte W04
	.byte 0x1B
	.byte W04
	.byte 0x1F
	.byte W04
	.byte 0x22
	.byte W04
	.byte 0x26
	.byte W04
	.byte 0x29
	.byte W04
	.byte 0x2D
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x34
	.byte W04
	.byte 0x34
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x2C
	.byte W04
	.byte 0x29
	.byte W04
	.byte 0x25
	.byte W04
	.byte 0x22
	.byte W04
	.byte 0x1E
	.byte W04
	.byte 0x1B
	.byte W04
	.byte 0x17
	.byte W04
	.byte 0x14
	.byte W04
	.byte 0x17
	.byte W04
	.byte 0x1B
	.byte W04
	.byte 0x1E
	.byte W04
	.byte 0x22
	.byte W04
	.byte 0x25
	.byte W04
	.byte 0x29
	.byte W04
	.byte 0x2C
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x30
	.byte W04
	.byte 0x2C
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x25
	.byte W04
	.byte 0x21
	.byte W04
	.byte 0x1E
	.byte W04
	.byte 0x1A
	.byte W04
	.byte 0x17
	.byte W04
	.byte 0x13
	.byte W04
	.byte VOL, 40
	.byte BEND, 16
	.byte W04
	.byte 0x13
	.byte W04
	.byte 0x17
	.byte W04
	.byte 0x1A
	.byte W04
	.byte 0x1E
	.byte W04
	.byte 0x21
	.byte W04
	.byte VOL, 36
	.byte BEND, 37
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x2C
	.byte W04
	.byte 0x2C
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x24
	.byte W04
	.byte VOL, 28
	.byte BEND, 33
	.byte W04
	.byte 0x1D
	.byte W04
	.byte 0x1A
	.byte W04
	.byte 0x16
	.byte W04
	.byte 0x13
	.byte W04
	.byte 0x0F
	.byte W04
	.byte VOL, 24
	.byte BEND, 12
	.byte W04
	.byte 0x0F
	.byte W04
	.byte 0x13
	.byte W04
	.byte 0x16
	.byte W04
	.byte 0x1A
	.byte W04
	.byte 0x1D
	.byte W04
	.byte VOL, 20
	.byte BEND, 33
	.byte W04
	.byte 0x24
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x28
	.byte W04
	.byte 0x24
	.byte W04
	.byte 0x20
	.byte W04
	.byte VOL, 16
	.byte BEND, 29
	.byte W04
	.byte 0x19
	.byte W04
	.byte 0x16
	.byte W04
	.byte 0x12
	.byte W04
	.byte 0x0F
	.byte W04
	.byte 0x0B
	.byte W04
	.byte VOL, 8
	.byte BEND, 6
	.byte W04
	.byte 0x00
	.byte W04
	.byte EOT
	.byte W16
	.byte FINE

.align 2
song_146_track1:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte VOL, 127
	.byte BENDR, 5
	.byte MODT, 2
	.byte LFOS, 12
	.byte LFODL, 16
	.byte MOD, 32
	.byte W02
	.byte PAN, 56
	.byte BEND, 96
	.byte N48, 61, 127
	.byte W02
	.byte BEND, 95
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x5E
	.byte W02
	.byte 0x5E
	.byte W02
	.byte 0x5C
	.byte W02
	.byte 0x5B
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x56
	.byte W02
	.byte 0x53
	.byte W02
	.byte 0x51
	.byte W02
	.byte VOL, 120
	.byte BEND, 78
	.byte W02
	.byte 0x4B
	.byte W02
	.byte VOL, 112
	.byte BEND, 72
	.byte W02
	.byte 0x44
	.byte W02
	.byte VOL, 104
	.byte BEND, 64
	.byte W02
	.byte 0x3D
	.byte W02
	.byte VOL, 98
	.byte BEND, 56
	.byte W02
	.byte 0x34
	.byte W02
	.byte VOL, 88
	.byte BEND, 47
	.byte W02
	.byte 0x2A
	.byte W01
	.byte VOL, 80
	.byte W01
	.byte BEND, 37
	.byte W02
	.byte VOL, 72
	.byte BEND, 32
	.byte W24
	.byte W14
	.byte PAN, 78
	.byte VOL, 127
	.byte BEND, 104
	.byte N48, 61, 96
	.byte W02
	.byte BEND, 98
	.byte W02
	.byte 0x5D
	.byte W02
	.byte 0x58
	.byte W02
	.byte 0x53
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x47
	.byte W02
	.byte 0x43
	.byte W02
	.byte 0x3F
	.byte W02
	.byte 0x3C
	.byte W02
	.byte 0x39
	.byte W02
	.byte VOL, 120
	.byte BEND, 54
	.byte W02
	.byte 0x34
	.byte W02
	.byte VOL, 112
	.byte BEND, 49
	.byte W02
	.byte 0x2F
	.byte W02
	.byte VOL, 104
	.byte BEND, 45
	.byte W02
	.byte 0x2C
	.byte W02
	.byte VOL, 98
	.byte BEND, 43
	.byte W02
	.byte 0x29
	.byte W02
	.byte VOL, 88
	.byte BEND, 41
	.byte W02
	.byte 0x28
	.byte W01
	.byte VOL, 80
	.byte W01
	.byte BEND, 40
	.byte W02
	.byte VOL, 72
	.byte BEND, 40
	.byte W12
	.byte W24
	.byte PAN, 44
	.byte VOL, 127
	.byte BEND, 104
	.byte N48, 61, 64
	.byte W02
	.byte BEND, 103
	.byte W02
	.byte 0x67
	.byte W02
	.byte 0x66
	.byte W02
	.byte 0x65
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x62
	.byte W02
	.byte 0x60
	.byte W02
	.byte 0x5E
	.byte W02
	.byte 0x5B
	.byte W02
	.byte VOL, 120
	.byte BEND, 88
	.byte W02
	.byte 0x55
	.byte W02
	.byte VOL, 112
	.byte BEND, 82
	.byte W02
	.byte 0x4E
	.byte W02
	.byte VOL, 104
	.byte BEND, 74
	.byte W02
	.byte 0x45
	.byte W02
	.byte VOL, 98
	.byte BEND, 65
	.byte W02
	.byte 0x3C
	.byte W02
	.byte VOL, 88
	.byte BEND, 54
	.byte W02
	.byte 0x31
	.byte W02
	.byte VOL, 80
	.byte BEND, 43
	.byte W02
	.byte 0x25
	.byte W02
	.byte VOL, 72
	.byte BEND, 30
	.byte W02
	.byte 0x18
	.byte W02
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_146_track2:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte BENDR, 1
	.byte VOL, 100
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W12
	.byte PAN, 64
	.byte BEND, 32
	.byte TIE, 60, 127
	.byte W08
	.byte BEND, 35
	.byte W04
	.byte W04
	.byte 0x27
	.byte W08
	.byte PAN, 64
	.byte BEND, 43
	.byte W06
	.byte PAN, 60
	.byte W02
	.byte BEND, 47
	.byte W04
	.byte PAN, 57
	.byte W04
	.byte BEND, 50
	.byte W02
	.byte PAN, 53
	.byte W06
	.byte 0x32
	.byte BEND, 54
	.byte W06
	.byte PAN, 47
	.byte W02
	.byte BEND, 58
	.byte W04
	.byte PAN, 43
	.byte W04
	.byte BEND, 62
	.byte W02
	.byte PAN, 40
	.byte W06
	.byte 0x25
	.byte BEND, 65
	.byte W06
	.byte PAN, 33
	.byte W02
	.byte BEND, 69
	.byte W04
	.byte PAN, 30
	.byte W04
	.byte BEND, 73
	.byte W02
	.byte PAN, 27
	.byte W06
	.byte 0x17
	.byte BEND, 77
	.byte W06
	.byte PAN, 20
	.byte W02
	.byte BEND, 80
	.byte W04
	.byte PAN, 16
	.byte W04
	.byte BEND, 84
	.byte W02
	.byte PAN, 13
	.byte W06
	.byte 0x0A
	.byte BEND, 88
	.byte W06
	.byte PAN, 6
	.byte W02
	.byte BEND, 92
	.byte W04
	.byte PAN, 3
	.byte W04
	.byte BEND, 95
	.byte W02
	.byte PAN, 0
	.byte W06
	.byte EOT
	.byte W12
	.byte W24
	.byte W24
	.byte FINE

.align 2
song_146_track3:
	.byte KEYSH, 0
	.byte VOICE, 1
	.byte BENDR, 1
	.byte VOL, 100
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W12
	.byte PAN, 64
	.byte BEND, 96
	.byte TIE, 60, 127
	.byte W08
	.byte BEND, 92
	.byte W04
	.byte W04
	.byte 0x58
	.byte W08
	.byte PAN, 64
	.byte BEND, 84
	.byte W06
	.byte PAN, 67
	.byte W02
	.byte BEND, 80
	.byte W04
	.byte PAN, 70
	.byte W04
	.byte BEND, 77
	.byte W02
	.byte PAN, 73
	.byte W06
	.byte 0x4D
	.byte BEND, 73
	.byte W06
	.byte PAN, 80
	.byte W02
	.byte BEND, 69
	.byte W04
	.byte PAN, 83
	.byte W04
	.byte BEND, 65
	.byte W02
	.byte PAN, 87
	.byte W06
	.byte 0x5A
	.byte BEND, 62
	.byte W06
	.byte PAN, 93
	.byte W02
	.byte BEND, 58
	.byte W04
	.byte PAN, 97
	.byte W04
	.byte BEND, 54
	.byte W02
	.byte PAN, 100
	.byte W06
	.byte 0x67
	.byte BEND, 50
	.byte W06
	.byte PAN, 107
	.byte W02
	.byte BEND, 47
	.byte W04
	.byte PAN, 110
	.byte W04
	.byte BEND, 43
	.byte W02
	.byte PAN, 113
	.byte W06
	.byte 0x74
	.byte BEND, 39
	.byte W06
	.byte PAN, 120
	.byte W02
	.byte BEND, 35
	.byte W04
	.byte PAN, 123
	.byte W04
	.byte BEND, 32
	.byte W02
	.byte PAN, 127
	.byte W06
	.byte EOT
	.byte W12
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_146_tone:
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x00 @ index=22
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x004B5DA4, 0xFF, 0x00, 0xFF, 0x00 @ index=96


.align 2
.global song_147
song_147:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_147_tone             @ tone
	.word song_147_track0           @ tracks 0x0858CD8C

@ ****************************** tracks ******************************
.align 2
song_147_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 1
	.byte BEND, 64
	.byte N22, 60, 127
	.byte W02
	.byte BEND, 57
	.byte W02
	.byte 0x33
	.byte W02
	.byte 0x2C
	.byte W02
	.byte 0x26
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x19
	.byte W02
	.byte 0x13
	.byte W02
	.byte 0x0C
	.byte W02
	.byte 0x06
	.byte W02
	.byte 0x00
	.byte W04
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_147_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045006C, 0xFF, 0x00, 0xFF, 0x00 @ index=20


.align 2
.global song_148
song_148:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_149
song_149:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_14A
song_14A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_14A_tone             @ tone
	.word song_14A_track0           @ tracks 0x0858CDC0

@ ****************************** tracks ******************************
.align 2
song_14A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_14A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005259D0, 0xFF, 0x00, 0xFF, 0x00 @ index=0


.align 2
.global song_14B
song_14B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_14B_tone             @ tone
	.word song_14B_track0           @ tracks 0x0858CDDC

@ ****************************** tracks ******************************
.align 2
song_14B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_14B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005259D0, 0xFF, 0x00, 0xFF, 0x00 @ index=0


.align 2
.global song_14C
song_14C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_14C_tone             @ tone
	.word song_14C_track0           @ tracks 0x0858CDF8

@ ****************************** tracks ******************************
.align 2
song_14C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_14C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005262D8, 0xFF, 0x00, 0xFF, 0x00 @ index=1


.align 2
.global song_14D
song_14D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_14D_tone             @ tone
	.word song_14D_track0           @ tracks 0x0858CE14

@ ****************************** tracks ******************************
.align 2
song_14D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_14D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005262D8, 0xFF, 0x00, 0xFF, 0x00 @ index=1


.align 2
.global song_14E
song_14E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_14E_tone             @ tone
	.word song_14E_track0           @ tracks 0x0858CE30

@ ****************************** tracks ******************************
.align 2
song_14E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_14E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005267BC, 0xFF, 0x00, 0xFF, 0x00 @ index=2


.align 2
.global song_14F
song_14F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_14F_tone             @ tone
	.word song_14F_track0           @ tracks 0x0858CE4C

@ ****************************** tracks ******************************
.align 2
song_14F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_14F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005267BC, 0xFF, 0x00, 0xFF, 0x00 @ index=2


.align 2
.global song_150
song_150:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_150_tone             @ tone
	.word song_150_track0           @ tracks 0x0858CE68

@ ****************************** tracks ******************************
.align 2
song_150_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_150_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00527244, 0xFF, 0x00, 0xFF, 0x00 @ index=3


.align 2
.global song_151
song_151:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_151_tone             @ tone
	.word song_151_track0           @ tracks 0x0858CE84

@ ****************************** tracks ******************************
.align 2
song_151_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_151_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00527244, 0xFF, 0x00, 0xFF, 0x00 @ index=3


.align 2
.global song_152
song_152:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_153
song_153:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_154
song_154:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_154_tone             @ tone
	.word song_154_track0           @ tracks 0x0858CEA0

@ ****************************** tracks ******************************
.align 2
song_154_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_154_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00528398, 0xFF, 0x00, 0xFF, 0x00 @ index=4


.align 2
.global song_155
song_155:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_155_tone             @ tone
	.word song_155_track0           @ tracks 0x0858CEBC

@ ****************************** tracks ******************************
.align 2
song_155_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_155_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00528398, 0xFF, 0x00, 0xFF, 0x00 @ index=4


.align 2
.global song_156
song_156:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_156_tone             @ tone
	.word song_156_track0           @ tracks 0x0858CED8

@ ****************************** tracks ******************************
.align 2
song_156_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_156_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052896C, 0xFF, 0x00, 0xFF, 0x00 @ index=5


.align 2
.global song_157
song_157:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_157_tone             @ tone
	.word song_157_track0           @ tracks 0x0858CEF4

@ ****************************** tracks ******************************
.align 2
song_157_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_157_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052896C, 0xFF, 0x00, 0xFF, 0x00 @ index=5


.align 2
.global song_158
song_158:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_158_tone             @ tone
	.word song_158_track0           @ tracks 0x0858CF10

@ ****************************** tracks ******************************
.align 2
song_158_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_158_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00528EEC, 0xFF, 0x00, 0xFF, 0x00 @ index=6


.align 2
.global song_159
song_159:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_159_tone             @ tone
	.word song_159_track0           @ tracks 0x0858CF2C

@ ****************************** tracks ******************************
.align 2
song_159_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_159_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00528EEC, 0xFF, 0x00, 0xFF, 0x00 @ index=6


.align 2
.global song_15A
song_15A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_15A_tone             @ tone
	.word song_15A_track0           @ tracks 0x0858CF48

@ ****************************** tracks ******************************
.align 2
song_15A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_15A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00529974, 0xFF, 0x00, 0xFF, 0x00 @ index=7


.align 2
.global song_15B
song_15B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_15B_tone             @ tone
	.word song_15B_track0           @ tracks 0x0858CF64

@ ****************************** tracks ******************************
.align 2
song_15B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_15B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00529974, 0xFF, 0x00, 0xFF, 0x00 @ index=7


.align 2
.global song_15C
song_15C:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_15D
song_15D:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_15E
song_15E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_15E_tone             @ tone
	.word song_15E_track0           @ tracks 0x0858CF80

@ ****************************** tracks ******************************
.align 2
song_15E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_15E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052A938, 0xFF, 0x00, 0xFF, 0x00 @ index=8


.align 2
.global song_15F
song_15F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_15F_tone             @ tone
	.word song_15F_track0           @ tracks 0x0858CF9C

@ ****************************** tracks ******************************
.align 2
song_15F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_15F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052A938, 0xFF, 0x00, 0xFF, 0x00 @ index=8


.align 2
.global song_160
song_160:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_160_tone             @ tone
	.word song_160_track0           @ tracks 0x0858CFB8

@ ****************************** tracks ******************************
.align 2
song_160_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_160_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052AF50, 0xFF, 0x00, 0xFF, 0x00 @ index=9


.align 2
.global song_161
song_161:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_161_tone             @ tone
	.word song_161_track0           @ tracks 0x0858CFD4

@ ****************************** tracks ******************************
.align 2
song_161_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_161_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052AF50, 0xFF, 0x00, 0xFF, 0x00 @ index=9


.align 2
.global song_162
song_162:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_162_tone             @ tone
	.word song_162_track0           @ tracks 0x0858CFF0

@ ****************************** tracks ******************************
.align 2
song_162_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_162_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052B428, 0xFF, 0x00, 0xFF, 0x00 @ index=10


.align 2
.global song_163
song_163:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_163_tone             @ tone
	.word song_163_track0           @ tracks 0x0858D00C

@ ****************************** tracks ******************************
.align 2
song_163_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_163_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052B428, 0xFF, 0x00, 0xFF, 0x00 @ index=10


.align 2
.global song_164
song_164:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_164_tone             @ tone
	.word song_164_track0           @ tracks 0x0858D028

@ ****************************** tracks ******************************
.align 2
song_164_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_164_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052BE84, 0xFF, 0x00, 0xFF, 0x00 @ index=11


.align 2
.global song_165
song_165:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_165_tone             @ tone
	.word song_165_track0           @ tracks 0x0858D044

@ ****************************** tracks ******************************
.align 2
song_165_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_165_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052BE84, 0xFF, 0x00, 0xFF, 0x00 @ index=11


.align 2
.global song_166
song_166:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_167
song_167:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_168
song_168:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_168_tone             @ tone
	.word song_168_track0           @ tracks 0x0858D060

@ ****************************** tracks ******************************
.align 2
song_168_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_168_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052CE48, 0xFF, 0x00, 0xFF, 0x00 @ index=12


.align 2
.global song_169
song_169:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_169_tone             @ tone
	.word song_169_track0           @ tracks 0x0858D07C

@ ****************************** tracks ******************************
.align 2
song_169_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_169_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052CE48, 0xFF, 0x00, 0xFF, 0x00 @ index=12


.align 2
.global song_16A
song_16A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_16A_tone             @ tone
	.word song_16A_track0           @ tracks 0x0858D098

@ ****************************** tracks ******************************
.align 2
song_16A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_16A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052D5D0, 0xFF, 0x00, 0xFF, 0x00 @ index=13


.align 2
.global song_16B
song_16B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_16B_tone             @ tone
	.word song_16B_track0           @ tracks 0x0858D0B4

@ ****************************** tracks ******************************
.align 2
song_16B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_16B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052D5D0, 0xFF, 0x00, 0xFF, 0x00 @ index=13


.align 2
.global song_16C
song_16C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_16C_tone             @ tone
	.word song_16C_track0           @ tracks 0x0858D0D0

@ ****************************** tracks ******************************
.align 2
song_16C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_16C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052DCD0, 0xFF, 0x00, 0xFF, 0x00 @ index=14


.align 2
.global song_16D
song_16D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_16D_tone             @ tone
	.word song_16D_track0           @ tracks 0x0858D0EC

@ ****************************** tracks ******************************
.align 2
song_16D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_16D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052DCD0, 0xFF, 0x00, 0xFF, 0x00 @ index=14


.align 2
.global song_16E
song_16E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_16E_tone             @ tone
	.word song_16E_track0           @ tracks 0x0858D108

@ ****************************** tracks ******************************
.align 2
song_16E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_16E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052E730, 0xFF, 0x00, 0xFF, 0x00 @ index=15


.align 2
.global song_16F
song_16F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_16F_tone             @ tone
	.word song_16F_track0           @ tracks 0x0858D124

@ ****************************** tracks ******************************
.align 2
song_16F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_16F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052E730, 0xFF, 0x00, 0xFF, 0x00 @ index=15


.align 2
.global song_170
song_170:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_171
song_171:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_172
song_172:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_172_tone             @ tone
	.word song_172_track0           @ tracks 0x0858D140

@ ****************************** tracks ******************************
.align 2
song_172_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_172_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052F6F4, 0xFF, 0x00, 0xFF, 0x00 @ index=16


.align 2
.global song_173
song_173:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_173_tone             @ tone
	.word song_173_track0           @ tracks 0x0858D15C

@ ****************************** tracks ******************************
.align 2
song_173_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_173_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052F6F4, 0xFF, 0x00, 0xFF, 0x00 @ index=16


.align 2
.global song_174
song_174:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_174_tone             @ tone
	.word song_174_track0           @ tracks 0x0858D178

@ ****************************** tracks ******************************
.align 2
song_174_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_174_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052FD24, 0xFF, 0x00, 0xFF, 0x00 @ index=17


.align 2
.global song_175
song_175:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_175_tone             @ tone
	.word song_175_track0           @ tracks 0x0858D194

@ ****************************** tracks ******************************
.align 2
song_175_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_175_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0052FD24, 0xFF, 0x00, 0xFF, 0x00 @ index=17


.align 2
.global song_176
song_176:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_176_tone             @ tone
	.word song_176_track0           @ tracks 0x0858D1B0

@ ****************************** tracks ******************************
.align 2
song_176_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_176_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00530270, 0xFF, 0x00, 0xFF, 0x00 @ index=18


.align 2
.global song_177
song_177:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_177_tone             @ tone
	.word song_177_track0           @ tracks 0x0858D1CC

@ ****************************** tracks ******************************
.align 2
song_177_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_177_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00530270, 0xFF, 0x00, 0xFF, 0x00 @ index=18


.align 2
.global song_178
song_178:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_178_tone             @ tone
	.word song_178_track0           @ tracks 0x0858D1E8

@ ****************************** tracks ******************************
.align 2
song_178_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_178_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00530AE8, 0xFF, 0x00, 0xFF, 0x00 @ index=19


.align 2
.global song_179
song_179:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_179_tone             @ tone
	.word song_179_track0           @ tracks 0x0858D204

@ ****************************** tracks ******************************
.align 2
song_179_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_179_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00530AE8, 0xFF, 0x00, 0xFF, 0x00 @ index=19


.align 2
.global song_17A
song_17A:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_17B
song_17B:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_17C
song_17C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_17C_tone             @ tone
	.word song_17C_track0           @ tracks 0x0858D220

@ ****************************** tracks ******************************
.align 2
song_17C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_17C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00531810, 0xFF, 0x00, 0xFF, 0x00 @ index=20


.align 2
.global song_17D
song_17D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_17D_tone             @ tone
	.word song_17D_track0           @ tracks 0x0858D23C

@ ****************************** tracks ******************************
.align 2
song_17D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_17D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00531810, 0xFF, 0x00, 0xFF, 0x00 @ index=20


.align 2
.global song_17E
song_17E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_17E_tone             @ tone
	.word song_17E_track0           @ tracks 0x0858D258

@ ****************************** tracks ******************************
.align 2
song_17E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_17E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00531C50, 0xFF, 0x00, 0xFF, 0x00 @ index=21


.align 2
.global song_17F
song_17F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_17F_tone             @ tone
	.word song_17F_track0           @ tracks 0x0858D274

@ ****************************** tracks ******************************
.align 2
song_17F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_17F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00531C50, 0xFF, 0x00, 0xFF, 0x00 @ index=21


.align 2
.global song_180
song_180:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_180_tone             @ tone
	.word song_180_track0           @ tracks 0x0858D290

@ ****************************** tracks ******************************
.align 2
song_180_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_180_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053211C, 0xFF, 0x00, 0xFF, 0x00 @ index=22


.align 2
.global song_181
song_181:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_181_tone             @ tone
	.word song_181_track0           @ tracks 0x0858D2AC

@ ****************************** tracks ******************************
.align 2
song_181_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_181_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053211C, 0xFF, 0x00, 0xFF, 0x00 @ index=22


.align 2
.global song_182
song_182:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_182_tone             @ tone
	.word song_182_track0           @ tracks 0x0858D2C8

@ ****************************** tracks ******************************
.align 2
song_182_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_182_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00532D10, 0xFF, 0x00, 0xFF, 0x00 @ index=23


.align 2
.global song_183
song_183:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_183_tone             @ tone
	.word song_183_track0           @ tracks 0x0858D2E4

@ ****************************** tracks ******************************
.align 2
song_183_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_183_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00532D10, 0xFF, 0x00, 0xFF, 0x00 @ index=23


.align 2
.global song_184
song_184:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_185
song_185:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_186
song_186:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_186_tone             @ tone
	.word song_186_track0           @ tracks 0x0858D300

@ ****************************** tracks ******************************
.align 2
song_186_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 96
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_186_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00533674, 0xFF, 0x00, 0xFF, 0x00 @ index=24


.align 2
.global song_187
song_187:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_187_tone             @ tone
	.word song_187_track0           @ tracks 0x0858D31C

@ ****************************** tracks ******************************
.align 2
song_187_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 96
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_187_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00533674, 0xFF, 0x00, 0xFF, 0x00 @ index=24


.align 2
.global song_188
song_188:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_188_tone             @ tone
	.word song_188_track0           @ tracks 0x0858D338

@ ****************************** tracks ******************************
.align 2
song_188_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 80
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_188_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00533B0C, 0xFF, 0x00, 0xFF, 0x00 @ index=25


.align 2
.global song_189
song_189:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_189_tone             @ tone
	.word song_189_track0           @ tracks 0x0858D354

@ ****************************** tracks ******************************
.align 2
song_189_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 80
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_189_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00533B0C, 0xFF, 0x00, 0xFF, 0x00 @ index=25


.align 2
.global song_18A
song_18A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_18A_tone             @ tone
	.word song_18A_track0           @ tracks 0x0858D370

@ ****************************** tracks ******************************
.align 2
song_18A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_18A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00533F98, 0xFF, 0x00, 0xFF, 0x00 @ index=26


.align 2
.global song_18B
song_18B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_18B_tone             @ tone
	.word song_18B_track0           @ tracks 0x0858D38C

@ ****************************** tracks ******************************
.align 2
song_18B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_18B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00533F98, 0xFF, 0x00, 0xFF, 0x00 @ index=26


.align 2
.global song_18C
song_18C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_18C_tone             @ tone
	.word song_18C_track0           @ tracks 0x0858D3A8

@ ****************************** tracks ******************************
.align 2
song_18C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_18C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053499C, 0xFF, 0x00, 0xFF, 0x00 @ index=27


.align 2
.global song_18D
song_18D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_18D_tone             @ tone
	.word song_18D_track0           @ tracks 0x0858D3C4

@ ****************************** tracks ******************************
.align 2
song_18D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_18D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053499C, 0xFF, 0x00, 0xFF, 0x00 @ index=27


.align 2
.global song_18E
song_18E:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_18F
song_18F:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_190
song_190:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_190_tone             @ tone
	.word song_190_track0           @ tracks 0x0858D3E0

@ ****************************** tracks ******************************
.align 2
song_190_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N15, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_190_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00539B54, 0xFF, 0x00, 0xFF, 0x00 @ index=0


.align 2
.global song_191
song_191:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_191_tone             @ tone
	.word song_191_track0           @ tracks 0x0858D3FC

@ ****************************** tracks ******************************
.align 2
song_191_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N15, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_191_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00539B54, 0xFF, 0x00, 0xFF, 0x00 @ index=0


.align 2
.global song_192
song_192:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_192_tone             @ tone
	.word song_192_track0           @ tracks 0x0858D418

@ ****************************** tracks ******************************
.align 2
song_192_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N14, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_192_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053A74C, 0xFF, 0x00, 0xFF, 0x00 @ index=1


.align 2
.global song_193
song_193:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_193_tone             @ tone
	.word song_193_track0           @ tracks 0x0858D434

@ ****************************** tracks ******************************
.align 2
song_193_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N14, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_193_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053A74C, 0xFF, 0x00, 0xFF, 0x00 @ index=1


.align 2
.global song_194
song_194:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_194_tone             @ tone
	.word song_194_track0           @ tracks 0x0858D450

@ ****************************** tracks ******************************
.align 2
song_194_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N17, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_194_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053B208, 0xFF, 0x00, 0xFF, 0x00 @ index=2


.align 2
.global song_195
song_195:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_195_tone             @ tone
	.word song_195_track0           @ tracks 0x0858D46C

@ ****************************** tracks ******************************
.align 2
song_195_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N17, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_195_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053B208, 0xFF, 0x00, 0xFF, 0x00 @ index=2


.align 2
.global song_196
song_196:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_197
song_197:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_198
song_198:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_199
song_199:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_19A
song_19A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_19A_tone             @ tone
	.word song_19A_track0           @ tracks 0x0858D488

@ ****************************** tracks ******************************
.align 2
song_19A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_19A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053BB9C, 0xFF, 0x00, 0xFF, 0x00 @ index=3


.align 2
.global song_19B
song_19B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_19B_tone             @ tone
	.word song_19B_track0           @ tracks 0x0858D4A4

@ ****************************** tracks ******************************
.align 2
song_19B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_19B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053BB9C, 0xFF, 0x00, 0xFF, 0x00 @ index=3


.align 2
.global song_19C
song_19C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_19C_tone             @ tone
	.word song_19C_track0           @ tracks 0x0858D4C0

@ ****************************** tracks ******************************
.align 2
song_19C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_19C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053C860, 0xFF, 0x00, 0xFF, 0x00 @ index=4


.align 2
.global song_19D
song_19D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_19D_tone             @ tone
	.word song_19D_track0           @ tracks 0x0858D4DC

@ ****************************** tracks ******************************
.align 2
song_19D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_19D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053C860, 0xFF, 0x00, 0xFF, 0x00 @ index=4


.align 2
.global song_19E
song_19E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_19E_tone             @ tone
	.word song_19E_track0           @ tracks 0x0858D4F8

@ ****************************** tracks ******************************
.align 2
song_19E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_19E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053D498, 0xFF, 0x00, 0xFF, 0x00 @ index=5


.align 2
.global song_19F
song_19F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_19F_tone             @ tone
	.word song_19F_track0           @ tracks 0x0858D514

@ ****************************** tracks ******************************
.align 2
song_19F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_19F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053D498, 0xFF, 0x00, 0xFF, 0x00 @ index=5


.align 2
.global song_1A0
song_1A0:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1A1
song_1A1:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1A2
song_1A2:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1A3
song_1A3:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1A4
song_1A4:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1A4_tone             @ tone
	.word song_1A4_track0           @ tracks 0x0858D530

@ ****************************** tracks ******************************
.align 2
song_1A4_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1A4_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053DA7C, 0xFF, 0x00, 0xFF, 0x00 @ index=6


.align 2
.global song_1A5
song_1A5:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1A5_tone             @ tone
	.word song_1A5_track0           @ tracks 0x0858D54C

@ ****************************** tracks ******************************
.align 2
song_1A5_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1A5_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053DA7C, 0xFF, 0x00, 0xFF, 0x00 @ index=6


.align 2
.global song_1A6
song_1A6:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1A6_tone             @ tone
	.word song_1A6_track0           @ tracks 0x0858D568

@ ****************************** tracks ******************************
.align 2
song_1A6_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1A6_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053E864, 0xFF, 0x00, 0xFF, 0x00 @ index=7


.align 2
.global song_1A7
song_1A7:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1A7_tone             @ tone
	.word song_1A7_track0           @ tracks 0x0858D584

@ ****************************** tracks ******************************
.align 2
song_1A7_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1A7_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053E864, 0xFF, 0x00, 0xFF, 0x00 @ index=7


.align 2
.global song_1A8
song_1A8:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1A8_tone             @ tone
	.word song_1A8_track0           @ tracks 0x0858D5A0

@ ****************************** tracks ******************************
.align 2
song_1A8_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1A8_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053F628, 0xFF, 0x00, 0xFF, 0x00 @ index=8


.align 2
.global song_1A9
song_1A9:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1A9_tone             @ tone
	.word song_1A9_track0           @ tracks 0x0858D5BC

@ ****************************** tracks ******************************
.align 2
song_1A9_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1A9_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053F628, 0xFF, 0x00, 0xFF, 0x00 @ index=8


.align 2
.global song_1AA
song_1AA:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1AB
song_1AB:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1AC
song_1AC:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1AD
song_1AD:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1AE
song_1AE:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1AE_tone             @ tone
	.word song_1AE_track0           @ tracks 0x0858D5D8

@ ****************************** tracks ******************************
.align 2
song_1AE_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N16, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1AE_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005467F8, 0xFF, 0x00, 0xFF, 0x00 @ index=20


.align 2
.global song_1AF
song_1AF:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1AF_tone             @ tone
	.word song_1AF_track0           @ tracks 0x0858D5F4

@ ****************************** tracks ******************************
.align 2
song_1AF_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N16, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1AF_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005467F8, 0xFF, 0x00, 0xFF, 0x00 @ index=20


.align 2
.global song_1B0
song_1B0:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1B0_tone             @ tone
	.word song_1B0_track0           @ tracks 0x0858D610

@ ****************************** tracks ******************************
.align 2
song_1B0_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N14, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1B0_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005475BC, 0xFF, 0x00, 0xFF, 0x00 @ index=21


.align 2
.global song_1B1
song_1B1:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1B1_tone             @ tone
	.word song_1B1_track0           @ tracks 0x0858D62C

@ ****************************** tracks ******************************
.align 2
song_1B1_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N14, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1B1_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005475BC, 0xFF, 0x00, 0xFF, 0x00 @ index=21


.align 2
.global song_1B2
song_1B2:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1B2_tone             @ tone
	.word song_1B2_track0           @ tracks 0x0858D648

@ ****************************** tracks ******************************
.align 2
song_1B2_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N17, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1B2_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005480D4, 0xFF, 0x00, 0xFF, 0x00 @ index=22


.align 2
.global song_1B3
song_1B3:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1B3_tone             @ tone
	.word song_1B3_track0           @ tracks 0x0858D664

@ ****************************** tracks ******************************
.align 2
song_1B3_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N17, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1B3_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005480D4, 0xFF, 0x00, 0xFF, 0x00 @ index=22


.align 2
.global song_1B4
song_1B4:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1B5
song_1B5:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1B6
song_1B6:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1B7
song_1B7:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1B8
song_1B8:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1B8_tone             @ tone
	.word song_1B8_track0           @ tracks 0x0858D680

@ ****************************** tracks ******************************
.align 2
song_1B8_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1B8_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005488C0, 0xFF, 0x00, 0xFF, 0x00 @ index=23


.align 2
.global song_1B9
song_1B9:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1B9_tone             @ tone
	.word song_1B9_track0           @ tracks 0x0858D69C

@ ****************************** tracks ******************************
.align 2
song_1B9_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1B9_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005488C0, 0xFF, 0x00, 0xFF, 0x00 @ index=23


.align 2
.global song_1BA
song_1BA:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1BA_tone             @ tone
	.word song_1BA_track0           @ tracks 0x0858D6B8

@ ****************************** tracks ******************************
.align 2
song_1BA_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1BA_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00549564, 0xFF, 0x00, 0xFF, 0x00 @ index=24


.align 2
.global song_1BB
song_1BB:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1BB_tone             @ tone
	.word song_1BB_track0           @ tracks 0x0858D6D4

@ ****************************** tracks ******************************
.align 2
song_1BB_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1BB_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00549564, 0xFF, 0x00, 0xFF, 0x00 @ index=24


.align 2
.global song_1BC
song_1BC:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1BC_tone             @ tone
	.word song_1BC_track0           @ tracks 0x0858D6F0

@ ****************************** tracks ******************************
.align 2
song_1BC_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1BC_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054A1B0, 0xFF, 0x00, 0xFF, 0x00 @ index=25


.align 2
.global song_1BD
song_1BD:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1BD_tone             @ tone
	.word song_1BD_track0           @ tracks 0x0858D70C

@ ****************************** tracks ******************************
.align 2
song_1BD_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1BD_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054A1B0, 0xFF, 0x00, 0xFF, 0x00 @ index=25


.align 2
.global song_1BE
song_1BE:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1BF
song_1BF:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1C0
song_1C0:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1C1
song_1C1:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1C2
song_1C2:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1C2_tone             @ tone
	.word song_1C2_track0           @ tracks 0x0858D728

@ ****************************** tracks ******************************
.align 2
song_1C2_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1C2_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054A7D4, 0xFF, 0x00, 0xFF, 0x00 @ index=26


.align 2
.global song_1C3
song_1C3:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1C3_tone             @ tone
	.word song_1C3_track0           @ tracks 0x0858D744

@ ****************************** tracks ******************************
.align 2
song_1C3_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1C3_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054A7D4, 0xFF, 0x00, 0xFF, 0x00 @ index=26


.align 2
.global song_1C4
song_1C4:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1C4_tone             @ tone
	.word song_1C4_track0           @ tracks 0x0858D760

@ ****************************** tracks ******************************
.align 2
song_1C4_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1C4_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054B6FC, 0xFF, 0x00, 0xFF, 0x00 @ index=27


.align 2
.global song_1C5
song_1C5:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1C5_tone             @ tone
	.word song_1C5_track0           @ tracks 0x0858D77C

@ ****************************** tracks ******************************
.align 2
song_1C5_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1C5_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054B6FC, 0xFF, 0x00, 0xFF, 0x00 @ index=27


.align 2
.global song_1C6
song_1C6:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1C6_tone             @ tone
	.word song_1C6_track0           @ tracks 0x0858D798

@ ****************************** tracks ******************************
.align 2
song_1C6_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1C6_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054C3D8, 0xFF, 0x00, 0xFF, 0x00 @ index=28


.align 2
.global song_1C7
song_1C7:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1C7_tone             @ tone
	.word song_1C7_track0           @ tracks 0x0858D7B4

@ ****************************** tracks ******************************
.align 2
song_1C7_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1C7_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054C3D8, 0xFF, 0x00, 0xFF, 0x00 @ index=28


.align 2
.global song_1C8
song_1C8:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1C9
song_1C9:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1CA
song_1CA:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1CB
song_1CB:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1CC
song_1CC:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1CC_tone             @ tone
	.word song_1CC_track0           @ tracks 0x0858D7D0

@ ****************************** tracks ******************************
.align 2
song_1CC_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N17, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1CC_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053FF5C, 0xFF, 0x00, 0xFF, 0x00 @ index=10


.align 2
.global song_1CD
song_1CD:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1CD_tone             @ tone
	.word song_1CD_track0           @ tracks 0x0858D7EC

@ ****************************** tracks ******************************
.align 2
song_1CD_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N17, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1CD_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053FF5C, 0xFF, 0x00, 0xFF, 0x00 @ index=10


.align 2
.global song_1CE
song_1CE:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1CE_tone             @ tone
	.word song_1CE_track0           @ tracks 0x0858D808

@ ****************************** tracks ******************************
.align 2
song_1CE_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N14, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1CE_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00540D74, 0xFF, 0x00, 0xFF, 0x00 @ index=11


.align 2
.global song_1CF
song_1CF:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1CF_tone             @ tone
	.word song_1CF_track0           @ tracks 0x0858D824

@ ****************************** tracks ******************************
.align 2
song_1CF_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N14, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1CF_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00540D74, 0xFF, 0x00, 0xFF, 0x00 @ index=11


.align 2
.global song_1D0
song_1D0:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1D0_tone             @ tone
	.word song_1D0_track0           @ tracks 0x0858D840

@ ****************************** tracks ******************************
.align 2
song_1D0_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N16, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1D0_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00541830, 0xFF, 0x00, 0xFF, 0x00 @ index=12


.align 2
.global song_1D1
song_1D1:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1D1_tone             @ tone
	.word song_1D1_track0           @ tracks 0x0858D85C

@ ****************************** tracks ******************************
.align 2
song_1D1_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N16, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1D1_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00541830, 0xFF, 0x00, 0xFF, 0x00 @ index=12


.align 2
.global song_1D2
song_1D2:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1D3
song_1D3:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1D4
song_1D4:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1D5
song_1D5:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1D6
song_1D6:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1D6_tone             @ tone
	.word song_1D6_track0           @ tracks 0x0858D878

@ ****************************** tracks ******************************
.align 2
song_1D6_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1D6_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00542284, 0xFF, 0x00, 0xFF, 0x00 @ index=13


.align 2
.global song_1D7
song_1D7:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1D7_tone             @ tone
	.word song_1D7_track0           @ tracks 0x0858D894

@ ****************************** tracks ******************************
.align 2
song_1D7_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1D7_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00542284, 0xFF, 0x00, 0xFF, 0x00 @ index=13


.align 2
.global song_1D8
song_1D8:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1D8_tone             @ tone
	.word song_1D8_track0           @ tracks 0x0858D8B0

@ ****************************** tracks ******************************
.align 2
song_1D8_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1D8_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00542F18, 0xFF, 0x00, 0xFF, 0x00 @ index=14


.align 2
.global song_1D9
song_1D9:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1D9_tone             @ tone
	.word song_1D9_track0           @ tracks 0x0858D8CC

@ ****************************** tracks ******************************
.align 2
song_1D9_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1D9_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00542F18, 0xFF, 0x00, 0xFF, 0x00 @ index=14


.align 2
.global song_1DA
song_1DA:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1DA_tone             @ tone
	.word song_1DA_track0           @ tracks 0x0858D8E8

@ ****************************** tracks ******************************
.align 2
song_1DA_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1DA_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00543B50, 0xFF, 0x00, 0xFF, 0x00 @ index=15


.align 2
.global song_1DB
song_1DB:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1DB_tone             @ tone
	.word song_1DB_track0           @ tracks 0x0858D904

@ ****************************** tracks ******************************
.align 2
song_1DB_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1DB_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00543B50, 0xFF, 0x00, 0xFF, 0x00 @ index=15


.align 2
.global song_1DC
song_1DC:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1DD
song_1DD:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1DE
song_1DE:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1DF
song_1DF:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1E0
song_1E0:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1E0_tone             @ tone
	.word song_1E0_track0           @ tracks 0x0858D920

@ ****************************** tracks ******************************
.align 2
song_1E0_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1E0_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00544210, 0xFF, 0x00, 0xFF, 0x00 @ index=16


.align 2
.global song_1E1
song_1E1:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1E1_tone             @ tone
	.word song_1E1_track0           @ tracks 0x0858D93C

@ ****************************** tracks ******************************
.align 2
song_1E1_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1E1_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00544210, 0xFF, 0x00, 0xFF, 0x00 @ index=16


.align 2
.global song_1E2
song_1E2:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1E2_tone             @ tone
	.word song_1E2_track0           @ tracks 0x0858D958

@ ****************************** tracks ******************************
.align 2
song_1E2_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1E2_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005450E8, 0xFF, 0x00, 0xFF, 0x00 @ index=17


.align 2
.global song_1E3
song_1E3:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1E3_tone             @ tone
	.word song_1E3_track0           @ tracks 0x0858D974

@ ****************************** tracks ******************************
.align 2
song_1E3_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1E3_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005450E8, 0xFF, 0x00, 0xFF, 0x00 @ index=17


.align 2
.global song_1E4
song_1E4:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1E4_tone             @ tone
	.word song_1E4_track0           @ tracks 0x0858D990

@ ****************************** tracks ******************************
.align 2
song_1E4_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1E4_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00545E80, 0xFF, 0x00, 0xFF, 0x00 @ index=18


.align 2
.global song_1E5
song_1E5:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1E5_tone             @ tone
	.word song_1E5_track0           @ tracks 0x0858D9AC

@ ****************************** tracks ******************************
.align 2
song_1E5_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1E5_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00545E80, 0xFF, 0x00, 0xFF, 0x00 @ index=18


.align 2
.global song_1E6
song_1E6:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1E7
song_1E7:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1E8
song_1E8:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1E9
song_1E9:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1EA
song_1EA:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1EA_tone             @ tone
	.word song_1EA_track0           @ tracks 0x0858D9C8

@ ****************************** tracks ******************************
.align 2
song_1EA_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1EA_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054CD98, 0xFF, 0x00, 0xFF, 0x00 @ index=30


.align 2
.global song_1EB
song_1EB:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1EB_tone             @ tone
	.word song_1EB_track0           @ tracks 0x0858D9E4

@ ****************************** tracks ******************************
.align 2
song_1EB_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1EB_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054CD98, 0xFF, 0x00, 0xFF, 0x00 @ index=30


.align 2
.global song_1EC
song_1EC:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1EC_tone             @ tone
	.word song_1EC_track0           @ tracks 0x0858DA00

@ ****************************** tracks ******************************
.align 2
song_1EC_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1EC_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054DAC8, 0xFF, 0x00, 0xFF, 0x00 @ index=31


.align 2
.global song_1ED
song_1ED:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1ED_tone             @ tone
	.word song_1ED_track0           @ tracks 0x0858DA1C

@ ****************************** tracks ******************************
.align 2
song_1ED_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1ED_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054DAC8, 0xFF, 0x00, 0xFF, 0x00 @ index=31


.align 2
.global song_1EE
song_1EE:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1EE_tone             @ tone
	.word song_1EE_track0           @ tracks 0x0858DA38

@ ****************************** tracks ******************************
.align 2
song_1EE_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1EE_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054E648, 0xFF, 0x00, 0xFF, 0x00 @ index=32


.align 2
.global song_1EF
song_1EF:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1EF_tone             @ tone
	.word song_1EF_track0           @ tracks 0x0858DA54

@ ****************************** tracks ******************************
.align 2
song_1EF_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1EF_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054E648, 0xFF, 0x00, 0xFF, 0x00 @ index=32


.align 2
.global song_1F0
song_1F0:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1F1
song_1F1:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1F2
song_1F2:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1F3
song_1F3:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1F4
song_1F4:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1F4_tone             @ tone
	.word song_1F4_track0           @ tracks 0x0858DA70

@ ****************************** tracks ******************************
.align 2
song_1F4_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1F4_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054F0A4, 0xFF, 0x00, 0xFF, 0x00 @ index=33


.align 2
.global song_1F5
song_1F5:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1F5_tone             @ tone
	.word song_1F5_track0           @ tracks 0x0858DA8C

@ ****************************** tracks ******************************
.align 2
song_1F5_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1F5_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054F0A4, 0xFF, 0x00, 0xFF, 0x00 @ index=33


.align 2
.global song_1F6
song_1F6:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1F6_tone             @ tone
	.word song_1F6_track0           @ tracks 0x0858DAA8

@ ****************************** tracks ******************************
.align 2
song_1F6_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1F6_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054FDB4, 0xFF, 0x00, 0xFF, 0x00 @ index=34


.align 2
.global song_1F7
song_1F7:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1F7_tone             @ tone
	.word song_1F7_track0           @ tracks 0x0858DAC4

@ ****************************** tracks ******************************
.align 2
song_1F7_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1F7_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0054FDB4, 0xFF, 0x00, 0xFF, 0x00 @ index=34


.align 2
.global song_1F8
song_1F8:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1F8_tone             @ tone
	.word song_1F8_track0           @ tracks 0x0858DAE0

@ ****************************** tracks ******************************
.align 2
song_1F8_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1F8_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005509EC, 0xFF, 0x00, 0xFF, 0x00 @ index=35


.align 2
.global song_1F9
song_1F9:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1F9_tone             @ tone
	.word song_1F9_track0           @ tracks 0x0858DAFC

@ ****************************** tracks ******************************
.align 2
song_1F9_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1F9_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005509EC, 0xFF, 0x00, 0xFF, 0x00 @ index=35


.align 2
.global song_1FA
song_1FA:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1FB
song_1FB:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1FC
song_1FC:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1FD
song_1FD:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_1FE
song_1FE:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1FE_tone             @ tone
	.word song_1FE_track0           @ tracks 0x0858DB18

@ ****************************** tracks ******************************
.align 2
song_1FE_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1FE_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005510E4, 0xFF, 0x00, 0xFF, 0x00 @ index=36


.align 2
.global song_1FF
song_1FF:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_1FF_tone             @ tone
	.word song_1FF_track0           @ tracks 0x0858DB34

@ ****************************** tracks ******************************
.align 2
song_1FF_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_1FF_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005510E4, 0xFF, 0x00, 0xFF, 0x00 @ index=36


.align 2
.global song_200
song_200:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_200_tone             @ tone
	.word song_200_track0           @ tracks 0x0858DB50

@ ****************************** tracks ******************************
.align 2
song_200_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_200_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00551F2C, 0xFF, 0x00, 0xFF, 0x00 @ index=37


.align 2
.global song_201
song_201:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_201_tone             @ tone
	.word song_201_track0           @ tracks 0x0858DB6C

@ ****************************** tracks ******************************
.align 2
song_201_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_201_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00551F2C, 0xFF, 0x00, 0xFF, 0x00 @ index=37


.align 2
.global song_202
song_202:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_202_tone             @ tone
	.word song_202_track0           @ tracks 0x0858DB88

@ ****************************** tracks ******************************
.align 2
song_202_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_202_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00552A08, 0xFF, 0x00, 0xFF, 0x00 @ index=38


.align 2
.global song_203
song_203:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_203_tone             @ tone
	.word song_203_track0           @ tracks 0x0858DBA4

@ ****************************** tracks ******************************
.align 2
song_203_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_203_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00552A08, 0xFF, 0x00, 0xFF, 0x00 @ index=38


.align 2
.global song_204
song_204:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_205
song_205:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_206
song_206:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_207
song_207:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_208
song_208:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_208_tone             @ tone
	.word song_208_track0           @ tracks 0x0858DBC0

@ ****************************** tracks ******************************
.align 2
song_208_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_208_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055338C, 0xFF, 0x00, 0xFF, 0x00 @ index=40


.align 2
.global song_209
song_209:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_209_tone             @ tone
	.word song_209_track0           @ tracks 0x0858DBDC

@ ****************************** tracks ******************************
.align 2
song_209_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_209_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055338C, 0xFF, 0x00, 0xFF, 0x00 @ index=40


.align 2
.global song_20A
song_20A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_20A_tone             @ tone
	.word song_20A_track0           @ tracks 0x0858DBF8

@ ****************************** tracks ******************************
.align 2
song_20A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_20A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005540B4, 0xFF, 0x00, 0xFF, 0x00 @ index=41


.align 2
.global song_20B
song_20B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_20B_tone             @ tone
	.word song_20B_track0           @ tracks 0x0858DC14

@ ****************************** tracks ******************************
.align 2
song_20B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_20B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005540B4, 0xFF, 0x00, 0xFF, 0x00 @ index=41


.align 2
.global song_20C
song_20C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_20C_tone             @ tone
	.word song_20C_track0           @ tracks 0x0858DC30

@ ****************************** tracks ******************************
.align 2
song_20C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_20C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00554C3C, 0xFF, 0x00, 0xFF, 0x00 @ index=42


.align 2
.global song_20D
song_20D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_20D_tone             @ tone
	.word song_20D_track0           @ tracks 0x0858DC4C

@ ****************************** tracks ******************************
.align 2
song_20D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_20D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00554C3C, 0xFF, 0x00, 0xFF, 0x00 @ index=42


.align 2
.global song_20E
song_20E:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_20F
song_20F:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_210
song_210:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_211
song_211:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_212
song_212:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_212_tone             @ tone
	.word song_212_track0           @ tracks 0x0858DC68

@ ****************************** tracks ******************************
.align 2
song_212_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_212_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005557B4, 0xFF, 0x00, 0xFF, 0x00 @ index=43


.align 2
.global song_213
song_213:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_213_tone             @ tone
	.word song_213_track0           @ tracks 0x0858DC84

@ ****************************** tracks ******************************
.align 2
song_213_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_213_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005557B4, 0xFF, 0x00, 0xFF, 0x00 @ index=43


.align 2
.global song_214
song_214:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_214_tone             @ tone
	.word song_214_track0           @ tracks 0x0858DCA0

@ ****************************** tracks ******************************
.align 2
song_214_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_214_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055643C, 0xFF, 0x00, 0xFF, 0x00 @ index=44


.align 2
.global song_215
song_215:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_215_tone             @ tone
	.word song_215_track0           @ tracks 0x0858DCBC

@ ****************************** tracks ******************************
.align 2
song_215_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_215_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055643C, 0xFF, 0x00, 0xFF, 0x00 @ index=44


.align 2
.global song_216
song_216:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_216_tone             @ tone
	.word song_216_track0           @ tracks 0x0858DCD8

@ ****************************** tracks ******************************
.align 2
song_216_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_216_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00556F98, 0xFF, 0x00, 0xFF, 0x00 @ index=45


.align 2
.global song_217
song_217:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_217_tone             @ tone
	.word song_217_track0           @ tracks 0x0858DCF4

@ ****************************** tracks ******************************
.align 2
song_217_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_217_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00556F98, 0xFF, 0x00, 0xFF, 0x00 @ index=45


.align 2
.global song_218
song_218:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_219
song_219:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_21A
song_21A:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_21B
song_21B:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_21C
song_21C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_21C_tone             @ tone
	.word song_21C_track0           @ tracks 0x0858DD10

@ ****************************** tracks ******************************
.align 2
song_21C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_21C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00557660, 0xFF, 0x00, 0xFF, 0x00 @ index=46


.align 2
.global song_21D
song_21D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_21D_tone             @ tone
	.word song_21D_track0           @ tracks 0x0858DD2C

@ ****************************** tracks ******************************
.align 2
song_21D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_21D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00557660, 0xFF, 0x00, 0xFF, 0x00 @ index=46


.align 2
.global song_21E
song_21E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_21E_tone             @ tone
	.word song_21E_track0           @ tracks 0x0858DD48

@ ****************************** tracks ******************************
.align 2
song_21E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_21E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055859C, 0xFF, 0x00, 0xFF, 0x00 @ index=47


.align 2
.global song_21F
song_21F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_21F_tone             @ tone
	.word song_21F_track0           @ tracks 0x0858DD64

@ ****************************** tracks ******************************
.align 2
song_21F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_21F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055859C, 0xFF, 0x00, 0xFF, 0x00 @ index=47


.align 2
.global song_220
song_220:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_220_tone             @ tone
	.word song_220_track0           @ tracks 0x0858DD80

@ ****************************** tracks ******************************
.align 2
song_220_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_220_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00558F50, 0xFF, 0x00, 0xFF, 0x00 @ index=48


.align 2
.global song_221
song_221:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_221_tone             @ tone
	.word song_221_track0           @ tracks 0x0858DD9C

@ ****************************** tracks ******************************
.align 2
song_221_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 110
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_221_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00558F50, 0xFF, 0x00, 0xFF, 0x00 @ index=48


.align 2
.global song_222
song_222:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_223
song_223:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_224
song_224:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_225
song_225:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_226
song_226:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_226_tone             @ tone
	.word song_226_track0           @ tracks 0x0858DDB8

@ ****************************** tracks ******************************
.align 2
song_226_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_226_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00559910, 0xFF, 0x00, 0xFF, 0x00 @ index=50


.align 2
.global song_227
song_227:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_227_tone             @ tone
	.word song_227_track0           @ tracks 0x0858DDD4

@ ****************************** tracks ******************************
.align 2
song_227_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_227_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00559910, 0xFF, 0x00, 0xFF, 0x00 @ index=50


.align 2
.global song_228
song_228:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_228_tone             @ tone
	.word song_228_track0           @ tracks 0x0858DDF0

@ ****************************** tracks ******************************
.align 2
song_228_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_228_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055A6D4, 0xFF, 0x00, 0xFF, 0x00 @ index=51


.align 2
.global song_229
song_229:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_229_tone             @ tone
	.word song_229_track0           @ tracks 0x0858DE0C

@ ****************************** tracks ******************************
.align 2
song_229_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_229_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055A6D4, 0xFF, 0x00, 0xFF, 0x00 @ index=51


.align 2
.global song_22A
song_22A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_22A_tone             @ tone
	.word song_22A_track0           @ tracks 0x0858DE28

@ ****************************** tracks ******************************
.align 2
song_22A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_22A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055B1D4, 0xFF, 0x00, 0xFF, 0x00 @ index=52


.align 2
.global song_22B
song_22B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_22B_tone             @ tone
	.word song_22B_track0           @ tracks 0x0858DE44

@ ****************************** tracks ******************************
.align 2
song_22B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_22B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055B1D4, 0xFF, 0x00, 0xFF, 0x00 @ index=52


.align 2
.global song_22C
song_22C:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_22D
song_22D:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_22E
song_22E:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_22F
song_22F:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_230
song_230:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_230_tone             @ tone
	.word song_230_track0           @ tracks 0x0858DE60

@ ****************************** tracks ******************************
.align 2
song_230_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_230_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055BC28, 0xFF, 0x00, 0xFF, 0x00 @ index=53


.align 2
.global song_231
song_231:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_231_tone             @ tone
	.word song_231_track0           @ tracks 0x0858DE7C

@ ****************************** tracks ******************************
.align 2
song_231_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_231_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055BC28, 0xFF, 0x00, 0xFF, 0x00 @ index=53


.align 2
.global song_232
song_232:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_232_tone             @ tone
	.word song_232_track0           @ tracks 0x0858DE98

@ ****************************** tracks ******************************
.align 2
song_232_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_232_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055C844, 0xFF, 0x00, 0xFF, 0x00 @ index=54


.align 2
.global song_233
song_233:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_233_tone             @ tone
	.word song_233_track0           @ tracks 0x0858DEB4

@ ****************************** tracks ******************************
.align 2
song_233_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_233_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055C844, 0xFF, 0x00, 0xFF, 0x00 @ index=54


.align 2
.global song_234
song_234:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_234_tone             @ tone
	.word song_234_track0           @ tracks 0x0858DED0

@ ****************************** tracks ******************************
.align 2
song_234_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_234_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055D3F4, 0xFF, 0x00, 0xFF, 0x00 @ index=55


.align 2
.global song_235
song_235:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_235_tone             @ tone
	.word song_235_track0           @ tracks 0x0858DEEC

@ ****************************** tracks ******************************
.align 2
song_235_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_235_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055D3F4, 0xFF, 0x00, 0xFF, 0x00 @ index=55


.align 2
.global song_236
song_236:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_237
song_237:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_238
song_238:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_239
song_239:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_23A
song_23A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_23A_tone             @ tone
	.word song_23A_track0           @ tracks 0x0858DF08

@ ****************************** tracks ******************************
.align 2
song_23A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_23A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055DAC8, 0xFF, 0x00, 0xFF, 0x00 @ index=56


.align 2
.global song_23B
song_23B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_23B_tone             @ tone
	.word song_23B_track0           @ tracks 0x0858DF24

@ ****************************** tracks ******************************
.align 2
song_23B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_23B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055DAC8, 0xFF, 0x00, 0xFF, 0x00 @ index=56


.align 2
.global song_23C
song_23C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_23C_tone             @ tone
	.word song_23C_track0           @ tracks 0x0858DF40

@ ****************************** tracks ******************************
.align 2
song_23C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_23C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055ED34, 0xFF, 0x00, 0xFF, 0x00 @ index=57


.align 2
.global song_23D
song_23D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_23D_tone             @ tone
	.word song_23D_track0           @ tracks 0x0858DF5C

@ ****************************** tracks ******************************
.align 2
song_23D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_23D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055ED34, 0xFF, 0x00, 0xFF, 0x00 @ index=57


.align 2
.global song_23E
song_23E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_23E_tone             @ tone
	.word song_23E_track0           @ tracks 0x0858DF78

@ ****************************** tracks ******************************
.align 2
song_23E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_23E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055F814, 0xFF, 0x00, 0xFF, 0x00 @ index=58


.align 2
.global song_23F
song_23F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_23F_tone             @ tone
	.word song_23F_track0           @ tracks 0x0858DF94

@ ****************************** tracks ******************************
.align 2
song_23F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_23F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0055F814, 0xFF, 0x00, 0xFF, 0x00 @ index=58


.align 2
.global song_240
song_240:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_241
song_241:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_242
song_242:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_243
song_243:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_244
song_244:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_244_tone             @ tone
	.word song_244_track0           @ tracks 0x0858DFB0

@ ****************************** tracks ******************************
.align 2
song_244_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_244_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005603DC, 0xFF, 0x00, 0xFF, 0x00 @ index=60


.align 2
.global song_245
song_245:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_245_tone             @ tone
	.word song_245_track0           @ tracks 0x0858DFCC

@ ****************************** tracks ******************************
.align 2
song_245_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_245_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005603DC, 0xFF, 0x00, 0xFF, 0x00 @ index=60


.align 2
.global song_246
song_246:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_246_tone             @ tone
	.word song_246_track0           @ tracks 0x0858DFE8

@ ****************************** tracks ******************************
.align 2
song_246_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_246_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0056127C, 0xFF, 0x00, 0xFF, 0x00 @ index=61


.align 2
.global song_247
song_247:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_247_tone             @ tone
	.word song_247_track0           @ tracks 0x0858E004

@ ****************************** tracks ******************************
.align 2
song_247_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_247_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0056127C, 0xFF, 0x00, 0xFF, 0x00 @ index=61


.align 2
.global song_248
song_248:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_248_tone             @ tone
	.word song_248_track0           @ tracks 0x0858E020

@ ****************************** tracks ******************************
.align 2
song_248_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_248_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00561D00, 0xFF, 0x00, 0xFF, 0x00 @ index=62


.align 2
.global song_249
song_249:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_249_tone             @ tone
	.word song_249_track0           @ tracks 0x0858E03C

@ ****************************** tracks ******************************
.align 2
song_249_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_249_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00561D00, 0xFF, 0x00, 0xFF, 0x00 @ index=62


.align 2
.global song_24A
song_24A:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_24B
song_24B:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_24C
song_24C:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_24D
song_24D:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_24E
song_24E:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_24E_tone             @ tone
	.word song_24E_track0           @ tracks 0x0858E058

@ ****************************** tracks ******************************
.align 2
song_24E_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_24E_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00562754, 0xFF, 0x00, 0xFF, 0x00 @ index=63


.align 2
.global song_24F
song_24F:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_24F_tone             @ tone
	.word song_24F_track0           @ tracks 0x0858E074

@ ****************************** tracks ******************************
.align 2
song_24F_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_24F_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00562754, 0xFF, 0x00, 0xFF, 0x00 @ index=63


.align 2
.global song_250
song_250:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_250_tone             @ tone
	.word song_250_track0           @ tracks 0x0858E090

@ ****************************** tracks ******************************
.align 2
song_250_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_250_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00563558, 0xFF, 0x00, 0xFF, 0x00 @ index=64


.align 2
.global song_251
song_251:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_251_tone             @ tone
	.word song_251_track0           @ tracks 0x0858E0AC

@ ****************************** tracks ******************************
.align 2
song_251_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_251_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00563558, 0xFF, 0x00, 0xFF, 0x00 @ index=64


.align 2
.global song_252
song_252:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_252_tone             @ tone
	.word song_252_track0           @ tracks 0x0858E0C8

@ ****************************** tracks ******************************
.align 2
song_252_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_252_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00564188, 0xFF, 0x00, 0xFF, 0x00 @ index=65


.align 2
.global song_253
song_253:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_253_tone             @ tone
	.word song_253_track0           @ tracks 0x0858E0E4

@ ****************************** tracks ******************************
.align 2
song_253_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_253_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00564188, 0xFF, 0x00, 0xFF, 0x00 @ index=65


.align 2
.global song_254
song_254:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_255
song_255:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_256
song_256:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_257
song_257:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_258
song_258:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_258_tone             @ tone
	.word song_258_track0           @ tracks 0x0858E100

@ ****************************** tracks ******************************
.align 2
song_258_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_258_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00564910, 0xFF, 0x00, 0xFF, 0x00 @ index=66


.align 2
.global song_259
song_259:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_259_tone             @ tone
	.word song_259_track0           @ tracks 0x0858E11C

@ ****************************** tracks ******************************
.align 2
song_259_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_259_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00564910, 0xFF, 0x00, 0xFF, 0x00 @ index=66


.align 2
.global song_25A
song_25A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_25A_tone             @ tone
	.word song_25A_track0           @ tracks 0x0858E138

@ ****************************** tracks ******************************
.align 2
song_25A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_25A_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00565A1C, 0xFF, 0x00, 0xFF, 0x00 @ index=67


.align 2
.global song_25B
song_25B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_25B_tone             @ tone
	.word song_25B_track0           @ tracks 0x0858E154

@ ****************************** tracks ******************************
.align 2
song_25B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_25B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00565A1C, 0xFF, 0x00, 0xFF, 0x00 @ index=67


.align 2
.global song_25C
song_25C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_25C_tone             @ tone
	.word song_25C_track0           @ tracks 0x0858E170

@ ****************************** tracks ******************************
.align 2
song_25C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_25C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005665EC, 0xFF, 0x00, 0xFF, 0x00 @ index=68


.align 2
.global song_25D
song_25D:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_25D_tone             @ tone
	.word song_25D_track0           @ tracks 0x0858E18C

@ ****************************** tracks ******************************
.align 2
song_25D_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 117
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_25D_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005665EC, 0xFF, 0x00, 0xFF, 0x00 @ index=68


.align 2
.global song_25E
song_25E:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_25F
song_25F:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_260
song_260:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_261
song_261:
@ ****************************** header ******************************
	.byte 0x00                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x00                      @ priority
	.byte 0x00                      @ reverb


.align 2
.global song_262
song_262:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_262_tone             @ tone
	.word song_262_track0           @ tracks 0x0858E1A8

@ ****************************** tracks ******************************
.align 2
song_262_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_262_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053672C, 0xFF, 0x00, 0xFF, 0x00 @ index=120


.align 2
.global song_263
song_263:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_263_tone             @ tone
	.word song_263_track0           @ tracks 0x0858E1C4

@ ****************************** tracks ******************************
.align 2
song_263_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_263_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0053672C, 0xFF, 0x00, 0xFF, 0x00 @ index=120


.align 2
.global song_264
song_264:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_264_tone             @ tone
	.word song_264_track0           @ tracks 0x0858E1E0

@ ****************************** tracks ******************************
.align 2
song_264_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte N36, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_264_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005374E0, 0xFF, 0x00, 0xFF, 0x00 @ index=121


.align 2
.global song_265
song_265:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_265_tone             @ tone
	.word song_265_track0           @ tracks 0x0858E1FC

@ ****************************** tracks ******************************
.align 2
song_265_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte N36, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_265_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005374E0, 0xFF, 0x00, 0xFF, 0x00 @ index=121


.align 2
.global song_266
song_266:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_266_tone             @ tone
	.word song_266_track0           @ tracks 0x0858E218

@ ****************************** tracks ******************************
.align 2
song_266_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte N23, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_266_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005355C0, 0xFF, 0x00, 0xFF, 0x00 @ index=100


.align 2
.global song_267
song_267:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_267_tone             @ tone
	.word song_267_track0           @ tracks 0x0858E234

@ ****************************** tracks ******************************
.align 2
song_267_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte N23, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_267_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x005355C0, 0xFF, 0x00, 0xFF, 0x00 @ index=100


.align 2
.global song_268
song_268:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_268_tone             @ tone
	.word song_268_track0           @ tracks 0x0858E250

@ ****************************** tracks ******************************
.align 2
song_268_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 120
	.byte N24, 60, 127
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_268_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x00538CC4, 0xFF, 0x00, 0xFF, 0x00 @ index=122


.align 2
.global song_269
song_269:
@ ****************************** header ******************************
	.byte 0x02                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_269_tone             @ tone
	.word song_269_track0           @ tracks 0x0858E26C
	.word song_269_track1           @ tracks 0x0858E349

@ ****************************** tracks ******************************
.align 2
song_269_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte BENDR, 24
	.byte VOL, 0
	.byte BEND, 0
	.byte TIE, 63, 127
	.byte W02
	.byte VOL, 4
	.byte BEND, 2
	.byte W02
	.byte VOL, 8
	.byte BEND, 4
	.byte W02
	.byte VOL, 12
	.byte BEND, 6
	.byte W02
	.byte VOL, 16
	.byte BEND, 8
	.byte W02
	.byte VOL, 21
	.byte BEND, 10
	.byte W02
	.byte VOL, 25
	.byte BEND, 12
	.byte W02
	.byte VOL, 29
	.byte BEND, 14
	.byte W02
	.byte VOL, 33
	.byte BEND, 17
	.byte W02
	.byte VOL, 38
	.byte BEND, 19
	.byte W02
	.byte VOL, 42
	.byte BEND, 21
	.byte W02
	.byte VOL, 46
	.byte BEND, 23
	.byte W02
	.byte VOL, 50
	.byte BEND, 25
	.byte W02
	.byte VOL, 54
	.byte BEND, 27
	.byte W02
	.byte VOL, 59
	.byte BEND, 29
	.byte W02
	.byte VOL, 63
	.byte BEND, 31
	.byte W02
	.byte VOL, 67
	.byte BEND, 34
	.byte W02
	.byte VOL, 71
	.byte BEND, 36
	.byte W02
	.byte VOL, 76
	.byte BEND, 38
	.byte W02
	.byte VOL, 80
	.byte BEND, 40
	.byte W02
	.byte VOL, 84
	.byte BEND, 42
	.byte W02
	.byte VOL, 88
	.byte BEND, 44
	.byte W02
	.byte VOL, 93
	.byte BEND, 46
	.byte W02
	.byte VOL, 97
	.byte BEND, 49
	.byte W02
	.byte VOL, 101
	.byte BEND, 51
	.byte W02
	.byte VOL, 105
	.byte BEND, 53
	.byte W02
	.byte VOL, 109
	.byte BEND, 55
	.byte W02
	.byte VOL, 114
	.byte BEND, 57
	.byte W02
	.byte VOL, 118
	.byte BEND, 59
	.byte W02
	.byte VOL, 122
	.byte BEND, 61
	.byte W02
	.byte VOL, 127
	.byte BEND, 64
	.byte W12
	.byte W24
	.byte VOL, 127
	.byte W02
	.byte 0x79
	.byte W02
	.byte 0x74
	.byte W02
	.byte 0x6F
	.byte W02
	.byte 0x69
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x3F
	.byte W02
	.byte 0x3A
	.byte W02
	.byte 0x35
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x25
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x1A
	.byte W02
	.byte 0x15
	.byte W02
	.byte 0x10
	.byte W02
	.byte 0x0A
	.byte W02
	.byte 0x05
	.byte W02
	.byte EOT
	.byte VOL, 0
	.byte W24
	.byte FINE

.align 2
song_269_track1:
	.byte KEYSH, 0
	.byte VOICE, 0
	.byte BENDR, 24
	.byte VOL, 0
	.byte TUNE, 80
	.byte BEND, 0
	.byte TIE, 63, 112
	.byte W02
	.byte VOL, 4
	.byte BEND, 2
	.byte W02
	.byte VOL, 8
	.byte BEND, 4
	.byte W02
	.byte VOL, 12
	.byte BEND, 6
	.byte W02
	.byte VOL, 16
	.byte BEND, 8
	.byte W02
	.byte VOL, 21
	.byte BEND, 10
	.byte W02
	.byte VOL, 25
	.byte BEND, 12
	.byte W02
	.byte VOL, 29
	.byte BEND, 14
	.byte W02
	.byte VOL, 33
	.byte BEND, 17
	.byte W02
	.byte VOL, 38
	.byte BEND, 19
	.byte W02
	.byte VOL, 42
	.byte BEND, 21
	.byte W02
	.byte VOL, 46
	.byte BEND, 23
	.byte W02
	.byte VOL, 50
	.byte BEND, 25
	.byte W02
	.byte VOL, 54
	.byte BEND, 27
	.byte W02
	.byte VOL, 59
	.byte BEND, 29
	.byte W02
	.byte VOL, 63
	.byte BEND, 31
	.byte W02
	.byte VOL, 67
	.byte BEND, 34
	.byte W02
	.byte VOL, 71
	.byte BEND, 36
	.byte W02
	.byte VOL, 76
	.byte BEND, 38
	.byte W02
	.byte VOL, 80
	.byte BEND, 40
	.byte W02
	.byte VOL, 84
	.byte BEND, 42
	.byte W02
	.byte VOL, 88
	.byte BEND, 44
	.byte W02
	.byte VOL, 93
	.byte BEND, 46
	.byte W02
	.byte VOL, 97
	.byte BEND, 49
	.byte W02
	.byte VOL, 101
	.byte BEND, 51
	.byte W02
	.byte VOL, 105
	.byte BEND, 53
	.byte W02
	.byte VOL, 109
	.byte BEND, 55
	.byte W02
	.byte VOL, 114
	.byte BEND, 57
	.byte W02
	.byte VOL, 118
	.byte BEND, 59
	.byte W02
	.byte VOL, 122
	.byte BEND, 61
	.byte W02
	.byte VOL, 127
	.byte BEND, 64
	.byte W12
	.byte W24
	.byte VOL, 127
	.byte W02
	.byte 0x79
	.byte W02
	.byte 0x74
	.byte W02
	.byte 0x6F
	.byte W02
	.byte 0x69
	.byte W02
	.byte 0x64
	.byte W02
	.byte 0x5F
	.byte W02
	.byte 0x5A
	.byte W02
	.byte 0x54
	.byte W02
	.byte 0x4F
	.byte W02
	.byte 0x4A
	.byte W02
	.byte 0x44
	.byte W02
	.byte 0x3F
	.byte W02
	.byte 0x3A
	.byte W02
	.byte 0x35
	.byte W02
	.byte 0x2F
	.byte W02
	.byte 0x2A
	.byte W02
	.byte 0x25
	.byte W02
	.byte 0x20
	.byte W02
	.byte 0x1A
	.byte W02
	.byte 0x15
	.byte W02
	.byte 0x10
	.byte W02
	.byte 0x0A
	.byte W02
	.byte 0x05
	.byte W02
	.byte EOT
	.byte VOL, 0
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_269_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0047D848, 0xFF, 0x00, 0xFF, 0x00 @ index=48


.align 2
.global song_26A
song_26A:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_26A_tone             @ tone
	.word song_26A_track0           @ tracks 0x0858E438

@ ****************************** tracks ******************************
.align 2
song_26A_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 56
	.byte MOD, 24
	.byte MODT, 0
	.byte LFOS, 3
	.byte BENDR, 7
	.byte BEND, 96
	.byte TIE, 52, 127
	.byte W01
	.byte BEND, 83
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x60
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x60
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x60
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x20
	.byte W01
label_song_26A_track0_0:
	.byte BEND, 96
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x60
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x60
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x20
	.byte W01
	.byte 0x60
	.byte W01
	.byte 0x53
	.byte W01
	.byte 0x46
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x20
	.byte W01
	.byte PEND
	.byte PATT
	.word label_song_26A_track0_0
	.byte PATT
	.word label_song_26A_track0_0
	.byte PATT
	.word label_song_26A_track0_0
	.byte GOTO
	.word label_song_26A_track0_0
	.byte W08
	.byte EOT, 52
	.byte W16
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_26A_tone:
	tone_data 0x04, 0x3C, 0x00, 0x00, 0x00000000, 0x00, 0x00, 0x0F, 0x00 @ index=26


.align 2
.global song_26B
song_26B:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_26B_tone             @ tone
	.word song_26B_track0           @ tracks 0x0858E4DC

@ ****************************** tracks ******************************
.align 2
song_26B_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte BENDR, 2
	.byte BEND, 64
	.byte N16, 60, 127
	.byte W02
	.byte BEND, 85
	.byte W02
	.byte 0x6A
	.byte W02
	.byte 0x7F
	.byte W02
	.byte VOL, 110
	.byte W02
	.byte 0x50
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x32
	.byte W02
	.byte 0x7F
	.byte BEND, 64
	.byte N14, 60, 48
	.byte W02
	.byte BEND, 85
	.byte W02
	.byte 0x6A
	.byte W02
	.byte VOL, 110
	.byte BEND, 127
	.byte W02
	.byte VOL, 80
	.byte W02
	.byte 0x41
	.byte W02
	.byte 0x32
	.byte W20
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_26B_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045C488, 0xFF, 0x00, 0xFF, 0x00 @ index=27


.align 2
.global song_26C
song_26C:
@ ****************************** header ******************************
	.byte 0x01                      @ trackCount
	.byte 0x00                      @ blockCount
	.byte 0x14                      @ priority
	.byte 0x00                      @ reverb
	.word song_26C_tone             @ tone
	.word song_26C_track0           @ tracks 0x0858E524

@ ****************************** tracks ******************************
.align 2
song_26C_track0:
	.byte KEYSH, 0
	.byte TEMPO, 75
	.byte VOICE, 0
	.byte VOL, 127
	.byte N24, 60, 127
	.byte W24
	.byte W24
	.byte FINE

@ **************************** voice_group ***************************
.align 4
song_26C_tone:
	tone_data 0x00, 0x3C, 0x00, 0x00, wav_0x0045E9D0, 0xFF, 0x00, 0xFF, 0x00 @ index=29



@ ******************************** WAVs ******************************
.align 2, 0
wav_0x00456C54: @ 0x00456C54
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000A73               @ loopStart
	.word  0x00000C55               @ size
	.incbin "roms/fe6.gba", 0x456C64, 0xC55

.align 2, 0
wav_0x00455098: @ 0x00455098
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00522000               @ freq
	.word  0x00000DCB               @ loopStart
	.word  0x00001BAB               @ size
	.incbin "roms/fe6.gba", 0x4550A8, 0x1BAB

.align 2, 0
wav_0x00453730: @ 0x00453730
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000DE0               @ loopStart
	.word  0x00001954               @ size
	.incbin "roms/fe6.gba", 0x453740, 0x1954

.align 2, 0
wav_0x0039943C: @ 0x0039943C
	.short 0x0000                   @ type
	.short 0x3412                   @ status
	.word  0x21435555               @ freq
	.word  0x34120000               @ loopStart
	.word  0x00000010               @ size
	.incbin "roms/fe6.gba", 0x39944C, 0x10

.align 2, 0
wav_0x0043D914: @ 0x0043D914
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000033BB               @ size
	.incbin "roms/fe6.gba", 0x43D924, 0x33BB

.align 2, 0
wav_0x00440CE0: @ 0x00440CE0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000011C4               @ size
	.incbin "roms/fe6.gba", 0x440CF0, 0x11C4

.align 2, 0
wav_0x00442224: @ 0x00442224
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00003EB7               @ size
	.incbin "roms/fe6.gba", 0x442234, 0x3EB7

.align 2, 0
wav_0x00441EB8: @ 0x00441EB8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000035A               @ size
	.incbin "roms/fe6.gba", 0x441EC8, 0x35A

.align 2, 0
wav_0x004460EC: @ 0x004460EC
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x000005C4               @ loopStart
	.word  0x00003298               @ size
	.incbin "roms/fe6.gba", 0x4460FC, 0x3298

.align 2, 0
wav_0x0045F984: @ 0x0045F984
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00002600               @ loopStart
	.word  0x00003575               @ size
	.incbin "roms/fe6.gba", 0x45F994, 0x3575

.align 2, 0
wav_0x004719E4: @ 0x004719E4
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000248               @ loopStart
	.word  0x00001936               @ size
	.incbin "roms/fe6.gba", 0x4719F4, 0x1936

.align 2, 0
wav_0x0046A810: @ 0x0046A810
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00004600               @ size
	.incbin "roms/fe6.gba", 0x46A820, 0x4600

.align 2, 0
wav_0x00462F0C: @ 0x00462F0C
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00002464               @ loopStart
	.word  0x0000335D               @ size
	.incbin "roms/fe6.gba", 0x462F1C, 0x335D

.align 2, 0
wav_0x0046EE24: @ 0x0046EE24
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x000008DE               @ loopStart
	.word  0x00002BAE               @ size
	.incbin "roms/fe6.gba", 0x46EE34, 0x2BAE

.align 2, 0
wav_0x0046627C: @ 0x0046627C
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00002EBD               @ loopStart
	.word  0x00004581               @ size
	.incbin "roms/fe6.gba", 0x46628C, 0x4581

.align 2, 0
wav_0x0047332C: @ 0x0047332C
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00DB3F59               @ freq
	.word  0x00000504               @ loopStart
	.word  0x00001763               @ size
	.incbin "roms/fe6.gba", 0x47333C, 0x1763

.align 2, 0
wav_0x004761FC: @ 0x004761FC
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000E66               @ loopStart
	.word  0x00001F1B               @ size
	.incbin "roms/fe6.gba", 0x47620C, 0x1F1B

.align 2, 0
wav_0x00474AA0: @ 0x00474AA0
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000541               @ loopStart
	.word  0x0000174A               @ size
	.incbin "roms/fe6.gba", 0x474AB0, 0x174A

.align 2, 0
wav_0x0044D698: @ 0x0044D698
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000251               @ loopStart
	.word  0x00000665               @ size
	.incbin "roms/fe6.gba", 0x44D6A8, 0x665

.align 2, 0
wav_0x00449398: @ 0x00449398
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000042EF               @ size
	.incbin "roms/fe6.gba", 0x4493A8, 0x42EF

.align 2, 0
wav_0x0044DD10: @ 0x0044DD10
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00002348               @ size
	.incbin "roms/fe6.gba", 0x44DD20, 0x2348

.align 2, 0
wav_0x0045006C: @ 0x0045006C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000B80               @ size
	.incbin "roms/fe6.gba", 0x45007C, 0xB80

.align 2, 0
wav_0x00450C00: @ 0x00450C00
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00002B1E               @ size
	.incbin "roms/fe6.gba", 0x450C10, 0x2B1E

.align 2, 0
wav_0x004578BC: @ 0x004578BC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000003EB               @ size
	.incbin "roms/fe6.gba", 0x4578CC, 0x3EB

.align 2, 0
wav_0x00458208: @ 0x00458208
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000290               @ size
	.incbin "roms/fe6.gba", 0x458218, 0x290

.align 2, 0
wav_0x004584AC: @ 0x004584AC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000061D               @ size
	.incbin "roms/fe6.gba", 0x4584BC, 0x61D

.align 2, 0
wav_0x00458ADC: @ 0x00458ADC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000005CF               @ size
	.incbin "roms/fe6.gba", 0x458AEC, 0x5CF

.align 2, 0
wav_0x004590BC: @ 0x004590BC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000826               @ size
	.incbin "roms/fe6.gba", 0x4590CC, 0x826

.align 2, 0
wav_0x00457CB8: @ 0x00457CB8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000053C               @ size
	.incbin "roms/fe6.gba", 0x457CC8, 0x53C

.align 2, 0
wav_0x004598F4: @ 0x004598F4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000008D8               @ size
	.incbin "roms/fe6.gba", 0x459904, 0x8D8

.align 2, 0
wav_0x00478128: @ 0x00478128
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00002FBC               @ size
	.incbin "roms/fe6.gba", 0x478138, 0x2FBC

.align 2, 0
wav_0x0047B0F8: @ 0x0047B0F8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000001AD               @ size
	.incbin "roms/fe6.gba", 0x47B108, 0x1AD

.align 2, 0
wav_0x003CFD14: @ 0x003CFD14
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000026A0               @ size
	.incbin "roms/fe6.gba", 0x3CFD24, 0x26A0

.align 2, 0
wav_0x0047B2B8: @ 0x0047B2B8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001961               @ size
	.incbin "roms/fe6.gba", 0x47B2C8, 0x1961

.align 2, 0
wav_0x0047CC2C: @ 0x0047CC2C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000C08               @ size
	.incbin "roms/fe6.gba", 0x47CC3C, 0xC08

.align 2, 0
wav_0x00481C90: @ 0x00481C90
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001748               @ size
	.incbin "roms/fe6.gba", 0x481CA0, 0x1748

.align 2, 0
wav_0x004833EC: @ 0x004833EC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000B57               @ size
	.incbin "roms/fe6.gba", 0x4833FC, 0xB57

.align 2, 0
wav_0x0048B098: @ 0x0048B098
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000021EB               @ size
	.incbin "roms/fe6.gba", 0x48B0A8, 0x21EB

.align 2, 0
wav_0x00483F54: @ 0x00483F54
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00002A1D               @ size
	.incbin "roms/fe6.gba", 0x483F64, 0x2A1D

.align 2, 0
wav_0x00489068: @ 0x00489068
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000201F               @ size
	.incbin "roms/fe6.gba", 0x489078, 0x201F

.align 2, 0
wav_0x00486984: @ 0x00486984
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000026D3               @ size
	.incbin "roms/fe6.gba", 0x486994, 0x26D3

.align 2, 0
wav_0x0047F088: @ 0x0047F088
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x000010C5               @ loopStart
	.word  0x00002BF5               @ size
	.incbin "roms/fe6.gba", 0x47F098, 0x2BF5

.align 2, 0
wav_0x0049441C: @ 0x0049441C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000660               @ size
	.incbin "roms/fe6.gba", 0x49442C, 0x660

.align 2, 0
wav_0x0045A8C4: @ 0x0045A8C4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001BB3               @ size
	.incbin "roms/fe6.gba", 0x45A8D4, 0x1BB3

.align 2, 0
wav_0x0045A1E0: @ 0x0045A1E0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000557               @ size
	.incbin "roms/fe6.gba", 0x45A1F0, 0x557

.align 2, 0
wav_0x0048D294: @ 0x0048D294
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x007D0000               @ freq
	.word  0x00000B23               @ loopStart
	.word  0x00007174               @ size
	.incbin "roms/fe6.gba", 0x48D2A4, 0x7174

.align 2, 0
wav_0x0045A748: @ 0x0045A748
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000169               @ size
	.incbin "roms/fe6.gba", 0x45A758, 0x169

.align 2, 0
wav_0x00495154: @ 0x00495154
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00001744               @ loopStart
	.word  0x00003577               @ size
	.incbin "roms/fe6.gba", 0x495164, 0x3577

.align 2, 0
wav_0x004986DC: @ 0x004986DC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000AB5               @ size
	.incbin "roms/fe6.gba", 0x4986EC, 0xAB5

.align 2, 0
wav_0x004991A4: @ 0x004991A4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000A39               @ size
	.incbin "roms/fe6.gba", 0x4991B4, 0xA39

.align 2, 0
wav_0x00499BF0: @ 0x00499BF0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000893               @ size
	.incbin "roms/fe6.gba", 0x499C00, 0x893

.align 2, 0
wav_0x0049AB58: @ 0x0049AB58
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000CA6               @ size
	.incbin "roms/fe6.gba", 0x49AB68, 0xCA6

.align 2, 0
wav_0x0049B810: @ 0x0049B810
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000008D5               @ size
	.incbin "roms/fe6.gba", 0x49B820, 0x8D5

.align 2, 0
wav_0x0049A494: @ 0x0049A494
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000006B2               @ size
	.incbin "roms/fe6.gba", 0x49A4A4, 0x6B2

.align 2, 0
wav_0x00494A90: @ 0x00494A90
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000006B2               @ size
	.incbin "roms/fe6.gba", 0x494AA0, 0x6B2

.align 2, 0
wav_0x0049C4FC: @ 0x0049C4FC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000007C2               @ size
	.incbin "roms/fe6.gba", 0x49C50C, 0x7C2

.align 2, 0
wav_0x0049C0F8: @ 0x0049C0F8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000003F2               @ size
	.incbin "roms/fe6.gba", 0x49C108, 0x3F2

.align 2, 0
wav_0x004BE014: @ 0x004BE014
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000A74               @ size
	.incbin "roms/fe6.gba", 0x4BE024, 0xA74

.align 2, 0
wav_0x004BEA9C: @ 0x004BEA9C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000917               @ size
	.incbin "roms/fe6.gba", 0x4BEAAC, 0x917

.align 2, 0
wav_0x004BF3C4: @ 0x004BF3C4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000009EC               @ size
	.incbin "roms/fe6.gba", 0x4BF3D4, 0x9EC

.align 2, 0
wav_0x004BFDC4: @ 0x004BFDC4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000011D5               @ size
	.incbin "roms/fe6.gba", 0x4BFDD4, 0x11D5

.align 2, 0
wav_0x004BBB10: @ 0x004BBB10
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000024F0               @ size
	.incbin "roms/fe6.gba", 0x4BBB20, 0x24F0

.align 2, 0
wav_0x004A61B0: @ 0x004A61B0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000838               @ size
	.incbin "roms/fe6.gba", 0x4A61C0, 0x838

.align 2, 0
wav_0x0049F2EC: @ 0x0049F2EC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00003026               @ size
	.incbin "roms/fe6.gba", 0x49F2FC, 0x3026

.align 2, 0
wav_0x004A2324: @ 0x004A2324
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000028FB               @ size
	.incbin "roms/fe6.gba", 0x4A2334, 0x28FB

.align 2, 0
wav_0x004AEBE8: @ 0x004AEBE8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000043C6               @ size
	.incbin "roms/fe6.gba", 0x4AEBF8, 0x43C6

.align 2, 0
wav_0x004A836C: @ 0x004A836C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000024F5               @ size
	.incbin "roms/fe6.gba", 0x4A837C, 0x24F5

.align 2, 0
wav_0x004B5DA4: @ 0x004B5DA4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00005D5A               @ size
	.incbin "roms/fe6.gba", 0x4B5DB4, 0x5D5A

.align 2, 0
wav_0x004B2FC0: @ 0x004B2FC0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00002893               @ size
	.incbin "roms/fe6.gba", 0x4B2FD0, 0x2893

.align 2, 0
wav_0x0049CCD0: @ 0x0049CCD0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000831               @ size
	.incbin "roms/fe6.gba", 0x49CCE0, 0x831

.align 2, 0
wav_0x0049D514: @ 0x0049D514
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000008D9               @ size
	.incbin "roms/fe6.gba", 0x49D524, 0x8D9

.align 2, 0
wav_0x0049DE00: @ 0x0049DE00
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000014D8               @ size
	.incbin "roms/fe6.gba", 0x49DE10, 0x14D8

.align 2, 0
wav_0x004B5864: @ 0x004B5864
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000052C               @ size
	.incbin "roms/fe6.gba", 0x4B5874, 0x52C

.align 2, 0
wav_0x004AB92C: @ 0x004AB92C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001E03               @ size
	.incbin "roms/fe6.gba", 0x4AB93C, 0x1E03

.align 2, 0
wav_0x0045C488: @ 0x0045C488
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001FAA               @ size
	.incbin "roms/fe6.gba", 0x45C498, 0x1FAA

.align 2, 0
wav_0x004C0FAC: @ 0x004C0FAC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001B10               @ size
	.incbin "roms/fe6.gba", 0x4C0FBC, 0x1B10

.align 2, 0
wav_0x004C2AD0: @ 0x004C2AD0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001959               @ size
	.incbin "roms/fe6.gba", 0x4C2AE0, 0x1959

.align 2, 0
wav_0x004FEC3C: @ 0x004FEC3C
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x0000089E               @ loopStart
	.word  0x00001070               @ size
	.incbin "roms/fe6.gba", 0x4FEC4C, 0x1070

.align 2, 0
wav_0x004FCDFC: @ 0x004FCDFC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000060E               @ size
	.incbin "roms/fe6.gba", 0x4FCE0C, 0x60E

.align 2, 0
wav_0x004A4C30: @ 0x004A4C30
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000156E               @ size
	.incbin "roms/fe6.gba", 0x4A4C40, 0x156E

.align 2, 0
wav_0x004C443C: @ 0x004C443C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00522000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001593               @ size
	.incbin "roms/fe6.gba", 0x4C444C, 0x1593

.align 2, 0
wav_0x004F6BB8: @ 0x004F6BB8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000442D               @ size
	.incbin "roms/fe6.gba", 0x4F6BC8, 0x442D

.align 2, 0
wav_0x00511E5C: @ 0x00511E5C
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000FDB               @ loopStart
	.word  0x000015D1               @ size
	.incbin "roms/fe6.gba", 0x511E6C, 0x15D1

.align 2, 0
wav_0x0050E8B4: @ 0x0050E8B4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00003594               @ size
	.incbin "roms/fe6.gba", 0x50E8C4, 0x3594

.align 2, 0
wav_0x00517570: @ 0x00517570
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00007964               @ size
	.incbin "roms/fe6.gba", 0x517580, 0x7964

.align 2, 0
wav_0x0051EEE8: @ 0x0051EEE8
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000638               @ loopStart
	.word  0x0000260D               @ size
	.incbin "roms/fe6.gba", 0x51EEF8, 0x260D

.align 2, 0
wav_0x00521508: @ 0x00521508
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x000037CA               @ loopStart
	.word  0x000044B6               @ size
	.incbin "roms/fe6.gba", 0x521518, 0x44B6

.align 2, 0
wav_0x004E49F4: @ 0x004E49F4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000411C               @ size
	.incbin "roms/fe6.gba", 0x4E4A04, 0x411C

.align 2, 0
wav_0x004E8B24: @ 0x004E8B24
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000F95               @ size
	.incbin "roms/fe6.gba", 0x4E8B34, 0xF95

.align 2, 0
wav_0x004E9ACC: @ 0x004E9ACC
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x000023AF               @ loopStart
	.word  0x000039B0               @ size
	.incbin "roms/fe6.gba", 0x4E9ADC, 0x39B0

.align 2, 0
wav_0x004ED490: @ 0x004ED490
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x000037D0               @ loopStart
	.word  0x000044B0               @ size
	.incbin "roms/fe6.gba", 0x4ED4A0, 0x44B0

.align 2, 0
wav_0x00513440: @ 0x00513440
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001AB1               @ size
	.incbin "roms/fe6.gba", 0x513450, 0x1AB1

.align 2, 0
wav_0x004FD41C: @ 0x004FD41C
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000314               @ loopStart
	.word  0x0000180C               @ size
	.incbin "roms/fe6.gba", 0x4FD42C, 0x180C

.align 2, 0
wav_0x00514F04: @ 0x00514F04
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000265B               @ size
	.incbin "roms/fe6.gba", 0x514F14, 0x265B

.align 2, 0
wav_0x005080DC: @ 0x005080DC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000014FC               @ size
	.incbin "roms/fe6.gba", 0x5080EC, 0x14FC

.align 2, 0
wav_0x005095EC: @ 0x005095EC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000023BA               @ size
	.incbin "roms/fe6.gba", 0x5095FC, 0x23BA

.align 2, 0
wav_0x0050B9B8: @ 0x0050B9B8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001785               @ size
	.incbin "roms/fe6.gba", 0x50B9C8, 0x1785

.align 2, 0
wav_0x004FFCC0: @ 0x004FFCC0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000212E               @ size
	.incbin "roms/fe6.gba", 0x4FFCD0, 0x212E

.align 2, 0
wav_0x00501E00: @ 0x00501E00
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000032C2               @ size
	.incbin "roms/fe6.gba", 0x501E10, 0x32C2

.align 2, 0
wav_0x005050D4: @ 0x005050D4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00002FF6               @ size
	.incbin "roms/fe6.gba", 0x5050E4, 0x2FF6

.align 2, 0
wav_0x0050D150: @ 0x0050D150
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001750               @ size
	.incbin "roms/fe6.gba", 0x50D160, 0x1750

.align 2, 0
wav_0x0047D848: @ 0x0047D848
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000D16               @ loopStart
	.word  0x0000182E               @ size
	.incbin "roms/fe6.gba", 0x47D858, 0x182E

.align 2, 0
wav_0x004C8D3C: @ 0x004C8D3C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000017C0               @ size
	.incbin "roms/fe6.gba", 0x4C8D4C, 0x17C0

.align 2, 0
wav_0x004CA510: @ 0x004CA510
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x0000134D               @ loopStart
	.word  0x00003373               @ size
	.incbin "roms/fe6.gba", 0x4CA520, 0x3373

.align 2, 0
wav_0x004CD894: @ 0x004CD894
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00003EBC               @ size
	.incbin "roms/fe6.gba", 0x4CD8A4, 0x3EBC

.align 2, 0
wav_0x004D1764: @ 0x004D1764
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00002876               @ size
	.incbin "roms/fe6.gba", 0x4D1774, 0x2876

.align 2, 0
wav_0x004A69FC: @ 0x004A69FC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000827               @ size
	.incbin "roms/fe6.gba", 0x4A6A0C, 0x827

.align 2, 0
wav_0x004A7234: @ 0x004A7234
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000785               @ loopStart
	.word  0x00001127               @ size
	.incbin "roms/fe6.gba", 0x4A7244, 0x1127

.align 2, 0
wav_0x004D3FEC: @ 0x004D3FEC
	.short 0x0000                   @ type
	.short 0x4000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00002166               @ loopStart
	.word  0x00004353               @ size
	.incbin "roms/fe6.gba", 0x4D3FFC, 0x4353

.align 2, 0
wav_0x004D8350: @ 0x004D8350
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00004E57               @ size
	.incbin "roms/fe6.gba", 0x4D8360, 0x4E57

.align 2, 0
wav_0x004DD1B8: @ 0x004DD1B8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00003C0D               @ size
	.incbin "roms/fe6.gba", 0x4DD1C8, 0x3C0D

.align 2, 0
wav_0x004E0DD8: @ 0x004E0DD8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00003C08               @ size
	.incbin "roms/fe6.gba", 0x4E0DE8, 0x3C08

.align 2, 0
wav_0x0045E444: @ 0x0045E444
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x007D0000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000579               @ size
	.incbin "roms/fe6.gba", 0x45E454, 0x579

.align 2, 0
wav_0x004AA874: @ 0x004AA874
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000ADB               @ size
	.incbin "roms/fe6.gba", 0x4AA884, 0xADB

.align 2, 0
wav_0x004AB360: @ 0x004AB360
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000005B9               @ size
	.incbin "roms/fe6.gba", 0x4AB370, 0x5B9

.align 2, 0
wav_0x004AD740: @ 0x004AD740
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001495               @ size
	.incbin "roms/fe6.gba", 0x4AD750, 0x1495

.align 2, 0
wav_0x005259D0: @ 0x005259D0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000008F6               @ size
	.incbin "roms/fe6.gba", 0x5259E0, 0x8F6

.align 2, 0
wav_0x005262D8: @ 0x005262D8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000004D2               @ size
	.incbin "roms/fe6.gba", 0x5262E8, 0x4D2

.align 2, 0
wav_0x005267BC: @ 0x005267BC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000A74               @ size
	.incbin "roms/fe6.gba", 0x5267CC, 0xA74

.align 2, 0
wav_0x00527244: @ 0x00527244
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001142               @ size
	.incbin "roms/fe6.gba", 0x527254, 0x1142

.align 2, 0
wav_0x00528398: @ 0x00528398
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000005C0               @ size
	.incbin "roms/fe6.gba", 0x5283A8, 0x5C0

.align 2, 0
wav_0x0052896C: @ 0x0052896C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000056E               @ size
	.incbin "roms/fe6.gba", 0x52897C, 0x56E

.align 2, 0
wav_0x00528EEC: @ 0x00528EEC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000A74               @ size
	.incbin "roms/fe6.gba", 0x528EFC, 0xA74

.align 2, 0
wav_0x00529974: @ 0x00529974
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000FB0               @ size
	.incbin "roms/fe6.gba", 0x529984, 0xFB0

.align 2, 0
wav_0x0052A938: @ 0x0052A938
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000606               @ size
	.incbin "roms/fe6.gba", 0x52A948, 0x606

.align 2, 0
wav_0x0052AF50: @ 0x0052AF50
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000004C4               @ size
	.incbin "roms/fe6.gba", 0x52AF60, 0x4C4

.align 2, 0
wav_0x0052B428: @ 0x0052B428
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000A4B               @ size
	.incbin "roms/fe6.gba", 0x52B438, 0xA4B

.align 2, 0
wav_0x0052BE84: @ 0x0052BE84
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000FB0               @ size
	.incbin "roms/fe6.gba", 0x52BE94, 0xFB0

.align 2, 0
wav_0x0052CE48: @ 0x0052CE48
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000777               @ size
	.incbin "roms/fe6.gba", 0x52CE58, 0x777

.align 2, 0
wav_0x0052D5D0: @ 0x0052D5D0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000006EF               @ size
	.incbin "roms/fe6.gba", 0x52D5E0, 0x6EF

.align 2, 0
wav_0x0052DCD0: @ 0x0052DCD0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000A4D               @ size
	.incbin "roms/fe6.gba", 0x52DCE0, 0xA4D

.align 2, 0
wav_0x0052E730: @ 0x0052E730
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000FB0               @ size
	.incbin "roms/fe6.gba", 0x52E740, 0xFB0

.align 2, 0
wav_0x0052F6F4: @ 0x0052F6F4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000061C               @ size
	.incbin "roms/fe6.gba", 0x52F704, 0x61C

.align 2, 0
wav_0x0052FD24: @ 0x0052FD24
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000053A               @ size
	.incbin "roms/fe6.gba", 0x52FD34, 0x53A

.align 2, 0
wav_0x00530270: @ 0x00530270
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000864               @ size
	.incbin "roms/fe6.gba", 0x530280, 0x864

.align 2, 0
wav_0x00530AE8: @ 0x00530AE8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000D14               @ size
	.incbin "roms/fe6.gba", 0x530AF8, 0xD14

.align 2, 0
wav_0x00531810: @ 0x00531810
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000042F               @ size
	.incbin "roms/fe6.gba", 0x531820, 0x42F

.align 2, 0
wav_0x00531C50: @ 0x00531C50
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000004BB               @ size
	.incbin "roms/fe6.gba", 0x531C60, 0x4BB

.align 2, 0
wav_0x0053211C: @ 0x0053211C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000BE0               @ size
	.incbin "roms/fe6.gba", 0x53212C, 0xBE0

.align 2, 0
wav_0x00532D10: @ 0x00532D10
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000950               @ size
	.incbin "roms/fe6.gba", 0x532D20, 0x950

.align 2, 0
wav_0x00533674: @ 0x00533674
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000486               @ size
	.incbin "roms/fe6.gba", 0x533684, 0x486

.align 2, 0
wav_0x00533B0C: @ 0x00533B0C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000047B               @ size
	.incbin "roms/fe6.gba", 0x533B1C, 0x47B

.align 2, 0
wav_0x00533F98: @ 0x00533F98
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000009F0               @ size
	.incbin "roms/fe6.gba", 0x533FA8, 0x9F0

.align 2, 0
wav_0x0053499C: @ 0x0053499C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000C13               @ size
	.incbin "roms/fe6.gba", 0x5349AC, 0xC13

.align 2, 0
wav_0x00539B54: @ 0x00539B54
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000BE4               @ size
	.incbin "roms/fe6.gba", 0x539B64, 0xBE4

.align 2, 0
wav_0x0053A74C: @ 0x0053A74C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000AAA               @ size
	.incbin "roms/fe6.gba", 0x53A75C, 0xAAA

.align 2, 0
wav_0x0053B208: @ 0x0053B208
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000980               @ size
	.incbin "roms/fe6.gba", 0x53B218, 0x980

.align 2, 0
wav_0x0053BB9C: @ 0x0053BB9C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000CB3               @ size
	.incbin "roms/fe6.gba", 0x53BBAC, 0xCB3

.align 2, 0
wav_0x0053C860: @ 0x0053C860
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000C24               @ size
	.incbin "roms/fe6.gba", 0x53C870, 0xC24

.align 2, 0
wav_0x0053D498: @ 0x0053D498
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000005D0               @ size
	.incbin "roms/fe6.gba", 0x53D4A8, 0x5D0

.align 2, 0
wav_0x0053DA7C: @ 0x0053DA7C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000DD4               @ size
	.incbin "roms/fe6.gba", 0x53DA8C, 0xDD4

.align 2, 0
wav_0x0053E864: @ 0x0053E864
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000DB1               @ size
	.incbin "roms/fe6.gba", 0x53E874, 0xDB1

.align 2, 0
wav_0x0053F628: @ 0x0053F628
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000920               @ size
	.incbin "roms/fe6.gba", 0x53F638, 0x920

.align 2, 0
wav_0x005467F8: @ 0x005467F8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000DB2               @ size
	.incbin "roms/fe6.gba", 0x546808, 0xDB2

.align 2, 0
wav_0x005475BC: @ 0x005475BC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000B04               @ size
	.incbin "roms/fe6.gba", 0x5475CC, 0xB04

.align 2, 0
wav_0x005480D4: @ 0x005480D4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000007D8               @ size
	.incbin "roms/fe6.gba", 0x5480E4, 0x7D8

.align 2, 0
wav_0x005488C0: @ 0x005488C0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000C92               @ size
	.incbin "roms/fe6.gba", 0x5488D0, 0xC92

.align 2, 0
wav_0x00549564: @ 0x00549564
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000C38               @ size
	.incbin "roms/fe6.gba", 0x549574, 0xC38

.align 2, 0
wav_0x0054A1B0: @ 0x0054A1B0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000610               @ size
	.incbin "roms/fe6.gba", 0x54A1C0, 0x610

.align 2, 0
wav_0x0054A7D4: @ 0x0054A7D4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000F14               @ size
	.incbin "roms/fe6.gba", 0x54A7E4, 0xF14

.align 2, 0
wav_0x0054B6FC: @ 0x0054B6FC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000CC8               @ size
	.incbin "roms/fe6.gba", 0x54B70C, 0xCC8

.align 2, 0
wav_0x0054C3D8: @ 0x0054C3D8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000009AC               @ size
	.incbin "roms/fe6.gba", 0x54C3E8, 0x9AC

.align 2, 0
wav_0x0053FF5C: @ 0x0053FF5C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000E04               @ size
	.incbin "roms/fe6.gba", 0x53FF6C, 0xE04

.align 2, 0
wav_0x00540D74: @ 0x00540D74
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000AAA               @ size
	.incbin "roms/fe6.gba", 0x540D84, 0xAAA

.align 2, 0
wav_0x00541830: @ 0x00541830
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000A40               @ size
	.incbin "roms/fe6.gba", 0x541840, 0xA40

.align 2, 0
wav_0x00542284: @ 0x00542284
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000C82               @ size
	.incbin "roms/fe6.gba", 0x542294, 0xC82

.align 2, 0
wav_0x00542F18: @ 0x00542F18
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000C24               @ size
	.incbin "roms/fe6.gba", 0x542F28, 0xC24

.align 2, 0
wav_0x00543B50: @ 0x00543B50
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000006AC               @ size
	.incbin "roms/fe6.gba", 0x543B60, 0x6AC

.align 2, 0
wav_0x00544210: @ 0x00544210
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000EC7               @ size
	.incbin "roms/fe6.gba", 0x544220, 0xEC7

.align 2, 0
wav_0x005450E8: @ 0x005450E8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000D84               @ size
	.incbin "roms/fe6.gba", 0x5450F8, 0xD84

.align 2, 0
wav_0x00545E80: @ 0x00545E80
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000964               @ size
	.incbin "roms/fe6.gba", 0x545E90, 0x964

.align 2, 0
wav_0x0054CD98: @ 0x0054CD98
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000D1C               @ size
	.incbin "roms/fe6.gba", 0x54CDA8, 0xD1C

.align 2, 0
wav_0x0054DAC8: @ 0x0054DAC8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000B6E               @ size
	.incbin "roms/fe6.gba", 0x54DAD8, 0xB6E

.align 2, 0
wav_0x0054E648: @ 0x0054E648
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000A48               @ size
	.incbin "roms/fe6.gba", 0x54E658, 0xA48

.align 2, 0
wav_0x0054F0A4: @ 0x0054F0A4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000CFC               @ size
	.incbin "roms/fe6.gba", 0x54F0B4, 0xCFC

.align 2, 0
wav_0x0054FDB4: @ 0x0054FDB4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000C24               @ size
	.incbin "roms/fe6.gba", 0x54FDC4, 0xC24

.align 2, 0
wav_0x005509EC: @ 0x005509EC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000006E6               @ size
	.incbin "roms/fe6.gba", 0x5509FC, 0x6E6

.align 2, 0
wav_0x005510E4: @ 0x005510E4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000E34               @ size
	.incbin "roms/fe6.gba", 0x5510F4, 0xE34

.align 2, 0
wav_0x00551F2C: @ 0x00551F2C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000ACB               @ size
	.incbin "roms/fe6.gba", 0x551F3C, 0xACB

.align 2, 0
wav_0x00552A08: @ 0x00552A08
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000972               @ size
	.incbin "roms/fe6.gba", 0x552A18, 0x972

.align 2, 0
wav_0x0055338C: @ 0x0055338C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000D14               @ size
	.incbin "roms/fe6.gba", 0x55339C, 0xD14

.align 2, 0
wav_0x005540B4: @ 0x005540B4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000B74               @ size
	.incbin "roms/fe6.gba", 0x5540C4, 0xB74

.align 2, 0
wav_0x00554C3C: @ 0x00554C3C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000B64               @ size
	.incbin "roms/fe6.gba", 0x554C4C, 0xB64

.align 2, 0
wav_0x005557B4: @ 0x005557B4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000C74               @ size
	.incbin "roms/fe6.gba", 0x5557C4, 0xC74

.align 2, 0
wav_0x0055643C: @ 0x0055643C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000B48               @ size
	.incbin "roms/fe6.gba", 0x55644C, 0xB48

.align 2, 0
wav_0x00556F98: @ 0x00556F98
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000006B4               @ size
	.incbin "roms/fe6.gba", 0x556FA8, 0x6B4

.align 2, 0
wav_0x00557660: @ 0x00557660
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000F28               @ size
	.incbin "roms/fe6.gba", 0x557670, 0xF28

.align 2, 0
wav_0x0055859C: @ 0x0055859C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000009A0               @ size
	.incbin "roms/fe6.gba", 0x5585AC, 0x9A0

.align 2, 0
wav_0x00558F50: @ 0x00558F50
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000009AC               @ size
	.incbin "roms/fe6.gba", 0x558F60, 0x9AC

.align 2, 0
wav_0x00559910: @ 0x00559910
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000DB2               @ size
	.incbin "roms/fe6.gba", 0x559920, 0xDB2

.align 2, 0
wav_0x0055A6D4: @ 0x0055A6D4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000AEC               @ size
	.incbin "roms/fe6.gba", 0x55A6E4, 0xAEC

.align 2, 0
wav_0x0055B1D4: @ 0x0055B1D4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000A40               @ size
	.incbin "roms/fe6.gba", 0x55B1E4, 0xA40

.align 2, 0
wav_0x0055BC28: @ 0x0055BC28
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000C08               @ size
	.incbin "roms/fe6.gba", 0x55BC38, 0xC08

.align 2, 0
wav_0x0055C844: @ 0x0055C844
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000B9C               @ size
	.incbin "roms/fe6.gba", 0x55C854, 0xB9C

.align 2, 0
wav_0x0055D3F4: @ 0x0055D3F4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000006C2               @ size
	.incbin "roms/fe6.gba", 0x55D404, 0x6C2

.align 2, 0
wav_0x0055DAC8: @ 0x0055DAC8
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00001258               @ size
	.incbin "roms/fe6.gba", 0x55DAD8, 0x1258

.align 2, 0
wav_0x0055ED34: @ 0x0055ED34
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000ACC               @ size
	.incbin "roms/fe6.gba", 0x55ED44, 0xACC

.align 2, 0
wav_0x0055F814: @ 0x0055F814
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000BB7               @ size
	.incbin "roms/fe6.gba", 0x55F824, 0xBB7

.align 2, 0
wav_0x005603DC: @ 0x005603DC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000E8E               @ size
	.incbin "roms/fe6.gba", 0x5603EC, 0xE8E

.align 2, 0
wav_0x0056127C: @ 0x0056127C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000A73               @ size
	.incbin "roms/fe6.gba", 0x56128C, 0xA73

.align 2, 0
wav_0x00561D00: @ 0x00561D00
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000A40               @ size
	.incbin "roms/fe6.gba", 0x561D10, 0xA40

.align 2, 0
wav_0x00562754: @ 0x00562754
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000DF0               @ size
	.incbin "roms/fe6.gba", 0x562764, 0xDF0

.align 2, 0
wav_0x00563558: @ 0x00563558
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000C1E               @ size
	.incbin "roms/fe6.gba", 0x563568, 0xC1E

.align 2, 0
wav_0x00564188: @ 0x00564188
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000777               @ size
	.incbin "roms/fe6.gba", 0x564198, 0x777

.align 2, 0
wav_0x00564910: @ 0x00564910
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000010FA               @ size
	.incbin "roms/fe6.gba", 0x564920, 0x10FA

.align 2, 0
wav_0x00565A1C: @ 0x00565A1C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000BBE               @ size
	.incbin "roms/fe6.gba", 0x565A2C, 0xBBE

.align 2, 0
wav_0x005665EC: @ 0x005665EC
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000BE7               @ size
	.incbin "roms/fe6.gba", 0x5665FC, 0xBE7

.align 2, 0
wav_0x0053672C: @ 0x0053672C
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000DA0               @ size
	.incbin "roms/fe6.gba", 0x53673C, 0xDA0

.align 2, 0
wav_0x005374E0: @ 0x005374E0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x000017D2               @ size
	.incbin "roms/fe6.gba", 0x5374F0, 0x17D2

.align 2, 0
wav_0x005355C0: @ 0x005355C0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x0000115A               @ size
	.incbin "roms/fe6.gba", 0x5355D0, 0x115A

.align 2, 0
wav_0x00538CC4: @ 0x00538CC4
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00A44000               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000E7D               @ size
	.incbin "roms/fe6.gba", 0x538CD4, 0xE7D

.align 2, 0
wav_0x0045E9D0: @ 0x0045E9D0
	.short 0x0000                   @ type
	.short 0x0000                   @ status
	.word  0x00D10C00               @ freq
	.word  0x00000000               @ loopStart
	.word  0x00000FA1               @ size
	.incbin "roms/fe6.gba", 0x45E9E0, 0xFA1
