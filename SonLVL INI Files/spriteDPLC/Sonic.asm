; -------------------------------------------------------------------------------
; Dynamic pattern load cues - Sonic
; -------------------------------------------------------------------------------

DPLC_Sonic:	
		Sonic_Sprites	DPLC				; generate the pointer table

DPLC_Sonic_Blank:	dplcheader
DPLC_Sonic_Blank_End

DPLC_Sonic_Stand:	dplcheader
		dplc_entry	4, 0
		dplc_entry	4, 4
		dplc_entry	6, 8
		dplc_entry	6, $E
DPLC_Sonic_Stand_End

DPLC_Sonic_Blink:	dplcheader
		dplc_entry	$C, $14
		dplc_entry	6, $20
DPLC_Sonic_Blink_End

DPLC_Sonic_Wait1:	dplcheader
		dplc_entry	4, $26
		dplc_entry	4, $2A
		dplc_entry	4, $2E
		dplc_entry	6, $32
DPLC_Sonic_Wait1_End

DPLC_Sonic_Wait2:	dplcheader
		dplc_entry	4, $26
		dplc_entry	4, $38
		dplc_entry	4, $2E
		dplc_entry	6, $32
DPLC_Sonic_Wait2_End

DPLC_Sonic_Wait3:	dplcheader
		dplc_entry	4, $26
		dplc_entry	4, $38
		dplc_entry	4, $2E
		dplc_entry	2, $32
		dplc_entry	4, $3C
DPLC_Sonic_Wait3_End

DPLC_Sonic_Wait4:	dplcheader
		dplc_entry	4, $26
		dplc_entry	8, $40
		dplc_entry	6, $32
DPLC_Sonic_Wait4_End

DPLC_Sonic_LayDown:	dplcheader
		dplc_entry	$C, $48
		dplc_entry	2, $54
DPLC_Sonic_LayDown_End

DPLC_Sonic_Laying1:	dplcheader
		dplc_entry	$C, $56
		dplc_entry	4, $62
DPLC_Sonic_Laying1_End

DPLC_Sonic_Laying2:	dplcheader
		dplc_entry	$C, $56
		dplc_entry	4, $66
DPLC_Sonic_Laying2_End

DPLC_Sonic_GetUp:	dplcheader
		dplc_entry	$C, $6A
		dplc_entry	8, $76
DPLC_Sonic_GetUp_End

DPLC_Sonic_LookUp1:	dplcheader
		dplc_entry	4, $7E
		dplc_entry	4, $82
		dplc_entry	6, $86
		dplc_entry	6, $E
DPLC_Sonic_LookUp1_End

DPLC_Sonic_LookUp2:	dplcheader
		dplc_entry	4, $8C
		dplc_entry	4, $90
		dplc_entry	4, $94
		dplc_entry	6, $E
DPLC_Sonic_LookUp2_End

DPLC_Sonic_Walk11:	dplcheader
		dplc_entry	8, $98
		dplc_entry	2, $A0
		dplc_entry	$10, $A2
DPLC_Sonic_Walk11_End

DPLC_Sonic_Walk12:	dplcheader
		dplc_entry	8, $98
		dplc_entry	2, $B2
		dplc_entry	$C, $B4
		dplc_entry	2, $C0
DPLC_Sonic_Walk12_End

DPLC_Sonic_Walk13:	dplcheader
		dplc_entry	8, $C2
		dplc_entry	6, $CA
		dplc_entry	4, $D0
DPLC_Sonic_Walk13_End

DPLC_Sonic_Walk14:	dplcheader
		dplc_entry	6, $D4
		dplc_entry	$10, $DA
DPLC_Sonic_Walk14_End

DPLC_Sonic_Walk15:	dplcheader
		dplc_entry	6, $D4
		dplc_entry	$10, $EA
		dplc_entry	2, $FA
DPLC_Sonic_Walk15_End

DPLC_Sonic_Walk16:	dplcheader
		dplc_entry	6, $D4
		dplc_entry	2, $FC
		dplc_entry	$C, $FE
		dplc_entry	2, $10A
DPLC_Sonic_Walk16_End

DPLC_Sonic_Walk17:	dplcheader
		dplc_entry	8, $C2
		dplc_entry	6, $10C
		dplc_entry	4, $112
DPLC_Sonic_Walk17_End

DPLC_Sonic_Walk18:	dplcheader
		dplc_entry	8, $98
		dplc_entry	$C, $116
DPLC_Sonic_Walk18_End

DPLC_Sonic_Walk21:	dplcheader
		dplc_entry	6, $122
		dplc_entry	6, $128
		dplc_entry	4, $12E
		dplc_entry	2, $132
DPLC_Sonic_Walk21_End

DPLC_Sonic_Walk22:	dplcheader
		dplc_entry	6, $122
		dplc_entry	2, $134
		dplc_entry	8, $136
		dplc_entry	4, $13E
		dplc_entry	2, $142
DPLC_Sonic_Walk22_End

DPLC_Sonic_Walk23:	dplcheader
		dplc_entry	8, $144
		dplc_entry	4, $14C
		dplc_entry	2, $150
		dplc_entry	4, $152
DPLC_Sonic_Walk23_End

DPLC_Sonic_Walk24:	dplcheader
		dplc_entry	6, $156
		dplc_entry	2, $15C
		dplc_entry	4, $15E
		dplc_entry	$C, $162
DPLC_Sonic_Walk24_End

DPLC_Sonic_Walk25:	dplcheader
		dplc_entry	6, $156
		dplc_entry	2, $16E
		dplc_entry	8, $170
		dplc_entry	2, $178
		dplc_entry	4, $17A
DPLC_Sonic_Walk25_End

DPLC_Sonic_Walk26:	dplcheader
		dplc_entry	6, $156
		dplc_entry	2, $17E
		dplc_entry	8, $180
		dplc_entry	4, $188
		dplc_entry	2, $18C
