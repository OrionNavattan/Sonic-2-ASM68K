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
		piece	-8, -8, 2x2, 0
		endsprite

Frame_Ring_Angle1:	spritemap
		piece	-8, -8, 2x2, 4
		endsprite

Frame_Ring_Edge:	spritemap
		piece	-4, -8, 1x2, 8
		endsprite

Frame_Ring_Angle2:	spritemap
		piece	-8, -8, 2x2, 4, xflip
		endsprite

Frame_Ring_Sparkle1:	spritemap
		piece	-8, -8, 2x2, $A
		endsprite

Frame_Ring_Sparkle2:	spritemap
		piece	-8, -8, 2x2, $A, xflip, yflip
		endsprite

Frame_Ring_Sparkle3:	spritemap
		piece	-8, -8, 2x2, $A, xflip
		endsprite

Frame_Ring_Sparkle4:	spritemap
		piece	-8, -8, 2x2, $A, yflip
		endsprite

Frame_Ring_Blank:	spritemap
		endsprite

		even
