; ---------------------------------------------------------------------------
; Sprite mappings - rings (debug mode and CNZ prize rings)
; Rings in level layout use Map_Rings instead
; ---------------------------------------------------------------------------

Map_Ring:	index offset(*)
		ptr	Frame_Ring_Front
		ptr	Frame_Ring_Angle1
		ptr	Frame_Ring_Edge
		ptr	Frame_Ring_Angle2
		ptr	Frame_Ring_Sparkle1
		ptr	Frame_Ring_Sparkle2
		ptr	Frame_Ring_Sparkle3
		ptr	Frame_Ring_Sparkle4
		ptr	Frame_Ring_Blank

Frame_Ring_Front:	spritemap
		spritePiece	-8, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Frame_Ring_Angle1:	spritemap
		spritePiece	-8, -8, 2, 2, 4, 0, 0, 0, 0
		endsprite

Frame_Ring_Edge:	spritemap
		spritePiece	-4, -8, 1, 2, 8, 0, 0, 0, 0
		endsprite

Frame_Ring_Angle2:	spritemap
		spritePiece	-8, -8, 2, 2, 4, 1, 0, 0, 0
		endsprite

Frame_Ring_Sparkle1:	spritemap
		spritePiece	-8, -8, 2, 2, $A, 0, 0, 0, 0
		endsprite

Frame_Ring_Sparkle2:	spritemap
		spritePiece	-8, -8, 2, 2, $A, 1, 1, 0, 0
		endsprite

Frame_Ring_Sparkle3:	spritemap
		spritePiece	-8, -8, 2, 2, $A, 1, 0, 0, 0
		endsprite

Frame_Ring_Sparkle4:	spritemap
		spritePiece	-8, -8, 2, 2, $A, 0, 1, 0, 0
		endsprite

Frame_Ring_Blank:	spritemap
		endsprite

		even
