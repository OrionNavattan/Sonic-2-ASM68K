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

Frame_Ring_Front:	spriteHeader
	spritePiece	-8, -8, 2, 2, 0, 0, 0, 0, 0
	spriteFooter

Frame_Ring_Angle1:	spriteHeader
	spritePiece	-8, -8, 2, 2, 4, 0, 0, 0, 0
	spriteFooter

Frame_Ring_Edge:	spriteHeader
	spritePiece	-4, -8, 1, 2, 8, 0, 0, 0, 0
	spriteFooter

Frame_Ring_Angle2:	spriteHeader
	spritePiece	-8, -8, 2, 2, 4, 1, 0, 0, 0
	spriteFooter

Frame_Ring_Sparkle1:	spriteHeader
	spritePiece	-8, -8, 2, 2, $A, 0, 0, 0, 0
	spriteFooter

Frame_Ring_Sparkle2:	spriteHeader
	spritePiece	-8, -8, 2, 2, $A, 1, 1, 0, 0
	spriteFooter

Frame_Ring_Sparkle3:	spriteHeader
	spritePiece	-8, -8, 2, 2, $A, 1, 0, 0, 0
	spriteFooter

Frame_Ring_Sparkle4:	spriteHeader
	spritePiece	-8, -8, 2, 2, $A, 0, 1, 0, 0
	spriteFooter

Frame_Ring_Blank:	spriteHeader
	spriteFooter

	even
