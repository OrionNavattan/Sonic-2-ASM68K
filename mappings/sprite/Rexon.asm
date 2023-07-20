; -----------------------------------------------------------------------------
; Sprite mappings - Rexon
; -----------------------------------------------------------------------------

Map_Rex:	index offset(*)
	ptr	Frame_Rexon_Head
	ptr	Frame_Rexon_FireProj
	ptr	Frame_Rexon_Body
	ptr	Frame_Rexon_NeckSegment

Frame_Rexon_Head:	spritemap
	piece	-$14, -6, 3, 2, 0, 0, 0, 0, 0
	endsprite

Frame_Rexon_FireProj:	spritemap
	piece	-8, -8, 2, 2, 6, 0, 0, 0, 0
	endsprite

Frame_Rexon_Body:	spritemap
	piece	-$10, -8, 4, 2, $A, 0, 0, 0, 0
	endsprite

Frame_Rexon_NeckSegment:	spritemap
	piece	-4, -4, 1, 1, $12, 0, 0, 0, 0
	endsprite

	even
