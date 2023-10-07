; -------------------------------------------------------------------------------
; Sprite mappings - Buzzer enemy (EHZ)
; -------------------------------------------------------------------------------

Map_Buzz:	index offset(*)
		ptr	Map_obj4B_000E
		ptr	Map_obj4B_0020
		ptr	Map_obj4B_003A
		ptr	Map_obj4B_0054
		ptr	Map_obj4B_005E
		ptr	Map_obj4B_0068
		ptr	Map_obj4B_0072

Map_obj4B_000E:	spritemap
		piece	-$18, -8, 3x2, 0
		piece	0, -8, 3x2, 6
		endsprite

Map_obj4B_0020:	spritemap
		piece	-$18, -8, 3x2, 0
		piece	0, -8, 2x2, $C
		piece	2, 8, 2x2, $10
		endsprite

Map_obj4B_003A:	spritemap
		piece	-$18, -8, 3x2, 0
		piece	0, -8, 2x2, $C
		piece	2, 8, 2x2, $14
		endsprite

Map_obj4B_0054:	spritemap
		piece	4, -$10, 1x2, $14
		endsprite

Map_obj4B_005E:	spritemap
		piece	4, -$10, 1x2, $16
		endsprite

Map_obj4B_0068:	spritemap
		piece	-$C, -8, 1x2, $18
		endsprite

Map_obj4B_0072:	spritemap
		piece	-$C, -8, 1x2, $1A
		endsprite

		dc.w 0

		even
