; ---------------------------------------------------------------------------
; Sprite mappings - animals
; ---------------------------------------------------------------------------

Map_Animal1:	index offset(*)
		ptr	Map_obj28_a_0010
		ptr	Map_obj28_a_001A
		ptr	Map_obj28_a_0006

Map_obj28_a_0006:	spritemap
		piece	-8, -$14, 2x4, 0
		endsprite

Map_obj28_a_0010:	spritemap
		piece	-8, -8, 2x2, 8
		endsprite

Map_obj28_a_001A:	spritemap
		piece	-8, -8, 2x2, $C
		endsprite
		
		even
Map_Animal2:	index offset(*)
		ptr	Map_obj28_b_0010
		ptr	Map_obj28_b_001A
		ptr	Map_obj28_b_0006

Map_obj28_b_0006:	spritemap
		piece	-8, -$14, 2x4, 0
		endsprite

Map_obj28_b_0010:	spritemap
		piece	-$C, -8, 3x2, 8
		endsprite

Map_obj28_b_001A:	spritemap
		piece	-$C, -8, 3x2, $E
		endsprite
		
		even
Map_Animal3:	index offset(*)
		ptr	Map_obj28_c_0010
		ptr	Map_obj28_c_001A
		ptr	Map_obj28_c_0006

Map_obj28_c_0006:	spritemap
		piece	-8, -$C, 2x3, 0
		endsprite

Map_obj28_c_0010:	spritemap
		piece	-$C, -8, 3x2, 6
		endsprite

Map_obj28_c_001A:	spritemap
		piece	-$C, -8, 3x2, $C
		endsprite

		even
Map_Animal4:	index offset(*)
		ptr	Map_obj28_d_0010
		ptr	Map_obj28_d_001A
		ptr	Map_obj28_d_0006

Map_obj28_d_0006:	spritemap
		piece	-8, -$C, 2x3, 0
		endsprite

Map_obj28_d_0010:	spritemap
		piece	-8, -8, 2x2, 6
		endsprite

Map_obj28_d_001A:	spritemap
		piece	-8, -8, 2x2, $A
		endsprite

		even
Map_Animal5:	index offset(*)
		ptr	Map_obj28_e_0010
		ptr	Map_obj28_e_001A
		ptr	Map_obj28_e_0006

Map_obj28_e_0006:	spritemap
		piece	-8, -$C, 2x3, 0
		endsprite

Map_obj28_e_0010:	spritemap
		piece	-8, -$C, 2x3, 6
		endsprite

Map_obj28_e_001A:	spritemap
		piece	-8, -$C, 2x3, $C
		endsprite

		even