; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis large circling platform
; -------------------------------------------------------------------------------

Map_CirclePlat:	index offset(*)
		ptr	Map_obj6E_0008
		ptr	Map_obj6E_0012
		ptr	Map_obj6E_002C
		ptr	Map_obj6E_007E

Map_obj6E_0008:	spritemap
		piece	-$10, -$C, 4x3, $25
		endsprite

Map_obj6E_0012:	spritemap
		piece	-$28, -8, 4x2, $31
		piece	-8, -8, 4x2, $31
		piece	$18, -8, 2x2, $31
		endsprite

Map_obj6E_002C:	spritemap
		piece	-$60, -$18, 4x3, $39
		piece	-$40, -$18, 4x3, $39, xflip
		piece	-$20, -$18, 4x3, $39
		piece	0, -$18, 4x3, $39, xflip
		piece	$20, -$18, 4x3, $39
		piece	$40, -$18, 4x3, $39, xflip
		piece	-$60, 0, 2x3, $45
		piece	-$50, 0, 2x3, $45, xflip
		piece	$40, 0, 2x3, $45
		piece	$50, 0, 2x3, $45, xflip
		endsprite

Map_obj6E_007E:	spritemap
		piece	-$C, -$C, 3x3, 0
		endsprite

		even
