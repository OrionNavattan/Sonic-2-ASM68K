; -------------------------------------------------------------------------------
; Sprite mappings - the Tornado's rocket booster
; -------------------------------------------------------------------------------

Map_TornadoBooster:	index offset(*)
		ptr	Frame_Booster1
		ptr	Frame_Booster2
		ptr	Frame_Booster3

Frame_Booster1:	spritemap
		piece	-$1C, -8, 3, 2, 0, 0, 0, 1, 0
		piece	-4, -8, 4, 2, 6, 0, 0, 1, 0
		endsprite

Frame_Booster2:	spritemap
		piece	-$1C, -8, 3, 2, 0, 0, 0, 1, 0
		piece	-4, -8, 4, 2, 6, 0, 0, 1, 0
		piece	-$3C, -8, 4, 2, $E, 0, 0, 2, 0
		endsprite

Frame_Booster3:	spritemap
		piece	-$1C, -8, 3, 2, 0, 0, 0, 1, 0
		piece	-4, -8, 4, 2, 6, 0, 0, 1, 0
		piece	-$2C, -8, 2, 2, $16, 0, 0, 2, 0
		endsprite

		even
