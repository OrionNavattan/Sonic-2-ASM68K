; -------------------------------------------------------------------------------
; Sprite mappings - Hill Top breakable rock
; -------------------------------------------------------------------------------

Map_BreakRock:	index offset(*)
		ptr	Map_obj32_a_0002

Map_obj32_a_0002:	spriteHeader
		spritePiece	-$18, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -$10, 2, 2, 4, 0, 0, 0, 0
		spritePiece	8, -$10, 2, 2, 8, 0, 0, 0, 0
		spritePiece	-$18, 0, 2, 2, $C, 0, 0, 0, 0
		spritePiece	-8, 0, 2, 2, $10, 0, 0, 0, 0
		spritePiece	8, 0, 2, 2, $10, 0, 0, 0, 0
		endsprite

		even
