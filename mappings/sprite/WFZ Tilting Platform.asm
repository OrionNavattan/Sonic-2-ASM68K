; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress tilting platforms
; -------------------------------------------------------------------------------

Map_TiltPlat:	index offset(*)
		ptr	Frame_TlitPlat_Horiz
		ptr	Frame_TlitPlat_RightDown
		ptr	Frame_TlitPlat_Vert
		ptr	Frame_TlitPlat_LeftDown

Frame_TlitPlat_Horiz:	spritemap
		piece	-$18, -4, 3x1, 0
		piece	0, -4, 3x1, 0, xflip
		endsprite

Frame_TlitPlat_RightDown:	spritemap
		piece	-$10, -$14, 2x3, 3
		piece	0, -4, 2x3, 3, xflip, yflip
		endsprite

Frame_TlitPlat_Vert:	spritemap
		piece	-4, -$18, 1x3, 9
		piece	-4, 0, 1x3, 9, yflip
		endsprite

Frame_TlitPlat_LeftDown:	spritemap
		piece	0, -$14, 2x3, 3, xflip
		piece	-$10, -4, 2x3, 3, yflip
		endsprite

		even
