; -------------------------------------------------------------------------------
; Sprite mappings - Chemical Plany and Mystic Cave swinging and tracked platforms
; -------------------------------------------------------------------------------

Map_Swing_Track_CPZ_MCZ:	index offset(*)
		ptr	Map_obj7A_a_0008
		ptr	Map_obj7A_a_001A
		ptr	Map_obj7A_a_0024
		ptr	Map_obj7A_a_0036

Map_obj7A_a_0008:	spritemap
		piece	-$18, -8, 3x2, $60, pal4
		piece	0, -8, 3x2, $60, xflip, pal4
		endsprite

Map_obj7A_a_001A:	spritemap
		piece	-8, -8, 2x2, $66, pal4
		endsprite

Map_obj7A_a_0024:	spritemap
		piece	-$C, -$18, 2x2, $6A, pal3
		piece	-$C, -8, 3x4, $6E, pal3
		endsprite

Map_obj7A_a_0036:	spritemap
		piece	-$C, -$58, 2x2, $6A, pal3
		piece	-$C, -$48, 3x4, $6E, pal3
		piece	-8, -$38, 2x2, $66, pal4
		piece	-8, -$28, 2x2, $66, pal4
		piece	-8, -$18, 2x2, $66, pal4
		piece	-8, -8, 2x2, $66, pal4
		piece	-8, 8, 2x2, $66, pal4
		piece	-8, $18, 2x2, $66, pal4
		piece	-8, $28, 2x2, $66, pal4
		piece	-8, $38, 2x2, $66, pal4
		endsprite

		even
