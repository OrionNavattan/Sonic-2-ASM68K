; -------------------------------------------------------------------------------
; Sprite mappings - Hidden Palace collapsing platform (unused beta leftover)
; -------------------------------------------------------------------------------

Map_CPlat_HPZ:	index offset(*)
		ptr	Map_obj1A_b_0006
		ptr	Map_obj1A_b_0048
		ptr	Map_obj1A_b_0048

Map_obj1A_b_0006:	spriteHeader
		spritePiece	-$30, -$10, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-$30, 0, 4, 2, 8, 0, 0, 0, 0
		spritePiece	-$10, -$10, 2, 2, 4, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, 4, 1, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, $C, 0, 0, 0, 0
		spritePiece	0, 0, 2, 2, $C, 1, 0, 0, 0
		spritePiece	$10, -$10, 4, 2, 0, 1, 0, 0, 0
		spritePiece	$10, 0, 4, 2, 8, 1, 0, 0, 0
		endsprite

Map_obj1A_b_0048:	spriteHeader
		spritePiece	-$30, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$20, -$10, 2, 2, 4, 0, 0, 0, 0
		spritePiece	-$10, -$10, 2, 2, 4, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, 4, 1, 0, 0, 0
		spritePiece	$10, -$10, 2, 2, 4, 1, 0, 0, 0
		spritePiece	$20, -$10, 2, 2, 0, 1, 0, 0, 0
		spritePiece	-$30, 0, 2, 2, 8, 0, 0, 0, 0
		spritePiece	-$20, 0, 2, 2, $C, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, $C, 0, 0, 0, 0
		spritePiece	0, 0, 2, 2, $C, 1, 0, 0, 0
		spritePiece	$10, 0, 2, 2, $C, 1, 0, 0, 0
		spritePiece	$20, 0, 2, 2, 8, 1, 0, 0, 0
		endsprite

		even
