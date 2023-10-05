; ---------------------------------------------------------------------------
; Sprite mappings - Chemical Plant speed booster
; ---------------------------------------------------------------------------

Map_Bstr:	index offset(*)
		ptr	Frame_Bstr
		ptr	Frame_Bstr
		ptr	Frame_Bstr_Blank

Frame_Bstr:	spritemap
		piece	-$18, -8, 2x2, 0
		piece	8, -8, 2x2, 0
		endsprite

Frame_Bstr_Blank:	spritemap
		endsprite
		even