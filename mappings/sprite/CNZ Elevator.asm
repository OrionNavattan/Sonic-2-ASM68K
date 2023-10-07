; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night large moving block
; -------------------------------------------------------------------------------

Map_Elevator:	index offset(*)
		ptr	Frame_Elevator

Frame_Elevator:	spritemap
		piece	-$10, -8, 2x2, 0
		piece	0, -8, 2x2, 0, xflip
		endsprite

		even
