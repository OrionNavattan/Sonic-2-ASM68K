; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis teleporter flash
; -------------------------------------------------------------------------------

Map_TelptrFlash:	index offset(*)
	ptr	Frame_TelptrFlash_Blank
	ptr	Frame_TelptrFlash_Flash

Frame_TelptrFlash_Blank:	spritemap
	endsprite

Frame_TelptrFlash_Flash:	spritemap
	piece	-$14, -$20, 2, 2, 0, 0, 0, 0, 0
	piece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
	piece	-$14, -$10, 2, 2, 0, 0, 0, 0, 0
	piece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
	piece	-$14, 0, 2, 2, 0, 0, 0, 0, 0
	piece	-8, 0, 2, 2, 0, 0, 0, 0, 0
	endsprite

	even
