; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night pinball launcher (vertical)
; -------------------------------------------------------------------------------

Map_VertLauncher:	index offset(*)
		ptr	Map_obj85_a_000C
		ptr	Map_obj85_a_002E
		ptr	Map_obj85_a_0038
		ptr	Map_obj85_a_0052
		ptr	Map_obj85_a_0064
		ptr	Map_obj85_a_0064

Map_obj85_a_000C:	spritemap
		piece	-$C, -$38, 3x2, 0
		piece	-$C, -$28, 3x2, 6
		piece	-$C, -$18, 3x2, 6
		piece	-$C, -8, 3x2, $C
		endsprite

Map_obj85_a_002E:	spritemap
		piece	-$C, -$20, 3x2, 0
		endsprite

Map_obj85_a_0038:	spritemap
		piece	-$C, -$30, 3x2, 6
		piece	-$C, -$20, 3x2, 6
		piece	-$C, -$10, 3x2, $C
		endsprite

Map_obj85_a_0052:	spritemap
		piece	-$C, -$20, 3x2, 6
		piece	-$C, -$10, 3x2, $C
		endsprite

Map_obj85_a_0064:	spritemap
		piece	-$C, -$20, 3x2, 0, pal2
		endsprite

		even