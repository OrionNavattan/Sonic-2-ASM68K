; -------------------------------------------------------------------------------
; Sprite mappings - Sonic
; -------------------------------------------------------------------------------

Sonic_Sprites:	macro
		index offset(*)
		ptr	\1_Sonic_Blank
		ptr	\1_Sonic_Stand
		ptr	\1_Sonic_Blink
		ptr	\1_Sonic_Wait1
		ptr	\1_Sonic_Wait2				; 4
		ptr	\1_Sonic_Wait3
		ptr	\1_Sonic_Wait4
		ptr	\1_Sonic_LayDown
		ptr	\1_Sonic_Laying1			; 8
		ptr	\1_Sonic_Laying2
		ptr	\1_Sonic_GetUp
		ptr	\1_Sonic_LookUp1
		ptr	\1_Sonic_LookUp2			; $C
		ptr	\1_Sonic_Walk11
		ptr	\1_Sonic_Walk12
		ptr	\1_Sonic_Walk13
		ptr	\1_Sonic_Walk14				; $10
		ptr	\1_Sonic_Walk15
		ptr	\1_Sonic_Walk16
		ptr	\1_Sonic_Walk17
		ptr	\1_Sonic_Walk18				; $14
		ptr	\1_Sonic_Walk21
		ptr	\1_Sonic_Walk22
		ptr	\1_Sonic_Walk23
		ptr	\1_Sonic_Walk24				; $18
		ptr	\1_Sonic_Walk25
		ptr	\1_Sonic_Walk26
		ptr	\1_Sonic_Walk27
		ptr	\1_Sonic_Walk28				; $1C
		ptr	\1_Sonic_Walk31
		ptr	\1_Sonic_Walk32
		ptr	\1_Sonic_Walk33
		ptr	\1_Sonic_Walk34				; $20
		ptr	\1_Sonic_Walk35
		ptr	\1_Sonic_Walk36
		ptr	\1_Sonic_Walk37
		ptr	\1_Sonic_Walk38				; $24
		ptr	\1_Sonic_Walk41
		ptr	\1_Sonic_Walk42
		ptr	\1_Sonic_Walk43
		ptr	\1_Sonic_Walk44				; $28
		ptr	\1_Sonic_Walk45
		ptr	\1_Sonic_Walk46
		ptr	\1_Sonic_Walk47
		ptr	\1_Sonic_Walk48				; $2C
		ptr	\1_Sonic_Run11
		ptr	\1_Sonic_Run12
		ptr	\1_Sonic_Run13
		ptr	\1_Sonic_Run14				; $30
		ptr	\1_Sonic_Run21
		ptr	\1_Sonic_Run22
		ptr	\1_Sonic_Run23
		ptr	\1_Sonic_Run24				; $34
		ptr	\1_Sonic_Run31
		ptr	\1_Sonic_Run32
		ptr	\1_Sonic_Run33
		ptr	\1_Sonic_Run34				; $38
		ptr	\1_Sonic_Run41
		ptr	\1_Sonic_Run42
		ptr	\1_Sonic_Run43
		ptr	\1_Sonic_Run44				; $3C
		ptr	\1_Sonic_Roll1
		ptr	\1_Sonic_Roll2
		ptr	\1_Sonic_Roll3
		ptr	\1_Sonic_Roll4				; $40
		ptr	\1_Sonic_Roll5
		ptr	\1_Sonic_Spindash1
		ptr	\1_Sonic_Spindash2
		ptr	\1_Sonic_Spindash3			; $44
		ptr	\1_Sonic_Spindash4
		ptr	\1_Sonic_Spindash5
		ptr	\1_Sonic_Spindash6
		ptr	\1_Sonic_Push1				; $48
		ptr	\1_Sonic_Push2
		ptr	\1_Sonic_Push3
		ptr	\1_Sonic_Push4
		ptr	\1_Sonic_Duck1				; $4C
		ptr	\1_Sonic_Duck2
		ptr	\1_Sonic_Injury
		ptr	\1_Sonic_OilSlide
		ptr	\1_Sonic_Hang11				; $50
		ptr	\1_Sonic_Hang12
		ptr	\1_Sonic_Hang21
		ptr	\1_Sonic_Hang22
		ptr	\1_Sonic_Float1				; $54
		ptr	\1_Sonic_Float2
		ptr	\1_Sonic_Float3
		ptr	\1_Sonic_Float4
		ptr	\1_Sonic_Float5				; $58
		ptr	\1_Sonic_Float6
		ptr	\1_Sonic_GetAir
		ptr	\1_Sonic_Spring
		ptr	\1_Sonic_Death				; $5C
		ptr	\1_Sonic_Drown
		ptr	\1_Sonic_Burnt
		ptr	\1_Sonic_Tumble1
		ptr	\1_Sonic_Tumble2			; $60
		ptr	\1_Sonic_Tumble3
		ptr	\1_Sonic_Tumble4
		ptr	\1_Sonic_Tumble5
		ptr	\1_Sonic_Tumble6			; $64
		ptr	\1_Sonic_Tumble7
		ptr	\1_Sonic_Tumble8
		ptr	\1_Sonic_Tumble9
		ptr	\1_Sonic_Tumble10			; $68
		ptr	\1_Sonic_Tumble11
		ptr	\1_Sonic_Tumble12
		ptr	\1_Sonic_Vine1
		ptr	\1_Sonic_Vine2				; $6C
		ptr	\1_SuperSonic_Transform1
		ptr	\1_SuperSonic_Transform2
		ptr	\1_SuperSonic_Transform3		; bug: Sonic's left fist is 1 pixel higher than it should be
		ptr	\1_SuperSonic_Transform4		; $70
		ptr	\1_SuperSonic_Transform5
		ptr	\1_SuperSonic_Stand1
		ptr	\1_SuperSonic_Stand2
		ptr	\1_SuperSonic_Stand3			; $74
		ptr	\1_SuperSonic_Walk11
		ptr	\1_SuperSonic_Walk12
		ptr	\1_SuperSonic_Walk13
		ptr	\1_SuperSonic_Walk14			; $78
		ptr	\1_SuperSonic_Walk15
		ptr	\1_SuperSonic_Walk16
		ptr	\1_SuperSonic_Walk17
		ptr	\1_SuperSonic_Walk18			; $7C
		ptr	\1_SuperSonic_Walk21
		ptr	\1_SuperSonic_Walk22
		ptr	\1_SuperSonic_Walk23
		ptr	\1_SuperSonic_Walk24			; $80
		ptr	\1_SuperSonic_Walk25
		ptr	\1_SuperSonic_Walk26
		ptr	\1_SuperSonic_Walk27
		ptr	\1_SuperSonic_Walk28			; $84
		ptr	\1_SuperSonic_Walk31
		ptr	\1_SuperSonic_Walk32
		ptr	\1_SuperSonic_Walk33
		ptr	\1_SuperSonic_Walk34			; $88
		ptr	\1_SuperSonic_Walk35
		ptr	\1_SuperSonic_Walk36
		ptr	\1_SuperSonic_Walk37
		ptr	\1_SuperSonic_Walk38			; $8C
		ptr	\1_SuperSonic_Walk41
		ptr	\1_SuperSonic_Walk42
		ptr	\1_SuperSonic_Walk43
		ptr	\1_SuperSonic_Walk44			; $90
		ptr	\1_SuperSonic_Walk45
		ptr	\1_SuperSonic_Walk46
		ptr	\1_SuperSonic_Walk47
		ptr	\1_SuperSonic_Walk48			; $94
		ptr	\1_SuperSonic_Walk11_QuillUp
		ptr	\1_SuperSonic_Walk12_QuillUp
		ptr	\1_SuperSonic_Walk13_QuillUp
		ptr	\1_SuperSonic_Walk14_QuillUp		; $98
		ptr	\1_SuperSonic_Walk15_QuillUp
		ptr	\1_SuperSonic_Walk16_QuillUp
		ptr	\1_SuperSonic_Walk17_QuillUp
		ptr	\1_SuperSonic_Walk18_QuillUp		; $9C
		ptr	\1_SuperSonic_Walk21_QuillUp
		ptr	\1_SuperSonic_Walk22_QuillUp
		ptr	\1_SuperSonic_Walk23_QuillUp
		ptr	\1_SuperSonic_Walk24_QuillUp		; $A0
		ptr	\1_SuperSonic_Walk25_QuillUp
		ptr	\1_SuperSonic_Walk26_QuillUp
		ptr	\1_SuperSonic_Walk27_QuillUp
		ptr	\1_SuperSonic_Walk28_QuillUp		; $A4
		ptr	\1_SuperSonic_Walk31_QuillUp
		ptr	\1_SuperSonic_Walk32_QuillUp
		ptr	\1_SuperSonic_Walk33_QuillUp
		ptr	\1_SuperSonic_Walk34_QuillUp		; $A8
		ptr	\1_SuperSonic_Walk35_QuillUp
		ptr	\1_SuperSonic_Walk36_QuillUp
		ptr	\1_SuperSonic_Walk37_QuillUp
		ptr	\1_SuperSonic_Walk38_QuillUp		; $AC
		ptr	\1_SuperSonic_Walk41_QuillUp
		ptr	\1_SuperSonic_Walk42_QuillUp
		ptr	\1_SuperSonic_Walk43_QuillUp
		ptr	\1_SuperSonic_Walk44_QuillUp		; $B0
		ptr	\1_SuperSonic_Walk45_QuillUp
		ptr	\1_SuperSonic_Walk46_QuillUp
		ptr	\1_SuperSonic_Walk47_QuillUp
		ptr	\1_SuperSonic_Walk48_QuillUp		; $B4	
		ptr	\1_SuperSonic_Run1
		ptr	\1_SuperSonic_Run2
		ptr	\1_SuperSonic_Run3
		ptr	\1_SuperSonic_Run4			; $B8
		ptr	\1_SuperSonic_Run1_QuillUp
		ptr	\1_SuperSonic_Run2_QuillUp
		ptr	\1_SuperSonic_Run3_QuillUp
		ptr	\1_SuperSonic_Run4_QuillUp		; $BC	
		ptr	\1_SuperSonic_Push1
		ptr	\1_SuperSonic_Push2
		ptr	\1_SuperSonic_Push3
		ptr	\1_SuperSonic_Push4			; $C0
		ptr	\1_SuperSonic_Duck	
		ptr	\1_SuperSonic_Balance1
		ptr	\1_SuperSonic_Balance2
		ptr	\1_SuperSonic_Balance3			; $C4
		ptr	\1_SuperSonic_Balance4
		ptr	\1_SuperSonic_Balance5
		ptr	\1_SuperSonic_Balance6
		ptr	\1_Sonic_Balance11			; $C8
		ptr	\1_Sonic_Balance12
		ptr	\1_Sonic_Balance13
		ptr	\1_Sonic_Balance14
		ptr	\1_Sonic_Balance21			; $CC
		ptr	\1_Sonic_Balance22
		ptr	\1_Sonic_Balance23
		ptr	\1_Sonic_LoseFooting
		ptr	\1_Sonic_Balance31			; $D0
		ptr	\1_Sonic_Balance32
		ptr	\1_Sonic_Stop1
		ptr	\1_Sonic_Stop2
		ptr	\1_Sonic_Stop3				; $D4
		ptr	\1_Sonic_TurnAround
		endm

