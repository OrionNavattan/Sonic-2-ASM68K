; ---------------------------------------------------------------------------
; Sprite mappings - Prison capsule

; The second and third pieces have their total sprite spritePiece values set too 
; low, causing the last spritePiece to not be displayed.
; ---------------------------------------------------------------------------

Map_Pri:	index offset(*)
		ptr	Map_obj3E_000C
		ptr	Map_obj3E_0046
		ptr	Map_obj3E_0088
		ptr	Map_obj3E_00CA
		ptr	Map_obj3E_00F4
		ptr	Map_obj3E_0106

Map_obj3E_000C:	spritemap
		spritePiece	-$20, -$20, 4, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$20, 4, 2, 0, 1, 0, 0, 0
		spritePiece	-$20, -$10, 3, 3, 8, 0, 0, 0, 0
		spritePiece	-8, -$10, 2, 3, $11, 0, 0, 0, 0
		spritePiece	8, -$10, 3, 3, 8, 1, 0, 0, 0
		spritePiece	-$20, 8, 4, 3, $17, 0, 0, 0, 0
		spritePiece	0, 8, 4, 3, $17, 1, 0, 0, 0
		endsprite

Map_obj3E_0046:	spritemap
		spritePiece	-$20, -$20, 4, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$20, 4, 2, 0, 1, 0, 0, 0
		spritePiece	-$20, 8, 4, 3, $17, 0, 0, 0, 0
		spritePiece	0, 8, 4, 3, $17, 1, 0, 0, 0
		spritePiece	-8, -$18, 2, 3, $11, 0, 0, 0, 0
		spritePiece	-$20, -8, 3, 3, 8, 0, 0, 0, 0
		spritePiece	8, -8, 3, 3, 8, 1, 0, 0, 0
	if FixBugs=0	
		endsprite
	endc	
		spritePiece	-8, -$10, 2, 3, $23, 0, 0, 0, 0
	if FixBugs
		endsprite
	endc		

Map_obj3E_0088:	spritemap
		spritePiece	-$20, -$20, 4, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$20, 4, 2, 0, 1, 0, 0, 0
		spritePiece	-$20, 8, 4, 3, $17, 0, 0, 0, 0
		spritePiece	0, 8, 4, 3, $17, 1, 0, 0, 0
		spritePiece	-8, -$20, 2, 3, $11, 0, 0, 0, 0
		spritePiece	-$20, 0, 3, 3, 8, 0, 0, 0, 0
		spritePiece	8, 0, 3, 3, 8, 1, 0, 0, 0
	if FixBugs=0	
		endsprite
	endc	
		spritePiece	-8, -$10, 2, 3, $23, 0, 0, 0, 0
	if FixBugs
		endsprite
	endc		

Map_obj3E_00CA:	spritemap
		spritePiece	-$20, -$20, 4, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$20, 4, 2, 0, 1, 0, 0, 0
		spritePiece	-8, -$10, 2, 3, $23, 0, 0, 0, 0
		spritePiece	-$20, 8, 4, 3, $17, 0, 0, 0, 0
		spritePiece	0, 8, 4, 3, $17, 1, 0, 0, 0
		endsprite

Map_obj3E_00F4:	spritemap
		spritePiece	-$10, -8, 2, 2, $29, 0, 0, 0, 0
		spritePiece	0, -8, 2, 2, $29, 1, 0, 0, 0
		endsprite

Map_obj3E_0106:	spritemap
		spritePiece	-8, -8, 2, 2, $2D, 0, 0, 0, 0
		endsprite

		even
