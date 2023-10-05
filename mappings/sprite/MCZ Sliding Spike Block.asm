; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave sliding spike block
; -------------------------------------------------------------------------------

Map_SlidSpks:	index offset(*)
		ptr	Frame_SlidSpks

Frame_SlidSpks:	spritemap
		spritePiece	-$40, -$10, 2, 2, $42C, 0, 0, 1, 0
		spritePiece	-$40, 0, 2, 2, $42C, 0, 0, 1, 0
		spritePiece	-$30, -$10, 2, 4, $40, 0, 0, 3, 0
		spritePiece	-$20, -$10, 4, 4, $48, 0, 0, 3, 0
		spritePiece	0, -$10, 4, 4, $48, 0, 0, 3, 0
		spritePiece	$20, -$10, 4, 4, $48, 0, 0, 3, 0
		endsprite

		even
