; ---------------------------------------------------------------------------
; Sprite mappings - Chemical Plant, Oil Ocean, and Wing Fortress platforms
; ---------------------------------------------------------------------------

Map_Plat2:	index offset(*)
		ptr	Map_obj19_0008
		ptr	Map_obj19_001A
		ptr	Map_obj19_002C
		ptr	Map_obj19_004E

Map_obj19_0008:	spriteHeader
		spritePiece	-$20, -$10, 4, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 4, 4, 0, 1, 0, 0, 0
		endsprite

Map_obj19_001A:	spriteHeader
		spritePiece	-$18, -$10, 3, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 3, 4, 0, 1, 0, 0, 0
		endsprite

Map_obj19_002C:	spriteHeader
		spritePiece	-$40, -$10, 4, 3, 0, 0, 0, 0, 0
		spritePiece	-$20, -$10, 4, 3, $C, 0, 0, 0, 0
		spritePiece	0, -$10, 4, 3, $C, 1, 0, 0, 0
		spritePiece	$20, -$10, 4, 3, 0, 1, 0, 0, 0
		endsprite

Map_obj19_004E:	spriteHeader
		spritePiece	-$20, -$10, 4, 3, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 4, 3, 0, 1, 0, 0, 0
		endsprite

		even
