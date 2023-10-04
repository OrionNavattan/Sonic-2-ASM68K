; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin stationary platforms
; -------------------------------------------------------------------------------

Map_Plat_ARZ:	index offset(*)
		ptr	Map_obj18_b_0004
		ptr	Map_obj18_b_0026

Map_obj18_b_0004:	spriteHeader
		spritePiece	-$20, -$10, 4, 3, 1, 0, 0, 0, 0
		spritePiece	0, -$10, 4, 3, 1, 1, 0, 0, 0
		spritePiece	-$20, 8, 4, 3, $2D, 0, 0, 0, 0
		spritePiece	0, 8, 4, 3, $39, 0, 0, 0, 0
		endsprite

Map_obj18_b_0026:	spriteHeader
		spritePiece	-$20, -$30, 4, 3, 1, 0, 0, 0, 0
		spritePiece	0, -$30, 4, 3, 1, 1, 0, 0, 0
		spritePiece	-$20, -$18, 4, 4, $D, 0, 0, 0, 0
		spritePiece	0, -$18, 4, 4, $1D, 0, 0, 0, 0
		spritePiece	-$20, 8, 4, 4, $D, 0, 0, 0, 0
		spritePiece	0, 8, 4, 4, $1D, 0, 0, 0, 0
		endsprite

		even
