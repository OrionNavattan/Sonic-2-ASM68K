; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night saucer bumper
; -------------------------------------------------------------------------------

Map_SauceBump:	index offset(*)
		ptr	Map_objD8_000C
		ptr	Map_objD8_0016
		ptr	Map_objD8_0020
		ptr	Map_objD8_002A
		ptr	Map_objD8_0034
		ptr	Map_objD8_003E

Map_objD8_000C:	spriteHeader
		spritePiece	-$10, -8, 4, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD8_0016:	spriteHeader
		spritePiece	-$C, -$10, 3, 4, 8, 0, 0, 0, 0
		endsprite

Map_objD8_0020:	spriteHeader
		spritePiece	-8, -$10, 2, 4, $14, 0, 0, 0, 0
		endsprite

Map_objD8_002A:	spriteHeader
		spritePiece	-$10, -6, 4, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD8_0034:	spriteHeader
		spritePiece	-$E, -$E, 3, 4, 8, 0, 0, 0, 0
		endsprite

Map_objD8_003E:	spriteHeader
		spritePiece	-$A, -$10, 2, 4, $14, 0, 0, 0, 0
		endsprite

		even
