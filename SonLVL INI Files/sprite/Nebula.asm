; -------------------------------------------------------------------------------
; Sprite mappings - Nebula enemy (SCZ)
; -------------------------------------------------------------------------------

Map_Neb:	index offset(*)
		ptr	Map_obj99_000A
		ptr	Map_obj99_002C
		ptr	Map_obj99_004E
		ptr	Map_obj99_0070
		ptr	Map_obj99_0092

Map_obj99_000A:	spriteHeader
		spritePiece	-$18, -$14, 3, 1, $12, 0, 0, 0, 0
		spritePiece	0, -$14, 3, 1, $12, 1, 1, 0, 0
		spritePiece	-8, -$14, 2, 1, 0, 0, 0, 0, 0
		spritePiece	-$10, -$C, 4, 4, 2, 0, 0, 0, 0
		endsprite

Map_obj99_002C:	spriteHeader
		spritePiece	-$10, -$14, 2, 1, $15, 0, 0, 0, 0
		spritePiece	0, -$14, 2, 1, $15, 1, 1, 0, 0
		spritePiece	-8, -$14, 2, 1, 0, 0, 0, 0, 0
		spritePiece	-$10, -$C, 4, 4, 2, 0, 0, 0, 0
		endsprite

Map_obj99_004E:	spriteHeader
		spritePiece	-8, -$14, 1, 1, $17, 0, 0, 0, 0
		spritePiece	0, -$14, 1, 1, $17, 1, 0, 0, 0
		spritePiece	-8, -$14, 2, 1, 0, 0, 0, 0, 0
		spritePiece	-$10, -$C, 4, 4, 2, 0, 0, 0, 0
		endsprite

Map_obj99_0070:	spriteHeader
		spritePiece	-$10, -$14, 2, 1, $15, 0, 1, 0, 0
		spritePiece	0, -$14, 2, 1, $15, 1, 0, 0, 0
		spritePiece	-8, -$14, 2, 1, 0, 0, 0, 0, 0
		spritePiece	-$10, -$C, 4, 4, 2, 0, 0, 0, 0
		endsprite

Map_obj99_0092:	spriteHeader
		spritePiece	-8, -8, 2, 2, $18, 0, 0, 0, 0
		endsprite

		even
