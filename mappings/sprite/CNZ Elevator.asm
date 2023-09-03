; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night large moving block
; -------------------------------------------------------------------------------

Map_Elevator:	index offset(*)
		ptr	Frame_Elevator

Frame_Elevator:	spritemap
		piece	-$10, -8, 2, 2, 0, 0, 0, 0, 0
		piece	0, -8, 2, 2, 0, 1, 0, 0, 0
		endsprite

		even
