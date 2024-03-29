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

Map_obj5D_b_000E:	spriteHeader
		spritePiece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$20, 8, 2, 2, 4, 0, 0, 0, 0
		spritePiece	-$10, -8, 4, 4, 8, 0, 0, 0, 0
		spritePiece	$10, -8, 2, 4, $18, 0, 0, 0, 0
		endsprite

Map_obj5D_b_0030:	spriteHeader
		spritePiece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
		spritePiece	-$10, -$18, 4, 2, $30, 0, 0, 0, 0
		spritePiece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
		spritePiece	2, -$28, 2, 2, $20, 0, 0, 0, 0
		endsprite

Map_obj5D_b_0052:	spriteHeader
		spritePiece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
		spritePiece	-$10, -$18, 4, 2, $38, 0, 0, 0, 0
		spritePiece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
		spritePiece	2, -$28, 2, 2, $20, 0, 0, 0, 0
		endsprite

Map_obj5D_b_0074:	spriteHeader
		spritePiece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
		spritePiece	-$10, -$18, 4, 2, $40, 0, 0, 0, 0
		spritePiece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
		spritePiece	2, -$28, 2, 2, $20, 0, 0, 0, 0
		endsprite

Map_obj5D_b_0096:	spriteHeader
		spritePiece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
		spritePiece	-$10, -$18, 4, 2, $48, 0, 0, 0, 0
		spritePiece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
		spritePiece	2, -$28, 2, 2, $20, 0, 0, 0, 0
		endsprite

Map_obj5D_b_00B8:	spriteHeader
		spritePiece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
		spritePiece	-$10, -$18, 4, 2, $50, 0, 0, 0, 0
		spritePiece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
		spritePiece	2, -$28, 2, 2, $20, 0, 0, 0, 0
		endsprite

Map_obj5D_b_00DA:	spriteHeader
		spritePiece	-$20, -$18, 2, 2, $28, 0, 0, 0, 0
		spritePiece	-$10, -$18, 4, 2, $58, 0, 0, 0, 0
		spritePiece	$10, -$18, 2, 2, $24, 0, 0, 0, 0
		spritePiece	2, -$28, 2, 2, $20, 0, 0, 0, 0
		endsprite

		even

; -------------------------------------------------------------------------------
; Sprite mappings - CPZ Eggpod jets
; -------------------------------------------------------------------------------

Map_BCPZ_EggpodJets:	index offset(*)
		ptr	Map_obj5D_c_0004
		ptr	Map_obj5D_c_000E

Map_obj5D_c_0004:	spriteHeader
		spritePiece	$1C, 0, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj5D_c_000E:	spriteHeader
		spritePiece	$1C, 0, 2, 2, 4, 0, 0, 0, 0
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

Map_obj5D_d_0008:	spriteHeader
		spritePiece	-8, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj5D_d_0012:	spriteHeader
		spritePiece	-8, -8, 2, 2, 4, 0, 0, 0, 0
		endsprite

Map_obj5D_d_001C:	spriteHeader
		spritePiece	-8, -8, 2, 2, 8, 0, 0, 0, 0
		endsprite

Map_obj5D_d_0026:	spriteHeader
		spritePiece	-8, -8, 2, 2, $C, 0, 0, 0, 0
		endsprite

		even	