Map_Sonic:
		Sonic_Sprites	Frame				; generate the pointer index

Frame_Sonic_Blank:	spritemap 
		endsprite 

Frame_Sonic_Stand:	spritemap 
		piece	-8, -$1C, 2x2, 0
		piece	-$10, -$14, 1x4, 4
		piece	-8, -$C, 3x2, 8
		piece	-8, 4, 3x2, $E
		endsprite 

Frame_Sonic_Blink:	spritemap 
		piece	-$10, -$14, 3x4, 0
		piece	-8, $C, 3x2, $C
		endsprite 

Frame_Sonic_Wait1:	spritemap 
		piece	-$10, -$14, 1x4, 0
		piece	-8, -$14, 2x2, 4
		piece	-8, -4, 2x2, 8
		piece	-8, $C, 3x2, $C
		endsprite 

Frame_Sonic_Wait2:	spritemap 
		piece	-$10, -$14, 1x4, 0
		piece	-8, -$14, 2x2, 4
		piece	-8, -4, 2x2, 8
		piece	-8, $C, 3x2, $C
		endsprite 

Frame_Sonic_Wait3:	spritemap 
		piece	-$10, -$14, 1x4, 0
		piece	-8, -$14, 2x2, 4
		piece	-8, -4, 2x2, 8
		piece	-8, $C, 1x2, $C
		piece	0, $C, 2x2, $E
		endsprite 

Frame_Sonic_Wait4:	spritemap 
		piece	-$10, -$14, 1x4, 0
		piece	-8, -$14, 2x4, 4
		piece	-8, $C, 3x2, $C
		endsprite 

Frame_Sonic_LayDown:	spritemap 
		piece	-$10, -$C, 3x4, 0
		piece	8, 4, 1x2, $C
		endsprite 

Frame_Sonic_Laying1:	spritemap 
		piece	-$18, -$C, 3x4, 0
		piece	0, 4, 2x2, $C
		endsprite 

Frame_Sonic_Laying2:	spritemap 
		piece	-$18, -$C, 3x4, 0
		piece	0, 4, 2x2, $C
		endsprite 

Frame_Sonic_GetUp:	spritemap 
		piece	-$10, -$1C, 3x4, 0
		piece	-$10, 4, 4x2, $C
		endsprite 

Frame_Sonic_LookUp1:	spritemap 
		piece	-8, -$1C, 2x2, 0
		piece	-$10, -$14, 1x4, 4
		piece	-8, -$C, 3x2, 8
		piece	-8, 4, 3x2, $E
		endsprite 

Frame_Sonic_LookUp2:	spritemap 
		piece	-$10, -$14, 1x4, 0
		piece	-8, -$1C, 2x2, 4
		piece	-8, -$C, 2x2, 8
		piece	-8, 4, 3x2, $C
		endsprite 

Frame_Sonic_Walk11:	spritemap 
		piece	-$12, -$15, 4x2, 0
		piece	-$14, 3, 1x2, 8
		piece	-$C, -5, 4x4, $A
		endsprite 

Frame_Sonic_Walk12:	spritemap 
		piece	-$12, -$14, 4x2, 0
		piece	-$14, 4, 1x2, 8
		piece	-$C, -4, 3x4, $A
		piece	$C, 4, 1x2, $16
		endsprite 

Frame_Sonic_Walk13:	spritemap 
		piece	-$13, -$13, 4x2, 0
		piece	-$C, -3, 3x2, 8
		piece	-9, $D, 2x2, $E
		endsprite 

Frame_Sonic_Walk14:	spritemap 
		piece	-$C, -$14, 3x2, 0
		piece	-$12, -4, 4x4, 6
		endsprite 

