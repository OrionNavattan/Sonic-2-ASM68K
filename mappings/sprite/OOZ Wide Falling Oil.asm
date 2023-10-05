; -------------------------------------------------------------------------------
; Sprite mappings - OOZ wide falling oil
; -------------------------------------------------------------------------------
Map_WideFallingOil:	index offset(*)
		ptr	Map_obj1C_d_000A
		ptr	Map_obj1C_d_001C
		ptr	Map_obj1C_d_003E
		ptr	Map_obj1C_d_0058
		ptr	Map_obj1C_d_007A

Map_obj1C_d_000A:	spritemap
		spritePiece	-$18, -$10, 2, 4, 5, 0, 0, 0, 0
		spritePiece	8, -$10, 2, 4, 5, 0, 0, 0, 0
		endsprite

Map_obj1C_d_001C:	spritemap
		spritePiece	-$18, -$20, 2, 4, 5, 0, 0, 0, 0
		spritePiece	8, -$20, 2, 4, 5, 0, 0, 0, 0
		spritePiece	-$18, 0, 2, 4, 5, 0, 0, 0, 0
		spritePiece	8, 0, 2, 4, 5, 0, 0, 0, 0
		endsprite

Map_obj1C_d_003E:	spritemap
		spritePiece	-8, -$30, 2, 4, 5, 0, 0, 0, 0
		spritePiece	-8, -$10, 2, 4, 5, 0, 0, 0, 0
		spritePiece	-8, $10, 2, 4, 5, 0, 0, 0, 0
		endsprite

Map_obj1C_d_0058:	spritemap
		spritePiece	-8, -$40, 2, 4, 5, 0, 0, 0, 0
		spritePiece	-8, -$20, 2, 4, 5, 0, 0, 0, 0
		spritePiece	-8, 0, 2, 4, 5, 0, 0, 0, 0
		spritePiece	-8, $20, 2, 4, 5, 0, 0, 0, 0
		endsprite

Map_obj1C_d_007A:	spritemap
		spritePiece	-8, -$50, 2, 4, 5, 0, 0, 0, 0
		spritePiece	-8, -$30, 2, 4, 5, 0, 0, 0, 0
		spritePiece	-8, -$10, 2, 4, 5, 0, 0, 0, 0
		spritePiece	-8, $10, 2, 4, 5, 0, 0, 0, 0
		spritePiece	-8, $30, 2, 4, 5, 0, 0, 0, 0
		endsprite

		even
