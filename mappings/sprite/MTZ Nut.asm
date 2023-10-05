; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis giant nut
; -------------------------------------------------------------------------------

Map_Nut:	index offset(*)
		ptr	Frame_Nut1
		ptr	Frame_Nut2
		ptr	Frame_Nut3
		ptr	Frame_Nut4

Frame_Nut1:	spritemap
		piece	-$20, -$C, 4x3, 0
		piece	0, -$C, 4x3, $C
		endsprite

Frame_Nut2:	spritemap
		piece	-$20, -$C, 3x3, 3
		piece	-8, -$C, 4x3, $C
		piece	$18, -$C, 1x3, 9, xflip
		endsprite

Frame_Nut3:	spritemap
		piece	-$20, -$C, 2x3, $24
		piece	-$10, -$C, 4x3, $2A
		piece	$10, -$C, 2x3, $18
		endsprite

Frame_Nut4:	spritemap
		piece	-$20, -$C, 1x3, $27
		piece	-$18, -$C, 4x3, $18
		piece	8, -$C, 3x3, $2D, xflip
		endsprite

		even