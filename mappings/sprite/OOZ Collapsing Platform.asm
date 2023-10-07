; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean collapsing platform
; -------------------------------------------------------------------------------

Map_CFlo_OOZ:	index offset(*)
		ptr	Map_obj1F_b_0006
		ptr	Map_obj1F_b_0006
		ptr	Map_obj1F_b_0006

Map_obj1F_b_0006:	spritemap
		piece	-$40, -$10, 4x4, $10, xflip
		piece	-$20, -$10, 4x4, $10, xflip
		piece	0, -$10, 4x4, $10, xflip
		piece	$20, -$10, 4x4, 0, xflip
		piece	-$40, $10, 4x2, $20, xflip
		piece	-$20, $10, 4x2, $20, xflip
		piece	0, $10, 4x2, $20, xflip
		endsprite

		even
