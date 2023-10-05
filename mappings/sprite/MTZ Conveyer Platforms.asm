; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis conveyer platform
; -------------------------------------------------------------------------------

Map_ConveyerPlat:	index offset(*)
		ptr	Frame_ConveyerPlat

Frame_ConveyerPlat:	spritemap
		piece	-$10, -8, 2x2, 0
		piece	0, -8, 2x2, 0, xflip
		endsprite

		even