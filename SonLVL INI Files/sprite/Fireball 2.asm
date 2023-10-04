; -------------------------------------------------------------------------------
; Sprite mappings - Fireball 2 (Hill Top boss weapon)
; -------------------------------------------------------------------------------

Map_FireBall2:	index offset(*)
		ptr	Map_obj20_a_000C
		ptr	Map_obj20_a_0016
		ptr	Map_obj20_a_0020
		ptr	Map_obj20_a_002A
		ptr	Map_obj20_a_0034
		ptr	Map_obj20_a_003E

Map_obj20_a_000C:	spriteHeader
		spritePiece	-8, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj20_a_0016:	spriteHeader
		spritePiece	-8, -8, 2, 2, 4, 0, 0, 0, 0
		endsprite

Map_obj20_a_0020:	spriteHeader
		spritePiece	-8, -7, 2, 2, 8, 0, 0, 0, 0
		endsprite

Map_obj20_a_002A:	spriteHeader
		spritePiece	-8, -$A, 2, 2, 8, 0, 0, 0, 0
		endsprite

Map_obj20_a_0034:	spriteHeader
		spritePiece	-8, -$A, 2, 2, $C, 0, 0, 0, 0
		endsprite

Map_obj20_a_003E:	spriteHeader
		endsprite

		even
