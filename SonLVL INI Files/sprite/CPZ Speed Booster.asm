; ---------------------------------------------------------------------------
; Sprite mappings - Chemical Plant speed booster
; ---------------------------------------------------------------------------

Map_Bstr:	index offset(*)
		ptr	Frame_Bstr
		ptr	Frame_Bstr
		ptr	Frame_Bstr_Blank

Frame_Bstr:	spriteHeader
		spritePiece	-$18, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	8, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Frame_Bstr_Blank:	spriteHeader
		endsprite
		even
