; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress gun platform
; -------------------------------------------------------------------------------

Map_GunPlat:	index offset(*)
		ptr	Map_objBE_000A
		ptr	Map_objBE_001C
		ptr	Map_objBE_002E
		ptr	Map_objBE_0040
		ptr	Map_objBE_0052

Map_objBE_000A:	spriteHeader
		spritePiece	-$18, -$18, 3, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$18, 3, 2, 6, 0, 0, 0, 0
		endsprite

Map_objBE_001C:	spriteHeader
		spritePiece	-$18, -$18, 3, 2, $C, 0, 0, 0, 0
		spritePiece	0, -$18, 3, 2, $12, 0, 0, 0, 0
		endsprite

Map_objBE_002E:	spriteHeader
		spritePiece	-$18, -$18, 3, 2, $18, 0, 0, 0, 0
		spritePiece	0, -$18, 3, 2, $18, 1, 0, 0, 0
		endsprite

Map_objBE_0040:	spriteHeader
		spritePiece	-$20, -$18, 4, 3, $1E, 0, 0, 0, 0
		spritePiece	0, -$18, 4, 3, $1E, 1, 0, 0, 0
		endsprite

Map_objBE_0052:	spriteHeader
		spritePiece	-$20, -$18, 4, 3, $2A, 0, 0, 0, 0
		spritePiece	0, -$18, 4, 3, $2A, 1, 0, 0, 0
		endsprite

		even
