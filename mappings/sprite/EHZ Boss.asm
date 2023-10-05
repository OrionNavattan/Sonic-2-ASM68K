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
		piece	2, -$28, 2x2, 0
		endsprite

Map_obj56_a_0018:	spritemap
		piece	2, -$28, 2x2, 4
		piece	$12, -$28, 4x2, $C
		piece	$32, -$28, 4x2, $C
		piece	-$1E, -$28, 4x2, $C
		piece	-$3E, -$28, 4x2, $C
		endsprite

Map_obj56_a_0042:	spritemap
		piece	2, -$28, 2x2, 4
		piece	$12, -$28, 4x2, $C
		piece	$32, -$28, 2x2, 8
		piece	-$1E, -$28, 4x2, $C
		piece	-$2E, -$28, 2x2, 8
		endsprite

Map_obj56_a_006C:	spritemap
		piece	2, -$28, 2x2, 4
		piece	$12, -$28, 4x2, $C
		piece	-$1E, -$28, 4x2, $C
		endsprite

Map_obj56_a_0086:	spritemap
		piece	2, -$28, 2x2, 4
		piece	$12, -$28, 2x2, 8
		piece	-$E, -$28, 2x2, 8
		endsprite

Map_obj56_a_00A0:	spritemap
		piece	2, -$28, 2x2, 0
		piece	$12, -$28, 4x2, $C
		piece	$32, -$28, 4x2, $C
		endsprite

Map_obj56_a_00BA:	spritemap
		piece	2, -$28, 2x2, 4
		piece	-$1E, -$28, 4x2, $C
		piece	-$3E, -$28, 4x2, $C
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
		piece	-$30, -$10, 4x4, 0
		piece	-$10, -$10, 4x4, $10
		piece	$10, -$10, 4x4, $20
		endsprite

Map_obj56_b_002A:	spritemap
		piece	-$10, -$10, 4x4, $30
		endsprite

Map_obj56_b_0034:	spritemap
		piece	-$10, -$10, 4x4, $40
		endsprite

Map_obj56_b_003E:	spritemap
		piece	-$10, -$10, 4x4, $50
		endsprite

Map_obj56_b_0048:	spritemap
		piece	-$10, -$10, 4x4, $60
		endsprite

Map_obj56_b_0052:	spritemap
		piece	-$10, -$10, 4x4, $60, yflip
		endsprite

Map_obj56_b_005C:	spritemap
		piece	-$10, -$10, 4x4, $70
		endsprite

Map_obj56_b_0066:	spritemap
		piece	-$10, -$10, 4x4, $70, yflip
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
		piece	-$20, -8, 2x2, 0
		piece	-$20, 8, 2x2, 4
		piece	-$10, -8, 4x4, 8
		piece	$10, -8, 2x4, $18
		endsprite

Map_obj56_c_0030:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $30
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

Map_obj56_c_0052:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $38
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

Map_obj56_c_0074:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $40
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

Map_obj56_c_0096:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $48
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

Map_obj56_c_00B8:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $50
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

Map_obj56_c_00DA:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $58
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

		even
		endm
		
