; -------------------------------------------------------------------------------
; Sprite mappings - OOZ Ball (unused beta leftover)
; -------------------------------------------------------------------------------

Map_OOZBetaBall:	index offset(*)
		ptr	Map_obj46_0008
		ptr	Map_obj46_002A
		ptr	Map_obj46_004C
		ptr	Map_obj46_005E

Map_obj46_0008:	spritemap
		spritePiece	-$10, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, 4, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, 4, 1, 1, 0, 0
		spritePiece	0, 0, 2, 2, 4, 0, 1, 0, 0
		endsprite

Map_obj46_002A:	spritemap
		spritePiece	-$10, -$10, 2, 2, 8, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, 8, 1, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, 8, 0, 1, 0, 0
		spritePiece	0, 0, 2, 2, 8, 1, 1, 0, 0
		endsprite

Map_obj46_004C:	spritemap
		spritePiece	-$10, -$10, 4, 2, $C, 0, 0, 0, 0
		spritePiece	-$10, 0, 4, 2, $C, 1, 1, 0, 0
		endsprite

Map_obj46_005E:	spritemap
		spritePiece	-$10, -$10, 4, 2, $C, 1, 0, 0, 0
		spritePiece	-$10, 0, 4, 2, $C, 0, 1, 0, 0
		endsprite

		even
