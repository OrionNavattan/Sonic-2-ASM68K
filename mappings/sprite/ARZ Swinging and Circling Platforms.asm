; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin swinging and circling platforms
; -------------------------------------------------------------------------------

Map_Swing_Circle_ARZ:	index offset(*)
	ptr	Map_obj83_0008
	ptr	Map_obj83_001A
	ptr	Map_obj83_0024
	ptr	Map_obj83_0036

Map_obj83_0008:	spritemap
	piece	-$20, -8, 4, 2, $55, 0, 0, 3, 0
	piece	0, -8, 4, 2, $55, 0, 0, 3, 0
	endsprite

Map_obj83_001A:	spritemap
	piece	-8, -8, 2, 2, $51, 0, 0, 1, 0
	endsprite

Map_obj83_0024:	spritemap
	piece	-$10, -$10, 4, 3, $45, 0, 0, 2, 0
	piece	-8, -8, 2, 2, $51, 0, 0, 1, 0
	endsprite

Map_obj83_0036:	spritemap
	endsprite

	even
