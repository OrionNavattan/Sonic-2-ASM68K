; -------------------------------------------------------------------------------
; Sprite mappings - smoke made by HTZ boss upon defeat
; -------------------------------------------------------------------------------

Map_BHTZ_Smoke:	index offset(*)
	ptr	Map_obj52_a_0008
	ptr	Map_obj52_a_0012
	ptr	Map_obj52_a_001C
	ptr	Map_obj52_a_0026

Map_obj52_a_0008:	spritemap
	piece	-8, -8, 2, 2, 0, 0, 0, 1, 0
	endsprite

Map_obj52_a_0012:	spritemap
	piece	-8, -8, 2, 2, 4, 0, 0, 1, 0
	endsprite

Map_obj52_a_001C:	spritemap
	piece	-8, -8, 2, 2, 8, 0, 0, 1, 0
	endsprite

Map_obj52_a_0026:	spritemap
	piece	-8, -8, 2, 2, $C, 0, 0, 1, 0
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
	piece	-$20, 4, 2, 2, 0, 0, 0, 1, 0
	piece	-$20, $14, 2, 2, 4, 0, 0, 1, 0
	piece	-$10, 4, 4, 4, 8, 0, 0, 1, 0
	piece	$10, 4, 2, 4, $18, 0, 0, 1, 0
	piece	-$20, -$C, 4, 2, $60, 0, 0, 0, 0
	piece	0, -$C, 4, 2, $68, 0, 0, 0, 0
	piece	-$18, -$24, 3, 3, $70, 0, 0, 1, 0
	piece	0, -$24, 2, 3, $79, 0, 0, 1, 0
	endsprite

Map_obj52_b_0064:	spritemap
	piece	-$28, -$21, 2, 1, $83, 0, 0, 0, 0
	endsprite

Map_obj52_b_006E:	spritemap
	piece	-$28, -$21, 2, 1, $85, 0, 0, 0, 0
	endsprite

Map_obj52_b_0078:	spritemap
	piece	-$30, -$21, 3, 1, $87, 0, 0, 0, 0
	endsprite

Map_obj52_b_0082:	spritemap
	piece	-$40, -$21, 4, 1, $8A, 0, 0, 0, 0
	piece	-$20, -$21, 1, 1, $8E, 0, 0, 0, 0
	endsprite

Map_obj52_b_0094:	spritemap
	piece	-$50, -$21, 4, 1, $8F, 0, 0, 0, 0
	piece	-$30, -$21, 3, 1, $93, 0, 0, 0, 0
	endsprite

Map_obj52_b_00A6:	spritemap
	piece	-$60, -$21, 4, 1, $96, 0, 0, 0, 0
	piece	-$40, -$21, 4, 1, $9A, 0, 0, 0, 0
	piece	-$20, -$21, 1, 1, $9E, 0, 0, 0, 0
	endsprite

Map_obj52_b_00C0:	spritemap
	piece	-$70, -$21, 4, 1, $9F, 0, 0, 0, 0
	piece	-$50, -$21, 4, 1, $A3, 0, 0, 0, 0
	piece	-$30, -$21, 3, 1, $A7, 0, 0, 0, 0
	endsprite

Map_obj52_b_00DA:	spritemap
	piece	-$78, -$21, 4, 1, $AA, 0, 0, 0, 0
	piece	-$58, -$21, 4, 1, $AE, 0, 0, 0, 0
	piece	-$38, -$21, 3, 1, $B2, 0, 0, 0, 0
	endsprite

Map_obj52_b_00F4:	spritemap
	piece	-$78, -$21, 4, 1, $B5, 0, 0, 0, 0
	piece	-$58, -$21, 4, 1, $B9, 0, 0, 0, 0
	endsprite

Map_obj52_b_0106:	spritemap
	piece	-$78, -$21, 4, 1, $BD, 0, 0, 0, 0
	endsprite

Map_obj52_b_0110:	spritemap
	piece	-4, -4, 1, 1, $61, 0, 0, 0, 0
	endsprite

Map_obj52_b_011A:	spritemap
	piece	-4, -4, 1, 1, $62, 0, 0, 0, 0
	endsprite

Map_obj52_b_0124:	spritemap
	piece	-8, -8, 2, 2, $63, 0, 0, 0, 0
	endsprite

Map_obj52_b_012E:	spritemap
	piece	-8, -8, 2, 2, $67, 0, 0, 0, 0
	endsprite

Map_obj52_b_0138:	spritemap
	piece	-$20, 4, 2, 2, 0, 0, 0, 1, 0
	piece	-$20, $14, 2, 2, 4, 0, 0, 1, 0
	piece	-$10, 4, 4, 4, 8, 0, 0, 1, 0
	piece	$10, 4, 2, 4, $18, 0, 0, 1, 0
	piece	-$20, -$C, 4, 2, $60, 0, 0, 0, 0
	piece	0, -$C, 4, 2, $68, 0, 0, 0, 0
	piece	-$10, -$14, 4, 1, $7F, 0, 0, 1, 0
	endsprite

	even
	endm