; -------------------------------------------------------------------------------
; Sprite mappings - Chemical Plany and Mystic Cave swinging and tracked platforms
; -------------------------------------------------------------------------------

Map_Swing_Track_CPZ_MCZ:	index offset(*)
		ptr	Map_obj7A_a_0008
		ptr	Map_obj7A_a_001A
		ptr	Map_obj7A_a_0024
		ptr	Map_obj7A_a_0036

Map_obj7A_a_0008:	spritemap
		piece	-$18, -8, 3, 2, $60, 0, 0, 3, 0
		piece	0, -8, 3, 2, $60, 1, 0, 3, 0
		endsprite

Map_obj7A_a_001A:	spritemap
		piece	-8, -8, 2, 2, $66, 0, 0, 3, 0
		endsprite

Map_obj7A_a_0024:	spritemap
		piece	-$C, -$18, 2, 2, $6A, 0, 0, 2, 0
		piece	-$C, -8, 3, 4, $6E, 0, 0, 2, 0
		endsprite

Map_obj7A_a_0036:	spritemap
		piece	-$C, -$58, 2, 2, $6A, 0, 0, 2, 0
		piece	-$C, -$48, 3, 4, $6E, 0, 0, 2, 0
		piece	-8, -$38, 2, 2, $66, 0, 0, 3, 0
		piece	-8, -$28, 2, 2, $66, 0, 0, 3, 0
		piece	-8, -$18, 2, 2, $66, 0, 0, 3, 0
		piece	-8, -8, 2, 2, $66, 0, 0, 3, 0
		piece	-8, 8, 2, 2, $66, 0, 0, 3, 0
		piece	-8, $18, 2, 2, $66, 0, 0, 3, 0
		piece	-8, $28, 2, 2, $66, 0, 0, 3, 0
		piece	-8, $38, 2, 2, $66, 0, 0, 3, 0
		endsprite

		even
