; ---------------------------------------------------------------------------
; Sprite mappings - 2P signpost
; ---------------------------------------------------------------------------

Map_Sign_2P:	index offset(*)
		ptr	Map_obj0D_b_000C
		ptr	Map_obj0D_b_0026
		ptr	Map_obj0D_b_0048
		ptr	Map_obj0D_b_0062
		ptr	Map_obj0D_b_0074
		ptr	Map_obj0D_b_0086

Map_obj0D_b_000C:	spriteHeader
		spritePiece	-$18, -$10, 3, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 3, 4, $C, 0, 0, 0, 0
		spritePiece	-4, $10, 1, 2, $214, 0, 0, 0, 0
		endsprite

Map_obj0D_b_0026:	spriteHeader
		spritePiece	-$18, -$10, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-$10, -$10, 4, 4, 4, 0, 0, 0, 0
		spritePiece	$10, -$10, 1, 4, $14, 1, 0, 0, 0
		spritePiece	-4, $10, 1, 2, $214, 0, 0, 0, 0
		endsprite

Map_obj0D_b_0048:	spriteHeader
		spritePiece	-$18, -$10, 3, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 3, 4, 0, 1, 0, 0, 0
		spritePiece	-4, $10, 1, 2, $214, 0, 0, 0, 0
		endsprite

Map_obj0D_b_0062:	spriteHeader
		spritePiece	-$10, -$10, 4, 4, 0, 0, 0, 0, 0
		spritePiece	-4, $10, 1, 2, $214, 0, 0, 0, 0
		endsprite

Map_obj0D_b_0074:	spriteHeader
		spritePiece	-4, -$10, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-4, $10, 1, 2, $214, 0, 0, 0, 0
		endsprite

Map_obj0D_b_0086:	spriteHeader
		spritePiece	-$10, -$10, 4, 4, 0, 1, 0, 0, 0
		spritePiece	-4, $10, 1, 2, $214, 0, 0, 0, 0
		endsprite

		even