DPLC_Sonic_Walk26_End

DPLC_Sonic_Walk27:	dplcheader
		dplc_entry	8, $144
		dplc_entry	4, $18E
		dplc_entry	2, $192
		dplc_entry	4, $194
DPLC_Sonic_Walk27_End

DPLC_Sonic_Walk28:	dplcheader
		dplc_entry	6, $122
		dplc_entry	6, $198
		dplc_entry	2, $19E
		dplc_entry	2, $1A0
		dplc_entry	4, $1A2
DPLC_Sonic_Walk28_End

DPLC_Sonic_Walk31:	dplcheader
		dplc_entry	8, $1A6
		dplc_entry	$C, $1AE
		dplc_entry	4, $1BA
DPLC_Sonic_Walk31_End

DPLC_Sonic_Walk32:	dplcheader
		dplc_entry	8, $1A6
		dplc_entry	$C, $1BE
		dplc_entry	4, $1CA
DPLC_Sonic_Walk32_End

DPLC_Sonic_Walk33:	dplcheader
		dplc_entry	8, $1CE
		dplc_entry	4, $1D6
		dplc_entry	4, $1DA
DPLC_Sonic_Walk33_End

DPLC_Sonic_Walk34:	dplcheader
		dplc_entry	8, $1DE
		dplc_entry	$C, $1E6
DPLC_Sonic_Walk34_End

DPLC_Sonic_Walk35:	dplcheader
		dplc_entry	8, $1DE
		dplc_entry	4, $1F2
		dplc_entry	$C, $1F6
DPLC_Sonic_Walk35_End

DPLC_Sonic_Walk36:	dplcheader
		dplc_entry	8, $1DE
		dplc_entry	$C, $202
		dplc_entry	4, $20E
DPLC_Sonic_Walk36_End

DPLC_Sonic_Walk37:	dplcheader
		dplc_entry	8, $1CE
		dplc_entry	4, $212
		dplc_entry	4, $216
DPLC_Sonic_Walk37_End

DPLC_Sonic_Walk38:	dplcheader
		dplc_entry	8, $1A6
		dplc_entry	$C, $21A
DPLC_Sonic_Walk38_End

DPLC_Sonic_Walk41:	dplcheader
		dplc_entry	4, $226
		dplc_entry	8, $22A
		dplc_entry	8, $232
		dplc_entry	2, $23A
DPLC_Sonic_Walk41_End

DPLC_Sonic_Walk42:	dplcheader
		dplc_entry	4, $23C
		dplc_entry	6, $240
		dplc_entry	8, $22A
		dplc_entry	8, $246
		dplc_entry	2, $23A
DPLC_Sonic_Walk42_End

DPLC_Sonic_Walk43:	dplcheader
		dplc_entry	8, $24E
		dplc_entry	8, $256
		dplc_entry	4, $25E
		dplc_entry	2, $262
DPLC_Sonic_Walk43_End

DPLC_Sonic_Walk44:	dplcheader
		dplc_entry	8, $264
		dplc_entry	8, $26C
		dplc_entry	6, $274
		dplc_entry	2, $27A
DPLC_Sonic_Walk44_End

DPLC_Sonic_Walk45:	dplcheader
		dplc_entry	6, $27C
		dplc_entry	8, $26C
		dplc_entry	8, $282
		dplc_entry	2, $27A
DPLC_Sonic_Walk45_End

DPLC_Sonic_Walk46:	dplcheader
		dplc_entry	4, $28A
		dplc_entry	6, $28E
		dplc_entry	8, $26C
		dplc_entry	8, $294
		dplc_entry	2, $27A
DPLC_Sonic_Walk46_End

DPLC_Sonic_Walk47:	dplcheader
		dplc_entry	8, $29C
		dplc_entry	8, $256
		dplc_entry	4, $2A4
		dplc_entry	2, $262
DPLC_Sonic_Walk47_End

DPLC_Sonic_Walk48:	dplcheader
		dplc_entry	8, $2A8
		dplc_entry	8, $22A
		dplc_entry	6, $2B0
		dplc_entry	2, $23A
DPLC_Sonic_Walk48_End

DPLC_Sonic_Run11:	dplcheader
		dplc_entry	6, $2B6
		dplc_entry	$10, $2BC
DPLC_Sonic_Run11_End

DPLC_Sonic_Run12:	dplcheader
		dplc_entry	6, $2CC
		dplc_entry	$10, $2D2
DPLC_Sonic_Run12_End

DPLC_Sonic_Run13:	dplcheader
		dplc_entry	6, $2B6
		dplc_entry	$10, $2E2
DPLC_Sonic_Run13_End

DPLC_Sonic_Run14:	dplcheader
		dplc_entry	6, $2CC
		dplc_entry	$10, $2F2
DPLC_Sonic_Run14_End

DPLC_Sonic_Run21:	dplcheader
		dplc_entry	6, $302
		dplc_entry	2, $308
		dplc_entry	8, $30A
		dplc_entry	6, $312
DPLC_Sonic_Run21_End

DPLC_Sonic_Run22:	dplcheader
		dplc_entry	8, $318
		dplc_entry	8, $320
		dplc_entry	6, $328
DPLC_Sonic_Run22_End

DPLC_Sonic_Run23:	dplcheader
		dplc_entry	6, $302
		dplc_entry	2, $32E
		dplc_entry	8, $330
		dplc_entry	6, $338
DPLC_Sonic_Run23_End

DPLC_Sonic_Run24:	dplcheader
		dplc_entry	8, $318
		dplc_entry	8, $33E
		dplc_entry	6, $346
DPLC_Sonic_Run24_End

DPLC_Sonic_Run31:	dplcheader
		dplc_entry	8, $34C
		dplc_entry	$C, $354
DPLC_Sonic_Run31_End

DPLC_Sonic_Run32:	dplcheader
		dplc_entry	8, $360
		dplc_entry	$C, $368
