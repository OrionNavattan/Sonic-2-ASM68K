; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress conveyer belt pulley
; -------------------------------------------------------------------------------

Map_ConvPulley:	index offset(*)
		ptr	Frame_ConvPulley

Frame_ConvPulley:	spriteHeader
		spritePiece	-$10, -$10, 4, 4, 0, 0, 0, 0, 0
		endsprite

		even
