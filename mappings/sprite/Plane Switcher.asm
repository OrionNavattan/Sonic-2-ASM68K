; -------------------------------------------------------------------------------
; Sprite mappings - Collision plane switcher
; -------------------------------------------------------------------------------

Map_PSwitch:	index offset(*)
		ptr	Frame_Pswtch_X_64
		ptr	Frame_Pswtch_X_128
		ptr	Frame_Pswtch_X_256_512
		ptr	Frame_Pswtch_X_256_512
		ptr	Frame_Pswtch_Y_64
		ptr	Frame_Pswtch_Y_128
		ptr	Frame_Pswtch_Y_256_512
		ptr	Frame_Pswtch_Y_256_512

Frame_Pswtch_X_64:	spritemap
		piece	-8, -$20, 2x2, 0
		piece	-8, -$10, 2x2, 0
		piece	-8, 0, 2x2, 0
		piece	-8, $10, 2x2, 0
		endsprite

Frame_Pswtch_X_128:	spritemap
		piece	-8, -$40, 2x2, 0
		piece	-8, -$20, 2x2, 0
		piece	-8, 0, 2x2, 0
		piece	-8, $30, 2x2, 0
		endsprite

Frame_Pswtch_X_256_512:	spritemap
		piece	-8, -$80, 2x2, 0
		piece	-8, -$20, 2x2, 0
		piece	-8, 0, 2x2, 0
		piece	-8, $70, 2x2, 0
		endsprite

Frame_Pswtch_Y_64:	spritemap
		piece	-$20, -8, 2x2, 0
		piece	-$10, -8, 2x2, 0
		piece	0, -8, 2x2, 0
		piece	$10, -8, 2x2, 0
		endsprite

Frame_Pswtch_Y_128:	spritemap
		piece	-$40, -8, 2x2, 0
		piece	-$20, -8, 2x2, 0
		piece	0, -8, 2x2, 0
		piece	$30, -8, 2x2, 0
		endsprite

Frame_Pswtch_Y_256_512:	spritemap
		piece	-$80, -8, 2x2, 0
		piece	-$20, -8, 2x2, 0
		piece	0, -8, 2x2, 0
		piece	$70, -8, 2x2, 0
		endsprite

		even
