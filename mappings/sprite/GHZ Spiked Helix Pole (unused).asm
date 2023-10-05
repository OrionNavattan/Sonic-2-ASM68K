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
		piece	-4, -$10, 1x2, 0
		endsprite

Map_obj17_001A:	spritemap
		piece	-8, -$B, 2x2, 2
		endsprite

Map_obj17_0024:	spritemap
		piece	-8, -8, 2x2, 6
		endsprite

Map_obj17_002E:	spritemap
		piece	-8, -5, 2x2, $A
		endsprite

Map_obj17_0038:	spritemap
		piece	-4, 0, 1x2, $E
		endsprite

Map_obj17_0042:	spritemap
		piece	-3, 4, 1x1, $10
		endsprite

Map_obj17_004C:	spritemap
		piece	-3, -$C, 1x1, $11
		endsprite

Map_obj17_0056:	spritemap
		endsprite

		even