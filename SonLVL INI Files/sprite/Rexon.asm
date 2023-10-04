; -----------------------------------------------------------------------------
; Sprite mappings - Rexon enemy (HTZ)
; -----------------------------------------------------------------------------

Map_Rex:	index offset(*)
		ptr	Frame_Rexon_Head
		ptr	Frame_Rexon_Neck
		ptr	Frame_Rexon_Body
		ptr	Frame_Rexon_Proj

Frame_Rexon_Head:	spriteHeader
		spritePiece	-$14, -6, 3, 2, 0, 0, 0, 0, 0
		endsprite

Frame_Rexon_Neck:	spriteHeader
		spritePiece	-8, -8, 2, 2, 6, 0, 0, 0, 0
		endsprite

Frame_Rexon_Body:	spriteHeader
		spritePiece	-$10, -8, 4, 2, $A, 0, 0, 0, 0
		endsprite

Frame_Rexon_Proj:	spriteHeader
		spritePiece	-4, -4, 1, 1, $12, 0, 0, 0, 0
		endsprite

		even