Frame_Sonic_Walk15:	spritemap 
		piece	-$C, -$15, 3x2, 0
		piece	-$12, -5, 4x4, 6
		piece	$E, -5, 1x2, $16
		endsprite 

Frame_Sonic_Walk16:	spritemap 
		piece	-$C, -$14, 3x2, 0
		piece	-$14, 4, 1x2, 6
		piece	-$C, -4, 3x4, 8
		piece	$C, 4, 1x2, $14
		endsprite 

Frame_Sonic_Walk17:	spritemap 
		piece	-$13, -$13, 4x2, 0
		piece	-$C, -3, 3x2, 8
		piece	-9, $D, 2x2, $E
		endsprite 

Frame_Sonic_Walk18:	spritemap 
		piece	-$12, -$14, 4x2, 0
		piece	-$D, -4, 3x4, 8
		endsprite 

Frame_Sonic_Walk21:	spritemap 
		piece	-$16, -$15, 3x2, 0
		piece	-$16, -5, 3x2, 6
		piece	2, -$D, 2x2, $C
		piece	-6, $B, 1x2, $10
		endsprite 

Frame_Sonic_Walk22:	spritemap 
		piece	-$15, -$14, 3x2, 0
		piece	3, -$14, 1x2, 6
		piece	-$15, -4, 4x2, 8
		piece	$B, -4, 2x2, $10
		piece	-5, $C, 1x2, $14
		endsprite 

Frame_Sonic_Walk23:	spritemap 
		piece	-$14, -$13, 2x4, 0
		piece	-4, -$13, 1x4, 8
		piece	4, -$B, 1x2, $C
		piece	4, 5, 2x2, $E
		endsprite 

Frame_Sonic_Walk24:	spritemap 
		piece	-$15, -$14, 3x2, 0
		piece	3, -$14, 1x2, 6
		piece	-$15, -4, 2x2, 8
		piece	-5, -4, 3x4, $C
		endsprite 

Frame_Sonic_Walk25:	spritemap 
		piece	-$16, -$15, 3x2, 0
		piece	2, -$15, 1x2, 6
		piece	-$16, -5, 4x2, 8
		piece	$A, -$D, 1x2, $10
		piece	-$E, $B, 2x2, $12
		endsprite 

Frame_Sonic_Walk26:	spritemap 
		piece	-$15, -$14, 3x2, 0
		piece	3, -$14, 1x2, 6
		piece	-$15, -4, 4x2, 8
		piece	$B, -6, 2x2, $10
		piece	-5, $C, 1x2, $14
		endsprite 

Frame_Sonic_Walk27:	spritemap 
		piece	-$14, -$13, 2x4, 0
		piece	-4, -$13, 1x4, 8
		piece	4, -$B, 1x2, $C
		piece	4, 5, 2x2, $E
		endsprite 

Frame_Sonic_Walk28:	spritemap 
		piece	-$15, -$14, 3x2, 0
		piece	-$15, -4, 3x2, 6
		piece	3, -$C, 1x2, $C
		piece	-5, $C, 1x2, $E
		piece	3, 4, 2x2, $10
		endsprite 

Frame_Sonic_Walk31:	spritemap 
		piece	-$15, -$E, 2x4, 0
		piece	-5, -$14, 3x4, 8
		piece	3, $C, 2x2, $14
		endsprite 

Frame_Sonic_Walk32:	spritemap 
		piece	-$14, -$E, 2x4, 0
		piece	-4, -$14, 3x4, 8
		piece	4, $C, 2x2, $14
		endsprite 

Frame_Sonic_Walk33:	spritemap 
		piece	-$13, -$D, 2x4, 0
		piece	-3, -$C, 1x4, 8
		piece	5, -7, 2x2, $C
		endsprite 

Frame_Sonic_Walk34:	spritemap 
		piece	-$14, -$C, 2x4, 0
		piece	-4, -$E, 3x4, 8
		endsprite 

Frame_Sonic_Walk35:	spritemap 
		piece	-$15, -$C, 2x4, 0
		piece	-5, -$1D, 2x2, 8
		piece	-5, -$D, 3x4, $C
		endsprite 

Frame_Sonic_Walk36:	spritemap 
		piece	-$14, -$C, 2x4, 0
		piece	-4, -$14, 3x4, 8
		piece	4, $C, 2x2, $14
		endsprite 

Frame_Sonic_Walk37:	spritemap 
		piece	-$13, -$D, 2x4, 0
		piece	-3, -$C, 1x4, 8
		piece	5, -7, 2x2, $C
		endsprite 

Frame_Sonic_Walk38:	spritemap 
		piece	-$14, -$E, 2x4, 0
		piece	-4, -$C, 3x4, 8
		endsprite 

Frame_Sonic_Walk41:	spritemap 
		piece	-$D, -$12, 2x2, 0
		piece	-$15, -2, 2x4, 4
		piece	-5, -2, 4x2, $C
		piece	-5, $E, 1x2, $14
		endsprite 

Frame_Sonic_Walk42:	spritemap 
		piece	-4, -$23, 2x2, 0
		piece	-$C, -$13, 3x2, 4
		piece	-$14, -3, 2x4, $A
		piece	-4, -3, 4x2, $12
		piece	-4, $D, 1x2, $1A
		endsprite 

Frame_Sonic_Walk43:	spritemap 
		piece	-$B, -$14, 4x2, 0
		piece	-$13, -4, 2x4, 8
		piece	-3, -4, 2x2, $10
		piece	-3, $C, 1x2, $14
		endsprite 

Frame_Sonic_Walk44:	spritemap 
		piece	-$C, -$13, 4x2, 0
		piece	-$14, -3, 2x4, 8
		piece	-4, -3, 3x2, $10
		piece	-4, $D, 1x2, $16
		endsprite 

Frame_Sonic_Walk45:	spritemap 
		piece	-$D, -$12, 3x2, 0
		piece	-$15, -2, 2x4, 6
		piece	-5, -2, 4x2, $E
		piece	-5, $E, 1x2, $16
		endsprite 

Frame_Sonic_Walk46:	spritemap 
		piece	-6, -$23, 2x2, 0
		piece	-$C, -$13, 3x2, 4
		piece	-$14, -3, 2x4, $A
		piece	-4, -3, 4x2, $12
		piece	-4, $D, 1x2, $1A
		endsprite 

Frame_Sonic_Walk47:	spritemap 
		piece	-$B, -$14, 4x2, 0
		piece	-$13, -4, 2x4, 8
		piece	-3, -4, 2x2, $10
		piece	-3, $C, 1x2, $14
		endsprite 

Frame_Sonic_Walk48:	spritemap 
		piece	-$C, -$13, 4x2, 0
		piece	-$14, -3, 2x4, 8
		piece	-4, -3, 3x2, $10
		piece	-4, $D, 1x2, $16
		endsprite 

Frame_Sonic_Run11:	spritemap 
		piece	-8, -$12, 3x2, 0
		piece	-$10, -2, 4x4, 6
		endsprite 

Frame_Sonic_Run12:	spritemap 
		piece	-8, -$12, 3x2, 0
		piece	-$10, -2, 4x4, 6
		endsprite 

Frame_Sonic_Run13:	spritemap 
		piece	-8, -$12, 3x2, 0
		piece	-$10, -2, 4x4, 6
		endsprite 

Frame_Sonic_Run14:	spritemap 
		piece	-8, -$12, 3x2, 0
		piece	-$10, -2, 4x4, 6
		endsprite 

Frame_Sonic_Run21:	spritemap 
		piece	-$13, -$14, 3x2, 0
		piece	5, -$14, 1x2, 6
		piece	-$C, -4, 4x2, 8
		piece	-6, $C, 3x2, $10
		endsprite 

