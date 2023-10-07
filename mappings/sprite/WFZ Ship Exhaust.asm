; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress getaway ship exhaust
; -------------------------------------------------------------------------------

Map_ShipExh:	index offset(*)
		ptr	Frame_ShipExh

Frame_ShipExh:	spritemap
		piece	-$10, -$10, 4x2, 0
		piece	-$10, 0, 4x2, 0, yflip
		endsprite

		even
