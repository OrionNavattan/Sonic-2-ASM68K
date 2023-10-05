; -------------------------------------------------------------------------------
; Sprite mappings - smoke made by HTZ boss upon defeat
; -------------------------------------------------------------------------------

Map_BHTZ_Smoke:	index offset(*)
		ptr	Map_obj52_a_0008
		ptr	Map_obj52_a_0012
		ptr	Map_obj52_a_001C
		ptr	Map_obj52_a_0026

Map_obj52_a_0008:	spritemap
		piece	-8, -8, 2x2, 0, pal2
		endsprite

Map_obj52_a_0012:	spritemap
		piece	-8, -8, 2x2, 4, pal2
		endsprite

Map_obj52_a_001C:	spritemap
		piece	-8, -8, 2x2, 8, pal2
		endsprite

Map_obj52_a_0026:	spritemap
		piece	-8, -8, 2x2, $C, pal2
		endsprite

		even
; -------------------------------------------------------------------------------
; Sprite mappings - HTZ Eggman and Eggpod
; -------------------------------------------------------------------------------

include_HTZEggpod_Maps: macro

Map_BHTZ_Eggpod:	index offset(*)
		ptr	Map_BHTZ_Eggpod
		ptr	Map_obj52_b_0022
		ptr	Map_obj52_b_0064
		ptr	Map_obj52_b_006E
		ptr	Map_obj52_b_0078
		ptr	Map_obj52_b_0082
		ptr	Map_obj52_b_0094
		ptr	Map_obj52_b_00A6
		ptr	Map_obj52_b_00C0
		ptr	Map_obj52_b_00DA
		ptr	Map_obj52_b_00F4
		ptr	Map_obj52_b_0106
		ptr	Map_obj52_b_0110
		ptr	Map_obj52_b_011A
		ptr	Map_obj52_b_0124
		ptr	Map_obj52_b_012E
		ptr	Map_obj52_b_0138

Map_obj52_b_0022:	spritemap
		piece	-$20, 4, 2x2, 0, pal2
		piece	-$20, $14, 2x2, 4, pal2
		piece	-$10, 4, 4x4, 8, pal2
		piece	$10, 4, 2x4, $18, pal2
		piece	-$20, -$C, 4x2, $60
		piece	0, -$C, 4x2, $68
		piece	-$18, -$24, 3x3, $70, pal2
		piece	0, -$24, 2x3, $79, pal2
		endsprite

Map_obj52_b_0064:	spritemap
		piece	-$28, -$21, 2x1, $83
		endsprite

Map_obj52_b_006E:	spritemap
		piece	-$28, -$21, 2x1, $85
		endsprite

Map_obj52_b_0078:	spritemap
		piece	-$30, -$21, 3x1, $87
		endsprite

Map_obj52_b_0082:	spritemap
		piece	-$40, -$21, 4x1, $8A
		piece	-$20, -$21, 1x1, $8E
		endsprite

Map_obj52_b_0094:	spritemap
		piece	-$50, -$21, 4x1, $8F
		piece	-$30, -$21, 3x1, $93
		endsprite

Map_obj52_b_00A6:	spritemap
		piece	-$60, -$21, 4x1, $96
		piece	-$40, -$21, 4x1, $9A
		piece	-$20, -$21, 1x1, $9E
		endsprite

Map_obj52_b_00C0:	spritemap
		piece	-$70, -$21, 4x1, $9F
		piece	-$50, -$21, 4x1, $A3
		piece	-$30, -$21, 3x1, $A7
		endsprite

Map_obj52_b_00DA:	spritemap
		piece	-$78, -$21, 4x1, $AA
		piece	-$58, -$21, 4x1, $AE
		piece	-$38, -$21, 3x1, $B2
		endsprite

Map_obj52_b_00F4:	spritemap
		piece	-$78, -$21, 4x1, $B5
		piece	-$58, -$21, 4x1, $B9
		endsprite

Map_obj52_b_0106:	spritemap
		piece	-$78, -$21, 4x1, $BD
		endsprite

Map_obj52_b_0110:	spritemap
		piece	-4, -4, 1x1, $61
		endsprite

Map_obj52_b_011A:	spritemap
		piece	-4, -4, 1x1, $62
		endsprite

Map_obj52_b_0124:	spritemap
		piece	-8, -8, 2x2, $63
		endsprite

Map_obj52_b_012E:	spritemap
		piece	-8, -8, 2x2, $67
		endsprite

Map_obj52_b_0138:	spritemap
		piece	-$20, 4, 2x2, 0, pal2
		piece	-$20, $14, 2x2, 4, pal2
		piece	-$10, 4, 4x4, 8, pal2
		piece	$10, 4, 2x4, $18, pal2
		piece	-$20, -$C, 4x2, $60
		piece	0, -$C, 4x2, $68
		piece	-$10, -$14, 4x1, $7F, pal2
		endsprite

		even
		endm
