; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress and Sky Chase Horizontal propeller
; -------------------------------------------------------------------------------

Map_HorizProp:	index offset(*)
		ptr	Frame_HorizProp1
		ptr	Frame_HorizProp2
		ptr	Frame_HorizProp3
		ptr	Frame_HorizProp4
		ptr	Frame_HorizProp5
		ptr	Frame_HorizProp6

Frame_HorizProp1:	spriteHeader
		spritePiece	-$40, -4, 4, 1, 0, 0, 0, 0, 0
		spritePiece	-$20, -4, 3, 1, 4, 0, 0, 0, 0
		spritePiece	8, -4, 3, 1, 7, 0, 0, 0, 0
		spritePiece	$20, -4, 4, 1, $A, 0, 0, 0, 0
		endsprite

Frame_HorizProp2:	spriteHeader
		spritePiece	-$28, -4, 4, 1, $E, 0, 0, 0, 0
		spritePiece	8, -4, 4, 1, $12, 0, 0, 0, 0
		endsprite

Frame_HorizProp3:	spriteHeader
		spritePiece	-$18, -4, 3, 1, $16, 0, 0, 0, 0
		spritePiece	8, -4, 2, 1, $19, 0, 0, 0, 0
		endsprite

Frame_HorizProp4:	spriteHeader
		spritePiece	-$10, -4, 2, 1, $1B, 0, 0, 0, 0
		spritePiece	0, -4, 2, 1, $1B, 1, 0, 0, 0
		endsprite

Frame_HorizProp5:	spriteHeader
		spritePiece	-$18, -4, 2, 1, $19, 1, 0, 0, 0
		spritePiece	0, -4, 3, 1, $16, 1, 0, 0, 0
		endsprite

Frame_HorizProp6:	spriteHeader
		spritePiece	-$28, -4, 4, 1, $12, 1, 0, 0, 0
		spritePiece	8, -4, 4, 1, $E, 1, 0, 0, 0
		endsprite

		even
