; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night hexagonal bumper
; -------------------------------------------------------------------------------

Map_HexBump:	index offset(*)
		ptr	Map_objD7_0006
		ptr	Map_objD7_0028
		ptr	Map_objD7_004A

Map_objD7_0006:	spriteHeader
		spritePiece	-$18, -$10, 3, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 3, 2, 0, 1, 0, 0, 0
		spritePiece	-$18, 0, 3, 2, 0, 0, 1, 0, 0
		spritePiece	0, 0, 3, 2, 0, 1, 1, 0, 0
		endsprite

Map_objD7_0028:	spriteHeader
		spritePiece	-$18, -$C, 3, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$C, 3, 2, 0, 1, 0, 0, 0
		spritePiece	-$18, 4, 3, 2, 0, 0, 1, 0, 0
		spritePiece	0, 4, 3, 2, 0, 1, 1, 0, 0
		endsprite

Map_objD7_004A:	spriteHeader
		spritePiece	-$14, -$10, 3, 2, 0, 0, 0, 0, 0
		spritePiece	4, -$10, 3, 2, 0, 1, 0, 0, 0
		spritePiece	-$14, 0, 3, 2, 0, 0, 1, 0, 0
		spritePiece	4, 0, 3, 2, 0, 1, 1, 0, 0
		endsprite

		even
