; -------------------------------------------------------------------------------
; Sprite mappings - Level Title Cards
; Frame_Card_Zone and Frame_Card_Act1-3 also used by end-of-level results
; -------------------------------------------------------------------------------
Map_Card:	index offset(*)
		ptr	Frame_Card_EHZ
		ptr	Frame_Card_EHZ				; unused
		ptr	Frame_Card_EHZ				; unused
		ptr	Frame_Card_EHZ				; unused
		ptr	Frame_Card_MTZ
		ptr	Frame_Card_MTZ
		ptr	Frame_Card_WFZ
		ptr	Frame_Card_HTZ
		ptr	Frame_Card_HPZ				; unused beta leftover
		ptr	Frame_Card_EHZ				; unused
		ptr	Frame_Card_OOZ
		ptr	Frame_Card_MCZ
		ptr	Frame_Card_CNZ
		ptr	Frame_Card_CPZ
		ptr	Frame_Card_DEZ		
		ptr	Frame_Card_ARZ
		ptr	Frame_Card_SCZ
		ptr	Frame_Card_Zone
		ptr	Frame_Card_Act1
		ptr	Frame_Card_Act2	
		ptr	Frame_Card_Act3
		ptr	Frame_Card_STH
		ptr	Frame_Card_RedTriangles

Frame_Card_EHZ:	spritemap					; EMERALD HILL
		piece	-$3D, 0, 2, 2, $580, 0, 0, 0, 1
		piece	-$30, 0, 3, 2, $5DE, 0, 0, 0, 1
		piece	-$18, 0, 2, 2, $580, 0, 0, 0, 1
		piece	-8, 0, 2, 2, $5E4, 0, 0, 0, 1
		piece	8, 0, 2, 2, $5E8, 0, 0, 0, 1
		piece	$18, 0, 2, 2, $5EC, 0, 0, 0, 1
		piece	$28, 0, 2, 2, $5F0, 0, 0, 0, 1
		piece	$48, 0, 2, 2, $5F4, 0, 0, 0, 1
		piece	$58, 0, 1, 2, $5F8, 0, 0, 0, 1
		piece	$60, 0, 2, 2, $5EC, 0, 0, 0, 1
		piece	$70, 0, 2, 2, $5EC, 0, 0, 0, 1
		endsprite

Frame_Card_MTZ:	spritemap					; METROPOLIS
		piece	-$20, 0, 3, 2, $5DE, 0, 0, 0, 1
		piece	-8, 0, 2, 2, $580, 0, 0, 0, 1
		piece	8, 0, 2, 2, $5E4, 0, 0, 0, 1
		piece	$18, 0, 2, 2, $5E8, 0, 0, 0, 1
		piece	$28, 0, 2, 2, $588, 0, 0, 0, 1
		piece	$38, 0, 2, 2, $5EC, 0, 0, 0, 1
		piece	$48, 0, 2, 2, $588, 0, 0, 0, 1
		piece	$58, 0, 2, 2, $5F0, 0, 0, 0, 1
		piece	$68, 0, 1, 2, $5F4, 0, 0, 0, 1
		piece	$70, 0, 2, 2, $5F6, 0, 0, 0, 1
		endsprite

Frame_Card_HTZ:	spritemap					; HILL TOP
		piece	8, 0, 2, 2, $5DE, 0, 0, 0, 1
		piece	$18, 0, 1, 2, $5E2, 0, 0, 0, 1
		piece	$20, 0, 2, 2, $5E4, 0, 0, 0, 1
		piece	$30, 0, 2, 2, $5E4, 0, 0, 0, 1
		piece	$51, 0, 2, 2, $5E8, 0, 0, 0, 1
		piece	$60, 0, 2, 2, $588, 0, 0, 0, 1
		piece	$70, 0, 2, 2, $5EC, 0, 0, 0, 1
		endsprite

Frame_Card_HPZ:	spritemap					; HIDDEN PALACE
		piece	-$48, 0, 2, 2, $5DE, 0, 0, 0, 1
		piece	-$38, 0, 1, 2, $5E2, 0, 0, 0, 1
		piece	-$30, 0, 2, 2, $5E4, 0, 0, 0, 1
		piece	-$20, 0, 2, 2, $5E4, 0, 0, 0, 1
		piece	-$10, 0, 2, 2, $580, 0, 0, 0, 1
		piece	0, 0, 2, 2, $584, 0, 0, 0, 1
		piece	$20, 0, 2, 2, $5E8, 0, 0, 0, 1
		piece	$30, 0, 2, 2, $5EC, 0, 0, 0, 1
		piece	$40, 0, 2, 2, $5F0, 0, 0, 0, 1
		piece	$50, 0, 2, 2, $5EC, 0, 0, 0, 1
		piece	$60, 0, 2, 2, $5F4, 0, 0, 0, 1
		piece	$70, 0, 2, 2, $580, 0, 0, 0, 1
		endsprite

