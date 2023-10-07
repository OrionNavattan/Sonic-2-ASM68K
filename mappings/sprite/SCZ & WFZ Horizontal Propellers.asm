; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress and Sky Chase Horizontal propeller
; -------------------------------------------------------------------------------

Map_HorizProp:	index offset(*)
		ptr	Frame_HorizProp1
		ptr	Frame_HorizProp2
		ptr	Frame_HorizProp3
		ptr	Frame_HorizProp4
		ptr	Frame_HorizProp5
		ptr	Frame_HorizProp6

Frame_HorizProp1:	spritemap
		piece	-$40, -4, 4x1, 0
		piece	-$20, -4, 3x1, 4
		piece	8, -4, 3x1, 7
		piece	$20, -4, 4x1, $A
		endsprite

Frame_HorizProp2:	spritemap
		piece	-$28, -4, 4x1, $E
		piece	8, -4, 4x1, $12
		endsprite

Frame_HorizProp3:	spritemap
		piece	-$18, -4, 3x1, $16
		piece	8, -4, 2x1, $19
		endsprite

Frame_HorizProp4:	spritemap
		piece	-$10, -4, 2x1, $1B
		piece	0, -4, 2x1, $1B, xflip
		endsprite

Frame_HorizProp5:	spritemap
		piece	-$18, -4, 2x1, $19, xflip
		piece	0, -4, 3x1, $16, xflip
		endsprite

Frame_HorizProp6:	spritemap
		piece	-$28, -4, 4x1, $12, xflip
		piece	8, -4, 4x1, $E, xflip
		endsprite

		even
