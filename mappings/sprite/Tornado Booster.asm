; -------------------------------------------------------------------------------
; Sprite mappings - the Tornado's rocket booster
; -------------------------------------------------------------------------------

Map_TornadoBooster:	index offset(*)
		ptr	Frame_Booster1
		ptr	Frame_Booster2
		ptr	Frame_Booster3

Frame_Booster1:	spritemap
		piece	-$1C, -8, 3x2, 0, pal2
		piece	-4, -8, 4x2, 6, pal2
		endsprite

Frame_Booster2:	spritemap
		piece	-$1C, -8, 3x2, 0, pal2
		piece	-4, -8, 4x2, 6, pal2
		piece	-$3C, -8, 4x2, $E, pal3
		endsprite

Frame_Booster3:	spritemap
		piece	-$1C, -8, 3x2, 0, pal2
		piece	-4, -8, 4x2, 6, pal2
		piece	-$2C, -8, 2x2, $16, pal3
		endsprite

		even