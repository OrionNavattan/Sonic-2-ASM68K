; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress wall turret
; -------------------------------------------------------------------------------

Map_WallTurr:	index offset(*)
		ptr	Map_objB8_000A
		ptr	Map_objB8_002C
		ptr	Map_objB8_0046
		ptr	Map_objB8_0060
		ptr	Map_objB8_006A

Map_objB8_000A:	spriteHeader
		spritePiece	-$10, -$10, 2, 4, 0, 0, 0, 3, 1
		spritePiece	0, -$10, 2, 4, 8, 0, 0, 3, 1
		spritePiece	-8, $E, 1, 1, $10, 0, 0, 3, 1
		spritePiece	0, $E, 1, 1, $11, 0, 0, 3, 1
		endsprite

Map_objB8_002C:	spriteHeader
		spritePiece	-$10, -$10, 2, 4, 0, 0, 0, 3, 1
		spritePiece	0, -$10, 2, 4, 8, 0, 0, 3, 1
		spritePiece	-$15, 4, 2, 2, $12, 0, 0, 3, 1
		endsprite

Map_objB8_0046:	spriteHeader
		spritePiece	-$10, -$10, 2, 4, 0, 0, 0, 3, 1
		spritePiece	0, -$10, 2, 4, 8, 0, 0, 3, 1
		spritePiece	5, 4, 2, 2, $12, 1, 0, 3, 1
		endsprite

Map_objB8_0060:	spriteHeader
		spritePiece	-4, -4, 1, 1, $16, 0, 0, 0, 1
		endsprite

Map_objB8_006A:	spriteHeader
		spritePiece	-4, -4, 1, 1, $17, 0, 0, 0, 1
		endsprite

		even
