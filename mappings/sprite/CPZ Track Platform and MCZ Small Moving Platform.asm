; -------------------------------------------------------------------------------
; Sprite mappings - Chemical Plant tracked platform and Mystic Cave small 
; horizontally moving platform
; -------------------------------------------------------------------------------

Map_TrackPlat:	index offset(*)
		ptr	Frame_TrackPlat

Frame_TrackPlat:	spritemap
		piece	-$18, -8, 3, 2, $10, 0, 0, 0, 0
		piece	0, -8, 3, 2, $10, 1, 0, 0, 0
		endsprite

		even
