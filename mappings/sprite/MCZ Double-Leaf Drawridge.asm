; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave double leaf drawbridge
; -------------------------------------------------------------------------------

Map_DBridge:	index offset(*)
	ptr	Frame_DBridge_Closed
	ptr	Frame_DBridge_Opening1
	ptr	Frame_DBridge_Opening2
	ptr	Frame_DBridge_Opening3
	ptr	Frame_DBridge_Open

Frame_DBridge_Closed:	spritemap
	piece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$30, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$10, -8, 2, 2, 0, 0, 0, 0, 0
	piece	0, -8, 2, 2, 0, 0, 0, 0, 0
	piece	$10, -8, 2, 2, 0, 0, 0, 0, 0
	piece	$20, -8, 2, 2, 0, 0, 0, 0, 0
	piece	$30, -8, 2, 2, 0, 0, 0, 0, 0
	endsprite

Frame_DBridge_Opening1:	spritemap
	piece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$32, -2, 2, 2, 0, 0, 0, 0, 0
	piece	-$23, 4, 2, 2, 0, 0, 0, 0, 0
	piece	-$14, $A, 2, 2, 0, 0, 0, 0, 0
	piece	4, $A, 2, 2, 0, 0, 0, 0, 0
	piece	$13, 4, 2, 2, 0, 0, 0, 0, 0
	piece	$22, -2, 2, 2, 0, 0, 0, 0, 0
	piece	$30, -8, 2, 2, 0, 0, 0, 0, 0
	endsprite

Frame_DBridge_Opening2:	spritemap
	piece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$35, 3, 2, 2, 0, 0, 0, 0, 0
	piece	-$2A, $E, 2, 2, 0, 0, 0, 0, 0
	piece	-$1F, $19, 2, 2, 0, 0, 0, 0, 0
	piece	$F, $19, 2, 2, 0, 0, 0, 0, 0
	piece	$1A, $E, 2, 2, 0, 0, 0, 0, 0
	piece	$25, 3, 2, 2, 0, 0, 0, 0, 0
	piece	$30, -8, 2, 2, 0, 0, 0, 0, 0
	endsprite

Frame_DBridge_Opening3:	spritemap
	piece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$3A, 6, 2, 2, 0, 0, 0, 0, 0
	piece	-$34, $15, 2, 2, 0, 0, 0, 0, 0
	piece	-$2E, $24, 2, 2, 0, 0, 0, 0, 0
	piece	$1E, $24, 2, 2, 0, 0, 0, 0, 0
	piece	$24, $15, 2, 2, 0, 0, 0, 0, 0
	piece	$2A, 6, 2, 2, 0, 0, 0, 0, 0
	piece	$30, -8, 2, 2, 0, 0, 0, 0, 0
	endsprite

Frame_DBridge_Open:	spritemap
	piece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$40, 8, 2, 2, 0, 0, 0, 0, 0
	piece	-$40, $18, 2, 2, 0, 0, 0, 0, 0
	piece	-$40, $28, 2, 2, 0, 0, 0, 0, 0
	piece	$30, -8, 2, 2, 0, 0, 0, 0, 0
	piece	$30, 8, 2, 2, 0, 0, 0, 0, 0
	piece	$30, $18, 2, 2, 0, 0, 0, 0, 0
	piece	$30, $28, 2, 2, 0, 0, 0, 0, 0
	endsprite

	even
