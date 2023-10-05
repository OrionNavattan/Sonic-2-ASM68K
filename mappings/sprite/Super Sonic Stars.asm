; ---------------------------------------------------------------------------
; Sprite mappings - Super Sonic's stars
; ---------------------------------------------------------------------------

Map_SuperStars:	index offset(*)
		ptr	Map_obj7E_000C
		ptr	Map_obj7E_002E
		ptr	Map_obj7E_0050
		ptr	Map_obj7E_002E
		ptr	Map_obj7E_000C
		ptr	Map_obj7E_0072

Map_obj7E_000C:	spritemap
		spritePiece	-8, -8, 1, 1, 0, 0, 0, 0, 0
		spritePiece	0, -8, 1, 1, 0, 1, 0, 0, 0
		spritePiece	-8, 0, 1, 1, 0, 0, 1, 0, 0
		spritePiece	0, 0, 1, 1, 0, 1, 1, 0, 0
		endsprite

Map_obj7E_002E:	spritemap
		spritePiece	-$10, -$10, 2, 2, 1, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, 1, 1, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, 1, 0, 1, 0, 0
		spritePiece	0, 0, 2, 2, 1, 1, 1, 0, 0
		endsprite

Map_obj7E_0050:	spritemap
		spritePiece	-$18, -$18, 3, 3, 5, 0, 0, 0, 0
		spritePiece	0, -$18, 3, 3, 5, 1, 0, 0, 0
		spritePiece	-$18, 0, 3, 3, 5, 0, 1, 0, 0
		spritePiece	0, 0, 3, 3, 5, 1, 1, 0, 0
		endsprite

Map_obj7E_0072:	spritemap
		endsprite

		even
