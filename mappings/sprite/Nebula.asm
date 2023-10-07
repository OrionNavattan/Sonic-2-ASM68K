; -------------------------------------------------------------------------------
; Sprite mappings - Nebula enemy (SCZ)
; -------------------------------------------------------------------------------

Map_Neb:	index offset(*)
		ptr	Map_obj99_000A
		ptr	Map_obj99_002C
		ptr	Map_obj99_004E
		ptr	Map_obj99_0070
		ptr	Map_obj99_0092

Map_obj99_000A:	spritemap
		piece	-$18, -$14, 3x1, $12
		piece	0, -$14, 3x1, $12, xflip, yflip
		piece	-8, -$14, 2x1, 0
		piece	-$10, -$C, 4x4, 2
		endsprite

Map_obj99_002C:	spritemap
		piece	-$10, -$14, 2x1, $15
		piece	0, -$14, 2x1, $15, xflip, yflip
		piece	-8, -$14, 2x1, 0
		piece	-$10, -$C, 4x4, 2
		endsprite

Map_obj99_004E:	spritemap
		piece	-8, -$14, 1x1, $17
		piece	0, -$14, 1x1, $17, xflip
		piece	-8, -$14, 2x1, 0
		piece	-$10, -$C, 4x4, 2
		endsprite

Map_obj99_0070:	spritemap
		piece	-$10, -$14, 2x1, $15, yflip
		piece	0, -$14, 2x1, $15, xflip
		piece	-8, -$14, 2x1, 0
		piece	-$10, -$C, 4x4, 2
		endsprite

Map_obj99_0092:	spritemap
		piece	-8, -8, 2x2, $18
		endsprite

		even