Frame_Sonic_Run22:	spritemap 
		piece	-$13, -$14, 4x2, 0
		piece	-$B, -4, 4x2, 8
		piece	-8, $C, 3x2, $10
		endsprite 

Frame_Sonic_Run23:	spritemap 
		piece	-$13, -$14, 3x2, 0
		piece	5, -$14, 1x2, 6
		piece	-$C, -4, 4x2, 8
		piece	-3, $C, 3x2, $10
		endsprite 

Frame_Sonic_Run24:	spritemap 
		piece	-$13, -$14, 4x2, 0
		piece	-$B, -4, 4x2, 8
		piece	-8, $C, 3x2, $10
		endsprite 

Frame_Sonic_Run31:	spritemap 
		piece	-$12, -$10, 2x4, 0
		piece	-2, -$10, 3x4, 8
		endsprite 

Frame_Sonic_Run32:	spritemap 
		piece	-$12, -$10, 2x4, 0
		piece	-2, -$10, 3x4, 8
		endsprite 

Frame_Sonic_Run33:	spritemap 
		piece	-$12, -$10, 2x4, 0
		piece	-2, -$10, 3x4, 8
		endsprite 

Frame_Sonic_Run34:	spritemap 
		piece	-$12, -$10, 2x4, 0
		piece	-2, -$10, 3x4, 8
		endsprite 

Frame_Sonic_Run41:	spritemap 
		piece	-$C, -$17, 1x2, 0
		piece	-$14, -7, 2x4, 2
		piece	-4, -$14, 3x4, $A
		endsprite 

Frame_Sonic_Run42:	spritemap 
		piece	-$14, -$D, 2x4, 0
		piece	-4, -$15, 3x4, 8
		endsprite 

Frame_Sonic_Run43:	spritemap 
		piece	-$C, -$17, 1x2, 0
		piece	-$14, -7, 2x4, 2
		piece	-4, -$14, 3x4, $A
		endsprite 

Frame_Sonic_Run44:	spritemap 
		piece	-$14, -$D, 2x4, 0
		piece	-4, -$15, 3x4, 8
		endsprite 

Frame_Sonic_Roll1:	spritemap 
		piece	-$10, -$10, 4x4, 0
		endsprite 

Frame_Sonic_Roll2:	spritemap 
		piece	-$10, -$10, 4x4, 0
		endsprite 

Frame_Sonic_Roll3:	spritemap 
		piece	-$10, -$10, 4x4, 0
		endsprite 

Frame_Sonic_Roll4:	spritemap 
		piece	-$10, -$10, 4x4, 0
		endsprite 

Frame_Sonic_Roll5:	spritemap 
		piece	-$10, -$10, 4x4, 0
		endsprite 

Frame_Sonic_Spindash1:	spritemap 
		piece	-$C, -8, 4x4, 0
		endsprite 

Frame_Sonic_Spindash2:	spritemap 
		piece	-$C, -8, 4x4, 0
		endsprite 

Frame_Sonic_Spindash3:	spritemap 
		piece	-$C, -8, 4x4, 0
		endsprite 

Frame_Sonic_Spindash4:	spritemap 
		piece	-$C, -8, 4x4, 0
		endsprite 

Frame_Sonic_Spindash5:	spritemap 
		piece	-$C, -8, 4x4, 0
		endsprite 

Frame_Sonic_Spindash6:	spritemap 
		piece	-$C, -8, 4x4, 0
		endsprite 

Frame_Sonic_Push1:	spritemap 
		piece	-$D, -$1B, 3x2, 0
		piece	-$D, -$B, 3x2, 6
		piece	-$15, 5, 4x2, $C
		endsprite 

Frame_Sonic_Push2:	spritemap 
		piece	-$D, -$1C, 3x2, 0
		piece	-$D, -$C, 3x2, 6
		piece	-$D, 4, 3x2, $C
		endsprite 

Frame_Sonic_Push3:	spritemap 
		piece	-$D, -$1B, 3x2, 0
		piece	-$D, -$B, 3x2, 6
		piece	-$15, 5, 4x2, $C
		endsprite 

Frame_Sonic_Push4:	spritemap 
		piece	-$D, -$1B, 3x2, 0
		piece	-$D, -$B, 3x2, 6
		piece	-$D, 5, 3x2, $C
		endsprite 

Frame_Sonic_Duck1:	spritemap 
		piece	-$A, -$C, 3x4, 0
		endsprite 

Frame_Sonic_Duck2:	spritemap 
		piece	-$E, -$C, 4x4, 0
		endsprite 

Frame_Sonic_Injury:	spritemap 
		piece	-$14, -8, 1x2, 0
		piece	-$C, -$10, 4x4, 2
		endsprite 

Frame_Sonic_OilSlide:	spritemap 
		piece	-$14, -$10, 1x4, 0
		piece	-$C, -$10, 4x4, 4
		endsprite 

Frame_Sonic_Hang11:	spritemap 
		piece	-$18, -$18, 4x4, 0
		piece	8, -$18, 1x2, $10
		piece	8, -8, 2x2, $12
		endsprite 

Frame_Sonic_Hang12:	spritemap 
		piece	-$18, -$18, 4x4, 0
		piece	8, -$18, 1x2, $10
		piece	8, -8, 2x2, $12
		endsprite 

Frame_Sonic_Hang21:	spritemap 
		piece	-$C, -$18, 3x4, 0
		piece	-$C, 8, 3x2, $C
		endsprite 

Frame_Sonic_Hang22:	spritemap 
		piece	-$C, -$18, 3x4, 0
		piece	-$C, 8, 3x2, $C
		endsprite 

Frame_Sonic_Float1:	spritemap 
		piece	-$14, -4, 2x2, 0
		piece	-4, -$C, 3x4, 4
		piece	$14, -$C, 1x2, $10
		endsprite 

Frame_Sonic_Float2:	spritemap 
		piece	-$18, -$C, 1x2, 0
		piece	-$10, -$C, 2x4, 2
		piece	0, -$C, 2x4, 2, xflip
		piece	$10, -$C, 1x2, 0, xflip
		endsprite 

Frame_Sonic_Float3:	spritemap 
		piece	4, -4, 2x2, 0, xflip
		piece	-$14, -$C, 3x4, 4, xflip
		piece	-$1C, -$C, 1x2, $10, xflip
		endsprite 

Frame_Sonic_Float4:	spritemap 
		piece	-$1C, -$C, 1x2, 0
		piece	-$14, -$C, 3x4, 2
		piece	4, -4, 1x2, $E
		endsprite 

Frame_Sonic_Float5:	spritemap 
		piece	$14, -$C, 1x2, 0, xflip
		piece	-4, -$C, 3x4, 2, xflip
		piece	-$C, -4, 1x2, $E, xflip
		endsprite 

Frame_Sonic_Float6:	spritemap 
		piece	-$14, -4, 2x2, 0
		piece	-4, -$C, 3x4, 4
		piece	$14, -$C, 1x2, $10
		endsprite 

Frame_Sonic_GetAir:	spritemap 
		piece	-$C, -$1C, 3x2, 0
		piece	-$14, -$C, 4x4, 6
		piece	$C, 4, 1x2, $16
		endsprite 

Frame_Sonic_Spring:	spritemap 
		piece	-$C, -$18, 3x4, 0
		piece	-4, 8, 2x2, $C
		endsprite 

