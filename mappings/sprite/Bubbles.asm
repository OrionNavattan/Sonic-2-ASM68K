; -------------------------------------------------------------------------------
; Sprite mappings - Bubble generator, bubbles, and drowning numbers
; Tails uses a different set of mappings for the countdown numbers
; -------------------------------------------------------------------------------

Map_Bub_Player1:	index offset(*)
		ptr	Frame_Bubble_0				; 0
		ptr	Frame_Bubble_1				; 1
		ptr	Frame_Bubble_1,Frame_Bubble_1_Dup	; 2
		ptr	Frame_Bubble_2				; 3
		ptr	Frame_Bubble_3				; 4
		ptr	Frame_Bubble_4				; 5
		ptr	Frame_Bubble_Full			; 6
		ptr	Frame_Bubble_Burst			; 7
		ptr	Frame_DrownNum_Main,Frame_DrownNum_0	; 8
		ptr	Frame_DrownNum_Main,Frame_DrownNum_1	; 9
		ptr	Frame_DrownNum_Main,Frame_DrownNum_2	; $A
		ptr	Frame_DrownNum_Main,Frame_DrownNum_3	; $B
		ptr	Frame_DrownNum_Main,Frame_DrownNum_4	; $C
		ptr	Frame_DrownNum_Main,Frame_DrownNum_5	; $D
		ptr	Frame_Bubble_BubMaker1			; $E
		ptr	Frame_Bubble_BubMaker2			; $F
		ptr	Frame_Bubble_Blank			; $10

Map_Bub_Player2:	index offset(*)
		ptr	Frame_Bubble_0
		ptr	Frame_Bubble_1
		ptr	Frame_Bubble_1
		ptr	Frame_Bubble_2
		ptr	Frame_Bubble_3
		ptr	Frame_Bubble_4
		ptr	Frame_Bubble_Full
		ptr	Frame_Bubble_Burst
		ptr	Frame_DrownNum_Side
		ptr	Frame_DrownNum_Side
		ptr	Frame_DrownNum_Side
		ptr	Frame_DrownNum_Side
		ptr	Frame_DrownNum_Side
		ptr	Frame_DrownNum_Side
		ptr	Frame_Bubble_BubMaker1
		ptr	Frame_Bubble_BubMaker2
		ptr	Frame_Bubble_Blank

Frame_Bubble_0:	spritemap
		piece	-4, -4, 1x1, $8D
		endsprite

Frame_Bubble_1:	spritemap
		piece	-4, -4, 1x1, $8E
		endsprite

Frame_Bubble_2:	spritemap
		piece	-8, -8, 2x2, $8F
		endsprite

Frame_Bubble_3:	spritemap
		piece	-8, -8, 2x2, $93
		endsprite

Frame_Bubble_4:	spritemap
		piece	-$C, -$C, 3x3, $1C
		endsprite

Frame_Bubble_Full:	spritemap
		piece	-$10, -$10, 4x4, 8
		endsprite

Frame_Bubble_Burst:	spritemap
		piece	-$10, -$10, 2x2, $18
		piece	0, -$10, 2x2, $18, xflip
		piece	-$10, 0, 2x2, $18, yflip
		piece	0, 0, 2x2, $18, xflip, yflip
		endsprite

Frame_DrownNum_Main:	spritemap
		piece	-8, -$C, 2x3, $741, xflip, yflip
		endsprite

Frame_Bubble_BubMaker1:	spritemap				; SONLVL
		piece	-8, -8, 2x2, 0
		endsprite

Frame_Bubble_BubMaker2:	spritemap
		piece	-8, -8, 2x2, 4
		endsprite

Frame_Bubble_Blank:	spritemap
		endsprite

Frame_DrownNum_Side:	spritemap
		piece	-8, -$C, 2x3, $731, xflip, yflip
		endsprite
		even