Frame_Card_OOZ:	spritemap					; OIL OCEAN
		piece	-5, 0, 2, 2, $588, 0, 0, 0, 1
		piece	$B, 0, 1, 2, $5DE, 0, 0, 0, 1
		piece	$13, 0, 2, 2, $5E0, 0, 0, 0, 1
		piece	$33, 0, 2, 2, $588, 0, 0, 0, 1
		piece	$43, 0, 2, 2, $5E4, 0, 0, 0, 1
		piece	$53, 0, 2, 2, $580, 0, 0, 0, 1
		piece	$60, 0, 2, 2, $5E8, 0, 0, 0, 1
		piece	$70, 0, 2, 2, $584, 0, 0, 0, 1
		endsprite

Frame_Card_MCZ:	spritemap					; MYSTIC CAVE
		piece	-$30, 0, 3, 2, $5DE, 0, 0, 0, 1
		piece	-$18, 0, 2, 2, $5E4, 0, 0, 0, 1
		piece	-8, 0, 2, 2, $5E8, 0, 0, 0, 1
		piece	8, 0, 2, 2, $5EC, 0, 0, 0, 1
		piece	$18, 0, 1, 2, $5F0, 0, 0, 0, 1
		piece	$20, 0, 2, 2, $5F2, 0, 0, 0, 1
		piece	$41, 0, 2, 2, $5F2, 0, 0, 0, 1
		piece	$50, 0, 2, 2, $5F6, 0, 0, 0, 1
		piece	$60, 0, 2, 2, $5FA, 0, 0, 0, 1
		piece	$70, 0, 2, 2, $580, 0, 0, 0, 1
		endsprite

Frame_Card_CNZ:	spritemap					; CASINO NIGHT
		piece	-$2F, 0, 2, 2, $5DE, 0, 0, 0, 1
		piece	-$20, 0, 2, 2, $5E2, 0, 0, 0, 1
		piece	-$10, 0, 2, 2, $5E6, 0, 0, 0, 1
		piece	0, 0, 1, 2, $5EA, 0, 0, 0, 1
		piece	8, 0, 2, 2, $584, 0, 0, 0, 1
		piece	$18, 0, 2, 2, $588, 0, 0, 0, 1
		piece	$38, 0, 2, 2, $584, 0, 0, 0, 1
		piece	$48, 0, 1, 2, $5EA, 0, 0, 0, 1
		piece	$50, 0, 2, 2, $5EC, 0, 0, 0, 1
		piece	$60, 0, 2, 2, $5F0, 0, 0, 0, 1
		piece	$70, 0, 2, 2, $5F4, 0, 0, 0, 1
		endsprite

Frame_Card_CPZ:	spritemap					; CHEMICAL PLANT
		piece	-$5C, 0, 2, 2, $5DE, 0, 0, 0, 1
		piece	-$4C, 0, 2, 2, $5E2, 0, 0, 0, 1
		piece	-$3C, 0, 2, 2, $580, 0, 0, 0, 1
		piece	-$2F, 0, 3, 2, $5E6, 0, 0, 0, 1
		piece	-$17, 0, 1, 2, $5EC, 0, 0, 0, 1
		piece	-$F, 0, 2, 2, $5DE, 0, 0, 0, 1
		piece	0, 0, 2, 2, $5EE, 0, 0, 0, 1
		piece	$10, 0, 2, 2, $5F2, 0, 0, 0, 1
		piece	$31, 0, 2, 2, $5F6, 0, 0, 0, 1
		piece	$41, 0, 2, 2, $5F2, 0, 0, 0, 1
		piece	$50, 0, 2, 2, $5EE, 0, 0, 0, 1
		piece	$60, 0, 2, 2, $584, 0, 0, 0, 1
		piece	$70, 0, 2, 2, $5FA, 0, 0, 0, 1
		endsprite

Frame_Card_ARZ:	spritemap					; AQUATIC RUIN
		piece	-$2E, 0, 2, 2, $5DE, 0, 0, 0, 1
		piece	-$1E, 0, 2, 2, $5E2, 0, 0, 0, 1
		piece	-$E, 0, 2, 2, $5E6, 0, 0, 0, 1
		piece	0, 0, 2, 2, $5DE, 0, 0, 0, 1
		piece	$10, 0, 2, 2, $5EA, 0, 0, 0, 1
		piece	$20, 0, 1, 2, $5EE, 0, 0, 0, 1
		piece	$28, 0, 2, 2, $5F0, 0, 0, 0, 1
		piece	$48, 0, 2, 2, $5F4, 0, 0, 0, 1
		piece	$58, 0, 2, 2, $5E6, 0, 0, 0, 1
		piece	$68, 0, 1, 2, $5EE, 0, 0, 0, 1
		piece	$70, 0, 2, 2, $584, 0, 0, 0, 1
		endsprite