DPLC_Sonic_Run32_End

DPLC_Sonic_Run33:	dplcheader
		dplc_entry	8, $34C
		dplc_entry	$C, $374
DPLC_Sonic_Run33_End

DPLC_Sonic_Run34:	dplcheader
		dplc_entry	8, $360
		dplc_entry	$C, $380
DPLC_Sonic_Run34_End

DPLC_Sonic_Run41:	dplcheader
		dplc_entry	2, $38C
		dplc_entry	8, $38E
		dplc_entry	$C, $396
DPLC_Sonic_Run41_End

DPLC_Sonic_Run42:	dplcheader
		dplc_entry	8, $3A2
		dplc_entry	$C, $3AA
DPLC_Sonic_Run42_End

DPLC_Sonic_Run43:	dplcheader
		dplc_entry	2, $3B6
		dplc_entry	8, $38E
		dplc_entry	$C, $3C0
DPLC_Sonic_Run43_End

DPLC_Sonic_Run44:	dplcheader
		dplc_entry	8, $3A2
		dplc_entry	$C, $3CC
DPLC_Sonic_Run44_End

DPLC_Sonic_Roll1:	dplcheader
		dplc_entry	$10, $400
DPLC_Sonic_Roll1_End

DPLC_Sonic_Roll2:	dplcheader
		dplc_entry	$10, $410
DPLC_Sonic_Roll2_End

DPLC_Sonic_Roll3:	dplcheader
		dplc_entry	$10, $420
DPLC_Sonic_Roll3_End

DPLC_Sonic_Roll4:	dplcheader
		dplc_entry	$10, $430
DPLC_Sonic_Roll4_End

DPLC_Sonic_Roll5:	dplcheader
		dplc_entry	$10, $440
DPLC_Sonic_Roll5_End

DPLC_Sonic_Spindash1:	dplcheader
		dplc_entry	$10, $450
DPLC_Sonic_Spindash1_End

DPLC_Sonic_Spindash2:	dplcheader
		dplc_entry	$10, $460
DPLC_Sonic_Spindash2_End

DPLC_Sonic_Spindash3:	dplcheader
		dplc_entry	$10, $470
DPLC_Sonic_Spindash3_End

DPLC_Sonic_Spindash4:	dplcheader
		dplc_entry	$10, $480
DPLC_Sonic_Spindash4_End

DPLC_Sonic_Spindash5:	dplcheader
		dplc_entry	$10, $490
DPLC_Sonic_Spindash5_End

DPLC_Sonic_Spindash6:	dplcheader
		dplc_entry	$10, $4A0
DPLC_Sonic_Spindash6_End

DPLC_Sonic_Push1:	dplcheader
		dplc_entry	6, $3D8
		dplc_entry	6, $3DE
		dplc_entry	8, $3E4
DPLC_Sonic_Push1_End

DPLC_Sonic_Push2:	dplcheader
		dplc_entry	6, $3D8
		dplc_entry	6, $3EC
		dplc_entry	6, $3F2
DPLC_Sonic_Push2_End

DPLC_Sonic_Push3:	dplcheader
		dplc_entry	6, $3D8
		dplc_entry	6, $3DE
		dplc_entry	8, $3B8
DPLC_Sonic_Push3_End

DPLC_Sonic_Push4:	dplcheader
		dplc_entry	6, $3D8
		dplc_entry	6, $3EC
		dplc_entry	6, $4B0
DPLC_Sonic_Push4_End

DPLC_Sonic_Duck1:	dplcheader
		dplc_entry	$C, $4B6
DPLC_Sonic_Duck1_End

DPLC_Sonic_Duck2:	dplcheader
		dplc_entry	$10, $4C2
DPLC_Sonic_Duck2_End

DPLC_Sonic_Injury:	dplcheader
		dplc_entry	2, $4D2
		dplc_entry	$10, $4D4
DPLC_Sonic_Injury_End

DPLC_Sonic_OilSlide:	dplcheader
		dplc_entry	4, $4E4
		dplc_entry	$10, $4E8
DPLC_Sonic_OilSlide_End

DPLC_Sonic_Hang11:	dplcheader
		dplc_entry	$10, $4F8
		dplc_entry	2, $508
		dplc_entry	4, $50A
DPLC_Sonic_Hang11_End

DPLC_Sonic_Hang12:	dplcheader
		dplc_entry	$10, $50E
		dplc_entry	2, $51E
		dplc_entry	4, $520
DPLC_Sonic_Hang12_End

DPLC_Sonic_Hang21:	dplcheader
		dplc_entry	$C, $524
		dplc_entry	6, $530
DPLC_Sonic_Hang21_End

DPLC_Sonic_Hang22:	dplcheader
		dplc_entry	$C, $536
		dplc_entry	6, $542
DPLC_Sonic_Hang22_End

DPLC_Sonic_Float3:
DPLC_Sonic_Float1:	dplcheader
		dplc_entry	4, $548
		dplc_entry	$C, $54C
		dplc_entry	2, $558
DPLC_Sonic_Float1_End

DPLC_Sonic_Float2:	dplcheader
		dplc_entry	2, $55A
		dplc_entry	8, $55C
DPLC_Sonic_Float2_End

DPLC_Sonic_Float5:
DPLC_Sonic_Float4:	dplcheader
		dplc_entry	2, $564
		dplc_entry	$C, $566
		dplc_entry	2, $572
DPLC_Sonic_Float4_End

DPLC_Sonic_Float6:	dplcheader
		dplc_entry	4, $574
		dplc_entry	$C, $578
		dplc_entry	2, $584
DPLC_Sonic_Float6_End

DPLC_Sonic_GetAir:	dplcheader
		dplc_entry	6, $586
		dplc_entry	$10, $58C
		dplc_entry	2, $59C
DPLC_Sonic_GetAir_End

