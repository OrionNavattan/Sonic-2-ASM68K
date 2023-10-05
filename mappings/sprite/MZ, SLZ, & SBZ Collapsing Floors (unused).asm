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
		piece	-$20, -8, 4x2, 0
		piece	-$20, 8, 4x2, 0
		piece	0, -8, 4x2, 0
		piece	0, 8, 4x2, 0
		endsprite

Map_obj1F_a_002A:	spritemap
		piece	-$20, -8, 2x2, 0
		piece	-$10, -8, 2x2, 0
		piece	0, -8, 2x2, 0
		piece	$10, -8, 2x2, 0
		piece	-$20, 8, 2x2, 0
		piece	-$10, 8, 2x2, 0
		piece	0, 8, 2x2, 0
		piece	$10, 8, 2x2, 0
		endsprite

Map_obj1F_a_006C:	spritemap
		piece	-$20, -8, 4x2, 0
		piece	-$20, 8, 4x2, 8
		piece	0, -8, 4x2, 0
		piece	0, 8, 4x2, 8
		endsprite

Map_obj1F_a_008E:	spritemap
		piece	-$20, -8, 2x2, 0
		piece	-$10, -8, 2x2, 4
		piece	0, -8, 2x2, 0
		piece	$10, -8, 2x2, 4
		piece	-$20, 8, 2x2, 8
		piece	-$10, 8, 2x2, $C
		piece	0, 8, 2x2, 8
		piece	$10, 8, 2x2, $C
		endsprite

		even