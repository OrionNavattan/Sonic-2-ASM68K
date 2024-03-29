; ---------------------------------------------------------------------------
; Sprite mappings - flash effect when you collect the giant ring
; (unused Sonic 1 leftover)
; ---------------------------------------------------------------------------

Map_RingFlash:	index offset(*)
		ptr	Map_obj37_c_0010
		ptr	Map_obj37_c_0022
		ptr	Map_obj37_c_0044
		ptr	Map_obj37_c_0066
		ptr	Map_obj37_c_0088
		ptr	Map_obj37_c_00AA
		ptr	Map_obj37_c_00CC
		ptr	Map_obj37_c_00DE

Map_obj37_c_0010:	spriteHeader
		spritePiece	0, -$20, 4, 4, 0, 0, 0, 0, 0
		spritePiece	0, 0, 4, 4, 0, 0, 1, 0, 0
		endsprite

Map_obj37_c_0022:	spriteHeader
		spritePiece	-$10, -$20, 4, 4, $10, 0, 0, 0, 0
		spritePiece	$10, -$20, 2, 4, $20, 0, 0, 0, 0
		spritePiece	-$10, 0, 4, 4, $10, 0, 1, 0, 0
		spritePiece	$10, 0, 2, 4, $20, 0, 1, 0, 0
		endsprite

Map_obj37_c_0044:	spriteHeader
		spritePiece	-$18, -$20, 4, 4, $28, 0, 0, 0, 0
		spritePiece	8, -$20, 3, 4, $38, 0, 0, 0, 0
		spritePiece	-$18, 0, 4, 4, $28, 0, 1, 0, 0
		spritePiece	8, 0, 3, 4, $38, 0, 1, 0, 0
		endsprite

Map_obj37_c_0066:	spriteHeader
		spritePiece	-$20, -$20, 4, 4, $34, 1, 0, 0, 0
		spritePiece	0, -$20, 4, 4, $34, 0, 0, 0, 0
		spritePiece	-$20, 0, 4, 4, $34, 1, 1, 0, 0
		spritePiece	0, 0, 4, 4, $34, 0, 1, 0, 0
		endsprite

Map_obj37_c_0088:	spriteHeader
		spritePiece	-$20, -$20, 3, 4, $38, 1, 0, 0, 0
		spritePiece	-8, -$20, 4, 4, $28, 1, 0, 0, 0
		spritePiece	-$20, 0, 3, 4, $38, 1, 1, 0, 0
		spritePiece	-8, 0, 4, 4, $28, 1, 1, 0, 0
		endsprite

Map_obj37_c_00AA:	spriteHeader
		spritePiece	-$20, -$20, 2, 4, $20, 1, 0, 0, 0
		spritePiece	-$10, -$20, 4, 4, $10, 1, 0, 0, 0
		spritePiece	-$20, 0, 2, 4, $20, 1, 1, 0, 0
		spritePiece	-$10, 0, 4, 4, $10, 1, 1, 0, 0
		endsprite

Map_obj37_c_00CC:	spriteHeader
		spritePiece	-$20, -$20, 4, 4, 0, 1, 0, 0, 0
		spritePiece	-$20, 0, 4, 4, 0, 1, 1, 0, 0
		endsprite

Map_obj37_c_00DE:	spriteHeader
		spritePiece	-$20, -$20, 4, 4, $44, 0, 0, 0, 0
		spritePiece	0, -$20, 4, 4, $44, 1, 0, 0, 0
		spritePiece	-$20, 0, 4, 4, $44, 0, 1, 0, 0
		spritePiece	0, 0, 4, 4, $44, 1, 1, 0, 0
		endsprite

		even
