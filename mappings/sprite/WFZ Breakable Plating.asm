; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress breakable plating
; -------------------------------------------------------------------------------

Map_BreakPlate:	index offset(*)
		ptr	Map_objC1_000C
		ptr	Map_objC1_004E
		ptr	Map_objC1_0060
		ptr	Map_objC1_0072
		ptr	Map_objC1_0084
		ptr	Map_objC1_0096

Map_objC1_000C:	spritemap
		spritePiece	-$20, -$20, 2, 4, 0, 0, 0, 0, 0
		spritePiece	-$10, -$20, 2, 4, 0, 1, 0, 0, 0
		spritePiece	-$20, 0, 2, 4, 0, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 4, 0, 1, 0, 0, 0
		spritePiece	-$40, -$20, 2, 4, 0, 0, 0, 0, 0
		spritePiece	-$30, -$20, 2, 4, 0, 1, 0, 0, 0
		spritePiece	-$40, 0, 2, 4, 0, 0, 0, 0, 0
		spritePiece	-$30, 0, 2, 4, 0, 1, 0, 0, 0
		endsprite

Map_objC1_004E:	spritemap
		spritePiece	-$10, -$10, 2, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 4, 0, 1, 0, 0, 0
		endsprite

Map_objC1_0060:	spritemap
		spritePiece	-8, -$10, 2, 2, 8, 0, 0, 0, 0
		spritePiece	-8, 0, 2, 2, 8, 0, 1, 0, 0
		endsprite

Map_objC1_0072:	spritemap
		spritePiece	-4, -$10, 1, 2, $C, 0, 0, 0, 0
		spritePiece	-4, 0, 1, 2, $C, 0, 1, 0, 0
		endsprite

Map_objC1_0084:	spritemap
		spritePiece	-4, -$10, 1, 2, $C, 1, 0, 0, 0
		spritePiece	-4, 0, 1, 2, $C, 1, 1, 0, 0
		endsprite

Map_objC1_0096:	spritemap
		spritePiece	-8, -$10, 2, 2, 8, 1, 0, 0, 0
		spritePiece	-8, 0, 2, 2, 8, 1, 1, 0, 0
		endsprite

		even
