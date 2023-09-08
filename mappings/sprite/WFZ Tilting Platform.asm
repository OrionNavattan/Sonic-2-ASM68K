; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress tilting platforms
; -------------------------------------------------------------------------------

Map_TiltPlat:	index offset(*)
		ptr	Frame_TlitPlat_Horiz
		ptr	Frame_TlitPlat_RightDown
		ptr	Frame_TlitPlat_Vert
		ptr	Frame_TlitPlat_LeftDown

Frame_TlitPlat_Horiz:	spritemap
		piece	-$18, -4, 3, 1, 0, 0, 0, 0, 0
		piece	0, -4, 3, 1, 0, 1, 0, 0, 0
		endsprite

Frame_TlitPlat_RightDown:	spritemap
		piece	-$10, -$14, 2, 3, 3, 0, 0, 0, 0
		piece	0, -4, 2, 3, 3, 1, 1, 0, 0
		endsprite

Frame_TlitPlat_Vert:	spritemap
		piece	-4, -$18, 1, 3, 9, 0, 0, 0, 0
		piece	-4, 0, 1, 3, 9, 0, 1, 0, 0
		endsprite

Frame_TlitPlat_LeftDown:	spritemap
		piece	0, -$14, 2, 3, 3, 1, 0, 0, 0
		piece	-$10, -4, 2, 3, 3, 0, 1, 0, 0
		endsprite

		even
