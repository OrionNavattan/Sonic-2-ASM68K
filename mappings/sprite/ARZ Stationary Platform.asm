; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin stationary platforms
; -------------------------------------------------------------------------------

Map_Plat_ARZ:	index offset(*)
		ptr	Map_obj18_b_0004
		ptr	Map_obj18_b_0026

Map_obj18_b_0004:	spritemap
		piece	-$20, -$10, 4x3, 1
		piece	0, -$10, 4x3, 1, xflip
		piece	-$20, 8, 4x3, $2D
		piece	0, 8, 4x3, $39
		endsprite

Map_obj18_b_0026:	spritemap
		piece	-$20, -$30, 4x3, 1
		piece	0, -$30, 4x3, 1, xflip
		piece	-$20, -$18, 4x4, $D
		piece	0, -$18, 4x4, $1D
		piece	-$20, 8, 4x4, $D
		piece	0, 8, 4x4, $1D
		endsprite

		even
