; -------------------------------------------------------------------------------
; Sprite mappings - Chemical Plant tracked platform and Mystic Cave small 
; horizontally moving platform
; -------------------------------------------------------------------------------

Map_TrackPlat:	index offset(*)
		ptr	Frame_TrackPlat

Frame_TrackPlat:	spriteHeader
		spritePiece	-$18, -8, 3, 2, $10, 0, 0, 0, 0
		spritePiece	0, -8, 3, 2, $10, 1, 0, 0, 0
		endsprite

		even
