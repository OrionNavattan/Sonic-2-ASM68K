; -----------------------------------------------------------------------------
; Sprite mappings - Chop Chop
; -----------------------------------------------------------------------------

Map_Chop:	index offset(*)
		ptr	Frame_Chop_Closed
		ptr	Frame_Chop_Open

Frame_Chop_Closed:	spritemap
		piece	-$10, -$C, 4x3, 0
		endsprite

Frame_Chop_Open:	spritemap
		piece	-$10, -$C, 4x3, $C
		endsprite

		even
