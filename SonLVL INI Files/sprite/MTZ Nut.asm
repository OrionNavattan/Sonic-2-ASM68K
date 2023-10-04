; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis giant nut
; -------------------------------------------------------------------------------

Map_Nut:	index offset(*)
		ptr	Frame_Nut1
		ptr	Frame_Nut2
		ptr	Frame_Nut3
		ptr	Frame_Nut4

Frame_Nut1:	spriteHeader
		spritePiece	-$20, -$C, 4, 3, 0, 0, 0, 0, 0
		spritePiece	0, -$C, 4, 3, $C, 0, 0, 0, 0
		endsprite

Frame_Nut2:	spriteHeader
		spritePiece	-$20, -$C, 3, 3, 3, 0, 0, 0, 0
		spritePiece	-8, -$C, 4, 3, $C, 0, 0, 0, 0
		spritePiece	$18, -$C, 1, 3, 9, 1, 0, 0, 0
		endsprite

Frame_Nut3:	spriteHeader
		spritePiece	-$20, -$C, 2, 3, $24, 0, 0, 0, 0
		spritePiece	-$10, -$C, 4, 3, $2A, 0, 0, 0, 0
		spritePiece	$10, -$C, 2, 3, $18, 0, 0, 0, 0
		endsprite

Frame_Nut4:	spriteHeader
		spritePiece	-$20, -$C, 1, 3, $27, 0, 0, 0, 0
		spritePiece	-$18, -$C, 4, 3, $18, 0, 0, 0, 0
		spritePiece	8, -$C, 3, 3, $2D, 1, 0, 0, 0
		endsprite

		even
