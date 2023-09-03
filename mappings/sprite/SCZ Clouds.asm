; -------------------------------------------------------------------------------
; Sprite mappings - clouds (SCZ)
; -------------------------------------------------------------------------------

Map_Cloud:	index offset(*)
		ptr	Frame_Cloud_Large
		ptr	Frame_Cloud_Medium
		ptr	Frame_Cloud_Small
		ptr	Frame_Cloud_Large

Frame_Cloud_Large:	spritemap
		piece	-$28, -4, 4, 1, 0, 0, 0, 0, 0
		piece	-8, -4, 4, 1, 4, 0, 0, 0, 0
		piece	$18, -4, 2, 1, 8, 0, 0, 0, 0
		endsprite

Frame_Cloud_Medium:	spritemap
		piece	-$18, -4, 4, 1, $A, 0, 0, 0, 0
		piece	8, -4, 2, 1, $E, 0, 0, 0, 0
		endsprite

Frame_Cloud_Small:	spritemap
		piece	-8, -4, 2, 1, $10, 0, 0, 0, 0
		endsprite

		even
