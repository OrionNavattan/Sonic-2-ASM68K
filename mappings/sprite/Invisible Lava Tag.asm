; -------------------------------------------------------------------------------
; Sprite mappings - invisible lava tag
; -------------------------------------------------------------------------------

Map_LTag:	index offset(*)
		ptr	Map_obj31_b_0006
		ptr	Map_obj31_b_0028
		ptr	Map_obj31_b_004A

Map_obj31_b_0006:	spritemap
		spritePiece	-$20, -$20, 2, 2, $34, 0, 0, 0, 0
		spritePiece	$10, -$20, 2, 2, $34, 0, 0, 0, 0
		spritePiece	-$20, $10, 2, 2, $34, 0, 0, 0, 0
		spritePiece	$10, $10, 2, 2, $34, 0, 0, 0, 0
		endsprite

Map_obj31_b_0028:	spritemap
		spritePiece	-$40, -$20, 2, 2, $34, 0, 0, 0, 0
		spritePiece	$30, -$20, 2, 2, $34, 0, 0, 0, 0
		spritePiece	-$40, $10, 2, 2, $34, 0, 0, 0, 0
		spritePiece	$30, $10, 2, 2, $34, 0, 0, 0, 0
		endsprite

Map_obj31_b_004A:	spritemap
		spritePiece	-$80, -$20, 2, 2, $34, 0, 0, 0, 0
		spritePiece	$70, -$20, 2, 2, $34, 0, 0, 0, 0
		spritePiece	-$80, $10, 2, 2, $34, 0, 0, 0, 0
		spritePiece	$70, $10, 2, 2, $34, 0, 0, 0, 0
		endsprite

		even
