; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin swinging and circling platforms
; -------------------------------------------------------------------------------

Map_ARZPlats:	index offset(*)
		ptr	Map_obj83_0008
		ptr	Map_obj83_001A
		ptr	Map_obj83_0024
		ptr	Map_obj83_0036

Map_obj83_0008:	spritemap
		spritePiece	-$20, -8, 4, 2, $55, 0, 0, 3, 0
		spritePiece	0, -8, 4, 2, $55, 0, 0, 3, 0
		endsprite

Map_obj83_001A:	spritemap
		spritePiece	-8, -8, 2, 2, $51, 0, 0, 1, 0
		endsprite

Map_obj83_0024:	spritemap
		spritePiece	-$10, -$10, 4, 3, $45, 0, 0, 2, 0
		spritePiece	-8, -8, 2, 2, $51, 0, 0, 1, 0
		endsprite

Map_obj83_0036:	spritemap
		endsprite

		even
