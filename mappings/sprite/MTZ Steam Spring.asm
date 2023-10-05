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
		spritePiece	-$18, -1, 1, 1, 0, 0, 0, 0, 0
		endsprite

Map_obj42_001A:	spritemap
		spritePiece	-$18, -1, 2, 1, 1, 0, 0, 0, 0
		endsprite

Map_obj42_0024:	spritemap
		spritePiece	-$14, -4, 2, 2, 3, 0, 0, 0, 0
		endsprite

Map_obj42_002E:	spritemap
		spritePiece	-8, -4, 2, 2, 7, 0, 0, 0, 0
		spritePiece	-$10, -4, 2, 2, 3, 0, 0, 0, 0
		endsprite

Map_obj42_0040:	spritemap
		spritePiece	0, -4, 2, 2, 7, 0, 1, 0, 0
		spritePiece	-8, -4, 1, 2, $B, 0, 1, 0, 0
		endsprite

Map_obj42_0052:	spritemap
		spritePiece	$C, -4, 1, 2, $D, 0, 0, 0, 0
		spritePiece	4, -4, 1, 2, $B, 0, 0, 0, 0
		spritePiece	-4, -4, 1, 2, $D, 1, 1, 0, 0
		endsprite

Map_obj42_006C:	spritemap
		spritePiece	$10, -4, 1, 2, $D, 0, 0, 0, 0
		spritePiece	8, -4, 1, 2, $D, 1, 1, 0, 0
		endsprite

Map_obj42_007E:	spritemap
		spritePiece	-$10, -$10, 2, 4, $15, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 4, $1D, 0, 0, 0, 0
		endsprite

		even
