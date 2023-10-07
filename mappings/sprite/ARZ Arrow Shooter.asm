; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin arrow shooter and arrow
; -------------------------------------------------------------------------------

Map_ArrowShoot:	index offset(*)
		ptr	Map_obj22_000A
		ptr	Map_obj22_0014
		ptr	Map_obj22_0026
		ptr	Map_obj22_0040
		ptr	Map_obj22_0052

Map_obj22_000A:	spritemap
		piece	-$10, -4, 4x1, 0, pal2
		endsprite

Map_obj22_0014:	spritemap
		piece	-$10, -8, 3x2, 4, pal2
		piece	8, -8, 1x2, $B, pal2
		endsprite

Map_obj22_0026:	spritemap
		piece	-4, -4, 1x1, $A
		piece	-$10, -8, 3x2, 4, pal2
		piece	8, -8, 1x2, $B, pal2
		endsprite

Map_obj22_0040:	spritemap
		piece	-$10, -8, 3x2, 4, pal2
		piece	8, -8, 1x2, $D, pal2
		endsprite

Map_obj22_0052:	spritemap
		piece	-$10, -8, 3x2, 4, pal2
		piece	8, -8, 1x2, $F, pal2
		endsprite

		even
