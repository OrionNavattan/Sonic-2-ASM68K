; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night large moving block
; -------------------------------------------------------------------------------

Map_LrgMovBlock:	index offset(*)
		ptr	Frame_LrgMovBlock

Frame_LrgMovBlock:	spritemap
		piece	-$20, -$20, 4x4, 0
		piece	0, -$20, 4x4, 0, xflip
		piece	-$20, 0, 4x4, 0, yflip
		piece	0, 0, 4x4, 0, xflip, yflip
		endsprite

		even
