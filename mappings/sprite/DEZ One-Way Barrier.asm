; -------------------------------------------------------------------------------
; Sprite mappings - DEZ one-way barrier

; Laughably, they copied, pasted, and reworked the wrong mappings (these are the 
; ones meant for HTZ's one-way barrier)
; -------------------------------------------------------------------------------

Map_DEZBarrier:	index offset(*)
		ptr	Frame_DEZBarrier1
		ptr	Frame_DEZBarrier2
		ptr	Frame_DEZBarrier3
		ptr	Frame_DEZBarrier4
		
	if FixBugs
Frame_DEZBarrier1:	spritemap
		piece	-8, -$20, 2, 4, 0, 0, 0, 0, 0
		piece	-8, 0, 2, 4, 0, 0, 0, 0, 0
		piece	-8, -$20, 2, 4, 0, 0, 0, 0, 0
		piece	-8, 0, 2, 4, 0, 0, 0, 0, 0
		endsprite
		
Frame_DEZBarrier2:	spritemap
		piece	-8, 0, 2, 4, 0, 0, 0, 0, 0
		piece	-8, -$20, 2, 4, 0, 0, 0, 0, 0
		piece	-8, 0, 2, 4, 0, 0, 0, 0, 0
		endsprite
		
Frame_DEZBarrier3:	spritemap
		piece	-8, -$20, 2, 4, 0, 0, 0, 0, 0
		piece	-8, 0, 2, 4, 0, 0, 0, 0, 0
		endsprite
		
Frame_DEZBarrier4:	spritemap
		piece	-8, 0, 2, 4, 0, 0, 0, 0, 0
		endsprite						
	else
	
Frame_DEZBarrier1:	spritemap
		piece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
		piece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	-8, 0, 2, 2, 0, 0, 0, 0, 0
		piece	-8, $10, 2, 2, 0, 0, 0, 0, 0
		endsprite

Frame_DEZBarrier2:	spritemap
		piece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
		piece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
		piece	-8, 0, 2, 2, 0, 0, 0, 0, 0
		endsprite

Frame_DEZBarrier3:	spritemap
		piece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
		piece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
		endsprite

Frame_DEZBarrier4:	spritemap
		piece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
		endsprite
	endc

		even
