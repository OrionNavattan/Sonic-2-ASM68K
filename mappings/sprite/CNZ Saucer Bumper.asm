; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night saucer bumper
; -------------------------------------------------------------------------------

Map_SauceBump:	index offset(*)
		ptr	Map_objD8_000C
		ptr	Map_objD8_0016
		ptr	Map_objD8_0020
		ptr	Map_objD8_002A
		ptr	Map_objD8_0034
		ptr	Map_objD8_003E

Map_objD8_000C:	spritemap
		piece	-$10, -8, 4x2, 0
		endsprite

Map_objD8_0016:	spritemap
		piece	-$C, -$10, 3x4, 8
		endsprite

Map_objD8_0020:	spritemap
		piece	-8, -$10, 2x4, $14
		endsprite

Map_objD8_002A:	spritemap
		piece	-$10, -6, 4x2, 0
		endsprite

Map_objD8_0034:	spritemap
		piece	-$E, -$E, 3x4, 8
		endsprite

Map_objD8_003E:	spritemap
		piece	-$A, -$10, 2x4, $14
		endsprite

		even
