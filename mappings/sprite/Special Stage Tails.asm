; -------------------------------------------------------------------------------
; Sprite mappings - Special Stage Sonic
; -------------------------------------------------------------------------------

Map_TSS:	index offset(*)
		ptr	Map_obj10_0024
		ptr	Map_obj10_003E
		ptr	Map_obj10_0060
		ptr	Map_obj10_0082
		ptr	Map_obj10_00AC
		ptr	Map_obj10_00C6
		ptr	Map_obj10_00E8
		ptr	Map_obj10_0112
		ptr	Map_obj10_0134
		ptr	Map_obj10_0156
		ptr	Map_obj10_0180
		ptr	Map_obj10_01AA
		ptr	Map_obj10_01CC
		ptr	Map_obj10_01DE
		ptr	Map_obj10_01F8
		ptr	Map_obj10_020A
		ptr	Map_obj10_0224
		ptr	Map_obj10_0236

Map_obj10_0024:	spritemap
		piece	-$C, -$18, 3x3, 0, hi
		piece	-$C, 0, 3x2, 9, hi
		piece	-$C, $10, 1x1, $F, hi
		endsprite

Map_obj10_003E:	spritemap
		piece	-$10, -$18, 4x1, 0, hi
		piece	-$D, -$10, 3x2, 4, hi
		piece	-$10, 0, 4x1, $A, hi
		piece	-8, 8, 2x2, $E, hi
		endsprite

Map_obj10_0060:	spritemap
		piece	-$10, -$18, 4x1, 0, hi
		piece	-$D, -$10, 3x2, 4, hi
		piece	-$10, 0, 4x1, $A, hi
		piece	-8, 8, 2x2, $E, hi
		endsprite

Map_obj10_0082:	spritemap
		piece	-$10, -$18, 4x1, 0, xflip, hi
		piece	-$B, -$10, 3x2, 4, xflip, hi
		piece	-$10, 0, 4x1, $A, hi
		piece	-8, 8, 2x2, $E, hi
		piece	8, $10, 1x1, $12, hi
		endsprite

Map_obj10_00AC:	spritemap
		piece	0, -$1F, 2x2, 0, hi
		piece	-8, -$F, 4x2, 4, hi
		piece	-$14, 1, 4x2, $C, hi
		endsprite

Map_obj10_00C6:	spritemap
		piece	0, -$1F, 1x2, 0, hi
		piece	-9, -$F, 4x2, 2, hi
		piece	-$11, 1, 3x3, $A, hi
		piece	7, 1, 1x2, $13, hi
		endsprite

Map_obj10_00E8:	spritemap
		piece	0, -$18, 1x1, 0, hi
		piece	-8, -$14, 3x1, 1, hi
		piece	-$10, -$C, 4x2, 4, hi
		piece	$10, -$C, 1x1, $C, hi
		piece	-$10, 4, 3x2, $D, hi
		endsprite

Map_obj10_0112:	spritemap
		piece	1, -$17, 1x1, 0, hi
		piece	-$10, -$F, 4x4, 1, hi
		piece	$10, -7, 1x1, $11, hi
		piece	-$10, $11, 2x1, $12, hi
		endsprite

Map_obj10_0134:	spritemap
		piece	0, -$1E, 2x2, 0, hi
		piece	-8, -$E, 4x1, 4, hi
		piece	-$10, -6, 2x4, 8, hi
		piece	0, -6, 3x2, $10, hi
		endsprite

Map_obj10_0156:	spritemap
		piece	0, -$18, 1x1, 0, hi
		piece	-$10, -$10, 4x2, 1, hi
		piece	$10, -8, 1x1, 9, hi
		piece	-$10, 0, 4x2, $A, hi
		piece	-$10, $10, 2x1, $12, hi
		endsprite

Map_obj10_0180:	spritemap
		piece	0, -$18, 1x1, 0, hi
		piece	-$10, -$10, 4x3, 1, hi
		piece	$10, -8, 1x1, $D, hi
		piece	-$18, 8, 4x1, $E, hi
		piece	-$10, $10, 2x1, $12, hi
		endsprite

Map_obj10_01AA:	spritemap
		piece	0, -$18, 1x1, 0, hi
		piece	-$10, -$10, 4x3, 1, hi
		piece	$10, -8, 1x1, $D, hi
		piece	-$18, 8, 4x2, $E, hi
		endsprite

Map_obj10_01CC:	spritemap
		piece	-$14, -8, 3x3, 0, hi
		piece	4, -$10, 2x4, 9, hi
		endsprite

Map_obj10_01DE:	spritemap
		piece	-$14, -8, 2x2, 0, hi
		piece	-$C, 8, 1x1, 4, hi
		piece	-4, -$10, 3x4, 5, hi
		endsprite

Map_obj10_01F8:	spritemap
		piece	-$14, -9, 1x2, 0, hi
		piece	-$C, -$10, 4x4, 2, hi
		endsprite

Map_obj10_020A:	spritemap
		piece	-$14, -8, 1x3, 0, hi
		piece	-$C, -$10, 1x3, 3, hi
		piece	-4, -$10, 3x4, 6, hi
		endsprite

Map_obj10_0224:	spritemap
		piece	-$10, -$10, 2x4, 0, hi
		piece	0, -$10, 2x4, 0, xflip, hi
		endsprite

Map_obj10_0236:	spritemap
		piece	-$10, -$10, 2x4, 0, hi
		piece	0, -$10, 2x4, 0, xflip, hi
		endsprite

		even