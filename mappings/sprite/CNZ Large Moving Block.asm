; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night large moving block
; -------------------------------------------------------------------------------

Map_LrgMovBlock:	index offset(*)
		ptr	Frame_LrgMovBlock

Frame_LrgMovBlock:	spritemap
		piece	-$20, -$20, 4, 4, 0, 0, 0, 0, 0
		piece	0, -$20, 4, 4, 0, 1, 0, 0, 0
		piece	-$20, 0, 4, 4, 0, 0, 1, 0, 0
		piece	0, 0, 4, 4, 0, 1, 1, 0, 0
		endsprite

		even
