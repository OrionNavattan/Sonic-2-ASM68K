; -------------------------------------------------------------------------------
; Sprite mappings - Tails and Tails' tails
; -------------------------------------------------------------------------------

Map_Tails:	index offset(*)
		ptr	Frame_Tails_Blank
		ptr	Frame_Tails_Stand
		ptr	Frame_Tails_Blink1
		ptr	Frame_Tails_Blink2
		ptr	Frame_Tails_LookUp			; 4
		ptr	Frame_Tails_Wait
		ptr	Frame_Tails_Yawn1
		ptr	Frame_Tails_Yawn2
		ptr	Frame_Tails_Yawn3			; 8
		ptr	Frame_Tails_Tails1
		ptr	Frame_Tails_Tails2
		ptr	Frame_Tails_Tails3
		ptr	Frame_Tails_Tails4			; $C
		ptr	Frame_Tails_Tails5
		ptr	Frame_Tails_Walk11
		ptr	Frame_Tails_Walk12
		ptr	Frame_Tails_Walk13			; $10
		ptr	Frame_Tails_Walk14
		ptr	Frame_Tails_Walk15
		ptr	Frame_Tails_Walk16
		ptr	Frame_Tails_Walk17			; $14
		ptr	Frame_Tails_Walk18
		ptr	Frame_Tails_Walk21
		ptr	Frame_Tails_Walk22
		ptr	Frame_Tails_Walk23			; $18
		ptr	Frame_Tails_Walk24
		ptr	Frame_Tails_Walk25
		ptr	Frame_Tails_Walk26
		ptr	Frame_Tails_Walk27			; $1C
		ptr	Frame_Tails_Walk28
		ptr	Frame_Tails_Walk31
		ptr	Frame_Tails_Walk32
		ptr	Frame_Tails_Walk33			; $20
		ptr	Frame_Tails_Walk34
		ptr	Frame_Tails_Walk35
		ptr	Frame_Tails_Walk36
		ptr	Frame_Tails_Walk37			; $24
		ptr	Frame_Tails_Walk38
		ptr	Frame_Tails_Walk41
		ptr	Frame_Tails_Walk42
		ptr	Frame_Tails_Walk43			; $28
		ptr	Frame_Tails_Walk44
		ptr	Frame_Tails_Walk45
		ptr	Frame_Tails_Walk46
		ptr	Frame_Tails_Walk47			; $2C
		ptr	Frame_Tails_Walk48
		ptr	Frame_Tails_Run11
		ptr	Frame_Tails_Run12
		ptr	Frame_Tails_Run13			; $30
		ptr	Frame_Tails_Run14
		ptr	Frame_Tails_Run15
		ptr	Frame_Tails_Run16
		ptr	Frame_Tails_Run21			; $34
		ptr	Frame_Tails_Run22
		ptr	Frame_Tails_Run23
		ptr	Frame_Tails_Run24
		ptr	Frame_Tails_Run25			; $38
		ptr	Frame_Tails_Run26
		ptr	Frame_Tails_Run31
		ptr	Frame_Tails_Run32
		ptr	Frame_Tails_Run33			; $3C
		ptr	Frame_Tails_Run34			; duplicate frame (_Tails_Run32)
		ptr	Frame_Tails_Run35
		ptr	Frame_Tails_Run36
		ptr	Frame_Tails_Run41			; $40
		ptr	Frame_Tails_Run42
		ptr	Frame_Tails_Run43
		ptr	Frame_Tails_Run44
		ptr	Frame_Tails_Run45			; $44
		ptr	Frame_Tails_Run46
		ptr	Frame_Tails_Roll1
		ptr	Frame_Tails_Roll2
		ptr	Frame_Tails_Roll3			; $48
		ptr	Frame_Tails_TailsRoll11
		ptr	Frame_Tails_TailsRoll12
		ptr	Frame_Tails_TailsRoll13
		ptr	Frame_Tails_TailsRoll14			; $4C
		ptr	Frame_Tails_TailsRoll21
		ptr	Frame_Tails_TailsRoll22
		ptr	Frame_Tails_TailsRoll23
		ptr	Frame_Tails_TailsRoll24			; $50
		ptr	Frame_Tails_TailsRoll31
		ptr	Frame_Tails_TailsRoll32
		ptr	Frame_Tails_TailsRoll33
		ptr	Frame_Tails_TailsRoll34			; $54
		ptr	Frame_Tails_TailsRoll41
		ptr	Frame_Tails_TailsRoll42
		ptr	Frame_Tails_TailsRoll43
		ptr	Frame_Tails_TailsRoll44			; $58
		ptr	Frame_Tails_Spring1
		ptr	Frame_Tails_Spring2
		ptr	Frame_Tails_Duck
		ptr	Frame_Tails_Hurt			; $5C
		ptr	Frame_Tails_Death
		ptr	Frame_Tails_Fly1
		ptr	Frame_Tails_Fly2
		ptr	Frame_Tails_Spindash1			; $60
		ptr	Frame_Tails_Spindash2
		ptr	Frame_Tails_Spindash3
		ptr	Frame_Tails_Push1
		ptr	Frame_Tails_Push2			; $64
		ptr	Frame_Tails_Push3
		ptr	Frame_Tails_Push4
		ptr	Frame_Tails_Stop1
		ptr	Frame_Tails_Stop2			; $68
		ptr	Frame_Tails_Balance1
		ptr	Frame_Tails_Balance2
		ptr	Frame_Tails_Slide
		ptr	Frame_Tails_Hang1			; $6C
		ptr	Frame_Tails_Hang2
		ptr	Frame_Tails_Float1
		ptr	Frame_Tails_Float2
		ptr	Frame_Tails_Float3			; $70
		ptr	Frame_Tails_Float4
		ptr	Frame_Tails_Float5
		ptr	Frame_Tails_Float6
		ptr	Frame_Tails_GetAir			; $74
		ptr	Frame_Tails_Tumble1
		ptr	Frame_Tails_Tumble2
		ptr	Frame_Tails_Tumble3
		ptr	Frame_Tails_Tumble4			; $78
		ptr	Frame_Tails_Tumble5
		ptr	Frame_Tails_Tumble6
		ptr	Frame_Tails_Tumble7
		ptr	Frame_Tails_Tumble8			; $7C
		ptr	Frame_Tails_Tumble9
		ptr	Frame_Tails_Tumble10
		ptr	Frame_Tails_Tumble11
		ptr	Frame_Tails_Tumble12			; $80
		ptr	Frame_TailsTails_Spindash1		; duplicate DPLC sequence (_Tails_TailsRoll11-14)
		ptr	Frame_TailsTails_Spindash2
		ptr	Frame_TailsTails_Spindash3
		ptr	Frame_TailsTails_Spindash4
		ptr	Frame_Tails_Vine1
		ptr	Frame_Tails_Vine2
		ptr	Frame_TailsTails_Pushing1		; duplicate DPLC sequence (_Tails_TailsRoll11-14)
		ptr	Frame_TailsTails_Pushing2
		ptr	Frame_TailsTails_Pushing3
		ptr	Frame_TailsTails_Pushing4

