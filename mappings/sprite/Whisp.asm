; -------------------------------------------------------------------------------
; Sprite mappings - Whisp
; -------------------------------------------------------------------------------

Map_Whisp:	index offset(*)
		ptr	Frame_Whisp_WingUp
		ptr	Frame_Whisp_WingDown

Frame_Whisp_WingUp:	spritemap
		piece	-$C, -8, 3x1, 0
		piece	-$C, 0, 3x1, 3
		endsprite

Frame_Whisp_WingDown:	spritemap
		piece	-$C, -8, 3x1, 6
		piece	-$C, 0, 3x1, 3
		endsprite

		even