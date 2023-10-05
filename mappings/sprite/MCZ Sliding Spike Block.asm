; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave sliding spike block
; -------------------------------------------------------------------------------

Map_SlidSpks:	index offset(*)
		ptr	Frame_SlidSpks

Frame_SlidSpks:	spritemap
		piece	-$40, -$10, 2x2, $42C, pal2
		piece	-$40, 0, 2x2, $42C, pal2
		piece	-$30, -$10, 2x4, $40, pal4
		piece	-$20, -$10, 4x4, $48, pal4
		piece	0, -$10, 4x4, $48, pal4
		piece	$20, -$10, 4x4, $48, pal4
		endsprite

		even