Frame_Tails_Blank:	spritemap
		endsprite

Frame_Tails_Stand:	spritemap
		piece	-$C, -$10, 3x2, 0
		piece	-$C, 0, 3x2, 6
		endsprite

Frame_Tails_Blink1:	spritemap
		piece	-$C, -$10, 3x2, 0
		piece	-$C, 0, 3x2, 6
		endsprite

Frame_Tails_Blink2:	spritemap
		piece	-$C, -$10, 3x2, 0
		piece	-$C, 0, 3x2, 6
		endsprite

Frame_Tails_LookUp:	spritemap
		piece	-$C, -$10, 3x2, 0
		piece	-$C, 0, 3x2, 6
		endsprite

Frame_Tails_Wait:	spritemap
		piece	-$C, -$10, 3x4, 0
		endsprite

Frame_Tails_Yawn1:	spritemap
		piece	-$C, -$10, 3x4, 0
		endsprite

Frame_Tails_Yawn2:	spritemap
		piece	-$C, -$10, 3x2, 0
		piece	-$C, 0, 3x2, 6
		endsprite

Frame_Tails_Yawn3:	spritemap
		piece	-$C, -$10, 3x2, 0
		piece	-$C, 0, 3x2, 6
		endsprite

Frame_Tails_Tails1:	spritemap
		piece	-$14, -$10, 2x4, 0
		endsprite

