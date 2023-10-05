; -------------------------------------------------------------------------------
; Sprite mappings - Balkiry enemy (SCZ)
; -------------------------------------------------------------------------------

Map_Balkiry:	index offset(*)
		ptr	Frame_Balkiry_1
		ptr	Frame_Balkiry_2

Frame_Balkiry_1:	spritemap
		piece	-$24, -$C, 4x2, 0, hi
		piece	$C, -$14, 2x1, 8, hi
		piece	-4, -$C, 4x2, $A, hi
		piece	-4, 4, 3x1, $12, hi
		endsprite

Frame_Balkiry_2:	spritemap
		piece	-$24, -$C, 4x2, 0, hi
		piece	$C, -$14, 2x1, 8, hi
		piece	-4, -$C, 4x2, $A, hi
		piece	$C, 4, 3x1, $15, hi
		piece	$1C, $C, 1x1, $18, hi
		endsprite

		even