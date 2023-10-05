; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis steam spring
; -------------------------------------------------------------------------------

Map_SteamSpring:	index offset(*)
		ptr	Map_obj42_0010
		ptr	Map_obj42_001A
		ptr	Map_obj42_0024
		ptr	Map_obj42_002E
		ptr	Map_obj42_0040
		ptr	Map_obj42_0052
		ptr	Map_obj42_006C
		ptr	Map_obj42_007E

Map_obj42_0010:	spritemap
		piece	-$18, -1, 1x1, 0
		endsprite

Map_obj42_001A:	spritemap
		piece	-$18, -1, 2x1, 1
		endsprite

Map_obj42_0024:	spritemap
		piece	-$14, -4, 2x2, 3
		endsprite

Map_obj42_002E:	spritemap
		piece	-8, -4, 2x2, 7
		piece	-$10, -4, 2x2, 3
		endsprite

Map_obj42_0040:	spritemap
		piece	0, -4, 2x2, 7, yflip
		piece	-8, -4, 1x2, $B, yflip
		endsprite

Map_obj42_0052:	spritemap
		piece	$C, -4, 1x2, $D
		piece	4, -4, 1x2, $B
		piece	-4, -4, 1x2, $D, xflip, yflip
		endsprite

Map_obj42_006C:	spritemap
		piece	$10, -4, 1x2, $D
		piece	8, -4, 1x2, $D, xflip, yflip
		endsprite

Map_obj42_007E:	spritemap
		piece	-$10, -$10, 2x4, $15
		piece	0, -$10, 2x4, $1D
		endsprite

		even