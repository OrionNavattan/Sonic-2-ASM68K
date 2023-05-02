; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave swinging platform with spikes
; -------------------------------------------------------------------------------

Map_SpikedSwing_MCZ:	index offset(*)
	ptr	Map_obj15_b_0006
	ptr	Map_obj7A_a_001A
	ptr	Map_obj7A_a_0024

Map_obj15_b_0006:	spritemap				; DIRECTLY REFERENCED BY SONLVL
	piece	-$20, -8, 4, 2, $58, 0, 0, 3, 0
	piece	0, -8, 4, 2, $58, 1, 0, 3, 0
	endsprite

	even
