; -------------------------------------------------------------------------------
; Sprite mappings - Chemical Plant spin tube block
; -------------------------------------------------------------------------------

Map_SpinTubeBlock:	index offset(*)
		ptr	Map_obj32_b_0002

Map_obj32_b_0002:	spritemap
		piece	-$10, -$10, 2x2, 0
		piece	0, -$10, 2x2, 0, xflip
		piece	-$10, 0, 2x2, 0
		piece	0, 0, 2x2, 0, xflip
		endsprite

		even