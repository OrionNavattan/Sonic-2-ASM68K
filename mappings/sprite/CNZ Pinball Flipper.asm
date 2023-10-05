; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night pinball flipper
; -------------------------------------------------------------------------------

Map_Flip:	index offset(*)
		ptr	Map_obj86_000C
		ptr	Map_obj86_0026
		ptr	Map_obj86_0038
		ptr	Map_obj86_0052
		ptr	Map_obj86_006C
		ptr	Map_obj86_008E

Map_obj86_000C:	spritemap
		spritePiece	-$19, -9, 3, 4, $C, 0, 0, 0, 0
		spritePiece	-1, -2, 1, 2, $18, 0, 0, 0, 0
		spritePiece	7, 1, 2, 2, $1A, 0, 0, 0, 0
		endsprite

Map_obj86_0026:	spritemap
		spritePiece	-$18, -8, 4, 2, 0, 0, 0, 0, 0
		spritePiece	8, -8, 2, 2, 8, 0, 0, 0, 0
		endsprite

Map_obj86_0038:	spritemap
		spritePiece	-$19, -$17, 3, 4, $C, 0, 1, 0, 0
		spritePiece	-1, -$E, 1, 2, $18, 0, 1, 0, 0
		spritePiece	7, -$11, 2, 2, $1A, 0, 1, 0, 0
		endsprite

Map_obj86_0052:	spritemap
		spritePiece	-$F, -$19, 3, 2, $24, 0, 0, 0, 0
		spritePiece	-$11, -9, 3, 2, $2A, 0, 0, 0, 0
		spritePiece	-$11, 7, 2, 2, $30, 0, 0, 0, 0
		endsprite

Map_obj86_006C:	spritemap
		spritePiece	-8, -$18, 1, 4, $1E, 0, 0, 0, 0
		spritePiece	0, -$18, 1, 4, $1E, 1, 0, 0, 0
		spritePiece	-8, 8, 1, 2, $22, 0, 0, 0, 0
		spritePiece	0, 8, 1, 2, $22, 1, 0, 0, 0
		endsprite

Map_obj86_008E:	spritemap
		spritePiece	-9, -$19, 3, 2, $24, 1, 0, 0, 0
		spritePiece	-7, -9, 3, 2, $2A, 1, 0, 0, 0
		spritePiece	1, 7, 2, 2, $30, 1, 0, 0, 0
		endsprite

		even