DPLC_Sonic_Spring:	dplcheader
		dplc_entry	$C, $59E
		dplc_entry	4, $5AA
DPLC_Sonic_Spring_End

DPLC_Sonic_Death:	dplcheader
		dplc_entry	2, $5AE
		dplc_entry	$C, $5B0
		dplc_entry	2, $5BC
		dplc_entry	8, $5BE
DPLC_Sonic_Death_End

DPLC_Sonic_Drown:	dplcheader
		dplc_entry	2, $5AE
		dplc_entry	$C, $5C6
		dplc_entry	2, $5BC
		dplc_entry	8, $5BE
DPLC_Sonic_Drown_End

DPLC_Sonic_Burnt:	dplcheader
		dplc_entry	8, $5D2
		dplc_entry	2, $5DA
		dplc_entry	$C, $5DC
DPLC_Sonic_Burnt_End

DPLC_Sonic_Tumble1:	dplcheader
		dplc_entry	6, $5E8
		dplc_entry	$C, $5EE
		dplc_entry	2, $5FA
DPLC_Sonic_Tumble1_End

DPLC_Sonic_Tumble2:	dplcheader
		dplc_entry	$C, $5FC
		dplc_entry	2, $608
		dplc_entry	4, $60A
DPLC_Sonic_Tumble2_End

DPLC_Sonic_Tumble3:	dplcheader
		dplc_entry	$C, $60E
		dplc_entry	2, $61A
DPLC_Sonic_Tumble3_End

DPLC_Sonic_Tumble4:	dplcheader
		dplc_entry	$10, $61C
DPLC_Sonic_Tumble4_End

DPLC_Sonic_Tumble5:	dplcheader
		dplc_entry	$C, $62C
		dplc_entry	2, $638
DPLC_Sonic_Tumble5_End

DPLC_Sonic_Tumble6:	dplcheader
		dplc_entry	2, $63A
		dplc_entry	$C, $63C
		dplc_entry	2, $648
DPLC_Sonic_Tumble6_End

DPLC_Sonic_Tumble7:	dplcheader
		dplc_entry	6, $64A
		dplc_entry	$C, $650
		dplc_entry	4, $65C
DPLC_Sonic_Tumble7_End

DPLC_Sonic_Tumble8:	dplcheader
		dplc_entry	4, $660
		dplc_entry	$C, $664
		dplc_entry	2, $670
DPLC_Sonic_Tumble8_End

DPLC_Sonic_Tumble9:	dplcheader
		dplc_entry	$C, $672
		dplc_entry	2, $67E
DPLC_Sonic_Tumble9_End

DPLC_Sonic_Tumble10:	dplcheader
		dplc_entry	2, $680
		dplc_entry	$C, $682
DPLC_Sonic_Tumble10_End

DPLC_Sonic_Tumble11:	dplcheader
		dplc_entry	4, $68E
		dplc_entry	$C, $692
		dplc_entry	2, $69E
DPLC_Sonic_Tumble11_End

DPLC_Sonic_Tumble12:	dplcheader
		dplc_entry	4, $6A0
		dplc_entry	$10, $6A4
DPLC_Sonic_Tumble12_End

DPLC_Sonic_Vine1:	dplcheader
		dplc_entry	8, $6B4
		dplc_entry	4, $6BC
		dplc_entry	6, $6C0
DPLC_Sonic_Vine1_End

DPLC_Sonic_Vine2:	dplcheader
		dplc_entry	8, $6C6
		dplc_entry	4, $6BC
		dplc_entry	6, $6CE
DPLC_Sonic_Vine2_End

DPLC_SuperSonic_Transform1:	dplcheader
		dplc_entry	$C, $7D6
DPLC_SuperSonic_Transform1_End

DPLC_SuperSonic_Transform2:	dplcheader
		dplc_entry	$C, $7E2
		dplc_entry	2, $7EE
		dplc_entry	6, $7F0
DPLC_SuperSonic_Transform2_End

DPLC_SuperSonic_Transform3:	dplcheader
		dplc_entry	9, $7F6
		dplc_entry	1, $A18
		dplc_entry	9, $800
DPLC_SuperSonic_Transform3_End

DPLC_SuperSonic_Transform4:	dplcheader
		dplc_entry	3, $809
		dplc_entry	2, $80C
		dplc_entry	4, $80E
		dplc_entry	9, $812
		dplc_entry	1, $81B
DPLC_SuperSonic_Transform4_End

DPLC_SuperSonic_Transform5:	dplcheader
		dplc_entry	3, $81C
		dplc_entry	2, $81F
		dplc_entry	4, $80E
		dplc_entry	9, $812
		dplc_entry	1, $81B
DPLC_SuperSonic_Transform5_End

DPLC_SuperSonic_Stand1:	dplcheader
		dplc_entry	9, $821
		dplc_entry	9, $82A
DPLC_SuperSonic_Stand1_End

DPLC_SuperSonic_Stand2:	dplcheader
		dplc_entry	9, $833
		dplc_entry	9, $82A
DPLC_SuperSonic_Stand2_End

DPLC_SuperSonic_Stand3:	dplcheader
		dplc_entry	9, $83C
		dplc_entry	9, $82A
DPLC_SuperSonic_Stand3_End

DPLC_SuperSonic_Walk11:	dplcheader
		dplc_entry	$C, $6D4
		dplc_entry	2, $A0
		dplc_entry	$10, $A2
DPLC_SuperSonic_Walk11_End

DPLC_SuperSonic_Walk12:	dplcheader
		dplc_entry	$C, $6D4
		dplc_entry	2, $B2
		dplc_entry	$C, $B4
		dplc_entry	2, $C0
DPLC_SuperSonic_Walk12_End

DPLC_SuperSonic_Walk13:	dplcheader
		dplc_entry	$C, $6E0
		dplc_entry	6, $CA
		dplc_entry	4, $D0
DPLC_SuperSonic_Walk13_End

