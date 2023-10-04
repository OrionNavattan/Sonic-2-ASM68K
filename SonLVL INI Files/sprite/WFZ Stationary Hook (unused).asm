; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress stationary hook (unused)
; -------------------------------------------------------------------------------

Map_StatHook:	index offset(*)
		ptr	Frame_StatHook

Frame_StatHook:	spriteHeader
		spritePiece	-$C, -$40, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-4, -$30, 1, 4, 4, 0, 0, 0, 0
		spritePiece	-$C, -$10, 3, 4, 8, 0, 0, 0, 0
		endsprite

		even
