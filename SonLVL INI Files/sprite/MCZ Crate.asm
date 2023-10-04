; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave crate
; -------------------------------------------------------------------------------

Map_Crate:	index offset(*)
		ptr	Frame_Crate

Frame_Crate:	spriteHeader
		spritePiece	-$20, -$20, 4, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$20, 4, 4, $10, 0, 0, 0, 0
		spritePiece	-$20, 0, 4, 4, $10, 1, 1, 0, 0
		spritePiece	0, 0, 4, 4, 0, 1, 1, 0, 0
		endsprite

		even
