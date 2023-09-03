; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean sliding spike obstacle
; -------------------------------------------------------------------------------

Map_RailSpikes:	index offset(*)
		ptr	Map_obj43_0002

Map_obj43_0002:	spritemap
		piece	-$18, -$20, 2, 2, 0, 0, 0, 0, 0
		piece	-8, -$28, 4, 4, 4, 0, 0, 0, 0
		piece	-$18, -8, 3, 2, $14, 0, 0, 0, 0
		piece	0, -8, 3, 2, $1A, 0, 0, 0, 0
		piece	-$18, $10, 2, 2, 0, 0, 1, 0, 0
		piece	-8, 8, 4, 4, 4, 0, 1, 0, 0
		endsprite

		even
