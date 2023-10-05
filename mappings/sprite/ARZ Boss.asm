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
		spritePiece	0, $28, 4, 4, $88, 0, 0, 1, 0
		spritePiece	0, 8, 4, 4, $88, 0, 0, 1, 0
		spritePiece	0, -$18, 4, 4, $88, 0, 0, 1, 0
		spritePiece	0, -$38, 4, 4, $88, 0, 0, 1, 0
		spritePiece	0, -$40, 4, 1, $84, 0, 0, 1, 0
		endsprite

Map_obj89_a_0038:	spritemap
		spritePiece	-8, -4, 2, 1, $98, 0, 0, 1, 0
		endsprite

Map_obj89_a_0042:	spritemap
		spritePiece	-$10, -4, 4, 1, $9A, 0, 0, 1, 0
		endsprite

Map_obj89_a_004C:	spritemap
		spritePiece	-$10, -4, 4, 1, $9E, 0, 0, 1, 0
		endsprite

Map_obj89_a_0056:	spritemap
		spritePiece	-$10, -4, 4, 1, $A2, 0, 0, 1, 0
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
		spritePiece	-$18, -$18, 4, 2, $150, 0, 0, 0, 0
		spritePiece	-$28, -$18, 2, 2, $148, 0, 0, 0, 0
		endsprite

Map_obj89_b_002A:	spritemap
		spritePiece	-$18, -$18, 4, 2, $158, 0, 0, 0, 0
		spritePiece	-$28, -$18, 2, 2, $148, 0, 0, 0, 0
		endsprite

Map_obj89_b_003C:	spritemap
		spritePiece	-$18, -$18, 4, 2, $160, 0, 0, 0, 0
		spritePiece	-$28, -$18, 2, 2, $14C, 0, 0, 0, 0
		endsprite

Map_obj89_b_004E:	spritemap
		spritePiece	-$18, -$18, 4, 2, $168, 0, 0, 0, 0
		spritePiece	-$28, -$18, 2, 2, $14C, 0, 0, 0, 0
		endsprite

Map_obj89_b_0060:	spritemap
		spritePiece	-$18, -$18, 4, 2, $170, 0, 0, 0, 0
		spritePiece	-$28, -$18, 2, 2, $14C, 0, 0, 0, 0
		endsprite

Map_obj89_b_0072:	spritemap
		spritePiece	-$18, -$18, 4, 2, $178, 0, 0, 0, 0
		spritePiece	-$28, -$18, 2, 2, $14C, 0, 0, 0, 0
		endsprite

Map_obj89_b_0084:	spritemap
		spritePiece	-$18, $18, 2, 2, $7E, 0, 0, 0, 0
		spritePiece	8, $18, 2, 2, $7E, 0, 0, 0, 0
		endsprite

Map_obj89_b_0096:	spritemap
		spritePiece	-$18, $18, 2, 1, $82, 0, 0, 0, 0
		spritePiece	8, $18, 2, 1, $82, 0, 0, 0, 0
		endsprite

Map_obj89_b_00A8:	spritemap
		spritePiece	-6, -$28, 2, 2, $140, 0, 0, 0, 0
		spritePiece	8, -$18, 2, 2, $144, 0, 0, 0, 0
		spritePiece	-$30, 0, 1, 1, $6F, 0, 0, 1, 0
		spritePiece	-$28, -8, 2, 3, $70, 0, 0, 1, 0
		spritePiece	-$18, -8, 4, 4, $128, 0, 0, 1, 0
		spritePiece	-$18, -8, 2, 4, $76, 0, 0, 1, 0
		spritePiece	8, -8, 2, 4, $76, 0, 0, 1, 0
		endsprite

Map_obj89_b_00E2:	spritemap
		spritePiece	-$64, -$16, 4, 4, 0, 0, 0, 1, 0
		spritePiece	-$5C, -$2E, 3, 3, $10, 0, 0, 1, 0
		spritePiece	-$44, -$2E, 3, 4, $19, 0, 0, 1, 0
		spritePiece	-$44, -$E, 2, 2, $25, 0, 0, 1, 0
		spritePiece	-$40, -8, 2, 2, $65, 0, 0, 1, 0
		endsprite

Map_obj89_b_010C:	spritemap
		spritePiece	-$63, -$F, 4, 4, $29, 0, 0, 1, 0
		spritePiece	-$5B, -$27, 3, 3, $39, 0, 0, 1, 0
		spritePiece	-$43, -$27, 2, 4, $42, 0, 0, 1, 0
		spritePiece	-$43, -7, 1, 3, $4A, 0, 0, 1, 0
		spritePiece	-$40, -8, 2, 2, $69, 0, 0, 1, 0
		endsprite

Map_obj89_b_0136:	spritemap
		spritePiece	-$60, -$14, 4, 4, $4D, 0, 0, 1, 0
		spritePiece	-$60, $C, 4, 2, $5D, 0, 0, 1, 0
		spritePiece	-$40, 0, 2, 1, $6D, 0, 0, 1, 0
		endsprite

		even
		endm
