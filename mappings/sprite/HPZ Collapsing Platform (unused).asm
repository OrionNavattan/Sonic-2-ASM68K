; -------------------------------------------------------------------------------
; Sprite mappings - Hidden Palace collapsing platform (unused beta leftover)
; -------------------------------------------------------------------------------

Map_CPlat_HPZ:	index offset(*)
		ptr	Map_obj1A_b_0006
		ptr	Map_obj1A_b_0048
		ptr	Map_obj1A_b_0048

Map_obj1A_b_0006:	spritemap
		piece	-$30, -$10, 4, 2, 0, 0, 0, 0, 0
		piece	-$30, 0, 4, 2, 8, 0, 0, 0, 0
		piece	-$10, -$10, 2, 2, 4, 0, 0, 0, 0
		piece	0, -$10, 2, 2, 4, 1, 0, 0, 0
		piece	-$10, 0, 2, 2, $C, 0, 0, 0, 0
		piece	0, 0, 2, 2, $C, 1, 0, 0, 0
		piece	$10, -$10, 4, 2, 0, 1, 0, 0, 0
		piece	$10, 0, 4, 2, 8, 1, 0, 0, 0
		endsprite

Map_obj1A_b_0048:	spritemap
		piece	-$30, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	-$20, -$10, 2, 2, 4, 0, 0, 0, 0
		piece	-$10, -$10, 2, 2, 4, 0, 0, 0, 0
		piece	0, -$10, 2, 2, 4, 1, 0, 0, 0
		piece	$10, -$10, 2, 2, 4, 1, 0, 0, 0
		piece	$20, -$10, 2, 2, 0, 1, 0, 0, 0
		piece	-$30, 0, 2, 2, 8, 0, 0, 0, 0
		piece	-$20, 0, 2, 2, $C, 0, 0, 0, 0
		piece	-$10, 0, 2, 2, $C, 0, 0, 0, 0
		piece	0, 0, 2, 2, $C, 1, 0, 0, 0
		piece	$10, 0, 2, 2, $C, 1, 0, 0, 0
		piece	$20, 0, 2, 2, 8, 1, 0, 0, 0
		endsprite

		even
