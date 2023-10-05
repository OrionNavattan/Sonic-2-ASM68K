; -------------------------------------------------------------------------------
; Sprite mappings - Octus enemy (OOZ)
; -------------------------------------------------------------------------------

Map_Octus:	index offset(*)
		ptr	Map_obj4A_000E
		ptr	Map_obj4A_0020
		ptr	Map_obj4A_003A
		ptr	Map_obj4A_0054
		ptr	Map_obj4A_006E
		ptr	Map_obj4A_0090
		ptr	Map_obj4A_009A

Map_obj4A_000E:	spritemap
		piece	-$10, -$15, 4x2, 0
		piece	-$10, -5, 4x2, 8
		endsprite

Map_obj4A_0020:	spritemap
		piece	-$10, -$10, 4x2, 0
		piece	-$18, 0, 3x2, $10
		piece	0, 0, 3x2, $16
		endsprite

Map_obj4A_003A:	spritemap
		piece	-$10, -$10, 4x2, 0
		piece	-$18, 0, 3x2, $1C
		piece	0, 0, 3x2, $22
		endsprite

Map_obj4A_0054:	spritemap
		piece	-$10, -$10, 4x2, 0
		piece	-$18, 0, 3x2, $28
		piece	0, 0, 3x2, $2E
		endsprite

Map_obj4A_006E:	spritemap
		piece	-9, -$10, 1x2, $34
		piece	-$10, -$10, 4x2, 0
		piece	-$18, 0, 3x2, $10
		piece	0, 0, 3x2, $16
		endsprite

Map_obj4A_0090:	spritemap
		piece	-$10, -$E, 1x2, $36
		endsprite

Map_obj4A_009A:	spritemap
		piece	-$10, -$E, 1x2, $38
		endsprite

		dc.w 0

		even