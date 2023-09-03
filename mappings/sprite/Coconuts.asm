; -------------------------------------------------------------------------------
; Sprite mappings - Coconuts enemy (EHZ)
; -------------------------------------------------------------------------------

Map_Coco:	index offset(*)
		ptr	Frame_Coco_Climb1
		ptr	Frame_Coco_Climb2
		ptr	Frame_Coco_Throw
		ptr	Frame_Coco_Coconut

Frame_Coco_Climb1:	spritemap
		piece	-2, 0, 2, 2, $1A, 0, 0, 0, 0
		piece	-4, -$10, 3, 2, 0, 0, 0, 0, 0
		piece	-$C, 0, 4, 2, 6, 0, 0, 0, 0
		piece	$C, $10, 1, 2, $E, 0, 0, 0, 0
		endsprite

Frame_Coco_Climb2:	spritemap
		piece	-2, 0, 2, 2, $1E, 0, 0, 0, 0
		piece	-4, -$10, 3, 2, 0, 0, 0, 0, 0
		piece	-$C, 0, 4, 2, $10, 0, 0, 0, 0
		piece	$C, $10, 1, 2, $18, 0, 0, 0, 0
		endsprite

Frame_Coco_Throw:	spritemap
		piece	7, -8, 1, 2, $22, 0, 0, 0, 0
		piece	-4, -$10, 3, 2, 0, 0, 0, 0, 0
		piece	-$C, 0, 4, 2, $10, 0, 0, 0, 0
		piece	$C, $10, 1, 2, $18, 0, 0, 0, 0
		endsprite

Frame_Coco_Coconut:	spritemap
		piece	-8, -8, 1, 2, $24, 0, 0, 2, 0
		piece	0, -8, 1, 2, $24, 1, 0, 2, 0
		endsprite

		even
