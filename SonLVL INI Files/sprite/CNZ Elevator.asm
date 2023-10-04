; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night large moving block
; -------------------------------------------------------------------------------

Map_Elevator:	index offset(*)
		ptr	Frame_Elevator

Frame_Elevator:	spriteHeader
		spritePiece	-$10, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -8, 2, 2, 0, 1, 0, 0, 0
		endsprite

		even
