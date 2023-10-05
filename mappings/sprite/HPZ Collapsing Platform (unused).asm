; -------------------------------------------------------------------------------
; Sprite mappings - Hidden Palace collapsing platform (unused beta leftover)
; -------------------------------------------------------------------------------

Map_CPlat_HPZ:	index offset(*)
		ptr	Map_obj1A_b_0006
		ptr	Map_obj1A_b_0048
		ptr	Map_obj1A_b_0048

Map_obj1A_b_0006:	spritemap
		piece	-$30, -$10, 4x2, 0
		piece	-$30, 0, 4x2, 8
		piece	-$10, -$10, 2x2, 4
		piece	0, -$10, 2x2, 4, xflip
		piece	-$10, 0, 2x2, $C
		piece	0, 0, 2x2, $C, xflip
		piece	$10, -$10, 4x2, 0, xflip
		piece	$10, 0, 4x2, 8, xflip
		endsprite

Map_obj1A_b_0048:	spritemap
		piece	-$30, -$10, 2x2, 0
		piece	-$20, -$10, 2x2, 4
		piece	-$10, -$10, 2x2, 4
		piece	0, -$10, 2x2, 4, xflip
		piece	$10, -$10, 2x2, 4, xflip
		piece	$20, -$10, 2x2, 0, xflip
		piece	-$30, 0, 2x2, 8
		piece	-$20, 0, 2x2, $C
		piece	-$10, 0, 2x2, $C
		piece	0, 0, 2x2, $C, xflip
		piece	$10, 0, 2x2, $C, xflip
		piece	$20, 0, 2x2, 8, xflip
		endsprite

		even