; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress stationary hook (unused)
; -------------------------------------------------------------------------------

Map_StatHook:	index offset(*)
		ptr	Frame_StatHook

Frame_StatHook:	spritemap
		piece	-$C, -$40, 2, 2, 0, 0, 0, 0, 0
		piece	-4, -$30, 1, 4, 4, 0, 0, 0, 0
		piece	-$C, -$10, 3, 4, 8, 0, 0, 0, 0
		endsprite

		even
