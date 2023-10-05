; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave crate
; -------------------------------------------------------------------------------

Map_Crate:	index offset(*)
		ptr	Frame_Crate

Frame_Crate:	spritemap
		piece	-$20, -$20, 4x4, 0
		piece	0, -$20, 4x4, $10
		piece	-$20, 0, 4x4, $10, xflip, yflip
		piece	0, 0, 4x4, 0, xflip, yflip
		endsprite

		even