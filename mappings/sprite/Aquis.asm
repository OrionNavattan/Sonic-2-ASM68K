; -------------------------------------------------------------------------------
; Sprite mappings - Aquis enemy (OOZ)
; -------------------------------------------------------------------------------

Map_Aquis:	index offset(*)
		ptr	Map_obj50_0012
		ptr	Map_obj50_002C
		ptr	Map_obj50_0036
		ptr	Map_obj50_0040
		ptr	Map_obj50_005A
		ptr	Map_obj50_0074
		ptr	Map_obj50_007E
		ptr	Map_obj50_0088
		ptr	Map_obj50_0092

Map_obj50_0012:	spritemap
		piece	-$10, -$18, 4x2, 0
		piece	-8, -8, 3x2, 8
		piece	-8, 8, 2x2, $E
		endsprite

Map_obj50_002C:	spritemap
		piece	-8, -8, 2x2, $22
		endsprite

Map_obj50_0036:	spritemap
		piece	-8, -8, 2x2, $26
		endsprite

Map_obj50_0040:	spritemap
		piece	-$10, -$18, 4x2, $12
		piece	-8, -8, 3x2, 8
		piece	-8, 8, 2x2, $E
		endsprite

Map_obj50_005A:	spritemap
		piece	-$10, -$18, 4x2, $1A
		piece	-8, -8, 3x2, 8
		piece	-8, 8, 2x2, $E
		endsprite

Map_obj50_0074:	spritemap
		piece	-4, -8, 1x2, $2A
		endsprite

Map_obj50_007E:	spritemap
		piece	-4, -8, 1x2, $2C
		endsprite

Map_obj50_0088:	spritemap
		piece	-4, -8, 1x2, $2E
		endsprite

Map_obj50_0092:	spritemap
		piece	-$10, -8, 4x2, $30
		endsprite

		even