; ---------------------------------------------------------------------------
; Sprite mappings - Chemical Plant foreground pylons
; ---------------------------------------------------------------------------

Map_Pylon:	index offset(*)
		ptr	Map_obj7C_0002

Map_obj7C_0002:	spritemap
		piece	-$10, -$80, 4x4, 0, pal2, hi
		piece	-$10, -$60, 4x4, 0, yflip, pal2, hi
		piece	-$10, -$40, 4x4, 0, pal2, hi
		piece	-$10, -$20, 4x4, 0, yflip, pal2, hi
		piece	-$10, 0, 4x4, 0, pal2, hi
		piece	-$10, $20, 4x4, 0, yflip, pal2, hi
		piece	-$10, $40, 4x4, 0, pal2, hi
		piece	-$10, $60, 4x4, 0, yflip, pal2, hi
		piece	-$10, $7F, 4x4, 0, pal2, hi
		endsprite

		even