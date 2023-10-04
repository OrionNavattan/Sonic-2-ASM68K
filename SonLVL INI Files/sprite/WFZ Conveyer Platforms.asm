; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress conveyer platforms
; -------------------------------------------------------------------------------

Map_ConvPlat:	index offset(*)
		ptr	Map_objBD_0006
		ptr	Map_objBD_0018
		ptr	Map_objBD_002A

Map_objBD_0006:	spriteHeader
		spritePiece	-$18, -4, 3, 1, 0, 0, 0, 0, 0
		spritePiece	0, -4, 3, 1, 3, 0, 0, 0, 0
		endsprite

Map_objBD_0018:	spriteHeader
		spritePiece	-$18, -4, 3, 1, 6, 0, 0, 0, 0
		spritePiece	0, -4, 3, 1, 6, 1, 0, 0, 0
		endsprite

Map_objBD_002A:	spriteHeader
		spritePiece	-$18, -4, 3, 1, 9, 0, 0, 0, 0
		spritePiece	0, -4, 3, 1, 9, 1, 0, 0, 0
		endsprite

		even
