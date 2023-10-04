; -------------------------------------------------------------------------------
; Sprite mappings - Coconuts enemy (EHZ)
; -------------------------------------------------------------------------------

Map_Coco:	index offset(*)
		ptr	Frame_Coco_Climb1
		ptr	Frame_Coco_Climb2
		ptr	Frame_Coco_Throw
		ptr	Frame_Coco_Coconut

Frame_Coco_Climb1:	spriteHeader
		spritePiece	-2, 0, 2, 2, $1A, 0, 0, 0, 0
		spritePiece	-4, -$10, 3, 2, 0, 0, 0, 0, 0
		spritePiece	-$C, 0, 4, 2, 6, 0, 0, 0, 0
		spritePiece	$C, $10, 1, 2, $E, 0, 0, 0, 0
		endsprite

Frame_Coco_Climb2:	spriteHeader
		spritePiece	-2, 0, 2, 2, $1E, 0, 0, 0, 0
		spritePiece	-4, -$10, 3, 2, 0, 0, 0, 0, 0
		spritePiece	-$C, 0, 4, 2, $10, 0, 0, 0, 0
		spritePiece	$C, $10, 1, 2, $18, 0, 0, 0, 0
		endsprite

Frame_Coco_Throw:	spriteHeader
		spritePiece	7, -8, 1, 2, $22, 0, 0, 0, 0
		spritePiece	-4, -$10, 3, 2, 0, 0, 0, 0, 0
		spritePiece	-$C, 0, 4, 2, $10, 0, 0, 0, 0
		spritePiece	$C, $10, 1, 2, $18, 0, 0, 0, 0
		endsprite

Frame_Coco_Coconut:	spriteHeader
		spritePiece	-8, -8, 1, 2, $24, 0, 0, 2, 0
		spritePiece	0, -8, 1, 2, $24, 1, 0, 2, 0
		endsprite

		even
