; -------------------------------------------------------------------------------
; Sprite mappings - CPZ Dumping Pipe Platform
; -------------------------------------------------------------------------------

Map_obj0B:	index offset(*)
		ptr	Map_obj0B_000A
		ptr	Map_obj0B_001C
		ptr	Map_obj0B_002E
		ptr	Map_obj0B_0040
		ptr	Map_obj0B_0052

Map_obj0B_000A:	spritemap
		piece	-$10, -$10, 4x1, 0
		piece	-$10, -8, 4x3, $24
		endsprite

Map_obj0B_001C:	spritemap
		piece	-$10, -$18, 4x4, 4
		piece	-$10, -8, 4x3, $24
		endsprite

Map_obj0B_002E:	spritemap
		piece	-$10, -$C, 4x4, $14
		piece	-$10, -8, 4x3, $24
		endsprite

Map_obj0B_0040:	spritemap
		piece	-$10, 0, 4x4, 4, yflip
		piece	-$10, -8, 4x3, $24
		endsprite

Map_obj0B_0052:	spritemap
		piece	-$10, $10, 4x1, 0, yflip
		piece	-$10, -8, 4x3, $24
		endsprite

		even
