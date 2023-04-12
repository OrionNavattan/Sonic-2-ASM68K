; -------------------------------------------------------------------------------
; Sprite Mappings - Metropolis bolt ends and ropes emerging/disappearing into lava
; -------------------------------------------------------------------------------

Map_BoltEnd_Rope:	index offset(*)
	ptr	Frame_Rope1
	ptr	Frame_Rope2
	ptr	Frame_BoltEnd

Frame_Rope1:	spritemap
	piece	-4, -8, 1, 2, 4, 0, 0, 0, 0
	endsprite

Frame_Rope2:	spritemap
	piece	-4, -8, 1, 2, 6, 0, 0, 0, 0
	endsprite

Frame_BoltEnd:	spritemap
	piece	-$10, -4, 4, 1, 0, 0, 0, 0, 0
	endsprite

	even
