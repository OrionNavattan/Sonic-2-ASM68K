; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave collapsing platform
; -------------------------------------------------------------------------------

Map_CFlo_MCZ:	index offset(*)
		ptr	Map_obj1F_c_0004
		ptr	Map_obj1F_c_0026

Map_obj1F_c_0004:	spritemap
		spritePiece	-$20, -$10, 4, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 4, 2, 0, 1, 0, 0, 0
		spritePiece	-$10, 0, 3, 2, 8, 0, 0, 0, 0
		spritePiece	8, 0, 3, 4, $E, 0, 0, 0, 0
		endsprite

Map_obj1F_c_0026:	spritemap
		spritePiece	-$20, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, -$10, 2, 2, 4, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, 4, 1, 0, 0, 0
		spritePiece	$10, -$10, 2, 2, 0, 1, 0, 0, 0
		spritePiece	-$10, 0, 3, 2, 8, 0, 0, 0, 0
		spritePiece	8, 0, 3, 4, $E, 0, 0, 0, 0
		endsprite

		even