Frame_Sonic_Death:	spritemap 
		piece	-$18, -$16, 1x2, 0
		piece	-$10, -$16, 3x4, 2
		piece	8, -$16, 1x2, $E
		piece	-$10, $A, 4x2, $10
		endsprite 

Frame_Sonic_Drown:	spritemap 
		piece	-$18, -$16, 1x2, 0
		piece	-$10, -$16, 3x4, 2
		piece	8, -$16, 1x2, $E
		piece	-$10, $A, 4x2, $10
		endsprite 

Frame_Sonic_Burnt:	spritemap 
		piece	-$18, -$16, 4x2, 0
		piece	8, -$16, 1x2, 8
		piece	-$10, -6, 3x4, $A
		endsprite 

Frame_Sonic_Tumble1:	spritemap 
		piece	-$10, -$1C, 3x2, 0
		piece	-$10, -$C, 3x4, 6
		piece	8, -$C, 1x2, $12
		endsprite 

Frame_Sonic_Tumble2:	spritemap 
		piece	-$10, -$1B, 3x4, 0
		piece	8, -$C, 1x2, $C
		piece	-8, 5, 2x2, $E
		endsprite 

Frame_Sonic_Tumble3:	spritemap 
		piece	-$F, -$14, 3x4, 0
		piece	9, -4, 1x2, $C
		endsprite 

Frame_Sonic_Tumble4:	spritemap 
		piece	-$10, -$12, 4x4, 0
		endsprite 

Frame_Sonic_Tumble5:	spritemap 
		piece	-$10, -$E, 3x4, 0
		piece	8, -6, 1x2, $C
		endsprite 

Frame_Sonic_Tumble6:	spritemap 
		piece	0, -$1C, 1x2, 0
		piece	-$10, -$C, 3x4, 2
		piece	8, -$C, 1x2, $E
		endsprite 

Frame_Sonic_Tumble7:	spritemap 
		piece	-$10, -$1B, 3x2, 0
		piece	-$10, -$B, 3x4, 6
		piece	8, -$13, 1x4, $12
		endsprite 

Frame_Sonic_Tumble8:	spritemap 
		piece	-8, -$1C, 2x2, 0
		piece	-$10, -$C, 3x4, 4
		piece	8, -$C, 1x2, $10
		endsprite 

Frame_Sonic_Tumble9:	spritemap 
		piece	-$10, -$13, 3x4, 0
		piece	8, -$B, 1x2, $C
		endsprite 

Frame_Sonic_Tumble10:	spritemap 
		piece	-$10, -$C, 1x2, 0
		piece	-8, -$F, 3x4, 2
		endsprite 

Frame_Sonic_Tumble11:	spritemap 
		piece	-$F, -$1C, 2x2, 0
		piece	-$10, -$C, 3x4, 4
		piece	8, -$C, 1x2, $10
		endsprite 

Frame_Sonic_Tumble12:	spritemap 
		piece	-$10, -$1F, 2x2, 0
		piece	-$10, -$F, 4x4, 4
		endsprite 

Frame_Sonic_Vine1:	spritemap 
		piece	-$10, -$18, 2x4, 0
		piece	0, -$20, 1x4, 8
		piece	0, 0, 3x2, $C
		endsprite 

Frame_Sonic_Vine2:	spritemap 
		piece	-$10, -$18, 2x4, 0
		piece	0, -$20, 1x4, 8
		piece	0, 0, 3x2, $C
		endsprite 

Frame_SuperSonic_Transform1:	spritemap 
		piece	-$B, -$10, 3x4, 0
		endsprite 

Frame_SuperSonic_Transform2:	spritemap 
		piece	-$10, -$1A, 3x4, 0
		piece	8, -$12, 1x2, $C
		piece	-$10, 6, 3x2, $E
		endsprite 

Frame_SuperSonic_Transform3:	spritemap 
		piece	-$10, -$1C, 3x3, 0
		piece	8, -4, 1x1, 9
		piece	-$10, -4, 3x3, $A
		endsprite 

Frame_SuperSonic_Transform4:	spritemap 
		piece	-$10, -$1C, 3x1, 0
		piece	-$10, -$14, 1x2, 3
		piece	-8, -$14, 2x2, 5
		piece	-$10, -4, 3x3, 9
		piece	8, -3, 1x1, $12
		endsprite 

Frame_SuperSonic_Transform5:	spritemap 
		piece	-$10, -$1C, 3x1, 0
		piece	-$10, -$14, 1x2, 3
		piece	-8, -$14, 2x2, 5
		piece	-$10, -4, 3x3, 9
		piece	8, -3, 1x1, $12
		endsprite 

Frame_SuperSonic_Stand1:	spritemap 
		piece	-$F, -$19, 3x3, 0
		piece	-$D, -1, 3x3, 9
		endsprite 

Frame_SuperSonic_Stand2:	spritemap 
		piece	-$F, -$19, 3x3, 0
		piece	-$D, -1, 3x3, 9
		endsprite 

Frame_SuperSonic_Stand3:	spritemap 
		piece	-$F, -$19, 3x3, 0
		piece	-$D, -1, 3x3, 9
		endsprite 

Frame_SuperSonic_Walk11:	spritemap 
		piece	-$12, -$1D, 4x3, 0
		piece	-$14, 3, 1x2, $C
		piece	-$C, -5, 4x4, $E
		endsprite 

Frame_SuperSonic_Walk12:	spritemap 
		piece	-$12, -$1C, 4x3, 0
		piece	-$14, 4, 1x2, $C
		piece	-$C, -4, 3x4, $E
		piece	$C, 4, 1x2, $1A
		endsprite 

Frame_SuperSonic_Walk13:	spritemap 
		piece	-$13, -$1B, 4x3, 0
		piece	-$C, -3, 3x2, $C
		piece	-9, $D, 2x2, $12
		endsprite 

Frame_SuperSonic_Walk14:	spritemap 
		piece	-$C, -$1C, 3x3, 0
		piece	-$12, -4, 4x4, 9
		endsprite 

Frame_SuperSonic_Walk15:	spritemap 
		piece	-$C, -$1D, 3x3, 0
		piece	-$12, -5, 4x4, 9
		piece	$E, -5, 1x2, $19
		endsprite 

Frame_SuperSonic_Walk16:	spritemap 
		piece	-$C, -$1C, 3x3, 0
		piece	-$14, 4, 1x2, 9
		piece	-$C, -4, 3x4, $B
		piece	$C, 4, 1x2, $17
		endsprite 

Frame_SuperSonic_Walk17:	spritemap 
		piece	-$13, -$1B, 4x3, 0
		piece	-$C, -3, 3x2, $C
		piece	-9, $D, 2x2, $12
		endsprite 

Frame_SuperSonic_Walk18:	spritemap 
		piece	-$12, -$1C, 4x3, 0
		piece	-$D, -4, 3x4, $C
		endsprite 

Frame_SuperSonic_Walk21:	spritemap 
		piece	-$1E, -$15, 4x2, 0
		piece	2, -$D, 2x2, 8
		piece	-$16, -5, 3x2, $C
		piece	-6, $B, 1x2, $12
		endsprite 

Frame_SuperSonic_Walk22:	spritemap 
		piece	-$1D, -$14, 4x2, 0
		piece	3, -$14, 1x2, 8
		piece	-$15, -4, 4x2, $A
		piece	$B, -4, 2x2, $12
		piece	-5, $C, 1x2, $16
		endsprite 

Frame_SuperSonic_Walk23:	spritemap 
		piece	-$1C, -$13, 3x3, 0
		piece	-4, -$13, 1x4, 9
		piece	-$C, 5, 1x1, $D
		piece	4, -$B, 1x2, $E
		piece	4, 5, 2x2, $10
		endsprite 

