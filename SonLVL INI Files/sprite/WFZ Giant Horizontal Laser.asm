; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress giant horizontal laser
; -------------------------------------------------------------------------------

Map_HorizLaser:	index offset(*)
		ptr	Map_objB9_0002

Map_objB9_0002:	spriteHeader
		spritePiece	-$48, -8, 1, 2, 0, 0, 0, 0, 0
		spritePiece	-$40, -8, 4, 2, 2, 0, 0, 0, 0
		spritePiece	-$20, -8, 4, 2, 2, 0, 0, 0, 0
		spritePiece	0, -8, 4, 2, 2, 0, 0, 0, 0
		spritePiece	$20, -8, 4, 2, 2, 0, 0, 0, 0
		spritePiece	$40, -8, 1, 2, 0, 1, 0, 0, 0
		endsprite

		even
