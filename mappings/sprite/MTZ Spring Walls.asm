; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis spring walls (invisible object; this displays 
; the question mark monitor icon in debug mode)
; -------------------------------------------------------------------------------

Map_SpringWall:	index offset(*)
		ptr	Map_obj66_0004
		ptr	Map_obj66_0016

Map_obj66_0004:	spritemap
		spritePiece	-8, -$40, 2, 2, $34, 0, 0, 0, 0
		spritePiece	-8, $30, 2, 2, $34, 0, 0, 0, 0
		endsprite

Map_obj66_0016:	spritemap
		spritePiece	-8, -$80, 2, 2, $34, 0, 0, 0, 0
		spritePiece	-8, $70, 2, 2, $34, 0, 0, 0, 0
		endsprite

		even
