; -------------------------------------------------------------------------------
; Sprite mappings - Whisp
; -------------------------------------------------------------------------------

Map_Whisp:	index offset(*)
	ptr	Frame_Whisp_WingUp
	ptr	Frame_Whisp_WingDown

Frame_Whisp_WingUp:	spritemap
	piece	-$C, -8, 3, 1, 0, 0, 0, 0, 0
	piece	-$C, 0, 3, 1, 3, 0, 0, 0, 0
	endsprite

Frame_Whisp_WingDown:	spritemap
	piece	-$C, -8, 3, 1, 6, 0, 0, 0, 0
	piece	-$C, 0, 3, 1, 3, 0, 0, 0, 0
	endsprite

	even
