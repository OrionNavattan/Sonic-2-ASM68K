; -------------------------------------------------------------------------------
; Sprite mappings - OOZ narrow falling oil
; -------------------------------------------------------------------------------

Map_NarrowFallingOil:	index offset(*)
		ptr	Map_obj1C_c_000C
		ptr	Map_obj1C_c_0016
		ptr	Map_obj1C_c_0020
		ptr	Map_obj1C_c_0032
		ptr	Map_obj1C_c_004C
		ptr	Map_obj1C_c_006E

Map_obj1C_c_000C:	spritemap
		spritePiece	-4, -8, 1, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj1C_c_0016:	spritemap
		spritePiece	-4, -$10, 1, 4, 0, 0, 0, 0, 0
		endsprite

Map_obj1C_c_0020:	spritemap
		spritePiece	-4, -$18, 1, 2, 0, 0, 0, 0, 0
		spritePiece	-4, -8, 1, 4, 0, 0, 0, 0, 0
		endsprite

Map_obj1C_c_0032:	spritemap
		spritePiece	-4, -$30, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, -$10, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, $10, 1, 4, 0, 0, 0, 0, 0
		endsprite

Map_obj1C_c_004C:	spritemap
		spritePiece	-4, -$40, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, -$20, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, 0, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, $20, 1, 4, 0, 0, 0, 0, 0
		endsprite

Map_obj1C_c_006E:	spritemap
		spritePiece	-4, -$68, 1, 1, 4, 0, 0, 0, 0
		spritePiece	-4, -$60, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, -$40, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, -$20, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, 0, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, $20, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, $40, 1, 4, 0, 0, 0, 0, 0
		endsprite

		even
