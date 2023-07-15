; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave spikeball on chain
; -------------------------------------------------------------------------------

Map_BrckSpkChn:	index offset(*)
	ptr	Frame_Spikeball
	ptr	Frame_Link
	ptr	Frame_Bricks

Frame_Spikeball:	spritemap
	piece	-$10, -$10, 4, 2, $7A, 0, 0, 0, 0
	piece	-$10, 0, 4, 2, $7A, 1, 1, 0, 0
	endsprite

Frame_Link:	spritemap
	piece	-8, -8, 2, 2, $66, 0, 0, 2, 0
	endsprite

Frame_Bricks:	spritemap
	piece	-$10, -$10, 2, 4, $40, 0, 0, 2, 0
	piece	0, -$10, 2, 4, $40, 1, 0, 2, 0
	endsprite

	even
