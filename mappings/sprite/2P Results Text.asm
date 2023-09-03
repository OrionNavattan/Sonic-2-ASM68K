; --------------------------------------------------------------------------
; Sprite mappings - 2P Results Score/Rings/Time display
; --------------------------------------------------------------------------

Map_2P_Results_Text:	index offset(*)
		ptr	Map_obj21_0006
		ptr	Map_obj21_0020
		ptr	Map_obj21_0042

Map_obj21_0006:	spritemap
		piece	0, -8, 4, 2, 0, 0, 0, 0, 0
		piece	$28, -8, 4, 2, $C, 0, 0, 0, 0
		piece	$48, -8, 3, 2, $14, 0, 0, 0, 0
		endsprite

Map_obj21_0020:	spritemap
		piece	0, -8, 2, 2, 8, 0, 0, 0, 0
		piece	$10, -8, 2, 2, 4, 0, 0, 0, 0
		piece	$28, -8, 4, 2, $C, 0, 0, 0, 0
		piece	$48, -8, 3, 2, $14, 0, 0, 0, 0
		endsprite

Map_obj21_0042:	spritemap
		piece	$18, -8, 4, 2, $1A, 0, 0, 0, 0
		piece	$38, -8, 2, 2, $22, 0, 0, 0, 0
		endsprite

		even