Frame_Card_SCZ:	spritemap					; SKY CHASE
		piece	-$10, 0, 2, 2, $5DE, 0, 0, 0, 1
		piece	0, 0, 2, 2, $5E2, 0, 0, 0, 1
		piece	$10, 0, 2, 2, $5E6, 0, 0, 0, 1
		piece	$30, 0, 2, 2, $5EA, 0, 0, 0, 1
		piece	$40, 0, 2, 2, $5EE, 0, 0, 0, 1
		piece	$50, 0, 2, 2, $5F2, 0, 0, 0, 1
		piece	$60, 0, 2, 2, $5DE, 0, 0, 0, 1
		piece	$70, 0, 2, 2, $580, 0, 0, 0, 1
		endsprite

Frame_Card_WFZ:	spritemap					; WING FORTRESS
		piece	-$4F, 0, 3, 2, $5DE, 0, 0, 0, 1
		piece	-$38, 0, 1, 2, $5E4, 0, 0, 0, 1
		piece	-$30, 0, 2, 2, $584, 0, 0, 0, 1
		piece	-$20, 0, 2, 2, $5E6, 0, 0, 0, 1
		piece	1, 0, 2, 2, $5EA, 0, 0, 0, 1
		piece	$10, 0, 2, 2, $588, 0, 0, 0, 1
		piece	$20, 0, 2, 2, $5EE, 0, 0, 0, 1
		piece	$30, 0, 2, 2, $5F2, 0, 0, 0, 1
		piece	$40, 0, 2, 2, $5EE, 0, 0, 0, 1
		piece	$50, 0, 2, 2, $580, 0, 0, 0, 1
		piece	$5F, 0, 2, 2, $5F6, 0, 0, 0, 1
		piece	$6F, 0, 2, 2, $5F6, 0, 0, 0, 1
		endsprite

Frame_Card_DEZ:	spritemap					; DEATH EGG
		piece	-$E, 0, 2, 2, $5DE, 0, 0, 0, 1
		piece	2, 0, 2, 2, $580, 0, 0, 0, 1
		piece	$10, 0, 2, 2, $5E2, 0, 0, 0, 1
		piece	$20, 0, 2, 2, $5E6, 0, 0, 0, 1
		piece	$30, 0, 2, 2, $5EA, 0, 0, 0, 1
		piece	$51, 0, 2, 2, $580, 0, 0, 0, 1
		piece	$60, 0, 2, 2, $5EE, 0, 0, 0, 1
		piece	$70, 0, 2, 2, $5EE, 0, 0, 0, 1
		endsprite

Frame_Card_Zone:	spritemap				; ZONE
		piece	1, 0, 2, 2, $58C, 0, 0, 0, 1
		piece	$10, 0, 2, 2, $588, 0, 0, 0, 1
		piece	$20, 0, 2, 2, $584, 0, 0, 0, 1
		piece	$30, 0, 2, 2, $580, 0, 0, 0, 1
		endsprite

Frame_Card_Act1:	spritemap				; 1
		piece	0, 0, 2, 4, $590, 0, 0, 1, 1
		endsprite

Frame_Card_Act2:	spritemap				; 2
		piece	0, 0, 3, 4, $598, 0, 0, 1, 1
		endsprite

Frame_Card_Act3:	spritemap				; 3
		piece	0, 0, 3, 4, $5A4, 0, 0, 1, 1
		endsprite

Frame_Card_STH:	spritemap					; SONIC THE HEDGEHOG
		piece	-$48, 0, 4, 2, $5B0, 0, 0, 0, 1
		piece	-$28, 0, 4, 2, $5B8, 0, 0, 0, 1
		piece	-8, 0, 4, 2, $5C0, 0, 0, 0, 1
		piece	$18, 0, 4, 2, $5C8, 0, 0, 0, 1
		piece	$38, 0, 2, 2, $5D0, 0, 0, 0, 1
		endsprite

Frame_Card_RedTriangles:	spritemap			; red triangle border
		piece	0, -$70, 1, 4, $5D4, 0, 0, 0, 1
		piece	0, -$50, 1, 4, $5D4, 0, 0, 0, 1
		piece	0, -$30, 1, 4, $5D4, 0, 0, 0, 1
		piece	0, -$10, 1, 4, $5D4, 0, 0, 0, 1
		piece	0, $10, 1, 4, $5D4, 0, 0, 0, 1
		piece	0, $30, 1, 4, $5D4, 0, 0, 0, 1
		piece	0, $50, 1, 4, $5D4, 0, 0, 0, 1
		endsprite
