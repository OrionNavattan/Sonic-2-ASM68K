; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave spikeball on chain
; -------------------------------------------------------------------------------

Map_BrckSpkChn:	index offset(*)
		ptr	Frame_Spikeball
		ptr	Frame_Link
		ptr	Frame_Bricks

Frame_Spikeball:	spritemap
		piece	-$10, -$10, 4x2, $7A
		piece	-$10, 0, 4x2, $7A, xflip, yflip
		endsprite

Frame_Link:	spritemap
		piece	-8, -8, 2x2, $66, pal3
		endsprite

Frame_Bricks:	spritemap
		piece	-$10, -$10, 2x4, $40, pal3
		piece	0, -$10, 2x4, $40, xflip, pal3
		endsprite

		even