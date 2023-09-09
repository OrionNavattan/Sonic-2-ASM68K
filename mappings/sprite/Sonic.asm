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
		piece	-8, -$1C, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, -$14, 1, 4, 4, 0, 0, 0, 0
		piece	-8, -$C, 3, 2, 8, 0, 0, 0, 0
		piece	-8, 4, 3, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Blink:	spritemap 
		piece	-$10, -$14, 3, 4, 0, 0, 0, 0, 0
		piece	-8, $C, 3, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Wait1:	spritemap 
		piece	-$10, -$14, 1, 4, 0, 0, 0, 0, 0
		piece	-8, -$14, 2, 2, 4, 0, 0, 0, 0
		piece	-8, -4, 2, 2, 8, 0, 0, 0, 0
		piece	-8, $C, 3, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Wait2:	spritemap 
		piece	-$10, -$14, 1, 4, 0, 0, 0, 0, 0
		piece	-8, -$14, 2, 2, 4, 0, 0, 0, 0
		piece	-8, -4, 2, 2, 8, 0, 0, 0, 0
		piece	-8, $C, 3, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Wait3:	spritemap 
		piece	-$10, -$14, 1, 4, 0, 0, 0, 0, 0
		piece	-8, -$14, 2, 2, 4, 0, 0, 0, 0
		piece	-8, -4, 2, 2, 8, 0, 0, 0, 0
		piece	-8, $C, 1, 2, $C, 0, 0, 0, 0
		piece	0, $C, 2, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Wait4:	spritemap 
		piece	-$10, -$14, 1, 4, 0, 0, 0, 0, 0
		piece	-8, -$14, 2, 4, 4, 0, 0, 0, 0
		piece	-8, $C, 3, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_LayDown:	spritemap 
		piece	-$10, -$C, 3, 4, 0, 0, 0, 0, 0
		piece	8, 4, 1, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Laying1:	spritemap 
		piece	-$18, -$C, 3, 4, 0, 0, 0, 0, 0
		piece	0, 4, 2, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Laying2:	spritemap 
		piece	-$18, -$C, 3, 4, 0, 0, 0, 0, 0
		piece	0, 4, 2, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_GetUp:	spritemap 
		piece	-$10, -$1C, 3, 4, 0, 0, 0, 0, 0
		piece	-$10, 4, 4, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_LookUp1:	spritemap 
		piece	-8, -$1C, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, -$14, 1, 4, 4, 0, 0, 0, 0
		piece	-8, -$C, 3, 2, 8, 0, 0, 0, 0
		piece	-8, 4, 3, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_Sonic_LookUp2:	spritemap 
		piece	-$10, -$14, 1, 4, 0, 0, 0, 0, 0
		piece	-8, -$1C, 2, 2, 4, 0, 0, 0, 0
		piece	-8, -$C, 2, 2, 8, 0, 0, 0, 0
		piece	-8, 4, 3, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk11:	spritemap 
		piece	-$12, -$15, 4, 2, 0, 0, 0, 0, 0
		piece	-$14, 3, 1, 2, 8, 0, 0, 0, 0
		piece	-$C, -5, 4, 4, $A, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk12:	spritemap 
		piece	-$12, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$14, 4, 1, 2, 8, 0, 0, 0, 0
		piece	-$C, -4, 3, 4, $A, 0, 0, 0, 0
		piece	$C, 4, 1, 2, $16, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk13:	spritemap 
		piece	-$13, -$13, 4, 2, 0, 0, 0, 0, 0
		piece	-$C, -3, 3, 2, 8, 0, 0, 0, 0
		piece	-9, $D, 2, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk14:	spritemap 
		piece	-$C, -$14, 3, 2, 0, 0, 0, 0, 0
		piece	-$12, -4, 4, 4, 6, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk15:	spritemap 
		piece	-$C, -$15, 3, 2, 0, 0, 0, 0, 0
		piece	-$12, -5, 4, 4, 6, 0, 0, 0, 0
		piece	$E, -5, 1, 2, $16, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk16:	spritemap 
		piece	-$C, -$14, 3, 2, 0, 0, 0, 0, 0
		piece	-$14, 4, 1, 2, 6, 0, 0, 0, 0
		piece	-$C, -4, 3, 4, 8, 0, 0, 0, 0
		piece	$C, 4, 1, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk17:	spritemap 
		piece	-$13, -$13, 4, 2, 0, 0, 0, 0, 0
		piece	-$C, -3, 3, 2, 8, 0, 0, 0, 0
		piece	-9, $D, 2, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk18:	spritemap 
		piece	-$12, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$D, -4, 3, 4, 8, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk21:	spritemap 
		piece	-$16, -$15, 3, 2, 0, 0, 0, 0, 0
		piece	-$16, -5, 3, 2, 6, 0, 0, 0, 0
		piece	2, -$D, 2, 2, $C, 0, 0, 0, 0
		piece	-6, $B, 1, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk22:	spritemap 
		piece	-$15, -$14, 3, 2, 0, 0, 0, 0, 0
		piece	3, -$14, 1, 2, 6, 0, 0, 0, 0
		piece	-$15, -4, 4, 2, 8, 0, 0, 0, 0
		piece	$B, -4, 2, 2, $10, 0, 0, 0, 0
		piece	-5, $C, 1, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk23:	spritemap 
		piece	-$14, -$13, 2, 4, 0, 0, 0, 0, 0
		piece	-4, -$13, 1, 4, 8, 0, 0, 0, 0
		piece	4, -$B, 1, 2, $C, 0, 0, 0, 0
		piece	4, 5, 2, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk24:	spritemap 
		piece	-$15, -$14, 3, 2, 0, 0, 0, 0, 0
		piece	3, -$14, 1, 2, 6, 0, 0, 0, 0
		piece	-$15, -4, 2, 2, 8, 0, 0, 0, 0
		piece	-5, -4, 3, 4, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk25:	spritemap 
		piece	-$16, -$15, 3, 2, 0, 0, 0, 0, 0
		piece	2, -$15, 1, 2, 6, 0, 0, 0, 0
		piece	-$16, -5, 4, 2, 8, 0, 0, 0, 0
		piece	$A, -$D, 1, 2, $10, 0, 0, 0, 0
		piece	-$E, $B, 2, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk26:	spritemap 
		piece	-$15, -$14, 3, 2, 0, 0, 0, 0, 0
		piece	3, -$14, 1, 2, 6, 0, 0, 0, 0
		piece	-$15, -4, 4, 2, 8, 0, 0, 0, 0
		piece	$B, -6, 2, 2, $10, 0, 0, 0, 0
		piece	-5, $C, 1, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk27:	spritemap 
		piece	-$14, -$13, 2, 4, 0, 0, 0, 0, 0
		piece	-4, -$13, 1, 4, 8, 0, 0, 0, 0
		piece	4, -$B, 1, 2, $C, 0, 0, 0, 0
		piece	4, 5, 2, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk28:	spritemap 
		piece	-$15, -$14, 3, 2, 0, 0, 0, 0, 0
		piece	-$15, -4, 3, 2, 6, 0, 0, 0, 0
		piece	3, -$C, 1, 2, $C, 0, 0, 0, 0
		piece	-5, $C, 1, 2, $E, 0, 0, 0, 0
		piece	3, 4, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk31:	spritemap 
		piece	-$15, -$E, 2, 4, 0, 0, 0, 0, 0
		piece	-5, -$14, 3, 4, 8, 0, 0, 0, 0
		piece	3, $C, 2, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk32:	spritemap 
		piece	-$14, -$E, 2, 4, 0, 0, 0, 0, 0
		piece	-4, -$14, 3, 4, 8, 0, 0, 0, 0
		piece	4, $C, 2, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk33:	spritemap 
		piece	-$13, -$D, 2, 4, 0, 0, 0, 0, 0
		piece	-3, -$C, 1, 4, 8, 0, 0, 0, 0
		piece	5, -7, 2, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk34:	spritemap 
		piece	-$14, -$C, 2, 4, 0, 0, 0, 0, 0
		piece	-4, -$E, 3, 4, 8, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk35:	spritemap 
		piece	-$15, -$C, 2, 4, 0, 0, 0, 0, 0
		piece	-5, -$1D, 2, 2, 8, 0, 0, 0, 0
		piece	-5, -$D, 3, 4, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk36:	spritemap 
		piece	-$14, -$C, 2, 4, 0, 0, 0, 0, 0
		piece	-4, -$14, 3, 4, 8, 0, 0, 0, 0
		piece	4, $C, 2, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk37:	spritemap 
		piece	-$13, -$D, 2, 4, 0, 0, 0, 0, 0
		piece	-3, -$C, 1, 4, 8, 0, 0, 0, 0
		piece	5, -7, 2, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk38:	spritemap 
		piece	-$14, -$E, 2, 4, 0, 0, 0, 0, 0
		piece	-4, -$C, 3, 4, 8, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk41:	spritemap 
		piece	-$D, -$12, 2, 2, 0, 0, 0, 0, 0
		piece	-$15, -2, 2, 4, 4, 0, 0, 0, 0
		piece	-5, -2, 4, 2, $C, 0, 0, 0, 0
		piece	-5, $E, 1, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk42:	spritemap 
		piece	-4, -$23, 2, 2, 0, 0, 0, 0, 0
		piece	-$C, -$13, 3, 2, 4, 0, 0, 0, 0
		piece	-$14, -3, 2, 4, $A, 0, 0, 0, 0
		piece	-4, -3, 4, 2, $12, 0, 0, 0, 0
		piece	-4, $D, 1, 2, $1A, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk43:	spritemap 
		piece	-$B, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$13, -4, 2, 4, 8, 0, 0, 0, 0
		piece	-3, -4, 2, 2, $10, 0, 0, 0, 0
		piece	-3, $C, 1, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk44:	spritemap 
		piece	-$C, -$13, 4, 2, 0, 0, 0, 0, 0
		piece	-$14, -3, 2, 4, 8, 0, 0, 0, 0
		piece	-4, -3, 3, 2, $10, 0, 0, 0, 0
		piece	-4, $D, 1, 2, $16, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk45:	spritemap 
		piece	-$D, -$12, 3, 2, 0, 0, 0, 0, 0
		piece	-$15, -2, 2, 4, 6, 0, 0, 0, 0
		piece	-5, -2, 4, 2, $E, 0, 0, 0, 0
		piece	-5, $E, 1, 2, $16, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk46:	spritemap 
		piece	-6, -$23, 2, 2, 0, 0, 0, 0, 0
		piece	-$C, -$13, 3, 2, 4, 0, 0, 0, 0
		piece	-$14, -3, 2, 4, $A, 0, 0, 0, 0
		piece	-4, -3, 4, 2, $12, 0, 0, 0, 0
		piece	-4, $D, 1, 2, $1A, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk47:	spritemap 
		piece	-$B, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$13, -4, 2, 4, 8, 0, 0, 0, 0
		piece	-3, -4, 2, 2, $10, 0, 0, 0, 0
		piece	-3, $C, 1, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Walk48:	spritemap 
		piece	-$C, -$13, 4, 2, 0, 0, 0, 0, 0
		piece	-$14, -3, 2, 4, 8, 0, 0, 0, 0
		piece	-4, -3, 3, 2, $10, 0, 0, 0, 0
		piece	-4, $D, 1, 2, $16, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run11:	spritemap 
		piece	-8, -$12, 3, 2, 0, 0, 0, 0, 0
		piece	-$10, -2, 4, 4, 6, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run12:	spritemap 
		piece	-8, -$12, 3, 2, 0, 0, 0, 0, 0
		piece	-$10, -2, 4, 4, 6, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run13:	spritemap 
		piece	-8, -$12, 3, 2, 0, 0, 0, 0, 0
		piece	-$10, -2, 4, 4, 6, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run14:	spritemap 
		piece	-8, -$12, 3, 2, 0, 0, 0, 0, 0
		piece	-$10, -2, 4, 4, 6, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run21:	spritemap 
		piece	-$13, -$14, 3, 2, 0, 0, 0, 0, 0
		piece	5, -$14, 1, 2, 6, 0, 0, 0, 0
		piece	-$C, -4, 4, 2, 8, 0, 0, 0, 0
		piece	-6, $C, 3, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run22:	spritemap 
		piece	-$13, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$B, -4, 4, 2, 8, 0, 0, 0, 0
		piece	-8, $C, 3, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run23:	spritemap 
		piece	-$13, -$14, 3, 2, 0, 0, 0, 0, 0
		piece	5, -$14, 1, 2, 6, 0, 0, 0, 0
		piece	-$C, -4, 4, 2, 8, 0, 0, 0, 0
		piece	-3, $C, 3, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run24:	spritemap 
		piece	-$13, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$B, -4, 4, 2, 8, 0, 0, 0, 0
		piece	-8, $C, 3, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run31:	spritemap 
		piece	-$12, -$10, 2, 4, 0, 0, 0, 0, 0
		piece	-2, -$10, 3, 4, 8, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run32:	spritemap 
		piece	-$12, -$10, 2, 4, 0, 0, 0, 0, 0
		piece	-2, -$10, 3, 4, 8, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run33:	spritemap 
		piece	-$12, -$10, 2, 4, 0, 0, 0, 0, 0
		piece	-2, -$10, 3, 4, 8, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run34:	spritemap 
		piece	-$12, -$10, 2, 4, 0, 0, 0, 0, 0
		piece	-2, -$10, 3, 4, 8, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run41:	spritemap 
		piece	-$C, -$17, 1, 2, 0, 0, 0, 0, 0
		piece	-$14, -7, 2, 4, 2, 0, 0, 0, 0
		piece	-4, -$14, 3, 4, $A, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run42:	spritemap 
		piece	-$14, -$D, 2, 4, 0, 0, 0, 0, 0
		piece	-4, -$15, 3, 4, 8, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run43:	spritemap 
		piece	-$C, -$17, 1, 2, 0, 0, 0, 0, 0
		piece	-$14, -7, 2, 4, 2, 0, 0, 0, 0
		piece	-4, -$14, 3, 4, $A, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Run44:	spritemap 
		piece	-$14, -$D, 2, 4, 0, 0, 0, 0, 0
		piece	-4, -$15, 3, 4, 8, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Roll1:	spritemap 
		piece	-$10, -$10, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Roll2:	spritemap 
		piece	-$10, -$10, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Roll3:	spritemap 
		piece	-$10, -$10, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Roll4:	spritemap 
		piece	-$10, -$10, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Roll5:	spritemap 
		piece	-$10, -$10, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Spindash1:	spritemap 
		piece	-$C, -8, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Spindash2:	spritemap 
		piece	-$C, -8, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Spindash3:	spritemap 
		piece	-$C, -8, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Spindash4:	spritemap 
		piece	-$C, -8, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Spindash5:	spritemap 
		piece	-$C, -8, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Spindash6:	spritemap 
		piece	-$C, -8, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Push1:	spritemap 
		piece	-$D, -$1B, 3, 2, 0, 0, 0, 0, 0
		piece	-$D, -$B, 3, 2, 6, 0, 0, 0, 0
		piece	-$15, 5, 4, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Push2:	spritemap 
		piece	-$D, -$1C, 3, 2, 0, 0, 0, 0, 0
		piece	-$D, -$C, 3, 2, 6, 0, 0, 0, 0
		piece	-$D, 4, 3, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Push3:	spritemap 
		piece	-$D, -$1B, 3, 2, 0, 0, 0, 0, 0
		piece	-$D, -$B, 3, 2, 6, 0, 0, 0, 0
		piece	-$15, 5, 4, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Push4:	spritemap 
		piece	-$D, -$1B, 3, 2, 0, 0, 0, 0, 0
		piece	-$D, -$B, 3, 2, 6, 0, 0, 0, 0
		piece	-$D, 5, 3, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Duck1:	spritemap 
		piece	-$A, -$C, 3, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Duck2:	spritemap 
		piece	-$E, -$C, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Injury:	spritemap 
		piece	-$14, -8, 1, 2, 0, 0, 0, 0, 0
		piece	-$C, -$10, 4, 4, 2, 0, 0, 0, 0
		endsprite 

