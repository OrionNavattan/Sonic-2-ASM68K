; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave logs (used by single-leaf drawbridge)
; -------------------------------------------------------------------------------

Map_SBridge:	index offset(*)
		ptr	Frame_SBridge_Blank
		ptr	Frame_SBridge_Log

Frame_SBridge_Blank:	spritemap
		endsprite

Frame_SBridge_Log:	spritemap
		piece	-8, -8, 2x2, 0
		endsprite

		even