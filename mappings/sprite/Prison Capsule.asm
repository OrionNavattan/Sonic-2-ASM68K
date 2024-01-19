; ---------------------------------------------------------------------------
; Sprite mappings - Prison capsule

; The second and third pieces have their total sprite piece values set too
; low, causing the last piece to not be displayed.
; ---------------------------------------------------------------------------

Map_Pri:	index offset(*)
		ptr	Frame_Pri_Closed
		ptr	Frame_Pri_Opening1
		ptr	Frame_Pri_Opening2
		ptr	Frame_Pri_Open				; fully open
		ptr	Frame_Pri_Switch
		ptr	Frame_Pri_Latch

Frame_Pri_Closed:	spritemap
		piece	-$20, -$20, 4x2, 0
		piece	0, -$20, 4x2, 0, xflip
		piece	-$20, -$10, 3x3, 8
		piece	-8, -$10, 2x3, $11
		piece	8, -$10, 3x3, 8, xflip
		piece	-$20, 8, 4x3, $17
		piece	0, 8, 4x3, $17, xflip
		endsprite

Frame_Pri_Opening1:	spritemap
		piece	-$20, -$20, 4x2, 0
		piece	0, -$20, 4x2, 0, xflip
		piece	-$20, 8, 4x3, $17
		piece	0, 8, 4x3, $17, xflip
		piece	-8, -$18, 2x3, $11
		piece	-$20, -8, 3x3, 8
		piece	8, -8, 3x3, 8, xflip
	if FixBugs=0
		endsprite
	endc
		piece	-8, -$10, 2x3, $23
	if FixBugs
		endsprite
	endc

Frame_Pri_Opening2:	spritemap
		piece	-$20, -$20, 4x2, 0
		piece	0, -$20, 4x2, 0, xflip
		piece	-$20, 8, 4x3, $17
		piece	0, 8, 4x3, $17, xflip
		piece	-8, -$20, 2x3, $11
		piece	-$20, 0, 3x3, 8
		piece	8, 0, 3x3, 8, xflip
	if FixBugs=0
		endsprite
	endc
		piece	-8, -$10, 2x3, $23
	if FixBugs
		endsprite
	endc

Frame_Pri_Open:	spritemap
		piece	-$20, -$20, 4x2, 0
		piece	0, -$20, 4x2, 0, xflip
		piece	-8, -$10, 2x3, $23
		piece	-$20, 8, 4x3, $17
		piece	0, 8, 4x3, $17, xflip
		endsprite

Frame_Pri_Switch:	spritemap
		piece	-$10, -8, 2x2, $29
		piece	0, -8, 2x2, $29, xflip
		endsprite

Frame_Pri_Latch:	spritemap
		piece	-8, -8, 2x2, $2D
		endsprite

		even
