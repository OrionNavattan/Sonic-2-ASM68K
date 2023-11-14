; -------------------------------------------------------------------------------
; Sprite mappings - Hidden Palace giant emerald (unused)
; -------------------------------------------------------------------------------

Map_GiantEmerld:	index offset(*)
		ptr	Frame_GiantEmerld

Frame_GiantEmerld:	spritemap
		piece	-$20, -$10, 4x4, 0
		piece	0, -$10, 4x4, $10
		endsprite

		even
