; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin swinging and circling platforms
; -------------------------------------------------------------------------------

Map_ARZPlats:	index offset(*)
		ptr	Map_obj83_0008
		ptr	Map_obj83_001A
		ptr	Map_obj83_0024
		ptr	Map_obj83_0036

Map_obj83_0008:	spritemap
		piece	-$20, -8, 4x2, $55, pal4
		piece	0, -8, 4x2, $55, pal4
		endsprite

Map_obj83_001A:	spritemap
		piece	-8, -8, 2x2, $51, pal2
		endsprite

Map_obj83_0024:	spritemap
		piece	-$10, -$10, 4x3, $45, pal3
		piece	-8, -8, 2x2, $51, pal2
		endsprite

Map_obj83_0036:	spritemap
		endsprite

		even
