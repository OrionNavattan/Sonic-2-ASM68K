; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin collapsing platform
; -------------------------------------------------------------------------------

Map_CFlo_ARZ:	index offset(*)
		ptr	Map_obj1F_d_0004
		ptr	Map_obj1F_d_0026

Map_obj1F_d_0004:	spritemap
		piece	-$20, -$10, 4x2, $55
		piece	0, -$10, 4x2, $55, xflip
		piece	-$20, 0, 4x2, $A3
		piece	0, 0, 4x2, $A3, xflip
		endsprite

Map_obj1F_d_0026:	spritemap
		piece	-$20, -$10, 2x2, $55
		piece	-$10, -$10, 2x2, $59
		piece	0, -$10, 2x2, $59, xflip
		piece	$10, -$10, 2x2, $55, xflip
		piece	-$20, 0, 2x2, $A3
		piece	-$10, 0, 2x2, $A7
		piece	0, 0, 2x2, $A7, xflip
		piece	$10, 0, 2x2, $A3, xflip
		endsprite

		even
