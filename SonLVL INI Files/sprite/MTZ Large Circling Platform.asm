; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis large circling platform
; -------------------------------------------------------------------------------

Map_CirclePlat:	index offset(*)
		ptr	Map_obj6E_0008
		ptr	Map_obj6E_0012
		ptr	Map_obj6E_002C
		ptr	Map_obj6E_007E

Map_obj6E_0008:	spriteHeader
		spritePiece	-$10, -$C, 4, 3, $25, 0, 0, 0, 0
		endsprite

Map_obj6E_0012:	spriteHeader
		spritePiece	-$28, -8, 4, 2, $31, 0, 0, 0, 0
		spritePiece	-8, -8, 4, 2, $31, 0, 0, 0, 0
		spritePiece	$18, -8, 2, 2, $31, 0, 0, 0, 0
		endsprite

Map_obj6E_002C:	spriteHeader
		spritePiece	-$60, -$18, 4, 3, $39, 0, 0, 0, 0
		spritePiece	-$40, -$18, 4, 3, $39, 1, 0, 0, 0
		spritePiece	-$20, -$18, 4, 3, $39, 0, 0, 0, 0
		spritePiece	0, -$18, 4, 3, $39, 1, 0, 0, 0
		spritePiece	$20, -$18, 4, 3, $39, 0, 0, 0, 0
		spritePiece	$40, -$18, 4, 3, $39, 1, 0, 0, 0
		spritePiece	-$60, 0, 2, 3, $45, 0, 0, 0, 0
		spritePiece	-$50, 0, 2, 3, $45, 1, 0, 0, 0
		spritePiece	$40, 0, 2, 3, $45, 0, 0, 0, 0
		spritePiece	$50, 0, 2, 3, $45, 1, 0, 0, 0
		endsprite

Map_obj6E_007E:	spriteHeader
		spritePiece	-$C, -$C, 3, 3, 0, 0, 0, 0, 0
		endsprite

		even
