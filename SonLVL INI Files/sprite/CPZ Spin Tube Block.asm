; -------------------------------------------------------------------------------
; Sprite mappings - Chemical Plant spin tube block
; -------------------------------------------------------------------------------

Map_SpinTubeBlock:	index offset(*)
		ptr	Map_obj32_b_0002

Map_obj32_b_0002:	spriteHeader
		spritePiece	-$10, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, 0, 1, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, 0, 2, 2, 0, 1, 0, 0, 0
		endsprite

		even
