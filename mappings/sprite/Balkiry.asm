; -------------------------------------------------------------------------------
; Sprite mappings - Balkiry enemy (SCZ)
; -------------------------------------------------------------------------------

Map_Balkiry:	index offset(*)
		ptr	Frame_Balkiry_1
		ptr	Frame_Balkiry_2

Frame_Balkiry_1:	spritemap
		piece	-$24, -$C, 4, 2, 0, 0, 0, 0, 1
		piece	$C, -$14, 2, 1, 8, 0, 0, 0, 1
		piece	-4, -$C, 4, 2, $A, 0, 0, 0, 1
		piece	-4, 4, 3, 1, $12, 0, 0, 0, 1
		endsprite

Frame_Balkiry_2:	spritemap
		piece	-$24, -$C, 4, 2, 0, 0, 0, 0, 1
		piece	$C, -$14, 2, 1, 8, 0, 0, 0, 1
		piece	-4, -$C, 4, 2, $A, 0, 0, 0, 1
		piece	$C, 4, 3, 1, $15, 0, 0, 0, 1
		piece	$1C, $C, 1, 1, $18, 0, 0, 0, 1
		endsprite

		even