Frame_Tails_Tails2:	spritemap
		piece	-$1C, -$10, 3x4, 0
		endsprite

Frame_Tails_Tails3:	spritemap
		piece	-$1C, -$10, 3x4, 0
		endsprite

Frame_Tails_Tails4:	spritemap
		piece	-$1C, 0, 3x2, 0
		endsprite

Frame_Tails_Tails5:	spritemap
		piece	-$1C, -$10, 3x4, 0
		endsprite

Frame_Tails_Walk11:	spritemap
		piece	-$10, -$14, 3x2, 0
		piece	-$10, -4, 4x2, 6
		piece	-$1E, -4, 3x2, $E
		endsprite

Frame_Tails_Walk12:	spritemap
		piece	-$D, -$10, 3x2, 0
		piece	-$10, 0, 4x2, 6
		piece	-$1C, 0, 3x2, $E
		endsprite

Frame_Tails_Walk13:	spritemap
		piece	-8, -$10, 3x2, 0
		piece	-$D, 0, 3x2, 6
		piece	-$1C, -3, 3x2, $C
		endsprite

Frame_Tails_Walk14:	spritemap
		piece	-$E, -$10, 3x2, 0
		piece	-$E, 0, 3x2, 6
		piece	-$1A, -3, 3x2, $C
		endsprite

Frame_Tails_Walk15:	spritemap
		piece	-$10, -$14, 3x2, 0
		piece	-$10, -4, 4x2, 6
		piece	-$1E, -4, 3x2, $E
		endsprite

Frame_Tails_Walk16:	spritemap
		piece	-$D, -$10, 3x2, 0
		piece	-$10, 0, 4x2, 6
		piece	-$1C, 0, 3x2, $E
		endsprite

Frame_Tails_Walk17:	spritemap
		piece	-8, -$10, 3x2, 0
		piece	-$F, 0, 3x2, 6
		piece	-$1C, -3, 3x2, $C
		endsprite

Frame_Tails_Walk18:	spritemap
		piece	-$E, -$10, 3x2, 0
		piece	-$E, 0, 3x2, 6
		piece	-$1A, -3, 3x2, $C
		endsprite

Frame_Tails_Walk21:	spritemap
		piece	-$D, -$1D, 1x2, 0
		piece	-$14, -$D, 1x4, 2
		piece	-$C, -$D, 3x4, 6
		endsprite

Frame_Tails_Walk22:	spritemap
		piece	-$A, -$19, 2x2, 0
		piece	-$12, -9, 3x4, 4
		piece	6, -2, 2x2, $10
		endsprite

Frame_Tails_Walk23:	spritemap
		piece	-8, -$1A, 2x2, 0
		piece	-$11, -$A, 1x4, 4
		piece	-9, -$A, 3x4, 8
		endsprite

Frame_Tails_Walk24:	spritemap
		piece	-9, -$1D, 1x2, 0
		piece	-$14, -$D, 4x4, 2
		piece	$C, -5, 1x2, $12
		endsprite

Frame_Tails_Walk25:	spritemap
		piece	-$D, -$1D, 1x2, 0
		piece	-$14, -$D, 1x4, 2
		piece	-$C, -$D, 3x4, 6
		endsprite

Frame_Tails_Walk26:	spritemap
		piece	-$A, -$19, 2x2, 0
		piece	-$12, -9, 3x4, 4
		piece	6, -1, 2x2, $10
		endsprite

Frame_Tails_Walk27:	spritemap
		piece	-8, -$1A, 2x2, 0
		piece	-$11, -$A, 1x4, 4
		piece	-9, -$A, 3x4, 8
		endsprite

Frame_Tails_Walk28:	spritemap
		piece	-9, -$1D, 1x2, 0
		piece	-$14, -$D, 4x4, 2
		piece	$C, 3, 1x2, $12
		endsprite

