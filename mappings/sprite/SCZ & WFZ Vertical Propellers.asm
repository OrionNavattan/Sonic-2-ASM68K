; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress vertical propeller
; -------------------------------------------------------------------------------

Map_VertProp:	index offset(*)
		ptr	Frame_VertProp1				; 1
		ptr	Frame_VertProp2				; 2
		ptr	Frame_VertProp3				; 3

Frame_VertProp1:	spritemap
		spritePiece	-4, -$40, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, -$20, 1, 4, 0, 0, 1, 0, 0
		endsprite

Frame_VertProp2:	spritemap
		spritePiece	-4, -$20, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, 0, 1, 4, 0, 0, 1, 0, 0
		endsprite

Frame_VertProp3:	spritemap
		spritePiece	-4, 0, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, $20, 1, 4, 0, 0, 1, 0, 0
		endsprite

		even
