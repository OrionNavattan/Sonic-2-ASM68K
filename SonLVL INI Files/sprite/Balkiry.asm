; -------------------------------------------------------------------------------
; Sprite mappings - Balkiry enemy (SCZ)
; -------------------------------------------------------------------------------

Map_Balkiry:	index offset(*)
		ptr	Frame_Balkiry_1
		ptr	Frame_Balkiry_2

Frame_Balkiry_1:	spriteHeader
		spritePiece	-$24, -$C, 4, 2, 0, 0, 0, 0, 1
		spritePiece	$C, -$14, 2, 1, 8, 0, 0, 0, 1
		spritePiece	-4, -$C, 4, 2, $A, 0, 0, 0, 1
		spritePiece	-4, 4, 3, 1, $12, 0, 0, 0, 1
		endsprite

Frame_Balkiry_2:	spriteHeader
		spritePiece	-$24, -$C, 4, 2, 0, 0, 0, 0, 1
		spritePiece	$C, -$14, 2, 1, 8, 0, 0, 0, 1
		spritePiece	-4, -$C, 4, 2, $A, 0, 0, 0, 1
		spritePiece	$C, 4, 3, 1, $15, 0, 0, 0, 1
		spritePiece	$1C, $C, 1, 1, $18, 0, 0, 0, 1
		endsprite

		even
