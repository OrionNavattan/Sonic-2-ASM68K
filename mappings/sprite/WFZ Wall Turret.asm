; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress wall turret
; -------------------------------------------------------------------------------

Map_WallTurr:	index offset(*)
		ptr	Map_objB8_000A
		ptr	Map_objB8_002C
		ptr	Map_objB8_0046
		ptr	Map_objB8_0060
		ptr	Map_objB8_006A

Map_objB8_000A:	spritemap
		piece	-$10, -$10, 2x4, 0, pal4, hi
		piece	0, -$10, 2x4, 8, pal4, hi
		piece	-8, $E, 1x1, $10, pal4, hi
		piece	0, $E, 1x1, $11, pal4, hi
		endsprite

Map_objB8_002C:	spritemap
		piece	-$10, -$10, 2x4, 0, pal4, hi
		piece	0, -$10, 2x4, 8, pal4, hi
		piece	-$15, 4, 2x2, $12, pal4, hi
		endsprite

Map_objB8_0046:	spritemap
		piece	-$10, -$10, 2x4, 0, pal4, hi
		piece	0, -$10, 2x4, 8, pal4, hi
		piece	5, 4, 2x2, $12, xflip, pal4, hi
		endsprite

Map_objB8_0060:	spritemap
		piece	-4, -4, 1x1, $16, hi
		endsprite

Map_objB8_006A:	spritemap
		piece	-4, -4, 1x1, $17, hi
		endsprite

		even
