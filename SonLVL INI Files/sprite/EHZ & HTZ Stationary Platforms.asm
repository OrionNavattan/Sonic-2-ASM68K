; -------------------------------------------------------------------------------
; Sprite mappings - Emerald Hill and Hill Top stationary platforms
; -------------------------------------------------------------------------------

Map_Plat_EHZ_HTZ:	index offset(*)
		ptr	Map_obj18_a_0004
		ptr	Map_obj18_a_0016

Map_obj18_a_0004:	spriteHeader
		spritePiece	-$20, -$C, 4, 4, $56, 0, 0, 0, 0
		spritePiece	0, -$C, 4, 4, $56, 1, 0, 0, 0
		endsprite

Map_obj18_a_0016:	spriteHeader
		spritePiece	-$20, -$34, 2, 4, $A, 0, 0, 0, 0
		spritePiece	-$10, -$34, 4, 2, $12, 0, 0, 0, 0
		spritePiece	-$10, -$24, 4, 2, $1A, 0, 0, 0, 0
		spritePiece	$10, -$34, 2, 4, $22, 0, 0, 0, 0
		spritePiece	-$20, -$14, 4, 4, $2A, 0, 0, 0, 0
		spritePiece	0, -$14, 4, 4, $2A, 1, 0, 0, 0
		spritePiece	-$20, $C, 4, 4, $3A, 0, 0, 0, 0
		spritePiece	0, $C, 4, 4, $3A, 1, 0, 0, 0
		endsprite

		even
