; ---------------------------------------------------------------------------
; Sprite mappings - Chemical Plant and Hidden Palace water surface
; ---------------------------------------------------------------------------

Map_Surf1:	index offset(*)
		ptr	Map_obj04_a_000C
		ptr	Map_obj04_a_0026
		ptr	Map_obj04_a_0040
		ptr	Map_obj04_a_005A
		ptr	Map_obj04_a_008C
		ptr	Map_obj04_a_00BE

Map_obj04_a_000C:	spritemap
		piece	-$60, -8, 4x2, 0
		piece	-$20, -8, 4x2, 0
		piece	$20, -8, 4x2, 0
		endsprite

Map_obj04_a_0026:	spritemap
		piece	-$60, -8, 4x2, 8
		piece	-$20, -8, 4x2, 8
		piece	$20, -8, 4x2, 8
		endsprite

Map_obj04_a_0040:	spritemap
		piece	-$60, -8, 4x2, $10
		piece	-$20, -8, 4x2, $10
		piece	$20, -8, 4x2, $10
		endsprite

Map_obj04_a_005A:	spritemap
		piece	-$60, -8, 4x2, 0
		piece	-$40, -8, 4x2, 8
		piece	-$20, -8, 4x2, 0
		piece	0, -8, 4x2, 8
		piece	$20, -8, 4x2, 0
		piece	$40, -8, 4x2, 8
		endsprite

Map_obj04_a_008C:	spritemap
		piece	-$60, -8, 4x2, 8
		piece	-$40, -8, 4x2, $10
		piece	-$20, -8, 4x2, 8
		piece	0, -8, 4x2, $10
		piece	$20, -8, 4x2, 8
		piece	$40, -8, 4x2, $10
		endsprite

Map_obj04_a_00BE:	spritemap
		piece	-$60, -8, 4x2, $10
		piece	-$40, -8, 4x2, 8
		piece	-$20, -8, 4x2, $10
		piece	0, -8, 4x2, 8
		piece	$20, -8, 4x2, $10
		piece	$40, -8, 4x2, 8
		endsprite

		even
