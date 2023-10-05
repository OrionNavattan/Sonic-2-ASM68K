; ---------------------------------------------------------------------------
; Sprite mappings - GHZ purple rock (unused Sonic 1 leftover)
; ---------------------------------------------------------------------------

Map_PRock:	index offset(*)
		ptr	Map_obj3B_0002

Map_obj3B_0002:	spritemap
		spritePiece	-$18, -$10, 3, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 3, 4, $C, 0, 0, 0, 0
		endsprite

		dc.w 0
		even
