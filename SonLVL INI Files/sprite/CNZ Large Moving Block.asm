; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night large moving block
; -------------------------------------------------------------------------------

Map_LrgMovBlock:	index offset(*)
		ptr	Frame_LrgMovBlock

Frame_LrgMovBlock:	spriteHeader
		spritePiece	-$20, -$20, 4, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$20, 4, 4, 0, 1, 0, 0, 0
		spritePiece	-$20, 0, 4, 4, 0, 0, 1, 0, 0
		spritePiece	0, 0, 4, 4, 0, 1, 1, 0, 0
		endsprite

		even
