; ---------------------------------------------------------------------------
; Sprite mappings - round pinball bumper
; ---------------------------------------------------------------------------

Map_RoundBump:	index offset(*)
		ptr	Map_obj44_0004
		ptr	Map_obj44_0016

Map_obj44_0004:	spriteHeader
		spritePiece	-$10, -$10, 2, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 4, 0, 1, 0, 0, 0
		endsprite

Map_obj44_0016:	spriteHeader
		spritePiece	-$18, -$14, 3, 4, 8, 0, 0, 0, 0
		spritePiece	0, -$14, 3, 4, 8, 1, 0, 0, 0
		spritePiece	-$10, $C, 2, 2, $14, 0, 0, 0, 0
		spritePiece	0, $C, 2, 2, $14, 1, 0, 0, 0
		endsprite

		even
