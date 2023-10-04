; -----------------------------------------------------------------------------
; Sprite mappings - Chop Chop
; -----------------------------------------------------------------------------

Map_Chop:	index offset(*)
		ptr	Frame_Chop_Closed
		ptr	Frame_Chop_Open

Frame_Chop_Closed:	spriteHeader
		spritePiece	-$10, -$C, 4, 3, 0, 0, 0, 0, 0
		endsprite

Frame_Chop_Open:	spriteHeader
		spritePiece	-$10, -$C, 4, 3, $C, 0, 0, 0, 0
		endsprite

		even
