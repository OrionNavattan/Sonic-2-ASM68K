; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean fans (horizontal)
; -------------------------------------------------------------------------------

Map_VertFan:	index offset(*)
		ptr	Map_obj3F_b_0016
		ptr	Map_obj3F_b_0030
		ptr	Map_obj3F_b_004A
		ptr	Map_obj3F_b_0064
		ptr	Map_obj3F_b_007E
		ptr	Map_obj3F_b_0098
		ptr	Map_obj3F_b_007E
		ptr	Map_obj3F_b_0064
		ptr	Map_obj3F_b_004A
		ptr	Map_obj3F_b_0030
		ptr	Map_obj3F_b_0016

Map_obj3F_b_0016:	spritemap
		piece	-$D, -$C, 3x1, $F
		piece	-$10, -4, 2x2, $16
		piece	0, -4, 2x2, $16, xflip
		endsprite

Map_obj3F_b_0030:	spritemap
		piece	-$B, -$C, 3x1, $F, xflip
		piece	-$10, -4, 2x2, $16
		piece	0, -4, 2x2, $16, xflip
		endsprite

Map_obj3F_b_004A:	spritemap
		piece	-$10, -$C, 4x1, $12
		piece	-$10, -4, 2x2, $16
		piece	0, -4, 2x2, $16, xflip
		endsprite

Map_obj3F_b_0064:	spritemap
		piece	-$D, -$C, 3x1, $F
		piece	-$10, -4, 2x2, $1A
		piece	0, -4, 2x2, $1A, xflip
		endsprite

Map_obj3F_b_007E:	spritemap
		piece	-$B, -$C, 3x1, $F, xflip
		piece	-$10, -4, 2x2, $1A
		piece	0, -4, 2x2, $1A, xflip
		endsprite

Map_obj3F_b_0098:	spritemap
		piece	-$10, -$C, 4x1, $12
		piece	-$10, -4, 2x2, $1A
		piece	0, -4, 2x2, $1A, xflip
		endsprite

		even
