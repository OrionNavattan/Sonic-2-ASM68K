; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean swinging platforms
; -------------------------------------------------------------------------------

Map_Swing_OOZ:	index offset(*)
		ptr	Map_obj15_a_0008
		ptr	Map_obj15_a_002A
		ptr	Map_obj15_a_002A
		ptr	Map_obj15_a_0034

Map_obj15_a_0008:	spritemap
		piece	-$20, -$10, 4x2, 4, pal2
		piece	0, -$10, 4x2, $C, pal2
		piece	-$20, 0, 4x2, $14, pal2
		piece	0, 0, 4x2, $14, xflip, pal2
		endsprite

Map_obj15_a_002A:	spritemap
		piece	-8, -8, 2x2, 0
		endsprite

Map_obj15_a_0034:	spritemap
		endsprite

		even
