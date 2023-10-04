; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis lava bubble
; -------------------------------------------------------------------------------

Map_LavaBubble:	index offset(*)
		ptr	Map_obj71_b_000E
		ptr	Map_obj71_b_0018
		ptr	Map_obj71_b_0022
		ptr	Map_obj71_b_002C
		ptr	Map_obj71_b_0036
		ptr	Map_obj71_b_0040
		ptr	Map_obj71_b_004A

Map_obj71_b_000E:	spriteHeader
		spritePiece	-8, 2, 2, 1, 0, 0, 0, 0, 0
		endsprite

Map_obj71_b_0018:	spriteHeader
		spritePiece	-8, 0, 2, 1, 0, 0, 0, 0, 0
		endsprite

Map_obj71_b_0022:	spriteHeader
		spritePiece	-8, -2, 2, 1, 0, 0, 0, 0, 0
		endsprite

Map_obj71_b_002C:	spriteHeader
		spritePiece	-8, -4, 2, 1, 0, 0, 0, 0, 0
		endsprite

Map_obj71_b_0036:	spriteHeader
		spritePiece	-$C, -4, 3, 1, 2, 0, 0, 0, 0
		endsprite

Map_obj71_b_0040:	spriteHeader
		spritePiece	-$10, -4, 4, 1, 5, 0, 0, 0, 0
		endsprite

Map_obj71_b_004A:	spriteHeader
		endsprite

		even
