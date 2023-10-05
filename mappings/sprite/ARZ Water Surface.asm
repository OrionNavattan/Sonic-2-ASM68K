; ---------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin water surface
; ---------------------------------------------------------------------------

Map_Surf2:	index offset(*)
		ptr	Map_obj04_b_0008
		ptr	Map_obj04_b_0022
		ptr	Map_obj04_b_003C
		ptr	Map_obj04_b_006E

Map_obj04_b_0008:	spritemap
		piece	-$60, -4, 4x2, 0
		piece	-$20, -4, 4x2, 0
		piece	$20, -4, 4x2, 0
		endsprite

Map_obj04_b_0022:	spritemap
		piece	-$60, -4, 4x2, 8
		piece	-$20, -4, 4x2, 8
		piece	$20, -4, 4x2, 8
		endsprite

Map_obj04_b_003C:	spritemap
		piece	-$60, -4, 4x2, 0
		piece	-$40, -4, 4x2, 0
		piece	-$20, -4, 4x2, 0
		piece	0, -4, 4x2, 0
		piece	$20, -4, 4x2, 0
		piece	$40, -4, 4x2, 0
		endsprite

Map_obj04_b_006E:	spritemap
		piece	-$60, -4, 4x2, 8
		piece	-$40, -4, 4x2, 8
		piece	-$20, -4, 4x2, 8
		piece	0, -4, 4x2, 8
		piece	$20, -4, 4x2, 8
		piece	$40, -4, 4x2, 8
		endsprite

		even