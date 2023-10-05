; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress gun platform
; -------------------------------------------------------------------------------

Map_GunPlat:	index offset(*)
		ptr	Map_objBE_000A
		ptr	Map_objBE_001C
		ptr	Map_objBE_002E
		ptr	Map_objBE_0040
		ptr	Map_objBE_0052

Map_objBE_000A:	spritemap
		piece	-$18, -$18, 3x2, 0
		piece	0, -$18, 3x2, 6
		endsprite

Map_objBE_001C:	spritemap
		piece	-$18, -$18, 3x2, $C
		piece	0, -$18, 3x2, $12
		endsprite

Map_objBE_002E:	spritemap
		piece	-$18, -$18, 3x2, $18
		piece	0, -$18, 3x2, $18, xflip
		endsprite

Map_objBE_0040:	spritemap
		piece	-$20, -$18, 4x3, $1E
		piece	0, -$18, 4x3, $1E, xflip
		endsprite

Map_objBE_0052:	spritemap
		piece	-$20, -$18, 4x3, $2A
		piece	0, -$18, 4x3, $2A, xflip
		endsprite

		even