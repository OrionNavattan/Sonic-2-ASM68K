; -------------------------------------------------------------------------------
; Sprite mappings - Flasher enemy (MCZ)
; -------------------------------------------------------------------------------

Map_Flash:	index offset(*)
		ptr	Frame_Flash_Fly
		ptr	Frame_Flash_Flash1
		ptr	Frame_Flash_Flash2
		ptr	Frame_Flash_Flash3
		ptr	Frame_Flash_Flash4

Frame_Flash_Fly:	spritemap
		piece	-$10, -8, 3, 2, 0, 0, 0, 0, 0
		endsprite

Frame_Flash_Flash1:	spritemap
		piece	-8, -8, 2, 2, 6, 0, 0, 1, 0
		piece	-$10, -8, 3, 2, 0, 0, 0, 0, 0
		endsprite

Frame_Flash_Flash2:	spritemap
		piece	-8, -8, 1, 2, $A, 0, 0, 1, 0
		piece	0, -8, 1, 2, $A, 1, 0, 1, 0
		piece	-8, -8, 2, 2, 6, 0, 0, 1, 0
		piece	-$10, -8, 3, 2, 0, 0, 0, 0, 0
		endsprite

Frame_Flash_Flash3:	spritemap
		piece	-$10, -$10, 2, 2, $C, 0, 0, 1, 0
		piece	0, -$10, 2, 2, $C, 1, 0, 1, 0
		piece	-$10, 0, 2, 2, $C, 0, 1, 1, 0
		piece	0, 0, 2, 2, $C, 1, 1, 1, 0
		piece	-8, -8, 2, 2, 6, 0, 0, 1, 0
		piece	-$10, -8, 3, 2, 0, 0, 0, 0, 0
		endsprite

Frame_Flash_Flash4:	spritemap
		piece	-$10, -$10, 2, 2, $10, 0, 0, 1, 0
		piece	0, -$10, 2, 2, $10, 1, 0, 1, 0
		piece	-$10, 0, 2, 2, $10, 0, 1, 1, 0
		piece	0, 0, 2, 2, $10, 1, 1, 1, 0
		piece	-8, -8, 2, 2, 6, 0, 0, 1, 0
		piece	-$10, -8, 3, 2, 0, 0, 0, 0, 0
		endsprite

		even
