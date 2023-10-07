; -------------------------------------------------------------------------------
; Sprite mappings - Coconuts enemy (EHZ)
; -------------------------------------------------------------------------------

Map_Coco:	index offset(*)
		ptr	Frame_Coco_Climb1
		ptr	Frame_Coco_Climb2
		ptr	Frame_Coco_Throw
		ptr	Frame_Coco_Coconut

Frame_Coco_Climb1:	spritemap
		piece	-2, 0, 2x2, $1A
		piece	-4, -$10, 3x2, 0
		piece	-$C, 0, 4x2, 6
		piece	$C, $10, 1x2, $E
		endsprite

Frame_Coco_Climb2:	spritemap
		piece	-2, 0, 2x2, $1E
		piece	-4, -$10, 3x2, 0
		piece	-$C, 0, 4x2, $10
		piece	$C, $10, 1x2, $18
		endsprite

Frame_Coco_Throw:	spritemap
		piece	7, -8, 1x2, $22
		piece	-4, -$10, 3x2, 0
		piece	-$C, 0, 4x2, $10
		piece	$C, $10, 1x2, $18
		endsprite

Frame_Coco_Coconut:	spritemap
		piece	-8, -8, 1x2, $24, pal3
		piece	0, -8, 1x2, $24, xflip, pal3
		endsprite

		even
