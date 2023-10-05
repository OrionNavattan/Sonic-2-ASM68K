; ---------------------------------------------------------------------------
; Sprite mappings - invisible solid blocks (visible in debug mode)
; ---------------------------------------------------------------------------

Map_Invis:	index offset(*)
		ptr	Map_obj74_0006
		ptr	Map_obj74_0028
		ptr	Map_obj74_004A

Map_obj74_0006:	spritemap
		spritePiece	-$10, -$10, 2, 2, $1C, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, $1C, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, $1C, 0, 0, 0, 0
		spritePiece	0, 0, 2, 2, $1C, 0, 0, 0, 0
		endsprite

Map_obj74_0028:	spritemap
		spritePiece	-$40, -$20, 2, 2, $1C, 0, 0, 0, 0
		spritePiece	$30, -$20, 2, 2, $1C, 0, 0, 0, 0
		spritePiece	-$40, $10, 2, 2, $1C, 0, 0, 0, 0
		spritePiece	$30, $10, 2, 2, $1C, 0, 0, 0, 0
		endsprite

Map_obj74_004A:	spritemap
		spritePiece	-$80, -$20, 2, 2, $1C, 0, 0, 0, 0
		spritePiece	$70, -$20, 2, 2, $1C, 0, 0, 0, 0
		spritePiece	-$80, $10, 2, 2, $1C, 0, 0, 0, 0
		spritePiece	$70, $10, 2, 2, $1C, 0, 0, 0, 0
		endsprite

		even
