; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress getaway ship exhaust
; -------------------------------------------------------------------------------

Map_ShipExh:	index offset(*)
		ptr	Frame_ShipExh

Frame_ShipExh:	spriteHeader
		spritePiece	-$10, -$10, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, 0, 4, 2, 0, 0, 1, 0, 0
		endsprite

		even
