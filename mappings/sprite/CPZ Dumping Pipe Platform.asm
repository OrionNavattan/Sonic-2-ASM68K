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
	piece	-$10, -$10, 4, 1, 0, 0, 0, 0, 0
	piece	-$10, -8, 4, 3, $24, 0, 0, 0, 0
		endsprite

Map_obj0B_001C:	spritemap
	piece	-$10, -$18, 4, 4, 4, 0, 0, 0, 0
	piece	-$10, -8, 4, 3, $24, 0, 0, 0, 0
		endsprite

Map_obj0B_002E:	spritemap
	piece	-$10, -$C, 4, 4, $14, 0, 0, 0, 0
	piece	-$10, -8, 4, 3, $24, 0, 0, 0, 0
		endsprite

Map_obj0B_0040:	spritemap
	piece	-$10, 0, 4, 4, 4, 0, 1, 0, 0
	piece	-$10, -8, 4, 3, $24, 0, 0, 0, 0
		endsprite

Map_obj0B_0052:	spritemap
	piece	-$10, $10, 4, 1, 0, 0, 1, 0, 0
	piece	-$10, -8, 4, 3, $24, 0, 0, 0, 0
		endsprite

	even
