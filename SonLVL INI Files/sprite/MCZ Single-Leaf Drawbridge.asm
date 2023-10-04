; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave logs (used by single-leaf drawbridge)
; -------------------------------------------------------------------------------

Map_SBridge:	index offset(*)
		ptr	Frame_SBridge_Blank
		ptr	Frame_SBridge_Log

Frame_SBridge_Blank:	spriteHeader
		endsprite

Frame_SBridge_Log:	spriteHeader
		spritePiece	-8, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

		even
