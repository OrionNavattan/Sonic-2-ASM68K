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
		piece	-$D, -$C, 3, 1, $F, 0, 0, 0, 0
		piece	-$10, -4, 2, 2, $16, 0, 0, 0, 0
		piece	0, -4, 2, 2, $16, 1, 0, 0, 0
		endsprite

Map_obj3F_b_0030:	spritemap
		piece	-$B, -$C, 3, 1, $F, 1, 0, 0, 0
		piece	-$10, -4, 2, 2, $16, 0, 0, 0, 0
		piece	0, -4, 2, 2, $16, 1, 0, 0, 0
		endsprite

Map_obj3F_b_004A:	spritemap
		piece	-$10, -$C, 4, 1, $12, 0, 0, 0, 0
		piece	-$10, -4, 2, 2, $16, 0, 0, 0, 0
		piece	0, -4, 2, 2, $16, 1, 0, 0, 0
		endsprite

Map_obj3F_b_0064:	spritemap
		piece	-$D, -$C, 3, 1, $F, 0, 0, 0, 0
		piece	-$10, -4, 2, 2, $1A, 0, 0, 0, 0
		piece	0, -4, 2, 2, $1A, 1, 0, 0, 0
		endsprite

Map_obj3F_b_007E:	spritemap
		piece	-$B, -$C, 3, 1, $F, 1, 0, 0, 0
		piece	-$10, -4, 2, 2, $1A, 0, 0, 0, 0
		piece	0, -4, 2, 2, $1A, 1, 0, 0, 0
		endsprite

Map_obj3F_b_0098:	spritemap
		piece	-$10, -$C, 4, 1, $12, 0, 0, 0, 0
		piece	-$10, -4, 2, 2, $1A, 0, 0, 0, 0
		piece	0, -4, 2, 2, $1A, 1, 0, 0, 0
		endsprite

		even
