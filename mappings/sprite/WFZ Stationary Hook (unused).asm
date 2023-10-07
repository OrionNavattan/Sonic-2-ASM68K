; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress stationary hook (unused)
; -------------------------------------------------------------------------------

Map_StatHook:	index offset(*)
		ptr	Frame_StatHook

Frame_StatHook:	spritemap
		piece	-$C, -$40, 2x2, 0
		piece	-4, -$30, 1x4, 4
		piece	-$C, -$10, 3x4, 8
		endsprite

		even