Frame_SuperSonic_Walk24:	spritemap 
		piece	-$F, -$1C, 1x1, 0
		piece	-$1D, -$14, 4x2, 1
		piece	3, -$14, 1x2, 9
		piece	-$15, -4, 2x2, $B
		piece	-5, -4, 3x4, $F
		endsprite 

Frame_SuperSonic_Walk25:	spritemap 
		piece	-$10, -$1D, 1x1, 0
		piece	-$1E, -$15, 4x2, 1
		piece	2, -$15, 1x2, 9
		piece	$A, -$D, 1x2, $B
		piece	-$16, -5, 4x2, $D
		piece	-$E, $B, 2x2, $15
		endsprite 

Frame_SuperSonic_Walk26:	spritemap 
		piece	-$F, -$1C, 1x1, 0
		piece	-$1D, -$14, 4x2, 1
		piece	3, -$14, 1x2, 9
		piece	-$15, -4, 4x2, $B
		piece	$B, -6, 2x2, $13
		piece	-5, $C, 1x2, $17
		endsprite 

Frame_SuperSonic_Walk27:	spritemap 
		piece	-$1C, -$13, 3x3, 0
		piece	-4, -$13, 1x4, 9
		piece	-$C, 5, 1x1, $D
		piece	4, -$B, 1x2, $E
		piece	4, 5, 2x2, $10
		endsprite 

Frame_SuperSonic_Walk28:	spritemap 
		piece	-$1D, -$14, 4x2, 0
		piece	3, -$C, 1x2, 8
		piece	-$15, -4, 3x2, $A
		piece	-5, $C, 1x1, $10
		piece	3, 4, 2x2, $11
		endsprite 

Frame_SuperSonic_Walk31:	spritemap 
		piece	-$1D, -$E, 3x4, 0
		piece	-5, -$14, 3x4, $C
		piece	3, $C, 2x2, $18
		endsprite 

Frame_SuperSonic_Walk32:	spritemap 
		piece	-$1C, -$E, 3x4, 0
		piece	-4, -$14, 3x4, $C
		piece	4, $C, 2x2, $18
		endsprite 

Frame_SuperSonic_Walk33:	spritemap 
		piece	-$1B, -$D, 3x4, 0
		piece	-3, -$C, 1x4, $C
		piece	5, -7, 2x2, $10
		endsprite 

Frame_SuperSonic_Walk34:	spritemap 
		piece	-$1C, -$C, 3x3, 0
		piece	-4, -$E, 3x4, 9
		endsprite 

Frame_SuperSonic_Walk35:	spritemap 
		piece	-$1D, -$C, 3x3, 0
		piece	-5, -$1D, 2x2, 9
		piece	-5, -$D, 3x4, $D
		endsprite 

Frame_SuperSonic_Walk36:	spritemap 
		piece	-$1C, -$C, 3x3, 0
		piece	-4, -$14, 3x4, 9
		piece	4, $C, 2x2, $15
		endsprite 

Frame_SuperSonic_Walk37:	spritemap 
		piece	-$1B, -$D, 3x4, 0
		piece	-3, -$C, 1x4, $C
		piece	5, -7, 2x2, $10
		endsprite 

Frame_SuperSonic_Walk38:	spritemap 
		piece	-$1C, -$C, 3x4, 0
		piece	-4, -$E, 3x4, $C
		endsprite 

Frame_SuperSonic_Walk41:	spritemap 
		piece	-$D, -$12, 2x2, 0
		piece	-$15, -2, 2x4, 4
		piece	-5, -2, 4x2, $C
		piece	-5, $E, 1x1, $14
		endsprite 

Frame_SuperSonic_Walk42:	spritemap 
		piece	-4, -$23, 2x2, 0
		piece	-$C, -$13, 3x2, 4
		piece	-$14, -3, 2x4, $A
		piece	-4, -3, 4x2, $12
		piece	-4, $D, 1x1, $1A
		endsprite 

Frame_SuperSonic_Walk43:	spritemap 
		piece	-$B, -$14, 4x2, 0
		piece	-$13, -4, 2x4, 8
		piece	-3, -4, 2x2, $10
		piece	-3, $C, 1x2, $14
		endsprite 

Frame_SuperSonic_Walk44:	spritemap 
		piece	-$C, -$13, 4x2, 0
		piece	-$1C, -3, 3x4, 8
		piece	-4, -3, 3x2, $14
		piece	-4, $D, 1x1, $1A
		endsprite 

Frame_SuperSonic_Walk45:	spritemap 
		piece	-$D, -$12, 3x2, 0
		piece	-$1D, -2, 3x4, 6
		piece	-5, -2, 4x2, $12
		piece	-5, $E, 1x1, $1A
		endsprite 

Frame_SuperSonic_Walk46:	spritemap 
		piece	-6, -$23, 2x2, 0
		piece	-$C, -$13, 3x2, 4
		piece	-$1C, -3, 3x4, $A
		piece	-4, -3, 4x2, $16
		piece	-4, $D, 1x1, $1E
		endsprite 

Frame_SuperSonic_Walk47:	spritemap 
		piece	-$B, -$14, 4x2, 0
		piece	-$13, -4, 2x4, 8
		piece	-3, -4, 2x2, $10
		piece	-3, $C, 1x2, $14
		endsprite 

Frame_SuperSonic_Walk48:	spritemap 
		piece	-$C, -$13, 4x2, 0
		piece	-$14, -3, 2x4, 8
		piece	-4, -3, 3x2, $10
		piece	-4, $D, 1x1, $16
		endsprite 

Frame_SuperSonic_Walk11_QuillUp:	spritemap 
		piece	-$12, -$1D, 4x3, 0
		piece	-$14, 3, 1x2, $C
		piece	-$C, -5, 4x4, $E
		endsprite 

Frame_SuperSonic_Walk12_QuillUp:	spritemap 
		piece	-$12, -$1C, 4x3, 0
		piece	-$14, 4, 1x2, $C
		piece	-$C, -4, 3x4, $E
		piece	$C, 4, 1x2, $1A
		endsprite 

Frame_SuperSonic_Walk13_QuillUp:	spritemap 
		piece	-$13, -$1B, 4x3, 0
		piece	-$C, -3, 3x2, $C
		piece	-9, $D, 2x2, $12
		endsprite 

Frame_SuperSonic_Walk14_QuillUp:	spritemap 
		piece	-$C, -$1C, 3x3, 0
		piece	-$12, -4, 4x4, 9
		endsprite 

Frame_SuperSonic_Walk15_QuillUp:	spritemap 
		piece	-$C, -$1D, 3x3, 0
		piece	-$12, -5, 4x4, 9
		piece	$E, -5, 1x2, $19
		endsprite 

Frame_SuperSonic_Walk16_QuillUp:	spritemap 
		piece	-$C, -$1C, 3x3, 0
		piece	-$14, 4, 1x2, 9
		piece	-$C, -4, 3x4, $B
		piece	$C, 4, 1x2, $17
		endsprite 

Frame_SuperSonic_Walk17_QuillUp:	spritemap 
		piece	-$13, -$1B, 4x3, 0
		piece	-$C, -3, 3x2, $C
		piece	-9, $D, 2x2, $12
		endsprite 

Frame_SuperSonic_Walk18_QuillUp:	spritemap 
		piece	-$12, -$1C, 4x3, 0
		piece	-$D, -4, 3x4, $C
		endsprite 

