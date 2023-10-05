; -------------------------------------------------------------------------------
; Sprite mappings - Hill Top breakable rock
; -------------------------------------------------------------------------------

Map_BreakRock:	index offset(*)
		ptr	Map_obj32_a_0002

Map_obj32_a_0002:	spritemap
		piece	-$18, -$10, 2x2, 0
		piece	-8, -$10, 2x2, 4
		piece	8, -$10, 2x2, 8
		piece	-$18, 0, 2x2, $C
		piece	-8, 0, 2x2, $10
		piece	8, 0, 2x2, $10
		endsprite

		even