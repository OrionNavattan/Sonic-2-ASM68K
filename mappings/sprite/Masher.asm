; -------------------------------------------------------------------------------
; Sprite mappings - Masher enemy (EHZ)
; -------------------------------------------------------------------------------

Map_Mash:	index offset(*)
		ptr	Map_obj5C_0004
		ptr	Map_obj5C_001E

Map_obj5C_0004:	spritemap
		spritePiece	-$C, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	4, -$10, 1, 2, 4, 0, 0, 0, 0
		spritePiece	-$C, 0, 3, 2, $A, 0, 0, 0, 0
		endsprite

Map_obj5C_001E:	spritemap
		spritePiece	-$C, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	2, -$10, 2, 2, 6, 0, 0, 0, 0
		spritePiece	-$C, 0, 3, 2, $10, 0, 0, 0, 0
		endsprite

		even