Frame_Tails_Walk31:	spritemap
		piece	-$14, -$10, 2x4, 0
		piece	-4, -$10, 2x4, 8
		piece	-4, 6, 2x4, $10
		endsprite

Frame_Tails_Walk32:	spritemap
		piece	-$10, -$10, 2x4, 0
		piece	0, -$10, 2x4, 8
		piece	0, 4, 2x4, $10
		endsprite

Frame_Tails_Walk33:	spritemap
		piece	-$10, -$10, 2x4, 0
		piece	0, -$10, 2x4, 8
		piece	-3, 4, 2x4, $10
		endsprite

Frame_Tails_Walk34:	spritemap
		piece	-$10, -$10, 2x4, 0
		piece	0, -$10, 2x4, 8
		piece	-3, 4, 2x4, $10
		endsprite

Frame_Tails_Walk35:	spritemap
		piece	-$14, -$10, 2x4, 0
		piece	-4, -$10, 2x4, 8
		piece	-4, 6, 2x4, $10
		endsprite

Frame_Tails_Walk36:	spritemap
		piece	-$10, -$10, 2x4, 0
		piece	0, -$10, 2x4, 8
		piece	0, 4, 2x4, $10
		endsprite

Frame_Tails_Walk37:	spritemap
		piece	-$10, -$10, 2x4, 0
		piece	0, -$10, 2x4, 8
		piece	-3, 4, 2x4, $10
		endsprite

Frame_Tails_Walk38:	spritemap
		piece	-$10, -$10, 2x4, 0
		piece	0, -$10, 2x4, 8
		piece	-3, 4, 2x4, $10
		endsprite

Frame_Tails_Walk41:	spritemap
		piece	-$15, 4, 1x2, 0
		piece	-$D, -$C, 4x4, 2
		endsprite

Frame_Tails_Walk42:	spritemap
		piece	-8, -$1E, 2x2, 0
		piece	-$10, -6, 1x2, 4
		piece	-8, -$E, 4x4, 6
		endsprite

Frame_Tails_Walk43:	spritemap
		piece	-$14, -7, 1x2, 0
		piece	-$C, -$F, 4x4, 2
		endsprite

Frame_Tails_Walk44:	spritemap
		piece	-$11, -4, 1x2, 0
		piece	-1, -$1B, 1x2, 2
		piece	-9, -$B, 4x4, 4
		endsprite

Frame_Tails_Walk45:	spritemap
		piece	-$15, 4, 1x2, 0
		piece	-$D, -$C, 4x4, 2
		endsprite

Frame_Tails_Walk46:	spritemap
		piece	0, -$1E, 1x2, 0
		piece	-$10, -6, 1x2, 2
		piece	-8, -$E, 4x4, 4
		endsprite

Frame_Tails_Walk47:	spritemap
		piece	-$14, -7, 1x2, 0
		piece	-$C, -$F, 4x4, 2
		endsprite

Frame_Tails_Walk48:	spritemap
		piece	-1, -$1C, 1x2, 0
		piece	-$11, -4, 1x2, 2
		piece	-9, -$C, 4x4, 4
		endsprite

Frame_Tails_Run11:	spritemap
		piece	-$10, -$10, 4x4, 0
		piece	-$16, -$10, 2x4, $10
		endsprite

Frame_Tails_Run12:	spritemap
		piece	-$10, -$10, 4x4, 0
		piece	-$16, -8, 2x2, $10
		endsprite

Frame_Tails_Run13:	spritemap
		piece	-$10, -$10, 4x4, 0
		piece	-$16, -8, 2x2, $10
		endsprite

Frame_Tails_Run14:	spritemap
		piece	-$10, -$10, 4x4, 0
		piece	-$16, -8, 2x2, $10, yflip
		endsprite

Frame_Tails_Run15:	spritemap
		piece	-$10, -$10, 4x4, 0
		piece	-$16, -$10, 2x4, $10
		endsprite

Frame_Tails_Run16:	spritemap
		piece	-$10, -$10, 4x4, 0
		piece	-$18, -$10, 2x4, $10, xflip, yflip
		endsprite

