; ---------------------------------------------------------------------------
; Sprite mappings - Hill Top seesaws
; ---------------------------------------------------------------------------

Map_Seesaw:	index offset(*)
		ptr	Map_obj14_a_0008
		ptr	Map_obj14_a_004A
		ptr	Map_obj14_a_0008
		ptr	Map_obj14_a_004A

Map_obj14_a_0008:	spriteHeader
		spritePiece	-8, -4, 2, 2, $14, 0, 0, 2, 0
		spritePiece	-4, $C, 1, 2, $12, 0, 0, 1, 0
		spritePiece	-$30, -$1C, 2, 2, 6, 0, 0, 2, 0
		spritePiece	-$20, -$14, 2, 2, $A, 0, 0, 2, 0
		spritePiece	-$10, -$C, 2, 2, $A, 0, 0, 2, 0
		spritePiece	0, -4, 2, 2, $A, 0, 0, 2, 0
		spritePiece	$10, 4, 2, 2, $A, 0, 0, 2, 0
		spritePiece	$20, $C, 2, 2, $E, 0, 0, 2, 0
		endsprite

Map_obj14_a_004A:	spriteHeader
		spritePiece	-8, -4, 2, 2, $14, 0, 0, 2, 0
		spritePiece	-4, $C, 1, 2, $12, 0, 0, 1, 0
		spritePiece	-$30, -$C, 2, 2, 0, 0, 0, 2, 0
		spritePiece	-$20, -$C, 2, 2, 2, 0, 0, 2, 0
		spritePiece	-$10, -$C, 2, 2, 2, 0, 0, 2, 0
		spritePiece	0, -$C, 2, 2, 2, 0, 0, 2, 0
		spritePiece	$10, -$C, 2, 2, 2, 0, 0, 2, 0
		spritePiece	$20, -$C, 2, 2, 0, 1, 0, 2, 0
		endsprite

		even