Frame_Sonic_OilSlide:	spritemap 
		piece	-$14, -$10, 1, 4, 0, 0, 0, 0, 0
		piece	-$C, -$10, 4, 4, 4, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Hang11:	spritemap 
		piece	-$18, -$18, 4, 4, 0, 0, 0, 0, 0
		piece	8, -$18, 1, 2, $10, 0, 0, 0, 0
		piece	8, -8, 2, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Hang12:	spritemap 
		piece	-$18, -$18, 4, 4, 0, 0, 0, 0, 0
		piece	8, -$18, 1, 2, $10, 0, 0, 0, 0
		piece	8, -8, 2, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Hang21:	spritemap 
		piece	-$C, -$18, 3, 4, 0, 0, 0, 0, 0
		piece	-$C, 8, 3, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Hang22:	spritemap 
		piece	-$C, -$18, 3, 4, 0, 0, 0, 0, 0
		piece	-$C, 8, 3, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Float1:	spritemap 
		piece	-$14, -4, 2, 2, 0, 0, 0, 0, 0
		piece	-4, -$C, 3, 4, 4, 0, 0, 0, 0
		piece	$14, -$C, 1, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Float2:	spritemap 
		piece	-$18, -$C, 1, 2, 0, 0, 0, 0, 0
		piece	-$10, -$C, 2, 4, 2, 0, 0, 0, 0
		piece	0, -$C, 2, 4, 2, 1, 0, 0, 0
		piece	$10, -$C, 1, 2, 0, 1, 0, 0, 0
		endsprite 

