; -------------------------------------------------------------------------------
; Sprite mappings - Special Stage HUD
; -------------------------------------------------------------------------------

Map_SpecialHUD:	index offset(*)
		ptr	Map_obj5E_0008
		ptr	Map_obj5E_002A
		ptr	Map_obj5E_004C
		ptr	Map_obj5E_006E

Map_obj5E_0008:	spriteHeader
		spritePiece	-$60, $10, 4, 1, 0, 0, 0, 1, 1
		spritePiece	-$40, $10, 1, 1, 4, 0, 0, 1, 1
		spritePiece	-$68, $18, 4, 2, $A, 0, 0, 2, 1
		spritePiece	-$48, $18, 1, 2, $3C, 0, 0, 2, 1
		endsprite

Map_obj5E_002A:	spriteHeader
		spritePiece	$38, $10, 4, 1, 5, 0, 0, 2, 1
		spritePiece	$58, $10, 1, 1, 9, 0, 0, 2, 1
		spritePiece	$30, $18, 4, 2, $A, 0, 0, 2, 1
		spritePiece	$50, $18, 1, 2, $3C, 0, 0, 2, 1
		endsprite

Map_obj5E_004C:	spriteHeader
		spritePiece	$38, $10, 4, 1, $5AA, 0, 0, 2, 1
		spritePiece	$58, $10, 1, 1, $5AE, 0, 0, 2, 1
		spritePiece	$30, $18, 4, 2, $A, 0, 0, 2, 1
		spritePiece	$50, $18, 1, 2, $3C, 0, 0, 2, 1
		endsprite

Map_obj5E_006E:	spriteHeader
		spritePiece	-$14, $10, 4, 4, $26, 0, 0, 2, 1
		spritePiece	$C, $10, 1, 4, $36, 0, 0, 2, 1
		endsprite

		even
