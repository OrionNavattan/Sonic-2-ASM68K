; ---------------------------------------------------------------------------
; Sprite mappings - Marble, Star Light, and Scrap Brain collapsing floors
; (unused Sonic 1 leftovers)
; ---------------------------------------------------------------------------

Map_CFlo_S1:	index offset(*)
	ptr	Map_obj1F_a_0008
	ptr	Map_obj1F_a_002A
	ptr	Map_obj1F_a_006C
	ptr	Map_obj1F_a_008E

Map_obj1F_a_0008:	spritemap
	piece	-$20, -8, 4, 2, 0, 0, 0, 0, 0
	piece	-$20, 8, 4, 2, 0, 0, 0, 0, 0
	piece	0, -8, 4, 2, 0, 0, 0, 0, 0
	piece	0, 8, 4, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj1F_a_002A:	spritemap
	piece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$10, -8, 2, 2, 0, 0, 0, 0, 0
	piece	0, -8, 2, 2, 0, 0, 0, 0, 0
	piece	$10, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$20, 8, 2, 2, 0, 0, 0, 0, 0
	piece	-$10, 8, 2, 2, 0, 0, 0, 0, 0
	piece	0, 8, 2, 2, 0, 0, 0, 0, 0
	piece	$10, 8, 2, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj1F_a_006C:	spritemap
	piece	-$20, -8, 4, 2, 0, 0, 0, 0, 0
	piece	-$20, 8, 4, 2, 8, 0, 0, 0, 0
	piece	0, -8, 4, 2, 0, 0, 0, 0, 0
	piece	0, 8, 4, 2, 8, 0, 0, 0, 0
	endsprite

Map_obj1F_a_008E:	spritemap
	piece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$10, -8, 2, 2, 4, 0, 0, 0, 0
	piece	0, -8, 2, 2, 0, 0, 0, 0, 0
	piece	$10, -8, 2, 2, 4, 0, 0, 0, 0
	piece	-$20, 8, 2, 2, 8, 0, 0, 0, 0
	piece	-$10, 8, 2, 2, $C, 0, 0, 0, 0
	piece	0, 8, 2, 2, 8, 0, 0, 0, 0
	piece	$10, 8, 2, 2, $C, 0, 0, 0, 0
	endsprite

	even