Frame_Sonic_Float3:	spritemap 
		piece	4, -4, 2, 2, 0, 1, 0, 0, 0
		piece	-$14, -$C, 3, 4, 4, 1, 0, 0, 0
		piece	-$1C, -$C, 1, 2, $10, 1, 0, 0, 0
		endsprite 

Frame_Sonic_Float4:	spritemap 
		piece	-$1C, -$C, 1, 2, 0, 0, 0, 0, 0
		piece	-$14, -$C, 3, 4, 2, 0, 0, 0, 0
		piece	4, -4, 1, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Float5:	spritemap 
		piece	$14, -$C, 1, 2, 0, 1, 0, 0, 0
		piece	-4, -$C, 3, 4, 2, 1, 0, 0, 0
		piece	-$C, -4, 1, 2, $E, 1, 0, 0, 0
		endsprite 

Frame_Sonic_Float6:	spritemap 
		piece	-$14, -4, 2, 2, 0, 0, 0, 0, 0
		piece	-4, -$C, 3, 4, 4, 0, 0, 0, 0
		piece	$14, -$C, 1, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_GetAir:	spritemap 
		piece	-$C, -$1C, 3, 2, 0, 0, 0, 0, 0
		piece	-$14, -$C, 4, 4, 6, 0, 0, 0, 0
		piece	$C, 4, 1, 2, $16, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Spring:	spritemap 
		piece	-$C, -$18, 3, 4, 0, 0, 0, 0, 0
		piece	-4, 8, 2, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Death:	spritemap 
		piece	-$18, -$16, 1, 2, 0, 0, 0, 0, 0
		piece	-$10, -$16, 3, 4, 2, 0, 0, 0, 0
		piece	8, -$16, 1, 2, $E, 0, 0, 0, 0
		piece	-$10, $A, 4, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Drown:	spritemap 
		piece	-$18, -$16, 1, 2, 0, 0, 0, 0, 0
		piece	-$10, -$16, 3, 4, 2, 0, 0, 0, 0
		piece	8, -$16, 1, 2, $E, 0, 0, 0, 0
		piece	-$10, $A, 4, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Burnt:	spritemap 
		piece	-$18, -$16, 4, 2, 0, 0, 0, 0, 0
		piece	8, -$16, 1, 2, 8, 0, 0, 0, 0
		piece	-$10, -6, 3, 4, $A, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble1:	spritemap 
		piece	-$10, -$1C, 3, 2, 0, 0, 0, 0, 0
		piece	-$10, -$C, 3, 4, 6, 0, 0, 0, 0
		piece	8, -$C, 1, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble2:	spritemap 
		piece	-$10, -$1B, 3, 4, 0, 0, 0, 0, 0
		piece	8, -$C, 1, 2, $C, 0, 0, 0, 0
		piece	-8, 5, 2, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble3:	spritemap 
		piece	-$F, -$14, 3, 4, 0, 0, 0, 0, 0
		piece	9, -4, 1, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble4:	spritemap 
		piece	-$10, -$12, 4, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble5:	spritemap 
		piece	-$10, -$E, 3, 4, 0, 0, 0, 0, 0
		piece	8, -6, 1, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble6:	spritemap 
		piece	0, -$1C, 1, 2, 0, 0, 0, 0, 0
		piece	-$10, -$C, 3, 4, 2, 0, 0, 0, 0
		piece	8, -$C, 1, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble7:	spritemap 
		piece	-$10, -$1B, 3, 2, 0, 0, 0, 0, 0
		piece	-$10, -$B, 3, 4, 6, 0, 0, 0, 0
		piece	8, -$13, 1, 4, $12, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble8:	spritemap 
		piece	-8, -$1C, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, -$C, 3, 4, 4, 0, 0, 0, 0
		piece	8, -$C, 1, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble9:	spritemap 
		piece	-$10, -$13, 3, 4, 0, 0, 0, 0, 0
		piece	8, -$B, 1, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble10:	spritemap 
		piece	-$10, -$C, 1, 2, 0, 0, 0, 0, 0
		piece	-8, -$F, 3, 4, 2, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble11:	spritemap 
		piece	-$F, -$1C, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, -$C, 3, 4, 4, 0, 0, 0, 0
		piece	8, -$C, 1, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Tumble12:	spritemap 
		piece	-$10, -$1F, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, -$F, 4, 4, 4, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Vine1:	spritemap 
		piece	-$10, -$18, 2, 4, 0, 0, 0, 0, 0
		piece	0, -$20, 1, 4, 8, 0, 0, 0, 0
		piece	0, 0, 3, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Vine2:	spritemap 
		piece	-$10, -$18, 2, 4, 0, 0, 0, 0, 0
		piece	0, -$20, 1, 4, 8, 0, 0, 0, 0
		piece	0, 0, 3, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Transform1:	spritemap 
		piece	-$B, -$10, 3, 4, 0, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Transform2:	spritemap 
		piece	-$10, -$1A, 3, 4, 0, 0, 0, 0, 0
		piece	8, -$12, 1, 2, $C, 0, 0, 0, 0
		piece	-$10, 6, 3, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Transform3:	spritemap 
		piece	-$10, -$1C, 3, 3, 0, 0, 0, 0, 0
		piece	8, -4, 1, 1, 9, 0, 0, 0, 0
		piece	-$10, -4, 3, 3, $A, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Transform4:	spritemap 
		piece	-$10, -$1C, 3, 1, 0, 0, 0, 0, 0
		piece	-$10, -$14, 1, 2, 3, 0, 0, 0, 0
		piece	-8, -$14, 2, 2, 5, 0, 0, 0, 0
		piece	-$10, -4, 3, 3, 9, 0, 0, 0, 0
		piece	8, -3, 1, 1, $12, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Transform5:	spritemap 
		piece	-$10, -$1C, 3, 1, 0, 0, 0, 0, 0
		piece	-$10, -$14, 1, 2, 3, 0, 0, 0, 0
		piece	-8, -$14, 2, 2, 5, 0, 0, 0, 0
		piece	-$10, -4, 3, 3, 9, 0, 0, 0, 0
		piece	8, -3, 1, 1, $12, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Stand1:	spritemap 
		piece	-$F, -$19, 3, 3, 0, 0, 0, 0, 0
		piece	-$D, -1, 3, 3, 9, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Stand2:	spritemap 
		piece	-$F, -$19, 3, 3, 0, 0, 0, 0, 0
		piece	-$D, -1, 3, 3, 9, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Stand3:	spritemap 
		piece	-$F, -$19, 3, 3, 0, 0, 0, 0, 0
		piece	-$D, -1, 3, 3, 9, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk11:	spritemap 
		piece	-$12, -$1D, 4, 3, 0, 0, 0, 0, 0
		piece	-$14, 3, 1, 2, $C, 0, 0, 0, 0
		piece	-$C, -5, 4, 4, $E, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk12:	spritemap 
		piece	-$12, -$1C, 4, 3, 0, 0, 0, 0, 0
		piece	-$14, 4, 1, 2, $C, 0, 0, 0, 0
		piece	-$C, -4, 3, 4, $E, 0, 0, 0, 0
		piece	$C, 4, 1, 2, $1A, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk13:	spritemap 
		piece	-$13, -$1B, 4, 3, 0, 0, 0, 0, 0
		piece	-$C, -3, 3, 2, $C, 0, 0, 0, 0
		piece	-9, $D, 2, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk14:	spritemap 
		piece	-$C, -$1C, 3, 3, 0, 0, 0, 0, 0
		piece	-$12, -4, 4, 4, 9, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk15:	spritemap 
		piece	-$C, -$1D, 3, 3, 0, 0, 0, 0, 0
		piece	-$12, -5, 4, 4, 9, 0, 0, 0, 0
		piece	$E, -5, 1, 2, $19, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk16:	spritemap 
		piece	-$C, -$1C, 3, 3, 0, 0, 0, 0, 0
		piece	-$14, 4, 1, 2, 9, 0, 0, 0, 0
		piece	-$C, -4, 3, 4, $B, 0, 0, 0, 0
		piece	$C, 4, 1, 2, $17, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk17:	spritemap 
		piece	-$13, -$1B, 4, 3, 0, 0, 0, 0, 0
		piece	-$C, -3, 3, 2, $C, 0, 0, 0, 0
		piece	-9, $D, 2, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk18:	spritemap 
		piece	-$12, -$1C, 4, 3, 0, 0, 0, 0, 0
		piece	-$D, -4, 3, 4, $C, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk21:	spritemap 
		piece	-$1E, -$15, 4, 2, 0, 0, 0, 0, 0
		piece	2, -$D, 2, 2, 8, 0, 0, 0, 0
		piece	-$16, -5, 3, 2, $C, 0, 0, 0, 0
		piece	-6, $B, 1, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk22:	spritemap 
		piece	-$1D, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	3, -$14, 1, 2, 8, 0, 0, 0, 0
		piece	-$15, -4, 4, 2, $A, 0, 0, 0, 0
		piece	$B, -4, 2, 2, $12, 0, 0, 0, 0
		piece	-5, $C, 1, 2, $16, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk23:	spritemap 
		piece	-$1C, -$13, 3, 3, 0, 0, 0, 0, 0
		piece	-4, -$13, 1, 4, 9, 0, 0, 0, 0
		piece	-$C, 5, 1, 1, $D, 0, 0, 0, 0
		piece	4, -$B, 1, 2, $E, 0, 0, 0, 0
		piece	4, 5, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk24:	spritemap 
		piece	-$F, -$1C, 1, 1, 0, 0, 0, 0, 0
		piece	-$1D, -$14, 4, 2, 1, 0, 0, 0, 0
		piece	3, -$14, 1, 2, 9, 0, 0, 0, 0
		piece	-$15, -4, 2, 2, $B, 0, 0, 0, 0
		piece	-5, -4, 3, 4, $F, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk25:	spritemap 
		piece	-$10, -$1D, 1, 1, 0, 0, 0, 0, 0
		piece	-$1E, -$15, 4, 2, 1, 0, 0, 0, 0
		piece	2, -$15, 1, 2, 9, 0, 0, 0, 0
		piece	$A, -$D, 1, 2, $B, 0, 0, 0, 0
		piece	-$16, -5, 4, 2, $D, 0, 0, 0, 0
		piece	-$E, $B, 2, 2, $15, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk26:	spritemap 
		piece	-$F, -$1C, 1, 1, 0, 0, 0, 0, 0
		piece	-$1D, -$14, 4, 2, 1, 0, 0, 0, 0
		piece	3, -$14, 1, 2, 9, 0, 0, 0, 0
		piece	-$15, -4, 4, 2, $B, 0, 0, 0, 0
		piece	$B, -6, 2, 2, $13, 0, 0, 0, 0
		piece	-5, $C, 1, 2, $17, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk27:	spritemap 
		piece	-$1C, -$13, 3, 3, 0, 0, 0, 0, 0
		piece	-4, -$13, 1, 4, 9, 0, 0, 0, 0
		piece	-$C, 5, 1, 1, $D, 0, 0, 0, 0
		piece	4, -$B, 1, 2, $E, 0, 0, 0, 0
		piece	4, 5, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk28:	spritemap 
		piece	-$1D, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	3, -$C, 1, 2, 8, 0, 0, 0, 0
		piece	-$15, -4, 3, 2, $A, 0, 0, 0, 0
		piece	-5, $C, 1, 1, $10, 0, 0, 0, 0
		piece	3, 4, 2, 2, $11, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk31:	spritemap 
		piece	-$1D, -$E, 3, 4, 0, 0, 0, 0, 0
		piece	-5, -$14, 3, 4, $C, 0, 0, 0, 0
		piece	3, $C, 2, 2, $18, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk32:	spritemap 
		piece	-$1C, -$E, 3, 4, 0, 0, 0, 0, 0
		piece	-4, -$14, 3, 4, $C, 0, 0, 0, 0
		piece	4, $C, 2, 2, $18, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk33:	spritemap 
		piece	-$1B, -$D, 3, 4, 0, 0, 0, 0, 0
		piece	-3, -$C, 1, 4, $C, 0, 0, 0, 0
		piece	5, -7, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk34:	spritemap 
		piece	-$1C, -$C, 3, 3, 0, 0, 0, 0, 0
		piece	-4, -$E, 3, 4, 9, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk35:	spritemap 
		piece	-$1D, -$C, 3, 3, 0, 0, 0, 0, 0
		piece	-5, -$1D, 2, 2, 9, 0, 0, 0, 0
		piece	-5, -$D, 3, 4, $D, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk36:	spritemap 
		piece	-$1C, -$C, 3, 3, 0, 0, 0, 0, 0
		piece	-4, -$14, 3, 4, 9, 0, 0, 0, 0
		piece	4, $C, 2, 2, $15, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk37:	spritemap 
		piece	-$1B, -$D, 3, 4, 0, 0, 0, 0, 0
		piece	-3, -$C, 1, 4, $C, 0, 0, 0, 0
		piece	5, -7, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk38:	spritemap 
		piece	-$1C, -$C, 3, 4, 0, 0, 0, 0, 0
		piece	-4, -$E, 3, 4, $C, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk41:	spritemap 
		piece	-$D, -$12, 2, 2, 0, 0, 0, 0, 0
		piece	-$15, -2, 2, 4, 4, 0, 0, 0, 0
		piece	-5, -2, 4, 2, $C, 0, 0, 0, 0
		piece	-5, $E, 1, 1, $14, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk42:	spritemap 
		piece	-4, -$23, 2, 2, 0, 0, 0, 0, 0
		piece	-$C, -$13, 3, 2, 4, 0, 0, 0, 0
		piece	-$14, -3, 2, 4, $A, 0, 0, 0, 0
		piece	-4, -3, 4, 2, $12, 0, 0, 0, 0
		piece	-4, $D, 1, 1, $1A, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk43:	spritemap 
		piece	-$B, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$13, -4, 2, 4, 8, 0, 0, 0, 0
		piece	-3, -4, 2, 2, $10, 0, 0, 0, 0
		piece	-3, $C, 1, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk44:	spritemap 
		piece	-$C, -$13, 4, 2, 0, 0, 0, 0, 0
		piece	-$1C, -3, 3, 4, 8, 0, 0, 0, 0
		piece	-4, -3, 3, 2, $14, 0, 0, 0, 0
		piece	-4, $D, 1, 1, $1A, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk45:	spritemap 
		piece	-$D, -$12, 3, 2, 0, 0, 0, 0, 0
		piece	-$1D, -2, 3, 4, 6, 0, 0, 0, 0
		piece	-5, -2, 4, 2, $12, 0, 0, 0, 0
		piece	-5, $E, 1, 1, $1A, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk46:	spritemap 
		piece	-6, -$23, 2, 2, 0, 0, 0, 0, 0
		piece	-$C, -$13, 3, 2, 4, 0, 0, 0, 0
		piece	-$1C, -3, 3, 4, $A, 0, 0, 0, 0
		piece	-4, -3, 4, 2, $16, 0, 0, 0, 0
		piece	-4, $D, 1, 1, $1E, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk47:	spritemap 
		piece	-$B, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$13, -4, 2, 4, 8, 0, 0, 0, 0
		piece	-3, -4, 2, 2, $10, 0, 0, 0, 0
		piece	-3, $C, 1, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk48:	spritemap 
		piece	-$C, -$13, 4, 2, 0, 0, 0, 0, 0
		piece	-$14, -3, 2, 4, 8, 0, 0, 0, 0
		piece	-4, -3, 3, 2, $10, 0, 0, 0, 0
		piece	-4, $D, 1, 1, $16, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk11_QuillUp:	spritemap 
		piece	-$12, -$1D, 4, 3, 0, 0, 0, 0, 0
		piece	-$14, 3, 1, 2, $C, 0, 0, 0, 0
		piece	-$C, -5, 4, 4, $E, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk12_QuillUp:	spritemap 
		piece	-$12, -$1C, 4, 3, 0, 0, 0, 0, 0
		piece	-$14, 4, 1, 2, $C, 0, 0, 0, 0
		piece	-$C, -4, 3, 4, $E, 0, 0, 0, 0
		piece	$C, 4, 1, 2, $1A, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk13_QuillUp:	spritemap 
		piece	-$13, -$1B, 4, 3, 0, 0, 0, 0, 0
		piece	-$C, -3, 3, 2, $C, 0, 0, 0, 0
		piece	-9, $D, 2, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk14_QuillUp:	spritemap 
		piece	-$C, -$1C, 3, 3, 0, 0, 0, 0, 0
		piece	-$12, -4, 4, 4, 9, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk15_QuillUp:	spritemap 
		piece	-$C, -$1D, 3, 3, 0, 0, 0, 0, 0
		piece	-$12, -5, 4, 4, 9, 0, 0, 0, 0
		piece	$E, -5, 1, 2, $19, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk16_QuillUp:	spritemap 
		piece	-$C, -$1C, 3, 3, 0, 0, 0, 0, 0
		piece	-$14, 4, 1, 2, 9, 0, 0, 0, 0
		piece	-$C, -4, 3, 4, $B, 0, 0, 0, 0
		piece	$C, 4, 1, 2, $17, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk17_QuillUp:	spritemap 
		piece	-$13, -$1B, 4, 3, 0, 0, 0, 0, 0
		piece	-$C, -3, 3, 2, $C, 0, 0, 0, 0
		piece	-9, $D, 2, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk18_QuillUp:	spritemap 
		piece	-$12, -$1C, 4, 3, 0, 0, 0, 0, 0
		piece	-$D, -4, 3, 4, $C, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk21_QuillUp:	spritemap 
		piece	-$16, -$1D, 2, 1, 0, 0, 0, 0, 0
		piece	-$1E, -$15, 4, 2, 2, 0, 0, 0, 0
		piece	-$16, -5, 3, 2, $A, 0, 0, 0, 0
		piece	2, -$D, 2, 2, $10, 0, 0, 0, 0
		piece	-6, $B, 1, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk22_QuillUp:	spritemap 
		piece	-$15, -$1C, 2, 1, 0, 0, 0, 0, 0
		piece	-$1D, -$14, 4, 2, 2, 0, 0, 0, 0
		piece	3, -$14, 1, 2, $A, 0, 0, 0, 0
		piece	-$15, -4, 4, 2, $C, 0, 0, 0, 0
		piece	$B, -4, 2, 2, $14, 0, 0, 0, 0
		piece	-5, $C, 1, 2, $18, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk23_QuillUp:	spritemap 
		piece	-$1C, -$15, 3, 2, 0, 0, 0, 0, 0
		piece	-$14, -5, 2, 2, 6, 0, 0, 0, 0
		piece	-4, -$13, 1, 4, $A, 0, 0, 0, 0
		piece	4, -$B, 1, 2, $E, 0, 0, 0, 0
		piece	4, 5, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk24_QuillUp:	spritemap 
		piece	-$15, -$1C, 2, 1, 0, 0, 0, 0, 0
		piece	-$1D, -$14, 4, 2, 2, 0, 0, 0, 0
		piece	3, -$14, 1, 2, $A, 0, 0, 0, 0
		piece	-$15, -4, 2, 2, $C, 0, 0, 0, 0
		piece	-5, -4, 3, 4, $10, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk25_QuillUp:	spritemap 
		piece	-$16, -$1D, 2, 1, 0, 0, 0, 0, 0
		piece	-$1E, -$15, 4, 2, 2, 0, 0, 0, 0
		piece	2, -$15, 1, 2, $A, 0, 0, 0, 0
		piece	$A, -$D, 1, 2, $C, 0, 0, 0, 0
		piece	-$16, -5, 4, 2, $E, 0, 0, 0, 0
		piece	-$E, $B, 2, 2, $16, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk26_QuillUp:	spritemap 
		piece	-$15, -$1C, 2, 1, 0, 0, 0, 0, 0
		piece	-$1D, -$14, 4, 2, 2, 0, 0, 0, 0
		piece	3, -$14, 1, 2, $A, 0, 0, 0, 0
		piece	-$15, -4, 4, 2, $C, 0, 0, 0, 0
		piece	$B, -6, 2, 2, $14, 0, 0, 0, 0
		piece	-5, $C, 1, 2, $18, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk27_QuillUp:	spritemap 
		piece	-$1C, -$15, 3, 2, 0, 0, 0, 0, 0
		piece	-$14, -5, 2, 2, 6, 0, 0, 0, 0
		piece	-4, -$13, 1, 4, $A, 0, 0, 0, 0
		piece	4, -$B, 1, 2, $E, 0, 0, 0, 0
		piece	4, 5, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk28_QuillUp:	spritemap 
		piece	-$15, -$1C, 2, 1, 0, 0, 0, 0, 0
		piece	-$1D, -$14, 4, 2, 2, 0, 0, 0, 0
		piece	-$15, -4, 3, 2, $A, 0, 0, 0, 0
		piece	3, -$C, 1, 2, $10, 0, 0, 0, 0
		piece	3, 4, 2, 2, $12, 0, 0, 0, 0
		piece	-5, $C, 1, 2, $16, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk31_QuillUp:	spritemap 
		piece	-$1D, -$E, 3, 4, 0, 0, 0, 0, 0
		piece	-5, -$14, 3, 4, $C, 0, 0, 0, 0
		piece	3, $C, 2, 2, $18, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk32_QuillUp:	spritemap 
		piece	-$1C, -$E, 3, 4, 0, 0, 0, 0, 0
		piece	-4, -$14, 3, 4, $C, 0, 0, 0, 0
		piece	4, $C, 2, 2, $18, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk33_QuillUp:	spritemap 
		piece	-$1B, -$D, 3, 4, 0, 0, 0, 0, 0
		piece	-3, -$C, 1, 4, $C, 0, 0, 0, 0
		piece	5, -7, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk34_QuillUp:	spritemap 
		piece	-$1C, -$C, 3, 3, 0, 0, 0, 0, 0
		piece	-4, -$E, 3, 4, 9, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk35_QuillUp:	spritemap 
		piece	-$1D, -$C, 3, 3, 0, 0, 0, 0, 0
		piece	-5, -$1D, 2, 2, 9, 0, 0, 0, 0
		piece	-5, -$D, 3, 4, $D, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk36_QuillUp:	spritemap 
		piece	-$1C, -$C, 3, 3, 0, 0, 0, 0, 0
		piece	-4, -$14, 3, 4, 9, 0, 0, 0, 0
		piece	4, $C, 2, 2, $15, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk37_QuillUp:	spritemap 
		piece	-$1B, -$D, 3, 4, 0, 0, 0, 0, 0
		piece	-3, -$C, 1, 4, $C, 0, 0, 0, 0
		piece	5, -7, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk38_QuillUp:	spritemap 
		piece	-$1C, -$E, 3, 4, 0, 0, 0, 0, 0
		piece	-4, -$C, 3, 4, $C, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk41_QuillUp:	spritemap 
		piece	-$D, -$12, 2, 2, 0, 0, 0, 0, 0
		piece	-$1D, -2, 3, 4, 4, 0, 0, 0, 0
		piece	-5, -2, 4, 2, $10, 0, 0, 0, 0
		piece	-5, $E, 1, 1, $18, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk42_QuillUp:	spritemap 
		piece	-4, -$23, 2, 2, 0, 0, 0, 0, 0
		piece	-$C, -$13, 3, 2, 4, 0, 0, 0, 0
		piece	-$1C, -3, 3, 4, $A, 0, 0, 0, 0
		piece	-4, -3, 4, 2, $16, 0, 0, 0, 0
		piece	-4, $D, 1, 1, $1E, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk43_QuillUp:	spritemap 
		piece	-$B, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$1B, 4, 1, 2, 8, 0, 0, 0, 0
		piece	-$13, -4, 2, 4, $A, 0, 0, 0, 0
		piece	-3, -4, 2, 2, $12, 0, 0, 0, 0
		piece	-3, $C, 1, 1, $16, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk44_QuillUp:	spritemap 
		piece	-$C, -$13, 4, 2, 0, 0, 0, 0, 0
		piece	-$1C, -3, 3, 4, 8, 0, 0, 0, 0
		piece	-4, -3, 3, 2, $14, 0, 0, 0, 0
		piece	-4, $D, 1, 1, $1A, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk45_QuillUp:	spritemap 
		piece	-$D, -$12, 3, 2, 0, 0, 0, 0, 0
		piece	-$1D, -2, 3, 4, 6, 0, 0, 0, 0
		piece	-5, -2, 4, 2, $12, 0, 0, 0, 0
		piece	-5, $E, 1, 1, $1A, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk46_QuillUp:	spritemap 
		piece	-6, -$23, 2, 2, 0, 0, 0, 0, 0
		piece	-$C, -$13, 3, 2, 4, 0, 0, 0, 0
		piece	-$1C, -3, 3, 4, $A, 0, 0, 0, 0
		piece	-4, -3, 4, 2, $16, 0, 0, 0, 0
		piece	-4, $D, 1, 1, $1E, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk47_QuillUp:	spritemap 
		piece	-$B, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$1B, 4, 1, 2, 8, 0, 0, 0, 0
		piece	-$13, -4, 2, 4, $A, 0, 0, 0, 0
		piece	-3, -4, 2, 2, $12, 0, 0, 0, 0
		piece	-3, $C, 1, 1, $16, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Walk48_QuillUp:	spritemap 
		piece	-$C, -$13, 4, 2, 0, 0, 0, 0, 0
		piece	-$1C, 5, 1, 2, 8, 0, 0, 0, 0
		piece	-$14, -3, 2, 4, $A, 0, 0, 0, 0
		piece	-4, -3, 3, 2, $12, 0, 0, 0, 0
		piece	-4, $D, 1, 1, $18, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Run1:	spritemap 
		piece	-4, -$10, 3, 1, 0, 0, 0, 0, 0
		piece	-4, -8, 1, 1, 3, 0, 0, 0, 0
		piece	4, -8, 2, 2, 4, 0, 0, 0, 0
		piece	-$14, 0, 3, 2, 8, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Run2:	spritemap 
		piece	-6, -$1A, 2, 1, 0, 0, 0, 0, 0
		piece	-$E, -$12, 3, 4, 2, 0, 0, 0, 0
		piece	$A, -$12, 1, 3, $E, 0, 0, 0, 0
		piece	-6, $E, 2, 1, $11, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Run3:	spritemap 
		piece	-$10, -$14, 1, 3, 0, 0, 0, 0, 0
		piece	-8, -$14, 2, 2, 3, 0, 0, 0, 0
		piece	-8, -4, 3, 1, 7, 0, 0, 0, 0
		piece	0, 4, 2, 2, $A, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Run4:	spritemap 
		piece	-$12, -$12, 3, 1, 0, 0, 0, 0, 0
		piece	-$1A, -$A, 4, 2, 3, 0, 0, 0, 0
		piece	6, -$A, 2, 2, $B, 0, 0, 0, 0
		piece	-$12, 6, 2, 1, $F, 0, 0, 0, 0
		piece	6, 6, 1, 1, $11, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Run1_QuillUp:	spritemap 
		piece	-4, -$18, 3, 2, 0, 0, 0, 0, 0
		piece	-4, -8, 1, 1, 6, 0, 0, 0, 0
		piece	4, -8, 2, 2, 7, 0, 0, 0, 0
		piece	-$14, 0, 3, 2, $B, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Run2_QuillUp:	spritemap 
		piece	-6, -$1A, 2, 1, 0, 0, 0, 0, 0
		piece	-$E, -$12, 3, 4, 2, 0, 0, 0, 0
		piece	$A, -$12, 1, 3, $E, 0, 0, 0, 0
		piece	-6, $E, 1, 1, $11, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Run3_QuillUp:	spritemap 
		piece	-$18, -$14, 2, 3, 0, 0, 0, 0, 0
		piece	-8, -$14, 2, 2, 6, 0, 0, 0, 0
		piece	-8, -4, 1, 1, $A, 0, 0, 0, 0
		piece	0, -4, 2, 3, $B, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Run4_QuillUp:	spritemap 
		piece	-$12, -$12, 3, 1, 0, 0, 0, 0, 0
		piece	-$1A, -$A, 4, 2, 3, 0, 0, 0, 0
		piece	6, -$A, 2, 2, $B, 0, 0, 0, 0
		piece	-$12, 6, 2, 1, $F, 0, 0, 0, 0
		piece	6, 6, 1, 1, $11, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Push1:	spritemap 
		piece	-$12, -$1B, 3, 2, 0, 0, 0, 0, 0
		piece	-$15, -$B, 2, 2, 6, 0, 0, 0, 0
		piece	-5, -$B, 2, 2, $A, 0, 0, 0, 0
		piece	-$15, 5, 4, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Push2:	spritemap 
		piece	-$12, -$1C, 3, 2, 0, 0, 0, 0, 0
		piece	-$15, -$C, 2, 2, 6, 0, 0, 0, 0
		piece	-5, -$C, 2, 2, $A, 0, 0, 0, 0
		piece	-$15, 4, 4, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Push3:	spritemap 
		piece	-$12, -$1B, 3, 2, 0, 0, 0, 0, 0
		piece	-$15, -$B, 2, 2, 6, 0, 0, 0, 0
		piece	-5, -$B, 2, 2, $A, 0, 0, 0, 0
		piece	-$15, 5, 4, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Push4:	spritemap 
		piece	-$12, -$1C, 3, 2, 0, 0, 0, 0, 0
		piece	-$15, -$C, 2, 2, 6, 0, 0, 0, 0
		piece	-5, -$C, 2, 2, $A, 0, 0, 0, 0
		piece	-$15, 4, 4, 2, $E, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Duck:	spritemap 
		piece	-$10, -4, 1, 3, 0, 0, 0, 0, 0
		piece	-8, -$C, 3, 4, 3, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Balance1:	spritemap 
		piece	-$14, -$1C, 3, 3, 0, 0, 0, 0, 0
		piece	-$14, -4, 3, 1, 9, 0, 0, 0, 0
		piece	-$F, 4, 2, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Balance2:	spritemap 
		piece	-$14, -$1C, 3, 3, 0, 0, 0, 0, 0
		piece	-$14, -4, 3, 1, 9, 0, 0, 0, 0
		piece	-$F, 4, 2, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Balance3:	spritemap 
		piece	-$14, -$1C, 3, 3, 0, 0, 0, 0, 0
		piece	-$14, -4, 3, 1, 9, 0, 0, 0, 0
		piece	-$F, 4, 2, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Balance4:	spritemap 
		piece	-$13, -$1B, 3, 3, 0, 0, 0, 0, 0
		piece	-$13, -3, 3, 1, 9, 0, 0, 0, 0
		piece	-$F, 5, 2, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Balance5:	spritemap 
		piece	-$13, -$1B, 3, 3, 0, 0, 0, 0, 0
		piece	-$13, -3, 3, 1, 9, 0, 0, 0, 0
		piece	-$F, 5, 2, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_SuperSonic_Balance6:	spritemap 
		piece	-$13, -$1B, 3, 3, 0, 0, 0, 0, 0
		piece	-$13, -3, 3, 1, 9, 0, 0, 0, 0
		piece	-$F, 5, 2, 2, $C, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Balance11:	spritemap 
		piece	-$10, -$14, 3, 4, 0, 0, 0, 0, 0
		piece	8, -$14, 1, 4, $C, 0, 0, 0, 0
		piece	-$F, $C, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Balance12:	spritemap 
		piece	-$10, -$14, 3, 4, 0, 0, 0, 0, 0
		piece	8, -$14, 1, 4, $C, 0, 0, 0, 0
		piece	-$F, $C, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Balance13:	spritemap 
		piece	-$10, -$14, 3, 4, 0, 0, 0, 0, 0
		piece	8, -$14, 1, 4, $C, 0, 0, 0, 0
		piece	-$F, $C, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Balance14:	spritemap 
		piece	-$10, -$14, 3, 4, 0, 0, 0, 0, 0
		piece	8, -$14, 1, 2, $C, 0, 0, 0, 0
		piece	$10, -$14, 1, 2, $E, 0, 0, 0, 0
		piece	8, -4, 1, 2, $10, 0, 0, 0, 0
		piece	-$F, $C, 2, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Balance21:	spritemap 
		piece	-$15, -$14, 2, 4, 0, 0, 0, 0, 0
		piece	-5, -$14, 3, 2, 8, 0, 0, 0, 0
		piece	-5, -4, 2, 2, $E, 0, 0, 0, 0
		piece	-$12, $C, 3, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Balance22:	spritemap 
		piece	-$14, -$14, 2, 4, 0, 0, 0, 0, 0
		piece	-4, -$14, 3, 2, 8, 0, 0, 0, 0
		piece	-4, -4, 2, 2, $E, 0, 0, 0, 0
		piece	-$11, $C, 3, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Balance23:	spritemap 
		piece	-$14, -$14, 2, 4, 0, 0, 0, 0, 0
		piece	-4, -$14, 3, 2, 8, 0, 0, 0, 0
		piece	-4, -4, 3, 2, $E, 0, 0, 0, 0
		piece	-$10, $C, 3, 2, $14, 0, 0, 0, 0
		endsprite 

