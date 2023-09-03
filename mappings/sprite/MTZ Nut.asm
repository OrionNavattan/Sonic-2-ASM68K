; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis giant nut
; -------------------------------------------------------------------------------

Map_Nut:	index offset(*)
		ptr	Frame_Nut1
		ptr	Frame_Nut2
		ptr	Frame_Nut3
		ptr	Frame_Nut4

Frame_Nut1:	spritemap
		piece	-$20, -$C, 4, 3, 0, 0, 0, 0, 0
		piece	0, -$C, 4, 3, $C, 0, 0, 0, 0
		endsprite

Frame_Nut2:	spritemap
		piece	-$20, -$C, 3, 3, 3, 0, 0, 0, 0
		piece	-8, -$C, 4, 3, $C, 0, 0, 0, 0
		piece	$18, -$C, 1, 3, 9, 1, 0, 0, 0
		endsprite

Frame_Nut3:	spritemap
		piece	-$20, -$C, 2, 3, $24, 0, 0, 0, 0
		piece	-$10, -$C, 4, 3, $2A, 0, 0, 0, 0
		piece	$10, -$C, 2, 3, $18, 0, 0, 0, 0
		endsprite

Frame_Nut4:	spritemap
		piece	-$20, -$C, 1, 3, $27, 0, 0, 0, 0
		piece	-$18, -$C, 4, 3, $18, 0, 0, 0, 0
		piece	8, -$C, 3, 3, $2D, 1, 0, 0, 0
		endsprite

		even