DPLC_SuperSonic_Walk14:	dplcheader
		dplc_entry	9, $6EC
		dplc_entry	$10, $DA
DPLC_SuperSonic_Walk14_End

DPLC_SuperSonic_Walk15:	dplcheader
		dplc_entry	9, $6EC
		dplc_entry	$10, $EA
		dplc_entry	2, $FA
DPLC_SuperSonic_Walk15_End

DPLC_SuperSonic_Walk16:	dplcheader
		dplc_entry	9, $6EC
		dplc_entry	2, $FC
		dplc_entry	$C, $FE
		dplc_entry	2, $10A
DPLC_SuperSonic_Walk16_End

DPLC_SuperSonic_Walk17:	dplcheader
		dplc_entry	$C, $6E0
		dplc_entry	6, $10C
		dplc_entry	4, $112
DPLC_SuperSonic_Walk17_End

DPLC_SuperSonic_Walk18:	dplcheader
		dplc_entry	$C, $6D4
		dplc_entry	$C, $116
DPLC_SuperSonic_Walk18_End

DPLC_SuperSonic_Walk21:	dplcheader
		dplc_entry	8, $6F5
		dplc_entry	4, $12E
		dplc_entry	6, $128
		dplc_entry	2, $132
DPLC_SuperSonic_Walk21_End

DPLC_SuperSonic_Walk22:	dplcheader
		dplc_entry	8, $6F5
		dplc_entry	2, $134
		dplc_entry	8, $136
		dplc_entry	4, $13E
		dplc_entry	2, $142
DPLC_SuperSonic_Walk22_End

DPLC_SuperSonic_Walk23:	dplcheader
		dplc_entry	9, $6FD
		dplc_entry	4, $14C
		dplc_entry	1, $706
		dplc_entry	2, $150
		dplc_entry	4, $152
DPLC_SuperSonic_Walk23_End

DPLC_SuperSonic_Walk24:	dplcheader
		dplc_entry	1, $707
		dplc_entry	8, $708
		dplc_entry	2, $15C
		dplc_entry	4, $15E
		dplc_entry	$C, $162
DPLC_SuperSonic_Walk24_End

DPLC_SuperSonic_Walk25:	dplcheader
		dplc_entry	1, $707
		dplc_entry	8, $708
		dplc_entry	2, $16E
		dplc_entry	2, $178
		dplc_entry	8, $170
		dplc_entry	4, $17A
DPLC_SuperSonic_Walk25_End

DPLC_SuperSonic_Walk26:	dplcheader
		dplc_entry	1, $707
		dplc_entry	8, $708
		dplc_entry	2, $17E
		dplc_entry	8, $180
		dplc_entry	4, $188
		dplc_entry	2, $18C
DPLC_SuperSonic_Walk26_End

DPLC_SuperSonic_Walk27:	dplcheader
		dplc_entry	9, $6FD
		dplc_entry	4, $18E
		dplc_entry	1, $706
		dplc_entry	2, $192
		dplc_entry	4, $194
DPLC_SuperSonic_Walk27_End

DPLC_SuperSonic_Walk28:	dplcheader
		dplc_entry	8, $6F5
		dplc_entry	2, $19E
		dplc_entry	6, $198
		dplc_entry	1, $1A0
		dplc_entry	4, $1A2
DPLC_SuperSonic_Walk28_End

DPLC_SuperSonic_Walk31:	dplcheader
		dplc_entry	$C, $710
		dplc_entry	$C, $1AE
		dplc_entry	4, $1BA
DPLC_SuperSonic_Walk31_End

DPLC_SuperSonic_Walk32:	dplcheader
		dplc_entry	$C, $710
		dplc_entry	$C, $1BE
		dplc_entry	4, $1CA
DPLC_SuperSonic_Walk32_End

DPLC_SuperSonic_Walk33:	dplcheader
		dplc_entry	$C, $71C
		dplc_entry	4, $1D6
		dplc_entry	4, $1DA
DPLC_SuperSonic_Walk33_End

DPLC_SuperSonic_Walk34:	dplcheader
		dplc_entry	9, $728
		dplc_entry	$C, $1E6
DPLC_SuperSonic_Walk34_End

DPLC_SuperSonic_Walk35:	dplcheader
		dplc_entry	9, $728
		dplc_entry	4, $1F2
		dplc_entry	$C, $1F6
DPLC_SuperSonic_Walk35_End

DPLC_SuperSonic_Walk36:	dplcheader
		dplc_entry	9, $728
		dplc_entry	$C, $202
		dplc_entry	4, $20E
DPLC_SuperSonic_Walk36_End

DPLC_SuperSonic_Walk37:	dplcheader
		dplc_entry	$C, $71C
		dplc_entry	4, $212
		dplc_entry	4, $216
DPLC_SuperSonic_Walk37_End

DPLC_SuperSonic_Walk38:	dplcheader
		dplc_entry	$C, $710
		dplc_entry	$C, $21A
DPLC_SuperSonic_Walk38_End

DPLC_SuperSonic_Walk41:	dplcheader
		dplc_entry	4, $226
		dplc_entry	8, $731
		dplc_entry	8, $232
		dplc_entry	1, $739
DPLC_SuperSonic_Walk41_End

DPLC_SuperSonic_Walk42:	dplcheader
		dplc_entry	4, $23C
		dplc_entry	6, $240
		dplc_entry	8, $731
		dplc_entry	8, $246
		dplc_entry	1, $739
DPLC_SuperSonic_Walk42_End

DPLC_SuperSonic_Walk43:	dplcheader
		dplc_entry	8, $24E
		dplc_entry	8, $73A
		dplc_entry	4, $25E
		dplc_entry	2, $742
DPLC_SuperSonic_Walk43_End

DPLC_SuperSonic_Walk44:	dplcheader
		dplc_entry	8, $264
		dplc_entry	$C, $744
		dplc_entry	6, $274
		dplc_entry	1, $750
