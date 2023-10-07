; --------------------------------------------------------------------------
; Sprite mappings - 2P Results Score/Rings/Time display
; --------------------------------------------------------------------------

Map_2P_Results_Text:	index offset(*)
		ptr	Map_obj21_0006
		ptr	Map_obj21_0020
		ptr	Map_obj21_0042

Map_obj21_0006:	spritemap
		piece	0, -8, 4x2, 0
		piece	$28, -8, 4x2, $C
		piece	$48, -8, 3x2, $14
		endsprite

Map_obj21_0020:	spritemap
		piece	0, -8, 2x2, 8
		piece	$10, -8, 2x2, 4
		piece	$28, -8, 4x2, $C
		piece	$48, -8, 3x2, $14
		endsprite

Map_obj21_0042:	spritemap
		piece	$18, -8, 4x2, $1A
		piece	$38, -8, 2x2, $22
		endsprite

		even
