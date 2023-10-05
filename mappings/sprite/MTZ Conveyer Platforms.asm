; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis conveyer platform
; -------------------------------------------------------------------------------

Map_ConveyerPlat:	index offset(*)
		ptr	Frame_ConveyerPlat

Frame_ConveyerPlat:	spritemap
		spritePiece	-$10, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -8, 2, 2, 0, 1, 0, 0, 0
		endsprite

		even
