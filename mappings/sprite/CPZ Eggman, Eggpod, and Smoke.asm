; -------------------------------------------------------------------------------
; Sprite mappings - CPZ Eggman and Eggpod
; -------------------------------------------------------------------------------

Map_BCPZ_Eggpod:	index offset(*)
		ptr	Map_obj5D_b_000E
		ptr	Map_obj5D_b_0030
		ptr	Map_obj5D_b_0052
		ptr	Map_obj5D_b_0074
		ptr	Map_obj5D_b_0096
		ptr	Map_obj5D_b_00B8
		ptr	Map_obj5D_b_00DA

Map_obj5D_b_000E:	spritemap
		piece	-$20, -8, 2x2, 0
		piece	-$20, 8, 2x2, 4
		piece	-$10, -8, 4x4, 8
		piece	$10, -8, 2x4, $18
		endsprite

Map_obj5D_b_0030:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $30
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

Map_obj5D_b_0052:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $38
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

Map_obj5D_b_0074:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $40
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

Map_obj5D_b_0096:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $48
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

Map_obj5D_b_00B8:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $50
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

Map_obj5D_b_00DA:	spritemap
		piece	-$20, -$18, 2x2, $28
		piece	-$10, -$18, 4x2, $58
		piece	$10, -$18, 2x2, $24
		piece	2, -$28, 2x2, $20
		endsprite

		even
; -------------------------------------------------------------------------------
; Sprite mappings - CPZ Eggpod jets
; -------------------------------------------------------------------------------

Map_BCPZ_EggpodJets:	index offset(*)
		ptr	Map_obj5D_c_0004
		ptr	Map_obj5D_c_000E

Map_obj5D_c_0004:	spritemap
		piece	$1C, 0, 2x2, 0
		endsprite

Map_obj5D_c_000E:	spritemap
		piece	$1C, 0, 2x2, 4
		endsprite

		even		
; -------------------------------------------------------------------------------
; Sprite mappings - smoke made by CPZ boss upon defeat
; Unused due to a bug in loc_2E9B6; see there for more information
; -------------------------------------------------------------------------------

Map_BCPZ_Smoke:	index offset(*)
		ptr	Map_obj5D_d_0008
		ptr	Map_obj5D_d_0012
		ptr	Map_obj5D_d_001C
		ptr	Map_obj5D_d_0026

Map_obj5D_d_0008:	spritemap
		piece	-8, -8, 2x2, 0
		endsprite

Map_obj5D_d_0012:	spritemap
		piece	-8, -8, 2x2, 4
		endsprite

Map_obj5D_d_001C:	spritemap
		piece	-8, -8, 2x2, 8
		endsprite

Map_obj5D_d_0026:	spritemap
		piece	-8, -8, 2x2, $C
		endsprite

		even