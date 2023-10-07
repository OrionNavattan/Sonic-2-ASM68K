; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin falling pillar
; -------------------------------------------------------------------------------

Map_FallPillar:	index offset(*)
		ptr	Map_obj23_0006
		ptr	Map_obj23_0038
		ptr	Map_obj23_0052

Map_obj23_0006:	spritemap
		piece	-$20, -$20, 2x2, $5D
		piece	$10, -$20, 2x2, $5D, xflip
		piece	-$10, -$20, 4x2, $61
		piece	-$10, -$10, 4x2, $69
		piece	-$10, 0, 4x2, $69
		piece	-$10, $10, 4x2, $71
		endsprite

Map_obj23_0038:	spritemap
		piece	-$10, -$10, 4x2, $69
		piece	-$10, 0, 4x2, $79
		piece	-$10, $10, 2x1, $81
		endsprite

Map_obj23_0052:	spritemap
		piece	-$10, 9, 4x2, $8B, pal2
		piece	-$10, -$10, 4x2, $69
		piece	-$10, 0, 4x2, $79
		piece	-$10, $10, 2x1, $81
		endsprite

		even
