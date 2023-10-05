; ---------------------------------------------------------------------------
; Sprite mappings - 1P mode HUD
; ---------------------------------------------------------------------------

Map_HUD1:	index offset(*)
		ptr	Frame_HUD1_AllYellow
		ptr	Frame_HUD1_RingRed
		ptr	Frame_HUD1_TimeRed
		ptr	Frame_HUD1_AllRed

Frame_HUD1_AllYellow:	spritemap
		piece	0, -$80, 4x2, 0, pal2
		piece	$20, -$80, 4x2, $18, pal2
		piece	$40, -$80, 4x2, $20, pal2
		piece	0, -$70, 4x2, $10, pal2
		piece	$28, -$70, 4x2, $28, pal2
		piece	0, -$60, 4x2, 8, pal2
		piece	$20, -$60, 1x2, 0, pal2
		piece	$30, -$60, 3x2, $30, pal2
		piece	0, $40, 2x2, $10A
		piece	$10, $40, 4x2, $10E, pal2
		endsprite

Frame_HUD1_RingRed:	spritemap
		piece	0, -$80, 4x2, 0, pal2
		piece	$20, -$80, 4x2, $18, pal2
		piece	$40, -$80, 4x2, $20, pal2
		piece	0, -$70, 4x2, $10, pal2
		piece	$28, -$70, 4x2, $28, pal2
		piece	0, -$60, 4x2, 8
		piece	$20, -$60, 1x2, 0
		piece	$30, -$60, 3x2, $30, pal2
		piece	0, $40, 2x2, $10A
		piece	$10, $40, 4x2, $10E, pal2
		endsprite

Frame_HUD1_TimeRed:	spritemap
		piece	0, -$80, 4x2, 0, pal2
		piece	$20, -$80, 4x2, $18, pal2
		piece	$40, -$80, 4x2, $20, pal2
		piece	0, -$70, 4x2, $10
		piece	$28, -$70, 4x2, $28, pal2
		piece	0, -$60, 4x2, 8, pal2
		piece	$20, -$60, 1x2, 0, pal2
		piece	$30, -$60, 3x2, $30, pal2
		piece	0, $40, 2x2, $10A
		piece	$10, $40, 4x2, $10E, pal2
		endsprite

Frame_HUD1_AllRed:	spritemap
		piece	0, -$80, 4x2, 0, pal2
		piece	$20, -$80, 4x2, $18, pal2
		piece	$40, -$80, 4x2, $20, pal2
		piece	0, -$70, 4x2, $10
		piece	$28, -$70, 4x2, $28, pal2
		piece	0, -$60, 4x2, 8
		piece	$20, -$60, 1x2, 0
		piece	$30, -$60, 3x2, $30, pal2
		piece	0, $40, 2x2, $10A
		piece	$10, $40, 4x2, $10E, pal2
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
		piece	0, -$80, 4x2, $10, pal2
		piece	0, -$70, 4x2, 8, pal2
		piece	$20, -$70, 1x2, 0, pal2
		endsprite

Frame_HUD2_RingRed:	spritemap
		piece	0, -$80, 4x2, $10, pal2
		piece	0, -$70, 4x2, 8
		piece	$20, -$70, 1x2, 0
		endsprite

Frame_HUD2_TimeRed:	spritemap
		piece	0, -$80, 4x2, $10
		piece	0, -$70, 4x2, 8, pal2
		piece	$20, -$70, 1x2, 0, pal2
		endsprite

Frame_HUD2_AllRed:	spritemap
		piece	0, -$80, 4x2, $10
		piece	0, -$70, 4x2, 8
		piece	$20, -$70, 1x2, 0
		endsprite

Frame_HUD2_SonicLives:	spritemap
		piece	0, $40, 2x2, $10A
		piece	$10, $40, 4x2, $10E, pal2
		endsprite

Frame_HUD2_TailsLives:	spritemap
		piece	0, $40, 2x2, $1C
		piece	$10, $40, 4x2, $78, pal2
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
		piece	0, 0, 1x2, 0, pal2
		endsprite

Frame_HUD3_1:	spritemap
		piece	0, 0, 1x2, 2, pal2
		endsprite

Frame_HUD3_2:	spritemap
		piece	0, 0, 1x2, 4, pal2
		endsprite

Frame_HUD3_3:	spritemap
		piece	0, 0, 1x2, 6, pal2
		endsprite

Frame_HUD3_4:	spritemap
		piece	0, 0, 1x2, 8, pal2
		endsprite

Frame_HUD3_5:	spritemap
		piece	0, 0, 1x2, $A, pal2
		endsprite

Frame_HUD3_6:	spritemap
		piece	0, 0, 1x2, $C, pal2
		endsprite

Frame_HUD3_7:	spritemap
		piece	0, 0, 1x2, $E, pal2
		endsprite

Frame_HUD3_8:	spritemap
		piece	0, 0, 1x2, $10, pal2
		endsprite

Frame_HUD3_9:	spritemap
		piece	0, 0, 1x2, $12, pal2
		endsprite

Frame_HUD3_Colon:	spritemap
		piece	0, 0, 1x2, $14, pal2
		endsprite

		even		