Frame_Tails_Run21:	spritemap
		piece	-6, -$1C, 1x2, 0
		piece	-$10, -$C, 3x4, 2
		piece	-$18, -2, 3x4, $E
		endsprite

Frame_Tails_Run22:	spritemap
		piece	-8, -$1C, 2x2, 0
		piece	-$10, -$C, 3x4, 4
		piece	-$11, 4, 2x2, $10
		endsprite

Frame_Tails_Run23:	spritemap
		piece	-6, -$1C, 1x2, 0
		piece	-$10, -$C, 3x4, 2
		piece	-$11, 4, 2x2, $E
		endsprite

Frame_Tails_Run24:	spritemap
		piece	-8, -$1C, 2x2, 0
		piece	-$10, -$C, 3x4, 4
		piece	-$11, 4, 2x2, $10
		endsprite

Frame_Tails_Run25:	spritemap
		piece	-6, -$1C, 1x2, 0
		piece	-$10, -$C, 3x4, 2
		piece	-$16, -4, 3x4, $E
		endsprite

Frame_Tails_Run26:	spritemap
		piece	-8, -$1C, 2x2, 0
		piece	-$10, -$C, 3x4, 4
		piece	-$16, -9, 3x4, $10, xflip, yflip
		endsprite

Frame_Tails_Run31:	spritemap
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 4x2, 6
		piece	-$10, 6, 4x2, $E
		endsprite

Frame_Tails_Run34:
Frame_Tails_Run32:	spritemap
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 4x2, 6
		piece	-8, 6, 2x2, $E
		endsprite

Frame_Tails_Run33:	spritemap
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 4x2, 6
		piece	-8, 6, 2x2, $E
		endsprite

Frame_Tails_Run35:	spritemap
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 4x2, 6
		piece	-$10, 6, 4x2, $E
		endsprite

Frame_Tails_Run36:	spritemap
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 4x2, 6
		piece	-$10, 8, 4x2, $E, xflip, yflip
		endsprite

Frame_Tails_Run41:	spritemap
		piece	-$14, -8, 3x4, 0
		piece	4, -8, 2x2, $C
		piece	0, -2, 3x4, $10, xflip
		endsprite

Frame_Tails_Run42:	spritemap
		piece	-$14, -8, 3x4, 0
		piece	4, -8, 2x2, $C
		piece	4, 1, 2x2, $10, xflip
		endsprite

Frame_Tails_Run43:	spritemap
		piece	-$14, -8, 3x4, 0
		piece	4, -8, 2x2, $C
		piece	4, 1, 2x2, $10, xflip
		endsprite

Frame_Tails_Run44:	spritemap
		piece	-$14, -8, 3x4, 0
		piece	4, -8, 2x2, $C
		piece	4, 1, 2x2, $10, xflip
		endsprite

Frame_Tails_Run45:	spritemap
		piece	-$14, -8, 3x4, 0
		piece	4, -8, 2x2, $C
		piece	-2, -4, 3x4, $10, xflip
		endsprite

Frame_Tails_Run46:	spritemap
		piece	-$14, -8, 3x4, 0
		piece	4, -8, 2x2, $C
		piece	-1, -9, 3x4, $10, yflip
		endsprite

Frame_Tails_Roll1:	spritemap
		piece	-$10, -$10, 4x4, 0
		endsprite

Frame_Tails_Roll2:	spritemap
		piece	-$10, -$10, 4x4, 0
		endsprite

Frame_Tails_Roll3:	spritemap
		piece	-$10, -$10, 4x4, 0
		endsprite

Frame_Tails_TailsRoll11:	spritemap
		piece	-$24, -8, 3x2, 0
		endsprite

Frame_Tails_TailsRoll12:	spritemap
		piece	-$24, -8, 3x2, 0
		endsprite

Frame_Tails_TailsRoll13:	spritemap
		piece	-$24, -8, 3x2, 0
		endsprite

Frame_Tails_TailsRoll14:	spritemap
		piece	-$24, -8, 3x2, 0
		endsprite

