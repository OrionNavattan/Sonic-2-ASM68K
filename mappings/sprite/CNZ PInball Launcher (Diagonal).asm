; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night pinball launcher (diagonal)
; -------------------------------------------------------------------------------

Map_DiagLauncher:	index offset(*)
		ptr	Map_obj85_b_000C
		ptr	Map_obj85_b_001E
		ptr	Map_obj85_b_0028
		ptr	Map_obj85_b_0028
		ptr	Map_obj85_b_0032
		ptr	Map_obj85_b_0032

Map_obj85_b_000C:	spritemap
		spritePiece	-$10, -$10, 4, 4, 0, 0, 0, 0, 0
		spritePiece	-$20, 0, 4, 4, $10, 0, 0, 0, 0
		endsprite

Map_obj85_b_001E:	spritemap
		spritePiece	-$10, -$10, 4, 4, 0, 0, 0, 0, 0
		endsprite

Map_obj85_b_0028:	spritemap
		spritePiece	-$20, 0, 4, 4, $10, 0, 0, 0, 0
		endsprite

Map_obj85_b_0032:	spritemap
		spritePiece	-$10, -$10, 4, 4, 0, 0, 0, 1, 0
		endsprite

		even
