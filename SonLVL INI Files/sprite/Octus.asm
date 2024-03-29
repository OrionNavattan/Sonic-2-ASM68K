; -------------------------------------------------------------------------------
; Sprite mappings - Octus enemy (OOZ)
; -------------------------------------------------------------------------------

Map_Octus:	index offset(*)
		ptr	Map_obj4A_000E
		ptr	Map_obj4A_0020
		ptr	Map_obj4A_003A
		ptr	Map_obj4A_0054
		ptr	Map_obj4A_006E
		ptr	Map_obj4A_0090
		ptr	Map_obj4A_009A

Map_obj4A_000E:	spriteHeader
		spritePiece	-$10, -$15, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, -5, 4, 2, 8, 0, 0, 0, 0
		endsprite

Map_obj4A_0020:	spriteHeader
		spritePiece	-$10, -$10, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-$18, 0, 3, 2, $10, 0, 0, 0, 0
		spritePiece	0, 0, 3, 2, $16, 0, 0, 0, 0
		endsprite

Map_obj4A_003A:	spriteHeader
		spritePiece	-$10, -$10, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-$18, 0, 3, 2, $1C, 0, 0, 0, 0
		spritePiece	0, 0, 3, 2, $22, 0, 0, 0, 0
		endsprite

Map_obj4A_0054:	spriteHeader
		spritePiece	-$10, -$10, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-$18, 0, 3, 2, $28, 0, 0, 0, 0
		spritePiece	0, 0, 3, 2, $2E, 0, 0, 0, 0
		endsprite

Map_obj4A_006E:	spriteHeader
		spritePiece	-9, -$10, 1, 2, $34, 0, 0, 0, 0
		spritePiece	-$10, -$10, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-$18, 0, 3, 2, $10, 0, 0, 0, 0
		spritePiece	0, 0, 3, 2, $16, 0, 0, 0, 0
		endsprite

Map_obj4A_0090:	spriteHeader
		spritePiece	-$10, -$E, 1, 2, $36, 0, 0, 0, 0
		endsprite

Map_obj4A_009A:	spriteHeader
		spritePiece	-$10, -$E, 1, 2, $38, 0, 0, 0, 0
		endsprite

		dc.w 0

		even
