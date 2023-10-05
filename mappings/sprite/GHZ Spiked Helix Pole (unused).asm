; -------------------------------------------------------------------------------
; Sprite mappings - helix of spikes on a pole (unused Sonic 1 leftover)
; -------------------------------------------------------------------------------

Map_Hel:	index offset(*)
		ptr	Map_obj17_0010
		ptr	Map_obj17_001A
		ptr	Map_obj17_0024
		ptr	Map_obj17_002E
		ptr	Map_obj17_0038
		ptr	Map_obj17_0042
		ptr	Map_obj17_0056
		ptr	Map_obj17_004C

Map_obj17_0010:	spritemap
		spritePiece	-4, -$10, 1, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj17_001A:	spritemap
		spritePiece	-8, -$B, 2, 2, 2, 0, 0, 0, 0
		endsprite

Map_obj17_0024:	spritemap
		spritePiece	-8, -8, 2, 2, 6, 0, 0, 0, 0
		endsprite

Map_obj17_002E:	spritemap
		spritePiece	-8, -5, 2, 2, $A, 0, 0, 0, 0
		endsprite

Map_obj17_0038:	spritemap
		spritePiece	-4, 0, 1, 2, $E, 0, 0, 0, 0
		endsprite

Map_obj17_0042:	spritemap
		spritePiece	-3, 4, 1, 1, $10, 0, 0, 0, 0
		endsprite

Map_obj17_004C:	spritemap
		spritePiece	-3, -$C, 1, 1, $11, 0, 0, 0, 0
		endsprite

Map_obj17_0056:	spritemap
		endsprite

		even
