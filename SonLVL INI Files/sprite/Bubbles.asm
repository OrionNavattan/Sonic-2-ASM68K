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

Frame_Bubble_0:	spriteHeader
		spritePiece	-4, -4, 1, 1, $8D, 0, 0, 0, 0
		endsprite

Frame_Bubble_1:	spriteHeader
		spritePiece	-4, -4, 1, 1, $8E, 0, 0, 0, 0
		endsprite

Frame_Bubble_2:	spriteHeader
		spritePiece	-8, -8, 2, 2, $8F, 0, 0, 0, 0
		endsprite

Frame_Bubble_3:	spriteHeader
		spritePiece	-8, -8, 2, 2, $93, 0, 0, 0, 0
		endsprite

Frame_Bubble_4:	spriteHeader
		spritePiece	-$C, -$C, 3, 3, $1C, 0, 0, 0, 0
		endsprite

Frame_Bubble_Full:	spriteHeader
		spritePiece	-$10, -$10, 4, 4, 8, 0, 0, 0, 0
		endsprite

Frame_Bubble_Burst:	spriteHeader
		spritePiece	-$10, -$10, 2, 2, $18, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, $18, 1, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, $18, 0, 1, 0, 0
		spritePiece	0, 0, 2, 2, $18, 1, 1, 0, 0
		endsprite

Frame_DrownNum_Main:	spriteHeader
		spritePiece	-8, -$C, 2, 3, $741, 1, 1, 0, 0
		endsprite

Frame_Bubble_BubMaker1:	spriteHeader				; SONLVL
		spritePiece	-8, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Frame_Bubble_BubMaker2:	spriteHeader
		spritePiece	-8, -8, 2, 2, 4, 0, 0, 0, 0
		endsprite

Frame_Bubble_Blank:	spriteHeader
		endsprite

Frame_DrownNum_Side:	spriteHeader
		spritePiece	-8, -$C, 2, 3, $731, 1, 1, 0, 0
		endsprite
		even