DPLC_SuperSonic_Walk44_End

DPLC_SuperSonic_Walk45:	dplcheader
		dplc_entry	6, $27C
		dplc_entry	$C, $744
		dplc_entry	8, $282
		dplc_entry	1, $750
DPLC_SuperSonic_Walk45_End

DPLC_SuperSonic_Walk46:	dplcheader
		dplc_entry	4, $28A
		dplc_entry	6, $28E
		dplc_entry	$C, $744
		dplc_entry	8, $294
		dplc_entry	1, $750
DPLC_SuperSonic_Walk46_End

DPLC_SuperSonic_Walk47:	dplcheader
		dplc_entry	8, $29C
		dplc_entry	8, $73A
		dplc_entry	4, $2A4
		dplc_entry	2, $742
DPLC_SuperSonic_Walk47_End

DPLC_SuperSonic_Walk48:	dplcheader
		dplc_entry	8, $2A8
		dplc_entry	8, $731
		dplc_entry	6, $2B0
		dplc_entry	1, $739
DPLC_SuperSonic_Walk48_End

DPLC_SuperSonic_Walk11_QuillUp:	dplcheader
		dplc_entry	$C, $751
		dplc_entry	2, $A0
		dplc_entry	$10, $A2
DPLC_SuperSonic_Walk11_QuillUp_End

DPLC_SuperSonic_Walk12_QuillUp:	dplcheader
		dplc_entry	$C, $751
		dplc_entry	2, $B2
		dplc_entry	$C, $B4
		dplc_entry	2, $C0
DPLC_SuperSonic_Walk12_QuillUp_End

DPLC_SuperSonic_Walk13_QuillUp:	dplcheader
		dplc_entry	$C, $75D
		dplc_entry	6, $CA
		dplc_entry	4, $D0
DPLC_SuperSonic_Walk13_QuillUp_End

DPLC_SuperSonic_Walk14_QuillUp:	dplcheader
		dplc_entry	9, $769
		dplc_entry	$10, $DA
DPLC_SuperSonic_Walk14_QuillUp_End

DPLC_SuperSonic_Walk15_QuillUp:	dplcheader
		dplc_entry	9, $769
		dplc_entry	$10, $EA
		dplc_entry	2, $FA
DPLC_SuperSonic_Walk15_QuillUp_End

DPLC_SuperSonic_Walk16_QuillUp:	dplcheader
		dplc_entry	9, $769
		dplc_entry	2, $FC
		dplc_entry	$C, $FE
		dplc_entry	2, $10A
DPLC_SuperSonic_Walk16_QuillUp_End

DPLC_SuperSonic_Walk17_QuillUp:	dplcheader
		dplc_entry	$C, $75D
		dplc_entry	6, $10C
		dplc_entry	4, $112
DPLC_SuperSonic_Walk17_QuillUp_End

DPLC_SuperSonic_Walk18_QuillUp:	dplcheader
		dplc_entry	$C, $751
		dplc_entry	$C, $116
DPLC_SuperSonic_Walk18_QuillUp_End

DPLC_SuperSonic_Walk21_QuillUp:	dplcheader
		dplc_entry	2, $772
		dplc_entry	8, $774
		dplc_entry	6, $128
		dplc_entry	4, $12E
		dplc_entry	2, $132
DPLC_SuperSonic_Walk21_QuillUp_End

DPLC_SuperSonic_Walk22_QuillUp:	dplcheader
		dplc_entry	2, $772
		dplc_entry	8, $774
		dplc_entry	2, $134
		dplc_entry	8, $136
		dplc_entry	4, $13E
		dplc_entry	2, $142
DPLC_SuperSonic_Walk22_QuillUp_End

DPLC_SuperSonic_Walk23_QuillUp:	dplcheader
		dplc_entry	6, $77C
		dplc_entry	4, $782
		dplc_entry	4, $14C
		dplc_entry	2, $150
		dplc_entry	4, $152
DPLC_SuperSonic_Walk23_QuillUp_End

DPLC_SuperSonic_Walk24_QuillUp:	dplcheader
		dplc_entry	2, $786
		dplc_entry	8, $788
		dplc_entry	2, $15C
		dplc_entry	4, $15E
		dplc_entry	$C, $162
DPLC_SuperSonic_Walk24_QuillUp_End

DPLC_SuperSonic_Walk25_QuillUp:	dplcheader
		dplc_entry	2, $786
		dplc_entry	8, $788
		dplc_entry	2, $16E
		dplc_entry	2, $178
		dplc_entry	8, $170
		dplc_entry	4, $17A
DPLC_SuperSonic_Walk25_QuillUp_End

DPLC_SuperSonic_Walk26_QuillUp:	dplcheader
		dplc_entry	2, $786
		dplc_entry	8, $788
		dplc_entry	2, $17E
		dplc_entry	8, $180
		dplc_entry	4, $188
		dplc_entry	2, $18C
DPLC_SuperSonic_Walk26_QuillUp_End

DPLC_SuperSonic_Walk27_QuillUp:	dplcheader
		dplc_entry	6, $77C
		dplc_entry	4, $782
		dplc_entry	4, $18E
		dplc_entry	2, $192
		dplc_entry	4, $194
DPLC_SuperSonic_Walk27_QuillUp_End

DPLC_SuperSonic_Walk28_QuillUp:	dplcheader
		dplc_entry	2, $772
		dplc_entry	8, $774
		dplc_entry	6, $198
		dplc_entry	2, $19E
		dplc_entry	4, $1A2
		dplc_entry	2, $1A0
DPLC_SuperSonic_Walk28_QuillUp_End

DPLC_SuperSonic_Walk31_QuillUp:	dplcheader
		dplc_entry	$C, $790
		dplc_entry	$C, $1AE
		dplc_entry	4, $1BA
DPLC_SuperSonic_Walk31_QuillUp_End

