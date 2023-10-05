; ---------------------------------------------------------------------------
; Sprite mappings - 1P mode HUD
; ---------------------------------------------------------------------------

Map_HUD1:	index offset(*)
		ptr	Frame_HUD1_AllYellow
		ptr	Frame_HUD1_RingRed
		ptr	Frame_HUD1_TimeRed
		ptr	Frame_HUD1_AllRed

Frame_HUD1_AllYellow:	spritemap
		spritePiece	0, -$80, 4, 2, 0, 0, 0, 1, 0
		spritePiece	$20, -$80, 4, 2, $18, 0, 0, 1, 0
		spritePiece	$40, -$80, 4, 2, $20, 0, 0, 1, 0
		spritePiece	0, -$70, 4, 2, $10, 0, 0, 1, 0
		spritePiece	$28, -$70, 4, 2, $28, 0, 0, 1, 0
		spritePiece	0, -$60, 4, 2, 8, 0, 0, 1, 0
		spritePiece	$20, -$60, 1, 2, 0, 0, 0, 1, 0
		spritePiece	$30, -$60, 3, 2, $30, 0, 0, 1, 0
		spritePiece	0, $40, 2, 2, $10A, 0, 0, 0, 0
		spritePiece	$10, $40, 4, 2, $10E, 0, 0, 1, 0
		endsprite

Frame_HUD1_RingRed:	spritemap
		spritePiece	0, -$80, 4, 2, 0, 0, 0, 1, 0
		spritePiece	$20, -$80, 4, 2, $18, 0, 0, 1, 0
		spritePiece	$40, -$80, 4, 2, $20, 0, 0, 1, 0
		spritePiece	0, -$70, 4, 2, $10, 0, 0, 1, 0
		spritePiece	$28, -$70, 4, 2, $28, 0, 0, 1, 0
		spritePiece	0, -$60, 4, 2, 8, 0, 0, 0, 0
		spritePiece	$20, -$60, 1, 2, 0, 0, 0, 0, 0
		spritePiece	$30, -$60, 3, 2, $30, 0, 0, 1, 0
		spritePiece	0, $40, 2, 2, $10A, 0, 0, 0, 0
		spritePiece	$10, $40, 4, 2, $10E, 0, 0, 1, 0
		endsprite

Frame_HUD1_TimeRed:	spritemap
		spritePiece	0, -$80, 4, 2, 0, 0, 0, 1, 0
		spritePiece	$20, -$80, 4, 2, $18, 0, 0, 1, 0
		spritePiece	$40, -$80, 4, 2, $20, 0, 0, 1, 0
		spritePiece	0, -$70, 4, 2, $10, 0, 0, 0, 0
		spritePiece	$28, -$70, 4, 2, $28, 0, 0, 1, 0
		spritePiece	0, -$60, 4, 2, 8, 0, 0, 1, 0
		spritePiece	$20, -$60, 1, 2, 0, 0, 0, 1, 0
		spritePiece	$30, -$60, 3, 2, $30, 0, 0, 1, 0
		spritePiece	0, $40, 2, 2, $10A, 0, 0, 0, 0
		spritePiece	$10, $40, 4, 2, $10E, 0, 0, 1, 0
		endsprite

Frame_HUD1_AllRed:	spritemap
		spritePiece	0, -$80, 4, 2, 0, 0, 0, 1, 0
		spritePiece	$20, -$80, 4, 2, $18, 0, 0, 1, 0
		spritePiece	$40, -$80, 4, 2, $20, 0, 0, 1, 0
		spritePiece	0, -$70, 4, 2, $10, 0, 0, 0, 0
		spritePiece	$28, -$70, 4, 2, $28, 0, 0, 1, 0
		spritePiece	0, -$60, 4, 2, 8, 0, 0, 0, 0
		spritePiece	$20, -$60, 1, 2, 0, 0, 0, 0, 0
		spritePiece	$30, -$60, 3, 2, $30, 0, 0, 1, 0
		spritePiece	0, $40, 2, 2, $10A, 0, 0, 0, 0
		spritePiece	$10, $40, 4, 2, $10E, 0, 0, 1, 0
		endsprite

		even

; ---------------------------------------------------------------------------
; Sprite mappings - 2P mode HUD (TIME and RINGS text and life counter)
; ---------------------------------------------------------------------------

