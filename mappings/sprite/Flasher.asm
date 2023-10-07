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
		piece	-$10, -8, 3x2, 0
		endsprite

Frame_Flash_Flash1:	spritemap
		piece	-8, -8, 2x2, 6, pal2
		piece	-$10, -8, 3x2, 0
		endsprite

Frame_Flash_Flash2:	spritemap
		piece	-8, -8, 1x2, $A, pal2
		piece	0, -8, 1x2, $A, xflip, pal2
		piece	-8, -8, 2x2, 6, pal2
		piece	-$10, -8, 3x2, 0
		endsprite

Frame_Flash_Flash3:	spritemap
		piece	-$10, -$10, 2x2, $C, pal2
		piece	0, -$10, 2x2, $C, xflip, pal2
		piece	-$10, 0, 2x2, $C, yflip, pal2
		piece	0, 0, 2x2, $C, xflip, yflip, pal2
		piece	-8, -8, 2x2, 6, pal2
		piece	-$10, -8, 3x2, 0
		endsprite

Frame_Flash_Flash4:	spritemap
		piece	-$10, -$10, 2x2, $10, pal2
		piece	0, -$10, 2x2, $10, xflip, pal2
		piece	-$10, 0, 2x2, $10, yflip, pal2
		piece	0, 0, 2x2, $10, xflip, yflip, pal2
		piece	-8, -8, 2x2, 6, pal2
		piece	-$10, -8, 3x2, 0
		endsprite

		even
