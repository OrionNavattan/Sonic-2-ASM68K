; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean sliding spike obstacle
; -------------------------------------------------------------------------------

Map_RailSpikes:	index offset(*)
		ptr	Map_obj43_0002

Map_obj43_0002:	spritemap
		piece	-$18, -$20, 2x2, 0
		piece	-8, -$28, 4x4, 4
		piece	-$18, -8, 3x2, $14
		piece	0, -8, 3x2, $1A
		piece	-$18, $10, 2x2, 0, yflip
		piece	-8, 8, 4x4, 4, yflip
		endsprite

		even