Frame_SuperSonic_Walk21_QuillUp:	spritemap 
		piece	-$16, -$1D, 2x1, 0
		piece	-$1E, -$15, 4x2, 2
		piece	-$16, -5, 3x2, $A
		piece	2, -$D, 2x2, $10
		piece	-6, $B, 1x2, $14
		endsprite 

Frame_SuperSonic_Walk22_QuillUp:	spritemap 
		piece	-$15, -$1C, 2x1, 0
		piece	-$1D, -$14, 4x2, 2
		piece	3, -$14, 1x2, $A
		piece	-$15, -4, 4x2, $C
		piece	$B, -4, 2x2, $14
		piece	-5, $C, 1x2, $18
		endsprite 

Frame_SuperSonic_Walk23_QuillUp:	spritemap 
		piece	-$1C, -$15, 3x2, 0
		piece	-$14, -5, 2x2, 6
		piece	-4, -$13, 1x4, $A
		piece	4, -$B, 1x2, $E
		piece	4, 5, 2x2, $10
		endsprite 

Frame_SuperSonic_Walk24_QuillUp:	spritemap 
		piece	-$15, -$1C, 2x1, 0
		piece	-$1D, -$14, 4x2, 2
		piece	3, -$14, 1x2, $A
		piece	-$15, -4, 2x2, $C
		piece	-5, -4, 3x4, $10
		endsprite 

Frame_SuperSonic_Walk25_QuillUp:	spritemap 
		piece	-$16, -$1D, 2x1, 0
		piece	-$1E, -$15, 4x2, 2
		piece	2, -$15, 1x2, $A
		piece	$A, -$D, 1x2, $C
		piece	-$16, -5, 4x2, $E
		piece	-$E, $B, 2x2, $16
		endsprite 

Frame_SuperSonic_Walk26_QuillUp:	spritemap 
		piece	-$15, -$1C, 2x1, 0
		piece	-$1D, -$14, 4x2, 2
		piece	3, -$14, 1x2, $A
		piece	-$15, -4, 4x2, $C
		piece	$B, -6, 2x2, $14
		piece	-5, $C, 1x2, $18
		endsprite 

Frame_SuperSonic_Walk27_QuillUp:	spritemap 
		piece	-$1C, -$15, 3x2, 0
		piece	-$14, -5, 2x2, 6
		piece	-4, -$13, 1x4, $A
		piece	4, -$B, 1x2, $E
		piece	4, 5, 2x2, $10
		endsprite 

Frame_SuperSonic_Walk28_QuillUp:	spritemap 
		piece	-$15, -$1C, 2x1, 0
		piece	-$1D, -$14, 4x2, 2
		piece	-$15, -4, 3x2, $A
		piece	3, -$C, 1x2, $10
		piece	3, 4, 2x2, $12
		piece	-5, $C, 1x2, $16
		endsprite 

Frame_SuperSonic_Walk31_QuillUp:	spritemap 
		piece	-$1D, -$E, 3x4, 0
		piece	-5, -$14, 3x4, $C
		piece	3, $C, 2x2, $18
		endsprite 

Frame_SuperSonic_Walk32_QuillUp:	spritemap 
		piece	-$1C, -$E, 3x4, 0
		piece	-4, -$14, 3x4, $C
		piece	4, $C, 2x2, $18
		endsprite 

Frame_SuperSonic_Walk33_QuillUp:	spritemap 
		piece	-$1B, -$D, 3x4, 0
		piece	-3, -$C, 1x4, $C
		piece	5, -7, 2x2, $10
		endsprite 

Frame_SuperSonic_Walk34_QuillUp:	spritemap 
		piece	-$1C, -$C, 3x3, 0
		piece	-4, -$E, 3x4, 9
		endsprite 

Frame_SuperSonic_Walk35_QuillUp:	spritemap 
		piece	-$1D, -$C, 3x3, 0
		piece	-5, -$1D, 2x2, 9
		piece	-5, -$D, 3x4, $D
		endsprite 

Frame_SuperSonic_Walk36_QuillUp:	spritemap 
		piece	-$1C, -$C, 3x3, 0
		piece	-4, -$14, 3x4, 9
		piece	4, $C, 2x2, $15
		endsprite 

Frame_SuperSonic_Walk37_QuillUp:	spritemap 
		piece	-$1B, -$D, 3x4, 0
		piece	-3, -$C, 1x4, $C
		piece	5, -7, 2x2, $10
		endsprite 

Frame_SuperSonic_Walk38_QuillUp:	spritemap 
		piece	-$1C, -$E, 3x4, 0
		piece	-4, -$C, 3x4, $C
		endsprite 

Frame_SuperSonic_Walk41_QuillUp:	spritemap 
		piece	-$D, -$12, 2x2, 0
		piece	-$1D, -2, 3x4, 4
		piece	-5, -2, 4x2, $10
		piece	-5, $E, 1x1, $18
		endsprite 

Frame_SuperSonic_Walk42_QuillUp:	spritemap 
		piece	-4, -$23, 2x2, 0
		piece	-$C, -$13, 3x2, 4
		piece	-$1C, -3, 3x4, $A
		piece	-4, -3, 4x2, $16
		piece	-4, $D, 1x1, $1E
		endsprite 

Frame_SuperSonic_Walk43_QuillUp:	spritemap 
		piece	-$B, -$14, 4x2, 0
		piece	-$1B, 4, 1x2, 8
		piece	-$13, -4, 2x4, $A
		piece	-3, -4, 2x2, $12
		piece	-3, $C, 1x1, $16
		endsprite 

Frame_SuperSonic_Walk44_QuillUp:	spritemap 
		piece	-$C, -$13, 4x2, 0
		piece	-$1C, -3, 3x4, 8
		piece	-4, -3, 3x2, $14
		piece	-4, $D, 1x1, $1A
		endsprite 

Frame_SuperSonic_Walk45_QuillUp:	spritemap 
		piece	-$D, -$12, 3x2, 0
		piece	-$1D, -2, 3x4, 6
		piece	-5, -2, 4x2, $12
		piece	-5, $E, 1x1, $1A
		endsprite 

Frame_SuperSonic_Walk46_QuillUp:	spritemap 
		piece	-6, -$23, 2x2, 0
		piece	-$C, -$13, 3x2, 4
		piece	-$1C, -3, 3x4, $A
		piece	-4, -3, 4x2, $16
		piece	-4, $D, 1x1, $1E
		endsprite 

Frame_SuperSonic_Walk47_QuillUp:	spritemap 
		piece	-$B, -$14, 4x2, 0
		piece	-$1B, 4, 1x2, 8
		piece	-$13, -4, 2x4, $A
		piece	-3, -4, 2x2, $12
		piece	-3, $C, 1x1, $16
		endsprite 

Frame_SuperSonic_Walk48_QuillUp:	spritemap 
		piece	-$C, -$13, 4x2, 0
		piece	-$1C, 5, 1x2, 8
		piece	-$14, -3, 2x4, $A
		piece	-4, -3, 3x2, $12
		piece	-4, $D, 1x1, $18
		endsprite 

Frame_SuperSonic_Run1:	spritemap 
		piece	-4, -$10, 3x1, 0
		piece	-4, -8, 1x1, 3
		piece	4, -8, 2x2, 4
		piece	-$14, 0, 3x2, 8
		endsprite 

Frame_SuperSonic_Run2:	spritemap 
		piece	-6, -$1A, 2x1, 0
		piece	-$E, -$12, 3x4, 2
		piece	$A, -$12, 1x3, $E
		piece	-6, $E, 2x1, $11
		endsprite 

