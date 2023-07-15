; -------------------------------------------------------------------------------
; Sprite mappings - EHZ boss eggpod rotors
; -------------------------------------------------------------------------------

Map_Rotor:	index offset(*)
	ptr	Map_obj56_a_000E
	ptr	Map_obj56_a_0018
	ptr	Map_obj56_a_0042
	ptr	Map_obj56_a_006C
	ptr	Map_obj56_a_0086
	ptr	Map_obj56_a_00A0
	ptr	Map_obj56_a_00BA

Map_obj56_a_000E:	spritemap
	piece	2, -$28, 2, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj56_a_0018:	spritemap
	piece	2, -$28, 2, 2, 4, 0, 0, 0, 0
	piece	$12, -$28, 4, 2, $C, 0, 0, 0, 0
	piece	$32, -$28, 4, 2, $C, 0, 0, 0, 0
	piece	-$1E, -$28, 4, 2, $C, 0, 0, 0, 0
	piece	-$3E, -$28, 4, 2, $C, 0, 0, 0, 0
	endsprite

Map_obj56_a_0042:	spritemap
	piece	2, -$28, 2, 2, 4, 0, 0, 0, 0
	piece	$12, -$28, 4, 2, $C, 0, 0, 0, 0
	piece	$32, -$28, 2, 2, 8, 0, 0, 0, 0
	piece	-$1E, -$28, 4, 2, $C, 0, 0, 0, 0
	piece	-$2E, -$28, 2, 2, 8, 0, 0, 0, 0
	endsprite

Map_obj56_a_006C:	spritemap
	piece	2, -$28, 2, 2, 4, 0, 0, 0, 0
	piece	$12, -$28, 4, 2, $C, 0, 0, 0, 0
	piece	-$1E, -$28, 4, 2, $C, 0, 0, 0, 0
	endsprite

Map_obj56_a_0086:	spritemap
	piece	2, -$28, 2, 2, 4, 0, 0, 0, 0
	piece	$12, -$28, 2, 2, 8, 0, 0, 0, 0
	piece	-$E, -$28, 2, 2, 8, 0, 0, 0, 0
	endsprite

Map_obj56_a_00A0:	spritemap
	piece	2, -$28, 2, 2, 0, 0, 0, 0, 0
	piece	$12, -$28, 4, 2, $C, 0, 0, 0, 0
	piece	$32, -$28, 4, 2, $C, 0, 0, 0, 0
	endsprite

Map_obj56_a_00BA:	spritemap
	piece	2, -$28, 2, 2, 4, 0, 0, 0, 0
	piece	-$1E, -$28, 4, 2, $C, 0, 0, 0, 0
	piece	-$3E, -$28, 4, 2, $C, 0, 0, 0, 0
	endsprite

	even

; -------------------------------------------------------------------------------
; Sprite mappings - EHZ boss (Egg Drillster)
; -------------------------------------------------------------------------------

include_EggDrillster_Maps:	macro
	
Map_Drillster:	index offset(*)
	ptr	Map_obj56_b_0010
	ptr	Map_obj56_b_002A
	ptr	Map_obj56_b_0034
	ptr	Map_obj56_b_003E
	ptr	Map_obj56_b_0048
	ptr	Map_obj56_b_0052
	ptr	Map_obj56_b_005C
	ptr	Map_obj56_b_0066

Map_obj56_b_0010:	spritemap
	piece	-$30, -$10, 4, 4, 0, 0, 0, 0, 0
	piece	-$10, -$10, 4, 4, $10, 0, 0, 0, 0
	piece	$10, -$10, 4, 4, $20, 0, 0, 0, 0
	endsprite

Map_obj56_b_002A:	spritemap
	piece	-$10, -$10, 4, 4, $30, 0, 0, 0, 0
	endsprite

Map_obj56_b_0034:	spritemap
	piece	-$10, -$10, 4, 4, $40, 0, 0, 0, 0
	endsprite

Map_obj56_b_003E:	spritemap
	piece	-$10, -$10, 4, 4, $50, 0, 0, 0, 0
	endsprite

Map_obj56_b_0048:	spritemap
	piece	-$10, -$10, 4, 4, $60, 0, 0, 0, 0
	endsprite

Map_obj56_b_0052:	spritemap
	piece	-$10, -$10, 4, 4, $60, 0, 1, 0, 0
	endsprite

Map_obj56_b_005C:	spritemap
	piece	-$10, -$10, 4, 4, $70, 0, 0, 0, 0
	endsprite

Map_obj56_b_0066:	spritemap
	piece	-$10, -$10, 4, 4, $70, 0, 1, 0, 0
	endsprite

	even
	endm
	
; -------------------------------------------------------------------------------
; Sprite mappings - EHZ Eggman and Eggpod
; -------------------------------------------------------------------------------

include_BEHZ_Eggman_Maps:	macro

Map_BEHZ_Eggman:	index offset(*)
	ptr	Map_obj56_c_000E
	ptr	Map_obj56_c_0030
	ptr	Map_obj56_c_0052
	ptr	Map_obj56_c_0074
	ptr	Map_obj56_c_0096
	ptr	Map_obj56_c_00B8
	ptr	Map_obj56_c_00DA

Map_obj56_c_000E:	spritemap
	piece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$20, 8, 2, 2, 4, 0, 0, 0, 0
	piece	-$10, -8, 4, 4, 8, 0, 0, 0, 0
	piece	$10, -8, 2, 4, $18, 0, 0, 0, 0
	endsprite

Map_obj56_c_0030:	spritemap
	piece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
	piece	-$10, -$18, 4, 2, $30, 0, 0, 0, 0
	piece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
	piece	2, -$28, 2, 2, $20, 0, 0, 0, 0
	endsprite

Map_obj56_c_0052:	spritemap
	piece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
	piece	-$10, -$18, 4, 2, $38, 0, 0, 0, 0
	piece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
	piece	2, -$28, 2, 2, $20, 0, 0, 0, 0
	endsprite

Map_obj56_c_0074:	spritemap
	piece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
	piece	-$10, -$18, 4, 2, $40, 0, 0, 0, 0
	piece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
	piece	2, -$28, 2, 2, $20, 0, 0, 0, 0
	endsprite

Map_obj56_c_0096:	spritemap
	piece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
	piece	-$10, -$18, 4, 2, $48, 0, 0, 0, 0
	piece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
	piece	2, -$28, 2, 2, $20, 0, 0, 0, 0
	endsprite

Map_obj56_c_00B8:	spritemap
	piece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
	piece	-$10, -$18, 4, 2, $50, 0, 0, 0, 0
	piece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
	piece	2, -$28, 2, 2, $20, 0, 0, 0, 0
	endsprite

Map_obj56_c_00DA:	spritemap
	piece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
	piece	-$10, -$18, 4, 2, $58, 0, 0, 0, 0
	piece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
	piece	2, -$28, 2, 2, $20, 0, 0, 0, 0
	endsprite

	even
	endm
	