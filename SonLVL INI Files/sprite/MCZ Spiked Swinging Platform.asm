; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave swinging platform with spikes
; -------------------------------------------------------------------------------

Map_SpikedSwing_MCZ:	index offset(*)
		ptr	Map_obj15_b_0006
		ptr	Map_obj7A_a_001A
		ptr	Map_obj7A_a_0024

Map_obj15_b_0006:	spriteHeader				; DIRECTLY REFERENCED BY SONLVL
		spritePiece	-$20, -8, 4, 2, $58, 0, 0, 3, 0
		spritePiece	0, -8, 4, 2, $58, 1, 0, 3, 0
		endsprite

		even
