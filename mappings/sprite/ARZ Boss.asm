; -------------------------------------------------------------------------------
; Sprite mappings - ARZ boss pillars, arrows, and bulging eyes
; -------------------------------------------------------------------------------

Map_BARZ_Pillar:	index offset(*)
		ptr	Map_obj89_a_000E
		ptr	Map_obj89_a_0038
		ptr	Map_obj89_a_0038
		ptr	Map_obj89_a_0042
		ptr	Map_obj89_a_0042
		ptr	Map_obj89_a_004C
		ptr	Map_obj89_a_0056

Map_obj89_a_000E:	spritemap
		piece	0, $28, 4x4, $88, pal2
		piece	0, 8, 4x4, $88, pal2
		piece	0, -$18, 4x4, $88, pal2
		piece	0, -$38, 4x4, $88, pal2
		piece	0, -$40, 4x1, $84, pal2
		endsprite

Map_obj89_a_0038:	spritemap
		piece	-8, -4, 2x1, $98, pal2
		endsprite

Map_obj89_a_0042:	spritemap
		piece	-$10, -4, 4x1, $9A, pal2
		endsprite

Map_obj89_a_004C:	spritemap
		piece	-$10, -4, 4x1, $9E, pal2
		endsprite

Map_obj89_a_0056:	spritemap
		piece	-$10, -4, 4x1, $A2, pal2
		endsprite

		even

; -------------------------------------------------------------------------------
; Sprite mappings - HTZ Eggman, Eggpod, and hammer
; -------------------------------------------------------------------------------

include_ARZEggpod_Maps:	macro

Map_BARZ_EggPod:	index offset(*)
		ptr	Map_obj89_b_0018
		ptr	Map_obj89_b_002A
		ptr	Map_obj89_b_003C
		ptr	Map_obj89_b_004E
		ptr	Map_obj89_b_0060
		ptr	Map_obj89_b_0072
		ptr	Map_obj89_b_0084
		ptr	Map_obj89_b_0096
		ptr	Map_obj89_b_00A8
		ptr	Map_obj89_b_00E2
		ptr	Map_obj89_b_010C
		ptr	Map_obj89_b_0136

Map_obj89_b_0018:	spritemap
		piece	-$18, -$18, 4x2, $150
		piece	-$28, -$18, 2x2, $148
		endsprite

Map_obj89_b_002A:	spritemap
		piece	-$18, -$18, 4x2, $158
		piece	-$28, -$18, 2x2, $148
		endsprite

Map_obj89_b_003C:	spritemap
		piece	-$18, -$18, 4x2, $160
		piece	-$28, -$18, 2x2, $14C
		endsprite

Map_obj89_b_004E:	spritemap
		piece	-$18, -$18, 4x2, $168
		piece	-$28, -$18, 2x2, $14C
		endsprite

Map_obj89_b_0060:	spritemap
		piece	-$18, -$18, 4x2, $170
		piece	-$28, -$18, 2x2, $14C
		endsprite

Map_obj89_b_0072:	spritemap
		piece	-$18, -$18, 4x2, $178
		piece	-$28, -$18, 2x2, $14C
		endsprite

Map_obj89_b_0084:	spritemap
		piece	-$18, $18, 2x2, $7E
		piece	8, $18, 2x2, $7E
		endsprite

Map_obj89_b_0096:	spritemap
		piece	-$18, $18, 2x1, $82
		piece	8, $18, 2x1, $82
		endsprite

Map_obj89_b_00A8:	spritemap
		piece	-6, -$28, 2x2, $140
		piece	8, -$18, 2x2, $144
		piece	-$30, 0, 1x1, $6F, pal2
		piece	-$28, -8, 2x3, $70, pal2
		piece	-$18, -8, 4x4, $128, pal2
		piece	-$18, -8, 2x4, $76, pal2
		piece	8, -8, 2x4, $76, pal2
		endsprite

Map_obj89_b_00E2:	spritemap
		piece	-$64, -$16, 4x4, 0, pal2
		piece	-$5C, -$2E, 3x3, $10, pal2
		piece	-$44, -$2E, 3x4, $19, pal2
		piece	-$44, -$E, 2x2, $25, pal2
		piece	-$40, -8, 2x2, $65, pal2
		endsprite

Map_obj89_b_010C:	spritemap
		piece	-$63, -$F, 4x4, $29, pal2
		piece	-$5B, -$27, 3x3, $39, pal2
		piece	-$43, -$27, 2x4, $42, pal2
		piece	-$43, -7, 1x3, $4A, pal2
		piece	-$40, -8, 2x2, $69, pal2
		endsprite

Map_obj89_b_0136:	spritemap
		piece	-$60, -$14, 4x4, $4D, pal2
		piece	-$60, $C, 4x2, $5D, pal2
		piece	-$40, 0, 2x1, $6D, pal2
		endsprite

		even
		endm