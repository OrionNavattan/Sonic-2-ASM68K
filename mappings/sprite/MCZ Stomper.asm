; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave Stomper
; -------------------------------------------------------------------------------

Map_Stomper:	index offset(*)
		ptr	Frame_Stomper

Frame_Stomper:	spritemap
		piece	-$10, -$50, 3x2, $1A
		piece	-$10, -$40, 4x4, $20
		piece	-$10, -$20, 4x4, $30
		piece	-$10, 0, 4x4, $30, yflip
		piece	-$10, $20, 4x4, $20, yflip
		piece	-$10, $40, 3x2, $1A, yflip
		endsprite

		even