DPLC_SuperSonic_Walk32_QuillUp:	dplcheader
		dplc_entry	$C, $790
		dplc_entry	$C, $1BE
		dplc_entry	4, $1CA
DPLC_SuperSonic_Walk32_QuillUp_End

DPLC_SuperSonic_Walk33_QuillUp:	dplcheader
		dplc_entry	$C, $79C
		dplc_entry	4, $1D6
		dplc_entry	4, $1DA
DPLC_SuperSonic_Walk33_QuillUp_End

DPLC_SuperSonic_Walk34_QuillUp:	dplcheader
		dplc_entry	9, $7A8
		dplc_entry	$C, $1E6
DPLC_SuperSonic_Walk34_QuillUp_End

DPLC_SuperSonic_Walk35_QuillUp:	dplcheader
		dplc_entry	9, $7A8
		dplc_entry	4, $1F2
		dplc_entry	$C, $1F6
DPLC_SuperSonic_Walk35_QuillUp_End

DPLC_SuperSonic_Walk36_QuillUp:	dplcheader
		dplc_entry	9, $7A8
		dplc_entry	$C, $202
		dplc_entry	4, $20E
DPLC_SuperSonic_Walk36_QuillUp_End

DPLC_SuperSonic_Walk37_QuillUp:	dplcheader
		dplc_entry	$C, $79C
		dplc_entry	4, $212
		dplc_entry	4, $216
DPLC_SuperSonic_Walk37_QuillUp_End

DPLC_SuperSonic_Walk38_QuillUp:	dplcheader
		dplc_entry	$C, $790
		dplc_entry	$C, $21A
DPLC_SuperSonic_Walk38_QuillUp_End

DPLC_SuperSonic_Walk41_QuillUp:	dplcheader
		dplc_entry	4, $226
		dplc_entry	$C, $7B1
		dplc_entry	8, $232
		dplc_entry	1, $7BD
DPLC_SuperSonic_Walk41_QuillUp_End

DPLC_SuperSonic_Walk42_QuillUp:	dplcheader
		dplc_entry	4, $23C
		dplc_entry	6, $240
		dplc_entry	$C, $7B1
		dplc_entry	8, $246
		dplc_entry	1, $7BD
DPLC_SuperSonic_Walk42_QuillUp_End

DPLC_SuperSonic_Walk43_QuillUp:	dplcheader
		dplc_entry	8, $24E
		dplc_entry	2, $7BE
		dplc_entry	8, $7C0
		dplc_entry	4, $25E
		dplc_entry	1, $7C8
DPLC_SuperSonic_Walk43_QuillUp_End

DPLC_SuperSonic_Walk44_QuillUp:	dplcheader
		dplc_entry	8, $264
		dplc_entry	$C, $7C9
		dplc_entry	6, $274
		dplc_entry	1, $7D5
DPLC_SuperSonic_Walk44_QuillUp_End

DPLC_SuperSonic_Walk45_QuillUp:	dplcheader
		dplc_entry	6, $27C
		dplc_entry	$C, $7C9
		dplc_entry	8, $282
		dplc_entry	1, $7D5
DPLC_SuperSonic_Walk45_QuillUp_End

DPLC_SuperSonic_Walk46_QuillUp:	dplcheader
		dplc_entry	4, $28A
		dplc_entry	6, $28E
		dplc_entry	$C, $7C9
		dplc_entry	8, $294
		dplc_entry	1, $7D5
DPLC_SuperSonic_Walk46_QuillUp_End

DPLC_SuperSonic_Walk47_QuillUp:	dplcheader
		dplc_entry	8, $29C
		dplc_entry	2, $7BE
		dplc_entry	8, $7C0
		dplc_entry	4, $2A4
		dplc_entry	1, $7C8
DPLC_SuperSonic_Walk47_QuillUp_End

DPLC_SuperSonic_Walk48_QuillUp:	dplcheader
		dplc_entry	8, $2A8
		dplc_entry	2, $7B2
		dplc_entry	8, $7B5
		dplc_entry	6, $2B0
		dplc_entry	1, $7BD
DPLC_SuperSonic_Walk48_QuillUp_End

DPLC_SuperSonic_Run1:	dplcheader
		dplc_entry	3, $845
		dplc_entry	1, $848
		dplc_entry	4, $849
		dplc_entry	6, $84D
DPLC_SuperSonic_Run1_End

DPLC_SuperSonic_Run2:	dplcheader
		dplc_entry	2, $853
		dplc_entry	$C, $855
		dplc_entry	3, $861
		dplc_entry	2, $864
DPLC_SuperSonic_Run2_End

DPLC_SuperSonic_Run3:	dplcheader
		dplc_entry	3, $866
		dplc_entry	4, $869
		dplc_entry	3, $86D
		dplc_entry	4, $870
DPLC_SuperSonic_Run3_End

DPLC_SuperSonic_Run4:	dplcheader
		dplc_entry	3, $874
		dplc_entry	8, $877
		dplc_entry	4, $87F
		dplc_entry	2, $883
		dplc_entry	1, $885
DPLC_SuperSonic_Run4_End

DPLC_SuperSonic_Run1_QuillUp:	dplcheader
		dplc_entry	6, $886
		dplc_entry	1, $88C
		dplc_entry	4, $849
		dplc_entry	6, $88D
DPLC_SuperSonic_Run1_QuillUp_End

DPLC_SuperSonic_Run2_QuillUp:	dplcheader
		dplc_entry	2, $893
		dplc_entry	$C, $895
		dplc_entry	3, $861
		dplc_entry	1, $8A1
DPLC_SuperSonic_Run2_QuillUp_End

DPLC_SuperSonic_Run3_QuillUp:	dplcheader
		dplc_entry	6, $8A2
		dplc_entry	4, $869
		dplc_entry	1, $8A8
		dplc_entry	6, $8A9
DPLC_SuperSonic_Run3_QuillUp_End

