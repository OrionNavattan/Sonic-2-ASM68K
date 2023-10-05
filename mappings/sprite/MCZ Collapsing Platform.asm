; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave collapsing platform
; -------------------------------------------------------------------------------

Map_CFlo_MCZ:	index offset(*)
		ptr	Map_obj1F_c_0004
		ptr	Map_obj1F_c_0026

Map_obj1F_c_0004:	spritemap
		piece	-$20, -$10, 4x2, 0
		piece	0, -$10, 4x2, 0, xflip
		piece	-$10, 0, 3x2, 8
		piece	8, 0, 3x4, $E
		endsprite

Map_obj1F_c_0026:	spritemap
		piece	-$20, -$10, 2x2, 0
		piece	-$10, -$10, 2x2, 4
		piece	0, -$10, 2x2, 4, xflip
		piece	$10, -$10, 2x2, 0, xflip
		piece	-$10, 0, 3x2, 8
		piece	8, 0, 3x4, $E
		endsprite

		even