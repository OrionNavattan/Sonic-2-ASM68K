; -------------------------------------------------------------------------------
; Sprite mappings - Special Stage HUD and messages
; -------------------------------------------------------------------------------

Map_SSMessages:	index offset(*)
		ptr	Map_obj5A_002C
		ptr	Map_obj5A_0036
		ptr	Map_obj5A_0040
		ptr	Map_obj5A_004A
		ptr	Map_obj5A_0054
		ptr	Map_obj5A_005E
		ptr	Map_obj5A_0068
		ptr	Map_obj5A_0072
		ptr	Map_obj5A_007C
		ptr	Map_obj5A_0086
		ptr	Map_obj5A_0090
		ptr	Map_obj5A_009A
		ptr	Map_obj5A_00A4
		ptr	Map_obj5A_00AE
		ptr	Map_obj5A_00B8
		ptr	Map_obj5A_00C2
		ptr	Map_obj5A_00CC
		ptr	Map_obj5A_00D6
		ptr	Map_obj5A_00E0
		ptr	Map_obj5A_00EA
		ptr	Map_obj5A_00F4
		ptr	Map_obj5A_0136

Map_obj5A_002C:	spritemap
		piece	-4, -8, 1x2, 4, hi
		endsprite

Map_obj5A_0036:	spritemap
		piece	-4, -8, 1x2, 2, hi
		endsprite

Map_obj5A_0040:	spritemap
		piece	-4, -8, 1x2, $14, hi
		endsprite

Map_obj5A_004A:	spritemap
		piece	-4, -8, 1x2, $10, hi
		endsprite

Map_obj5A_0054:	spritemap
		piece	-4, -8, 1x2, 8, hi
		endsprite

Map_obj5A_005E:	spritemap
		piece	-4, -8, 1x2, $C, hi
		endsprite

Map_obj5A_0068:	spritemap
		piece	-4, -8, 1x2, $12, hi
		endsprite

Map_obj5A_0072:	spritemap
		piece	-4, -8, 1x2, 0, hi
		endsprite

Map_obj5A_007C:	spritemap
		piece	-4, -8, 1x2, $6A, hi
		endsprite

Map_obj5A_0086:	spritemap
		piece	-4, -8, 1x2, $A, hi
		endsprite

Map_obj5A_0090:	spritemap
		piece	-4, -8, 1x2, $16, hi
		endsprite

Map_obj5A_009A:	spritemap
		piece	-4, -8, 1x2, 6, hi
		endsprite

Map_obj5A_00A4:	spritemap
		piece	-4, -8, 1x2, $23D, hi
		endsprite

Map_obj5A_00AE:	spritemap
		piece	-4, -8, 1x2, $23F, hi
		endsprite

Map_obj5A_00B8:	spritemap
		piece	-4, -8, 1x2, $241, hi
		endsprite

Map_obj5A_00C2:	spritemap
		piece	-4, -8, 1x2, $243, hi
		endsprite

Map_obj5A_00CC:	spritemap
		piece	-4, -8, 1x2, $245, hi
		endsprite

Map_obj5A_00D6:	spritemap
		piece	-4, -8, 1x2, $18, hi
		endsprite

Map_obj5A_00E0:	spritemap
		piece	-4, -8, 1x2, $E, hi
		endsprite

Map_obj5A_00EA:	spritemap
		piece	-8, -4, 2x1, $247, hi
		endsprite

Map_obj5A_00F4:	spritemap
		piece	-$30, -$1C, 1x4, $1A, hi
		piece	-$28, -$14, 4x4, $1E, hi
		piece	-8, -$14, 1x4, $2E, hi
		piece	-$20, $C, 4x2, $32, hi
		piece	0, -$14, 1x4, $2E, xflip, hi
		piece	0, $C, 4x2, $32, xflip, hi
		piece	8, -$14, 4x4, $1E, xflip, hi
		piece	$28, -$1C, 1x4, $1A, xflip, hi
		endsprite

Map_obj5A_0136:	spritemap
		piece	-$18, -$10, 3x4, $3A, hi
		piece	-$18, $10, 3x1, $46, hi
		piece	0, 0, 3x3, $49, hi
		piece	0, -$18, 2x3, $52, hi
		endsprite

		even