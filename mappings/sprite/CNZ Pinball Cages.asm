; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night pinball cages
; -------------------------------------------------------------------------------

Map_Cage:	index offset(*)
		ptr	Frame_Cage_Dark
		ptr	Frame_Cage_Lit

Frame_Cage_Dark:	spritemap
		spritePiece	-$18, -$14, 3, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$14, 3, 2, 0, 1, 0, 0, 0
		spritePiece	-$18, -4, 3, 2, 0, 0, 0, 0, 0
		spritePiece	0, -4, 3, 2, 0, 1, 0, 0, 0
		spritePiece	-$18, $C, 3, 2, 0, 0, 0, 0, 0
		spritePiece	0, $C, 3, 2, 0, 1, 0, 0, 0
		endsprite

Frame_Cage_Lit:	spritemap
		spritePiece	-$18, -$14, 3, 2, 6, 0, 0, 1, 0
		spritePiece	0, -$14, 3, 2, 6, 1, 0, 1, 0
		spritePiece	-$18, -4, 3, 2, 6, 0, 0, 1, 0
		spritePiece	0, -4, 3, 2, 6, 1, 0, 1, 0
		spritePiece	-$18, $C, 3, 2, 6, 0, 0, 1, 0
		spritePiece	0, $C, 3, 2, 6, 1, 0, 1, 0
		endsprite

		even
