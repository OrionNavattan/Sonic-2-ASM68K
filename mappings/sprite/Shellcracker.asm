; -------------------------------------------------------------------------------
; Sprite mappings - Shellcracker enemy (MTZ)
; -------------------------------------------------------------------------------

Map_Shelcrk:	index offset(*)
		ptr	Map_objA0_000C
		ptr	Map_objA0_002E
		ptr	Map_objA0_0050
		ptr	Map_objA0_0072
		ptr	Map_objA0_008C
		ptr	Map_objA0_0096

Map_objA0_000C:	spritemap
		spritePiece	-$20, -$14, 3, 3, $18, 0, 0, 0, 0
		spritePiece	8, -8, 2, 1, $21, 0, 0, 0, 0
		spritePiece	-$18, -$C, 3, 3, 0, 0, 0, 0, 0
		spritePiece	0, -$C, 3, 3, 0, 1, 0, 0, 0
		endsprite

Map_objA0_002E:	spritemap
		spritePiece	-$20, -$14, 3, 3, $18, 0, 0, 0, 0
		spritePiece	8, -8, 2, 1, $21, 0, 0, 0, 0
		spritePiece	-$10, -$C, 2, 3, $12, 1, 0, 0, 0
		spritePiece	0, -$C, 3, 3, 9, 1, 0, 0, 0
		endsprite

Map_objA0_0050:	spritemap
		spritePiece	-$20, -$14, 3, 3, $18, 0, 0, 0, 0
		spritePiece	8, -8, 2, 1, $21, 0, 0, 0, 0
		spritePiece	-$18, -$C, 3, 3, 9, 0, 0, 0, 0
		spritePiece	0, -$C, 2, 3, $12, 0, 0, 0, 0
		endsprite

Map_objA0_0072:	spritemap
		spritePiece	8, -8, 2, 1, $21, 0, 0, 0, 0
		spritePiece	-$18, -$C, 3, 3, 0, 0, 0, 0, 0
		spritePiece	0, -$C, 3, 3, 0, 1, 0, 0, 0
		endsprite

Map_objA0_008C:	spritemap
		spritePiece	-4, -4, 1, 1, $23, 0, 0, 0, 0
		endsprite

Map_objA0_0096:	spritemap
		spritePiece	-$C, -$C, 3, 3, $18, 0, 0, 0, 0
		endsprite

		even
