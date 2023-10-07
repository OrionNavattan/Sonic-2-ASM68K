; -------------------------------------------------------------------------------
; Sprite mappings - Emerald Hill and Hill Top stationary platforms
; -------------------------------------------------------------------------------

Map_Plat_EHZ_HTZ:	index offset(*)
		ptr	Map_obj18_a_0004
		ptr	Map_obj18_a_0016

Map_obj18_a_0004:	spritemap
		piece	-$20, -$C, 4x4, $56
		piece	0, -$C, 4x4, $56, xflip
		endsprite

Map_obj18_a_0016:	spritemap
		piece	-$20, -$34, 2x4, $A
		piece	-$10, -$34, 4x2, $12
		piece	-$10, -$24, 4x2, $1A
		piece	$10, -$34, 2x4, $22
		piece	-$20, -$14, 4x4, $2A
		piece	0, -$14, 4x4, $2A, xflip
		piece	-$20, $C, 4x4, $3A
		piece	0, $C, 4x4, $3A, xflip
		endsprite

		even
