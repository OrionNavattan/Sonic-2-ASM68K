; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night snake platform
; -------------------------------------------------------------------------------

Map_Snake:	index offset(*)
		ptr	Map_objD2_0020
		ptr	Map_objD2_002A
		ptr	Map_objD2_003C
		ptr	Map_objD2_0056
		ptr	Map_objD2_0078
		ptr	Map_objD2_00A2
		ptr	Map_objD2_00CC
		ptr	Map_objD2_00F6
		ptr	Map_objD2_00F6
		ptr	Map_objD2_0120
		ptr	Map_objD2_014A
		ptr	Map_objD2_0174
		ptr	Map_objD2_0056
		ptr	Map_objD2_003C
		ptr	Map_objD2_002A
		ptr	Map_objD2_0020

Map_objD2_0020:	spritemap
		piece	-8, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_002A:	spritemap
		piece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	-8, 0, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_003C:	spritemap
		piece	-8, -$18, 2, 2, 0, 0, 0, 0, 0
		piece	-8, -8, 2, 2, 0, 0, 0, 0, 0
		piece	-8, 8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_0056:	spritemap
		piece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
		piece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	-8, 0, 2, 2, 0, 0, 0, 0, 0
		piece	-8, $10, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_0078:	spritemap
		piece	0, -$20, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, -$20, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, 0, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, $10, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_00A2:	spritemap
		piece	8, -$18, 2, 2, 0, 0, 0, 0, 0
		piece	-8, -$18, 2, 2, 0, 0, 0, 0, 0
		piece	-$18, -$18, 2, 2, 0, 0, 0, 0, 0
		piece	-$18, -8, 2, 2, 0, 0, 0, 0, 0
		piece	-$18, 8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_00CC:	spritemap
		piece	$10, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	0, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	-$20, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	-$20, 0, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_00F6:	spritemap
		piece	$18, -8, 2, 2, 0, 0, 0, 0, 0
		piece	8, -8, 2, 2, 0, 0, 0, 0, 0
		piece	-8, -8, 2, 2, 0, 0, 0, 0, 0
		piece	-$18, -8, 2, 2, 0, 0, 0, 0, 0
		piece	-$28, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_0120:	spritemap
		piece	$10, 0, 2, 2, 0, 0, 0, 0, 0
		piece	$10, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	0, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	-$20, -$10, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_014A:	spritemap
		piece	8, 8, 2, 2, 0, 0, 0, 0, 0
		piece	8, -8, 2, 2, 0, 0, 0, 0, 0
		piece	8, -$18, 2, 2, 0, 0, 0, 0, 0
		piece	-8, -$18, 2, 2, 0, 0, 0, 0, 0
		piece	-$18, -$18, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_0174:	spritemap
		piece	0, $10, 2, 2, 0, 0, 0, 0, 0
		piece	0, 0, 2, 2, 0, 0, 0, 0, 0
		piece	0, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	0, -$20, 2, 2, 0, 0, 0, 0, 0
		piece	-$10, -$20, 2, 2, 0, 0, 0, 0, 0
		endsprite

		even
