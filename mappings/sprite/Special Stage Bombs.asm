; -------------------------------------------------------------------------------
; Sprite mappings - Special Stage bombs
; -------------------------------------------------------------------------------

Map_BombSpec:	index offset(*)
		ptr	Map_obj61_001A
		ptr	Map_obj61_0024
		ptr	Map_obj61_002E
		ptr	Map_obj61_0038
		ptr	Map_obj61_0042
		ptr	Map_obj61_004C
		ptr	Map_obj61_0056
		ptr	Map_obj61_0060
		ptr	Map_obj61_006A
		ptr	Map_obj61_0074
		ptr	Map_obj61_007E
		ptr	Map_obj61_0088
		ptr	Map_obj61_009A

Map_obj61_001A:	spritemap
		piece	-4, -4, 1x1, 0, hi
		endsprite

Map_obj61_0024:	spritemap
		piece	-4, -4, 1x1, 1, hi
		endsprite

Map_obj61_002E:	spritemap
		piece	-8, -8, 2x2, 2, hi
		endsprite

Map_obj61_0038:	spritemap
		piece	-8, -8, 2x2, 6, hi
		endsprite

Map_obj61_0042:	spritemap
		piece	-8, -8, 2x2, $A, hi
		endsprite

Map_obj61_004C:	spritemap
		piece	-$C, -$C, 3x3, $E, hi
		endsprite

Map_obj61_0056:	spritemap
		piece	-$C, -$C, 3x3, $17, hi
		endsprite

Map_obj61_0060:	spritemap
		piece	-$10, -$10, 4x4, $20, hi
		endsprite

Map_obj61_006A:	spritemap
		piece	-$10, -$10, 4x4, $30, hi
		endsprite

Map_obj61_0074:	spritemap
		piece	-$10, -$10, 4x4, $40, hi
		endsprite

Map_obj61_007E:	spritemap
		piece	-$10, -$10, 4x4, 0, hi
		endsprite

Map_obj61_0088:	spritemap
		piece	-$18, -$18, 4x4, $10, hi
		piece	-8, -$18, 4x4, $10, hi
		endsprite

Map_obj61_009A:	spritemap
		piece	-$28, -$20, 4x4, $20, hi
		piece	-$10, -$28, 4x4, $20, yflip, hi
		piece	8, -$20, 4x4, $20, xflip, hi
		endsprite

		even