Frame_Sonic_LoseFooting:	spritemap 
		piece	-$18, -$C, 1, 4, 0, 0, 0, 0, 0
		piece	-$10, -$14, 3, 4, 4, 0, 0, 0, 0
		piece	-$10, $C, 2, 2, $10, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Balance31:	spritemap 
		piece	$C, -$C, 1, 4, 0, 1, 0, 0, 0
		piece	-$C, -$14, 3, 4, 4, 1, 0, 0, 0
		piece	-4, $C, 2, 2, $10, 1, 0, 0, 0
		endsprite 

Frame_Sonic_Balance32:	spritemap 
		piece	$C, -$C, 1, 4, 0, 1, 0, 0, 0
		piece	-$C, -$14, 3, 4, 4, 1, 0, 0, 0
		piece	-4, $C, 2, 2, $10, 1, 0, 0, 0
		endsprite 

Frame_Sonic_Stop1:	spritemap 
		piece	-$13, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$11, -4, 4, 2, 8, 0, 0, 0, 0
		piece	$F, -4, 1, 2, $10, 0, 0, 0, 0
		piece	1, $C, 2, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Stop2:	spritemap 
		piece	-$12, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$11, -4, 4, 2, 8, 0, 0, 0, 0
		piece	$F, -4, 1, 2, $10, 0, 0, 0, 0
		piece	1, $C, 2, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_Sonic_Stop3:	spritemap 
		piece	-$11, -$14, 4, 2, 0, 0, 0, 0, 0
		piece	-$11, -4, 4, 2, 8, 0, 0, 0, 0
		piece	$F, -4, 1, 2, $10, 0, 0, 0, 0
		piece	1, $C, 2, 2, $12, 0, 0, 0, 0
		endsprite 

Frame_Sonic_TurnAround:	spritemap 
		piece	-$C, -$14, 3, 2, 0, 0, 0, 0, 0
		piece	-9, -4, 3, 4, 6, 0, 0, 0, 0
		endsprite 

		even
