; -------------------------------------------------------------------------------
; Sprite mappings - buttons
; -------------------------------------------------------------------------------

Map_But:	index offset(*)
		ptr	Map_obj47_0006
		ptr	Map_obj47_0010
		ptr	Map_obj47_001A

Map_obj47_0006:	spriteHeader
		spritePiece	-$10, -$C, 4, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj47_0010:	spriteHeader
		spritePiece	-$10, -$C, 4, 2, 8, 0, 0, 0, 0
		endsprite

Map_obj47_001A:	spriteHeader
		spritePiece	-$10, -8, 4, 2, 0, 0, 0, 0, 0
		endsprite

		even