DPLC_SuperSonic_Run4_QuillUp:	dplcheader
		dplc_entry	3, $874
		dplc_entry	8, $8AF
		dplc_entry	4, $8B7
		dplc_entry	2, $8BB
		dplc_entry	1, $885
DPLC_SuperSonic_Run4_QuillUp_End

DPLC_SuperSonic_Push1:	dplcheader
		dplc_entry	6, $8BD
		dplc_entry	4, $8C3
		dplc_entry	4, $8C7
		dplc_entry	8, $8CB
DPLC_SuperSonic_Push1_End

DPLC_SuperSonic_Push2:	dplcheader
		dplc_entry	6, $8D3
		dplc_entry	4, $8D9
		dplc_entry	4, $8C7
		dplc_entry	8, $8DD
DPLC_SuperSonic_Push2_End

DPLC_SuperSonic_Push3:	dplcheader
		dplc_entry	6, $8BD
		dplc_entry	4, $8C3
		dplc_entry	4, $8C7
		dplc_entry	8, $8E5
DPLC_SuperSonic_Push3_End

DPLC_SuperSonic_Push4:	dplcheader
		dplc_entry	6, $8D3
		dplc_entry	4, $8D9
		dplc_entry	4, $8C7
		dplc_entry	8, $8ED
DPLC_SuperSonic_Push4_End

DPLC_SuperSonic_Duck:	dplcheader
		dplc_entry	3, $8F5
		dplc_entry	$C, $8F8
DPLC_SuperSonic_Duck_End

DPLC_SuperSonic_Balance1:	dplcheader
		dplc_entry	9, $904
		dplc_entry	3, $90D
		dplc_entry	4, $910
DPLC_SuperSonic_Balance1_End

DPLC_SuperSonic_Balance2:	dplcheader
		dplc_entry	9, $833
		dplc_entry	3, $90D
		dplc_entry	4, $910
DPLC_SuperSonic_Balance2_End

DPLC_SuperSonic_Balance3:	dplcheader
		dplc_entry	9, $83C
		dplc_entry	3, $90D
		dplc_entry	4, $910
DPLC_SuperSonic_Balance3_End

DPLC_SuperSonic_Balance4:	dplcheader
		dplc_entry	9, $904
		dplc_entry	3, $90D
		dplc_entry	4, $914
DPLC_SuperSonic_Balance4_End

DPLC_SuperSonic_Balance5:	dplcheader
		dplc_entry	9, $833
		dplc_entry	3, $90D
		dplc_entry	4, $914
DPLC_SuperSonic_Balance5_End

DPLC_SuperSonic_Balance6:	dplcheader
		dplc_entry	9, $83C
		dplc_entry	3, $90D
		dplc_entry	4, $914
DPLC_SuperSonic_Balance6_End

DPLC_Sonic_Balance11:	dplcheader
		dplc_entry	$C, $918
		dplc_entry	4, $924
		dplc_entry	4, $928
DPLC_Sonic_Balance11_End

DPLC_Sonic_Balance12:	dplcheader
		dplc_entry	$C, $92C
		dplc_entry	4, $938
		dplc_entry	4, $928
DPLC_Sonic_Balance12_End

DPLC_Sonic_Balance13:	dplcheader
		dplc_entry	$C, $93C
		dplc_entry	4, $948
		dplc_entry	4, $928
DPLC_Sonic_Balance13_End

DPLC_Sonic_Balance14:	dplcheader
		dplc_entry	$C, $94C
		dplc_entry	2, $924
		dplc_entry	2, $958
		dplc_entry	2, $93A
		dplc_entry	4, $928
DPLC_Sonic_Balance14_End

DPLC_Sonic_Balance21:	dplcheader
		dplc_entry	8, $95A
		dplc_entry	6, $962
		dplc_entry	4, $968
		dplc_entry	6, $96C
DPLC_Sonic_Balance21_End

DPLC_Sonic_Balance22:	dplcheader
		dplc_entry	8, $972
		dplc_entry	6, $962
		dplc_entry	4, $97A
		dplc_entry	6, $97E
DPLC_Sonic_Balance22_End

DPLC_Sonic_Balance23:	dplcheader
		dplc_entry	8, $984
		dplc_entry	6, $962
		dplc_entry	6, $98C
		dplc_entry	6, $992
DPLC_Sonic_Balance23_End

DPLC_Sonic_LoseFooting:	dplcheader
		dplc_entry	4, $998
		dplc_entry	$C, $99C
		dplc_entry	4, $9A8
DPLC_Sonic_LoseFooting_End

DPLC_Sonic_Balance31:	dplcheader
		dplc_entry	4, $9AC
		dplc_entry	$C, $9B0
		dplc_entry	4, $9BC
DPLC_Sonic_Balance31_End

DPLC_Sonic_Balance32:	dplcheader
		dplc_entry	4, $9C0
		dplc_entry	$C, $9C4
		dplc_entry	4, $9BC
DPLC_Sonic_Balance32_End

DPLC_Sonic_Stop1:	dplcheader
		dplc_entry	8, $9D0
		dplc_entry	8, $9D8
		dplc_entry	2, $9E0
		dplc_entry	4, $9E2
DPLC_Sonic_Stop1_End

DPLC_Sonic_Stop2:	dplcheader
		dplc_entry	8, $9E6
		dplc_entry	8, $9EE
		dplc_entry	2, $9E0
		dplc_entry	4, $9E2
DPLC_Sonic_Stop2_End

DPLC_Sonic_Stop3:	dplcheader
		dplc_entry	8, $9F6
		dplc_entry	8, $9FE
		dplc_entry	2, $9E0
		dplc_entry	4, $9E2
DPLC_Sonic_Stop3_End

DPLC_Sonic_TurnAround:	dplcheader
		dplc_entry	6, $A06
		dplc_entry	$C, $A0C
DPLC_Sonic_TurnAround_End

		even