Frame_SuperSonic_Run3:	spritemap 
		piece	-$10, -$14, 1x3, 0
		piece	-8, -$14, 2x2, 3
		piece	-8, -4, 3x1, 7
		piece	0, 4, 2x2, $A
		endsprite 

Frame_SuperSonic_Run4:	spritemap 
		piece	-$12, -$12, 3x1, 0
		piece	-$1A, -$A, 4x2, 3
		piece	6, -$A, 2x2, $B
		piece	-$12, 6, 2x1, $F
		piece	6, 6, 1x1, $11
		endsprite 

Frame_SuperSonic_Run1_QuillUp:	spritemap 
		piece	-4, -$18, 3x2, 0
		piece	-4, -8, 1x1, 6
		piece	4, -8, 2x2, 7
		piece	-$14, 0, 3x2, $B
		endsprite 

Frame_SuperSonic_Run2_QuillUp:	spritemap 
		piece	-6, -$1A, 2x1, 0
		piece	-$E, -$12, 3x4, 2
		piece	$A, -$12, 1x3, $E
		piece	-6, $E, 1x1, $11
		endsprite 

Frame_SuperSonic_Run3_QuillUp:	spritemap 
		piece	-$18, -$14, 2x3, 0
		piece	-8, -$14, 2x2, 6
		piece	-8, -4, 1x1, $A
		piece	0, -4, 2x3, $B
		endsprite 

Frame_SuperSonic_Run4_QuillUp:	spritemap 
		piece	-$12, -$12, 3x1, 0
		piece	-$1A, -$A, 4x2, 3
		piece	6, -$A, 2x2, $B
		piece	-$12, 6, 2x1, $F
		piece	6, 6, 1x1, $11
		endsprite 

Frame_SuperSonic_Push1:	spritemap 
		piece	-$12, -$1B, 3x2, 0
		piece	-$15, -$B, 2x2, 6
		piece	-5, -$B, 2x2, $A
		piece	-$15, 5, 4x2, $E
		endsprite 

Frame_SuperSonic_Push2:	spritemap 
		piece	-$12, -$1C, 3x2, 0
		piece	-$15, -$C, 2x2, 6
		piece	-5, -$C, 2x2, $A
		piece	-$15, 4, 4x2, $E
		endsprite 

Frame_SuperSonic_Push3:	spritemap 
		piece	-$12, -$1B, 3x2, 0
		piece	-$15, -$B, 2x2, 6
		piece	-5, -$B, 2x2, $A
		piece	-$15, 5, 4x2, $E
		endsprite 

Frame_SuperSonic_Push4:	spritemap 
		piece	-$12, -$1C, 3x2, 0
		piece	-$15, -$C, 2x2, 6
		piece	-5, -$C, 2x2, $A
		piece	-$15, 4, 4x2, $E
		endsprite 

Frame_SuperSonic_Duck:	spritemap 
		piece	-$10, -4, 1x3, 0
		piece	-8, -$C, 3x4, 3
		endsprite 

Frame_SuperSonic_Balance1:	spritemap 
		piece	-$14, -$1C, 3x3, 0
		piece	-$14, -4, 3x1, 9
		piece	-$F, 4, 2x2, $C
		endsprite 

Frame_SuperSonic_Balance2:	spritemap 
		piece	-$14, -$1C, 3x3, 0
		piece	-$14, -4, 3x1, 9
		piece	-$F, 4, 2x2, $C
		endsprite 

Frame_SuperSonic_Balance3:	spritemap 
		piece	-$14, -$1C, 3x3, 0
		piece	-$14, -4, 3x1, 9
		piece	-$F, 4, 2x2, $C
		endsprite 

Frame_SuperSonic_Balance4:	spritemap 
		piece	-$13, -$1B, 3x3, 0
		piece	-$13, -3, 3x1, 9
		piece	-$F, 5, 2x2, $C
		endsprite 

Frame_SuperSonic_Balance5:	spritemap 
		piece	-$13, -$1B, 3x3, 0
		piece	-$13, -3, 3x1, 9
		piece	-$F, 5, 2x2, $C
		endsprite 

Frame_SuperSonic_Balance6:	spritemap 
		piece	-$13, -$1B, 3x3, 0
		piece	-$13, -3, 3x1, 9
		piece	-$F, 5, 2x2, $C
		endsprite 

Frame_Sonic_Balance11:	spritemap 
		piece	-$10, -$14, 3x4, 0
		piece	8, -$14, 1x4, $C
		piece	-$F, $C, 2x2, $10
		endsprite 

Frame_Sonic_Balance12:	spritemap 
		piece	-$10, -$14, 3x4, 0
		piece	8, -$14, 1x4, $C
		piece	-$F, $C, 2x2, $10
		endsprite 

Frame_Sonic_Balance13:	spritemap 
		piece	-$10, -$14, 3x4, 0
		piece	8, -$14, 1x4, $C
		piece	-$F, $C, 2x2, $10
		endsprite 

Frame_Sonic_Balance14:	spritemap 
		piece	-$10, -$14, 3x4, 0
		piece	8, -$14, 1x2, $C
		piece	$10, -$14, 1x2, $E
		piece	8, -4, 1x2, $10
		piece	-$F, $C, 2x2, $12
		endsprite 

Frame_Sonic_Balance21:	spritemap 
		piece	-$15, -$14, 2x4, 0
		piece	-5, -$14, 3x2, 8
		piece	-5, -4, 2x2, $E
		piece	-$12, $C, 3x2, $12
		endsprite 

Frame_Sonic_Balance22:	spritemap 
		piece	-$14, -$14, 2x4, 0
		piece	-4, -$14, 3x2, 8
		piece	-4, -4, 2x2, $E
		piece	-$11, $C, 3x2, $12
		endsprite 

Frame_Sonic_Balance23:	spritemap 
		piece	-$14, -$14, 2x4, 0
		piece	-4, -$14, 3x2, 8
		piece	-4, -4, 3x2, $E
		piece	-$10, $C, 3x2, $14
		endsprite 

Frame_Sonic_LoseFooting:	spritemap 
		piece	-$18, -$C, 1x4, 0
		piece	-$10, -$14, 3x4, 4
		piece	-$10, $C, 2x2, $10
		endsprite 

Frame_Sonic_Balance31:	spritemap 
		piece	$C, -$C, 1x4, 0, xflip
		piece	-$C, -$14, 3x4, 4, xflip
		piece	-4, $C, 2x2, $10, xflip
		endsprite 

Frame_Sonic_Balance32:	spritemap 
		piece	$C, -$C, 1x4, 0, xflip
		piece	-$C, -$14, 3x4, 4, xflip
		piece	-4, $C, 2x2, $10, xflip
		endsprite 

Frame_Sonic_Stop1:	spritemap 
		piece	-$13, -$14, 4x2, 0
		piece	-$11, -4, 4x2, 8
		piece	$F, -4, 1x2, $10
		piece	1, $C, 2x2, $12
		endsprite 

Frame_Sonic_Stop2:	spritemap 
		piece	-$12, -$14, 4x2, 0
		piece	-$11, -4, 4x2, 8
		piece	$F, -4, 1x2, $10
		piece	1, $C, 2x2, $12
		endsprite 

Frame_Sonic_Stop3:	spritemap 
		piece	-$11, -$14, 4x2, 0
		piece	-$11, -4, 4x2, 8
		piece	$F, -4, 1x2, $10
		piece	1, $C, 2x2, $12
		endsprite 

Frame_Sonic_TurnAround:	spritemap 
		piece	-$C, -$14, 3x2, 0
		piece	-9, -4, 3x4, 6
		endsprite 

		even
