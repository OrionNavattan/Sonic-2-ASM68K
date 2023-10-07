; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night pinball launcher (diagonal)
; -------------------------------------------------------------------------------

Map_DiagLauncher:	index offset(*)
		ptr	Map_obj85_b_000C
		ptr	Map_obj85_b_001E
		ptr	Map_obj85_b_0028
		ptr	Map_obj85_b_0028
		ptr	Map_obj85_b_0032
		ptr	Map_obj85_b_0032

Map_obj85_b_000C:	spritemap
		piece	-$10, -$10, 4x4, 0
		piece	-$20, 0, 4x4, $10
		endsprite

Map_obj85_b_001E:	spritemap
		piece	-$10, -$10, 4x4, 0
		endsprite

Map_obj85_b_0028:	spritemap
		piece	-$20, 0, 4x4, $10
		endsprite

Map_obj85_b_0032:	spritemap
		piece	-$10, -$10, 4x4, 0, pal2
		endsprite

		even
