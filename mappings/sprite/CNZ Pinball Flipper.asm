; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night pinball flipper
; -------------------------------------------------------------------------------

Map_Flip:	index offset(*)
		ptr	Map_obj86_000C
		ptr	Map_obj86_0026
		ptr	Map_obj86_0038
		ptr	Map_obj86_0052
		ptr	Map_obj86_006C
		ptr	Map_obj86_008E

Map_obj86_000C:	spritemap
		piece	-$19, -9, 3x4, $C
		piece	-1, -2, 1x2, $18
		piece	7, 1, 2x2, $1A
		endsprite

Map_obj86_0026:	spritemap
		piece	-$18, -8, 4x2, 0
		piece	8, -8, 2x2, 8
		endsprite

Map_obj86_0038:	spritemap
		piece	-$19, -$17, 3x4, $C, yflip
		piece	-1, -$E, 1x2, $18, yflip
		piece	7, -$11, 2x2, $1A, yflip
		endsprite

Map_obj86_0052:	spritemap
		piece	-$F, -$19, 3x2, $24
		piece	-$11, -9, 3x2, $2A
		piece	-$11, 7, 2x2, $30
		endsprite

Map_obj86_006C:	spritemap
		piece	-8, -$18, 1x4, $1E
		piece	0, -$18, 1x4, $1E, xflip
		piece	-8, 8, 1x2, $22
		piece	0, 8, 1x2, $22, xflip
		endsprite

Map_obj86_008E:	spritemap
		piece	-9, -$19, 3x2, $24, xflip
		piece	-7, -9, 3x2, $2A, xflip
		piece	1, 7, 2x2, $30, xflip
		endsprite

		even
