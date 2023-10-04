; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin arrow shooter and arrow
; -------------------------------------------------------------------------------

Map_ArrowShoot:	index offset(*)
		ptr	Map_obj22_000A
		ptr	Map_obj22_0014
		ptr	Map_obj22_0026
		ptr	Map_obj22_0040
		ptr	Map_obj22_0052

Map_obj22_000A:	spriteHeader
		spritePiece	-$10, -4, 4, 1, 0, 0, 0, 1, 0
		endsprite

Map_obj22_0014:	spriteHeader
		spritePiece	-$10, -8, 3, 2, 4, 0, 0, 1, 0
		spritePiece	8, -8, 1, 2, $B, 0, 0, 1, 0
		endsprite

Map_obj22_0026:	spriteHeader
		spritePiece	-4, -4, 1, 1, $A, 0, 0, 0, 0
		spritePiece	-$10, -8, 3, 2, 4, 0, 0, 1, 0
		spritePiece	8, -8, 1, 2, $B, 0, 0, 1, 0
		endsprite

Map_obj22_0040:	spriteHeader
		spritePiece	-$10, -8, 3, 2, 4, 0, 0, 1, 0
		spritePiece	8, -8, 1, 2, $D, 0, 0, 1, 0
		endsprite

Map_obj22_0052:	spriteHeader
		spritePiece	-$10, -8, 3, 2, 4, 0, 0, 1, 0
		spritePiece	8, -8, 1, 2, $F, 0, 0, 1, 0
		endsprite

		even