Frame_Tails_TailsRoll21:	spritemap
		piece	-$1F, 7, 3x2, 0
		endsprite

Frame_Tails_TailsRoll22:	spritemap
		piece	-$1F, 7, 3x2, 0
		endsprite

Frame_Tails_TailsRoll23:	spritemap
		piece	-$1F, 7, 3x2, 0
		endsprite

Frame_Tails_TailsRoll24:	spritemap
		piece	-$1F, 7, 3x2, 0
		endsprite

Frame_Tails_TailsRoll31:	spritemap
		piece	-8, $C, 2x4, 0
		endsprite

Frame_Tails_TailsRoll32:	spritemap
		piece	-8, $C, 2x4, 0
		endsprite

Frame_Tails_TailsRoll33:	spritemap
		piece	-8, $C, 2x4, 0
		endsprite

Frame_Tails_TailsRoll34:	spritemap
		piece	-8, $C, 2x4, 0
		endsprite

Frame_Tails_TailsRoll41:	spritemap
		piece	7, 7, 2x4, 0
		endsprite

Frame_Tails_TailsRoll42:	spritemap
		piece	7, 7, 2x4, 0
		endsprite

Frame_Tails_TailsRoll43:	spritemap
		piece	7, 7, 2x4, 0
		endsprite

Frame_Tails_TailsRoll44:	spritemap
		piece	7, 7, 2x4, 0
		endsprite

Frame_Tails_Spring1:	spritemap
		piece	-8, -$18, 2x2, 0
		piece	-$10, -8, 3x4, 4
		endsprite

Frame_Tails_Spring2:	spritemap
		piece	-8, -$18, 2x2, 0
		piece	-$10, -8, 3x4, 4
		endsprite

Frame_Tails_Duck:	spritemap
		piece	-7, -$10, 3x4, 0
		endsprite

Frame_Tails_Hurt:	spritemap
		piece	-$10, -$10, 4x4, 0
		endsprite

Frame_Tails_Death:	spritemap
		piece	-$10, -$10, 4x4, 0
		endsprite

Frame_Tails_Fly1:	spritemap
		piece	-$10, -$10, 4x4, 0
		piece	-$16, -$1C, 4x2, $10
		endsprite

Frame_Tails_Fly2:	spritemap
		piece	-$10, -$10, 4x4, 0
		piece	-$16, -$1C, 4x2, $10, xflip
		endsprite

Frame_Tails_Spindash1:	spritemap
		piece	-$10, -$C, 4x4, 0
		endsprite

Frame_Tails_Spindash2:	spritemap
		piece	-$10, -$C, 4x4, 0
		endsprite

Frame_Tails_Spindash3:	spritemap
		piece	-$10, -$C, 4x4, 0
		endsprite

Frame_Tails_Push1:	spritemap
		piece	-8, -$10, 3x2, 0
		piece	-$10, 0, 4x2, 6
		endsprite

Frame_Tails_Push2:	spritemap
		piece	-8, -$10, 3x2, 0
		piece	-8, 0, 3x2, 6
		endsprite

Frame_Tails_Push3:	spritemap
		piece	-8, -$10, 3x2, 0
		piece	-8, 0, 3x2, 6
		endsprite

Frame_Tails_Push4:	spritemap
		piece	-8, -$10, 3x2, 0
		piece	-8, 0, 3x2, 6
		endsprite

Frame_Tails_Stop1:	spritemap
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 4x2, 6
		endsprite

Frame_Tails_Stop2:	spritemap
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 4x2, 6
		endsprite

Frame_Tails_Balance1:	spritemap
		piece	-$18, -8, 1x2, 0
		piece	-$10, -$10, 3x4, 2
		endsprite

Frame_Tails_Balance2:	spritemap
		piece	-$10, -$10, 3x2, 0
		piece	-$18, 0, 4x2, 6
		endsprite

Frame_Tails_Slide:	spritemap
		piece	-$10, -$10, 4x4, 0
		endsprite

Frame_Tails_Hang1:	spritemap
		piece	-$14, -$10, 4x4, 0
		piece	$C, -$10, 1x4, $10
		endsprite