Map_HUD2:	index offset(*)
		ptr	Frame_HUD2_AllYellow
		ptr	Frame_HUD2_RingRed
		ptr	Frame_HUD2_TimeRed
		ptr	Frame_HUD2_AllRed
		ptr	Frame_HUD2_SonicLives
		ptr	Frame_HUD2_TailsLives

Frame_HUD2_AllYellow:	spritemap
		spritePiece	0, -$80, 4, 2, $10, 0, 0, 1, 0
		spritePiece	0, -$70, 4, 2, 8, 0, 0, 1, 0
		spritePiece	$20, -$70, 1, 2, 0, 0, 0, 1, 0
		endsprite

Frame_HUD2_RingRed:	spritemap
		spritePiece	0, -$80, 4, 2, $10, 0, 0, 1, 0
		spritePiece	0, -$70, 4, 2, 8, 0, 0, 0, 0
		spritePiece	$20, -$70, 1, 2, 0, 0, 0, 0, 0
		endsprite

Frame_HUD2_TimeRed:	spritemap
		spritePiece	0, -$80, 4, 2, $10, 0, 0, 0, 0
		spritePiece	0, -$70, 4, 2, 8, 0, 0, 1, 0
		spritePiece	$20, -$70, 1, 2, 0, 0, 0, 1, 0
		endsprite

Frame_HUD2_AllRed:	spritemap
		spritePiece	0, -$80, 4, 2, $10, 0, 0, 0, 0
		spritePiece	0, -$70, 4, 2, 8, 0, 0, 0, 0
		spritePiece	$20, -$70, 1, 2, 0, 0, 0, 0, 0
		endsprite

Frame_HUD2_SonicLives:	spritemap
		spritePiece	0, $40, 2, 2, $10A, 0, 0, 0, 0
		spritePiece	$10, $40, 4, 2, $10E, 0, 0, 1, 0
		endsprite

Frame_HUD2_TailsLives:	spritemap
		spritePiece	0, $40, 2, 2, $1C, 0, 0, 0, 0
		spritePiece	$10, $40, 4, 2, $78, 0, 0, 1, 0
		endsprite

		even
		
; ---------------------------------------------------------------------------
; Sprite mappings - 2P mode HUD (individual digits and colon)
; ---------------------------------------------------------------------------

Map_HUD3:	index offset(*)
		ptr	Frame_HUD3_0
		ptr	Frame_HUD3_1
		ptr	Frame_HUD3_2
		ptr	Frame_HUD3_3
		ptr	Frame_HUD3_4
		ptr	Frame_HUD3_5
		ptr	Frame_HUD3_6
		ptr	Frame_HUD3_7
		ptr	Frame_HUD3_8
		ptr	Frame_HUD3_9
		ptr	Frame_HUD3_Colon

Frame_HUD3_0:	spritemap
		spritePiece	0, 0, 1, 2, 0, 0, 0, 1, 0
		endsprite

Frame_HUD3_1:	spritemap
		spritePiece	0, 0, 1, 2, 2, 0, 0, 1, 0
		endsprite

Frame_HUD3_2:	spritemap
		spritePiece	0, 0, 1, 2, 4, 0, 0, 1, 0
		endsprite

Frame_HUD3_3:	spritemap
		spritePiece	0, 0, 1, 2, 6, 0, 0, 1, 0
		endsprite

Frame_HUD3_4:	spritemap
		spritePiece	0, 0, 1, 2, 8, 0, 0, 1, 0
		endsprite

Frame_HUD3_5:	spritemap
		spritePiece	0, 0, 1, 2, $A, 0, 0, 1, 0
		endsprite

Frame_HUD3_6:	spritemap
		spritePiece	0, 0, 1, 2, $C, 0, 0, 1, 0
		endsprite

Frame_HUD3_7:	spritemap
		spritePiece	0, 0, 1, 2, $E, 0, 0, 1, 0
		endsprite

Frame_HUD3_8:	spritemap
		spritePiece	0, 0, 1, 2, $10, 0, 0, 1, 0
		endsprite

Frame_HUD3_9:	spritemap
		spritePiece	0, 0, 1, 2, $12, 0, 0, 1, 0
		endsprite

Frame_HUD3_Colon:	spritemap
		spritePiece	0, 0, 1, 2, $14, 0, 0, 1, 0
		endsprite

		even
		
