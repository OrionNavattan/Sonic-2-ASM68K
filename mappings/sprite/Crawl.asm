; -------------------------------------------------------------------------------
; Sprite mappings - Crawl enemy (CNobjc8\.asmZ)
; -------------------------------------------------------------------------------

Map_Crawl:	index offset(*)
		ptr	Map_objC8_0008
		ptr	Map_objC8_0022
		ptr	Map_objC8_003C
		ptr	Map_objC8_0056

Map_objC8_0008:	spritemap
		spritePiece	0, -$10, 3, 4, $10, 0, 0, 1, 0
		spritePiece	-$10, -$10, 4, 4, 0, 0, 0, 1, 0
		spritePiece	-$18, 0, 3, 2, $24, 0, 0, 1, 0
		endsprite

Map_objC8_0022:	spritemap
		spritePiece	4, -$10, 3, 4, $10, 0, 0, 1, 0
		spritePiece	-$10, -$10, 4, 4, 0, 0, 0, 1, 0
		spritePiece	-$20, 0, 3, 2, $24, 0, 0, 1, 0
		endsprite

Map_objC8_003C:	spritemap
		spritePiece	-$18, -$10, 3, 4, $10, 0, 0, 1, 0
		spritePiece	-$10, 0, 3, 2, $24, 0, 0, 1, 0
		spritePiece	-$10, -$10, 4, 4, 0, 0, 0, 1, 0
		endsprite

Map_objC8_0056:	spritemap
		spritePiece	-$10, -$10, 4, 2, $1C, 0, 0, 1, 0
		spritePiece	-8, 0, 3, 2, $24, 0, 0, 1, 0
		spritePiece	-$20, 0, 3, 2, $24, 1, 0, 1, 0
		spritePiece	-$10, -$10, 4, 4, 0, 0, 0, 1, 0
		endsprite

		even