Frame_Tails_Hang2:	spritemap
		piece	-$14, -$10, 4x4, 0
		piece	$C, -$10, 1x4, $10
		endsprite

Frame_Tails_Float1:	spritemap
		piece	-$14, -8, 2x2, 0
		piece	-4, -$10, 3x4, 4
		endsprite

Frame_Tails_Float2:	spritemap
		piece	-$10, -$10, 2x4, 0
		piece	0, -$10, 2x4, 0, xflip
		endsprite

Frame_Tails_Float3:	spritemap
		piece	4, -8, 2x2, 0, xflip
		piece	-$14, -$10, 3x4, 4, xflip
		endsprite

Frame_Tails_Float4:	spritemap
		piece	-$10, -$10, 2x4, 0
		piece	0, -8, 2x2, 8
		endsprite

Frame_Tails_Float5:	spritemap
		piece	0, -$10, 2x4, 0, xflip
		piece	-$10, -8, 2x2, 8, xflip
		endsprite

Frame_Tails_Float6:	spritemap
		piece	-$14, -8, 2x2, 0
		piece	-4, -$10, 3x4, 4
		endsprite

Frame_Tails_GetAir:	spritemap
		piece	-$10, -$10, 4x4, 0
		endsprite

Frame_Tails_Tumble1:	spritemap
		piece	-$F, -$10, 3x4, 0
		endsprite

Frame_Tails_Tumble2:	spritemap
		piece	-8, -$1C, 2x2, 0
		piece	-$F, -$C, 3x4, 4
		endsprite

Frame_Tails_Tumble3:	spritemap
		piece	-$E, -$E, 3x4, 0
		endsprite

Frame_Tails_Tumble4:	spritemap
		piece	-$10, -$C, 3x4, 0
		endsprite

Frame_Tails_Tumble5:	spritemap
		piece	-$E, -$D, 3x4, 0
		endsprite

Frame_Tails_Tumble6:	spritemap
		piece	-$E, -$E, 3x4, 0
		endsprite

Frame_Tails_Tumble7:	spritemap
		piece	-$E, -$E, 3x4, 0
		endsprite

Frame_Tails_Tumble8:	spritemap
		piece	-$F, -$10, 3x4, 0
		endsprite

Frame_Tails_Tumble9:	spritemap
		piece	-$10, -$13, 3x4, 0
		endsprite

Frame_Tails_Tumble10:	spritemap
		piece	-$F, -$14, 3x4, 0
		endsprite

Frame_Tails_Tumble11:	spritemap
		piece	-$D, -$C, 3x2, 0
		piece	-$D, 4, 2x2, 6
		endsprite

Frame_Tails_Tumble12:	spritemap
		piece	-$10, -$E, 2x4, 0
		piece	0, -$14, 1x4, 8
		endsprite

Frame_TailsTails_Spindash1:	spritemap
		piece	-$20, -8, 3x2, 0
		endsprite

Frame_TailsTails_Spindash2:	spritemap
		piece	-$20, -8, 3x2, 0
		endsprite

Frame_TailsTails_Spindash3:	spritemap
		piece	-$20, -8, 3x2, 0
		endsprite

Frame_TailsTails_Spindash4:	spritemap
		piece	-$20, -8, 3x2, 0
		endsprite

Frame_Tails_Vine1:	spritemap
		piece	-$C, -$18, 3x2, 0
		piece	-$C, -8, 4x2, 6
		endsprite

Frame_Tails_Vine2:	spritemap
		piece	-$C, -$18, 3x2, 0
		piece	-$C, -8, 4x2, 6
		endsprite

Frame_TailsTails_Pushing1:	spritemap
		piece	-$1D, -3, 3x2, 0
		endsprite

Frame_TailsTails_Pushing2:	spritemap
		piece	-$1D, -3, 3x2, 0
		endsprite

Frame_TailsTails_Pushing3:	spritemap
		piece	-$1D, -3, 3x2, 0
		endsprite

Frame_TailsTails_Pushing4:	spritemap
		piece	-$1D, -3, 3x2, 0
		endsprite

		even
