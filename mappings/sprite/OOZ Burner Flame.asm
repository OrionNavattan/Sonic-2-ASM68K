; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean burner flame
; -------------------------------------------------------------------------------

Map_Burner:	index offset(*)
		ptr	Map_obj33_b_0006
		ptr	Map_obj33_b_0018
		ptr	Map_obj33_b_002A

Map_obj33_b_0006:	spritemap
		piece	-$10, -8, 2x3, 0
		piece	0, -8, 2x3, 0, xflip
		endsprite

Map_obj33_b_0018:	spritemap
		piece	-$10, -$10, 2x4, 6
		piece	0, -$10, 2x4, 6, xflip
		endsprite

Map_obj33_b_002A:	spritemap
		piece	-$10, 0, 2x2, $E
		piece	0, 0, 2x2, $E, xflip
		endsprite

		even