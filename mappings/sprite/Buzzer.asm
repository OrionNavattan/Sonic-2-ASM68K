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
	piece	-$18, -8, 3, 2, 0, 0, 0, 0, 0
	piece	0, -8, 3, 2, 6, 0, 0, 0, 0
	endsprite

Map_obj4B_0020:	spritemap
	piece	-$18, -8, 3, 2, 0, 0, 0, 0, 0
	piece	0, -8, 2, 2, $C, 0, 0, 0, 0
	piece	2, 8, 2, 2, $10, 0, 0, 0, 0
	endsprite

Map_obj4B_003A:	spritemap
	piece	-$18, -8, 3, 2, 0, 0, 0, 0, 0
	piece	0, -8, 2, 2, $C, 0, 0, 0, 0
	piece	2, 8, 2, 2, $14, 0, 0, 0, 0
	endsprite

Map_obj4B_0054:	spritemap
	piece	4, -$10, 1, 2, $14, 0, 0, 0, 0
	endsprite

Map_obj4B_005E:	spritemap
	piece	4, -$10, 1, 2, $16, 0, 0, 0, 0
	endsprite

Map_obj4B_0068:	spritemap
	piece	-$C, -8, 1, 2, $18, 0, 0, 0, 0
	endsprite

Map_obj4B_0072:	spritemap
	piece	-$C, -8, 1, 2, $1A, 0, 0, 0, 0
	endsprite

	dc.w 0

	even
