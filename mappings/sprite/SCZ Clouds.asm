; -------------------------------------------------------------------------------
; Sprite mappings - clouds (SCZ)
; -------------------------------------------------------------------------------

Map_Cloud:	index offset(*)
		ptr	Frame_Cloud_Large
		ptr	Frame_Cloud_Medium
		ptr	Frame_Cloud_Small
		ptr	Frame_Cloud_Large

Frame_Cloud_Large:	spritemap
		piece	-$28, -4, 4x1, 0
		piece	-8, -4, 4x1, 4
		piece	$18, -4, 2x1, 8
		endsprite

Frame_Cloud_Medium:	spritemap
		piece	-$18, -4, 4x1, $A
		piece	8, -4, 2x1, $E
		endsprite

Frame_Cloud_Small:	spritemap
		piece	-8, -4, 2x1, $10
		endsprite

		even
