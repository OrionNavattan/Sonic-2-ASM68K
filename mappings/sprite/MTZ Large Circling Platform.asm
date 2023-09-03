; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis large circling platform
; -------------------------------------------------------------------------------

Map_CirclePlat:	index offset(*)
		ptr	Map_obj6E_0008
		ptr	Map_obj6E_0012
		ptr	Map_obj6E_002C
		ptr	Map_obj6E_007E

Map_obj6E_0008:	spritemap
		piece	-$10, -$C, 4, 3, $25, 0, 0, 0, 0
		endsprite

Map_obj6E_0012:	spritemap
		piece	-$28, -8, 4, 2, $31, 0, 0, 0, 0
		piece	-8, -8, 4, 2, $31, 0, 0, 0, 0
		piece	$18, -8, 2, 2, $31, 0, 0, 0, 0
		endsprite

Map_obj6E_002C:	spritemap
		piece	-$60, -$18, 4, 3, $39, 0, 0, 0, 0
		piece	-$40, -$18, 4, 3, $39, 1, 0, 0, 0
		piece	-$20, -$18, 4, 3, $39, 0, 0, 0, 0
		piece	0, -$18, 4, 3, $39, 1, 0, 0, 0
		piece	$20, -$18, 4, 3, $39, 0, 0, 0, 0
		piece	$40, -$18, 4, 3, $39, 1, 0, 0, 0
		piece	-$60, 0, 2, 3, $45, 0, 0, 0, 0
		piece	-$50, 0, 2, 3, $45, 1, 0, 0, 0
		piece	$40, 0, 2, 3, $45, 0, 0, 0, 0
		piece	$50, 0, 2, 3, $45, 1, 0, 0, 0
		endsprite

Map_obj6E_007E:	spritemap
		piece	-$C, -$C, 3, 3, 0, 0, 0, 0, 0
		endsprite

		even
