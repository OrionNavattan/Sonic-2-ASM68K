; -------------------------------------------------------------------------------
; Sprite mappings - Chemical Plant tracked platform and Mystic Cave small 
; horizontally moving platform
; -------------------------------------------------------------------------------

Map_TrackPlat:	index offset(*)
		ptr	Frame_TrackPlat

Frame_TrackPlat:	spritemap
		piece	-$18, -8, 3x2, $10
		piece	0, -8, 3x2, $10, xflip
		endsprite

		even
