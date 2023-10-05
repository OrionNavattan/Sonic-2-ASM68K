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
		piece	-$3D, 0, 2x2, $580, hi
		piece	-$30, 0, 3x2, $5DE, hi
		piece	-$18, 0, 2x2, $580, hi
		piece	-8, 0, 2x2, $5E4, hi
		piece	8, 0, 2x2, $5E8, hi
		piece	$18, 0, 2x2, $5EC, hi
		piece	$28, 0, 2x2, $5F0, hi
		piece	$48, 0, 2x2, $5F4, hi
		piece	$58, 0, 1x2, $5F8, hi
		piece	$60, 0, 2x2, $5EC, hi
		piece	$70, 0, 2x2, $5EC, hi
		endsprite

Frame_Card_MTZ:	spritemap					; METROPOLIS
		piece	-$20, 0, 3x2, $5DE, hi
		piece	-8, 0, 2x2, $580, hi
		piece	8, 0, 2x2, $5E4, hi
		piece	$18, 0, 2x2, $5E8, hi
		piece	$28, 0, 2x2, $588, hi
		piece	$38, 0, 2x2, $5EC, hi
		piece	$48, 0, 2x2, $588, hi
		piece	$58, 0, 2x2, $5F0, hi
		piece	$68, 0, 1x2, $5F4, hi
		piece	$70, 0, 2x2, $5F6, hi
		endsprite

Frame_Card_HTZ:	spritemap					; HILL TOP
		piece	8, 0, 2x2, $5DE, hi
		piece	$18, 0, 1x2, $5E2, hi
		piece	$20, 0, 2x2, $5E4, hi
		piece	$30, 0, 2x2, $5E4, hi
		piece	$51, 0, 2x2, $5E8, hi
		piece	$60, 0, 2x2, $588, hi
		piece	$70, 0, 2x2, $5EC, hi
		endsprite

Frame_Card_HPZ:	spritemap					; HIDDEN PALACE
		piece	-$48, 0, 2x2, $5DE, hi
		piece	-$38, 0, 1x2, $5E2, hi
		piece	-$30, 0, 2x2, $5E4, hi
		piece	-$20, 0, 2x2, $5E4, hi
		piece	-$10, 0, 2x2, $580, hi
		piece	0, 0, 2x2, $584, hi
		piece	$20, 0, 2x2, $5E8, hi
		piece	$30, 0, 2x2, $5EC, hi
		piece	$40, 0, 2x2, $5F0, hi
		piece	$50, 0, 2x2, $5EC, hi
		piece	$60, 0, 2x2, $5F4, hi
		piece	$70, 0, 2x2, $580, hi
		endsprite

Frame_Card_OOZ:	spritemap					; OIL OCEAN
		piece	-5, 0, 2x2, $588, hi
		piece	$B, 0, 1x2, $5DE, hi
		piece	$13, 0, 2x2, $5E0, hi
		piece	$33, 0, 2x2, $588, hi
		piece	$43, 0, 2x2, $5E4, hi
		piece	$53, 0, 2x2, $580, hi
		piece	$60, 0, 2x2, $5E8, hi
		piece	$70, 0, 2x2, $584, hi
		endsprite

Frame_Card_MCZ:	spritemap					; MYSTIC CAVE
		piece	-$30, 0, 3x2, $5DE, hi
		piece	-$18, 0, 2x2, $5E4, hi
		piece	-8, 0, 2x2, $5E8, hi
		piece	8, 0, 2x2, $5EC, hi
		piece	$18, 0, 1x2, $5F0, hi
		piece	$20, 0, 2x2, $5F2, hi
		piece	$41, 0, 2x2, $5F2, hi
		piece	$50, 0, 2x2, $5F6, hi
		piece	$60, 0, 2x2, $5FA, hi
		piece	$70, 0, 2x2, $580, hi
		endsprite

Frame_Card_CNZ:	spritemap					; CASINO NIGHT
		piece	-$2F, 0, 2x2, $5DE, hi
		piece	-$20, 0, 2x2, $5E2, hi
		piece	-$10, 0, 2x2, $5E6, hi
		piece	0, 0, 1x2, $5EA, hi
		piece	8, 0, 2x2, $584, hi
		piece	$18, 0, 2x2, $588, hi
		piece	$38, 0, 2x2, $584, hi
		piece	$48, 0, 1x2, $5EA, hi
		piece	$50, 0, 2x2, $5EC, hi
		piece	$60, 0, 2x2, $5F0, hi
		piece	$70, 0, 2x2, $5F4, hi
		endsprite

Frame_Card_CPZ:	spritemap					; CHEMICAL PLANT
		piece	-$5C, 0, 2x2, $5DE, hi
		piece	-$4C, 0, 2x2, $5E2, hi
		piece	-$3C, 0, 2x2, $580, hi
		piece	-$2F, 0, 3x2, $5E6, hi
		piece	-$17, 0, 1x2, $5EC, hi
		piece	-$F, 0, 2x2, $5DE, hi
		piece	0, 0, 2x2, $5EE, hi
		piece	$10, 0, 2x2, $5F2, hi
		piece	$31, 0, 2x2, $5F6, hi
		piece	$41, 0, 2x2, $5F2, hi
		piece	$50, 0, 2x2, $5EE, hi
		piece	$60, 0, 2x2, $584, hi
		piece	$70, 0, 2x2, $5FA, hi
		endsprite

Frame_Card_ARZ:	spritemap					; AQUATIC RUIN
		piece	-$2E, 0, 2x2, $5DE, hi
		piece	-$1E, 0, 2x2, $5E2, hi
		piece	-$E, 0, 2x2, $5E6, hi
		piece	0, 0, 2x2, $5DE, hi
		piece	$10, 0, 2x2, $5EA, hi
		piece	$20, 0, 1x2, $5EE, hi
		piece	$28, 0, 2x2, $5F0, hi
		piece	$48, 0, 2x2, $5F4, hi
		piece	$58, 0, 2x2, $5E6, hi
		piece	$68, 0, 1x2, $5EE, hi
		piece	$70, 0, 2x2, $584, hi
		endsprite

Frame_Card_SCZ:	spritemap					; SKY CHASE
		piece	-$10, 0, 2x2, $5DE, hi
		piece	0, 0, 2x2, $5E2, hi
		piece	$10, 0, 2x2, $5E6, hi
		piece	$30, 0, 2x2, $5EA, hi
		piece	$40, 0, 2x2, $5EE, hi
		piece	$50, 0, 2x2, $5F2, hi
		piece	$60, 0, 2x2, $5DE, hi
		piece	$70, 0, 2x2, $580, hi
		endsprite

Frame_Card_WFZ:	spritemap					; WING FORTRESS
		piece	-$4F, 0, 3x2, $5DE, hi
		piece	-$38, 0, 1x2, $5E4, hi
		piece	-$30, 0, 2x2, $584, hi
		piece	-$20, 0, 2x2, $5E6, hi
		piece	1, 0, 2x2, $5EA, hi
		piece	$10, 0, 2x2, $588, hi
		piece	$20, 0, 2x2, $5EE, hi
		piece	$30, 0, 2x2, $5F2, hi
		piece	$40, 0, 2x2, $5EE, hi
		piece	$50, 0, 2x2, $580, hi
		piece	$5F, 0, 2x2, $5F6, hi
		piece	$6F, 0, 2x2, $5F6, hi
		endsprite

Frame_Card_DEZ:	spritemap					; DEATH EGG
		piece	-$E, 0, 2x2, $5DE, hi
		piece	2, 0, 2x2, $580, hi
		piece	$10, 0, 2x2, $5E2, hi
		piece	$20, 0, 2x2, $5E6, hi
		piece	$30, 0, 2x2, $5EA, hi
		piece	$51, 0, 2x2, $580, hi
		piece	$60, 0, 2x2, $5EE, hi
		piece	$70, 0, 2x2, $5EE, hi
		endsprite

Frame_Card_Zone:	spritemap				; ZONE
		piece	1, 0, 2x2, $58C, hi
		piece	$10, 0, 2x2, $588, hi
		piece	$20, 0, 2x2, $584, hi
		piece	$30, 0, 2x2, $580, hi
		endsprite

Frame_Card_Act1:	spritemap				; 1
		piece	0, 0, 2x4, $590, pal2, hi
		endsprite

Frame_Card_Act2:	spritemap				; 2
		piece	0, 0, 3x4, $598, pal2, hi
		endsprite

Frame_Card_Act3:	spritemap				; 3
		piece	0, 0, 3x4, $5A4, pal2, hi
		endsprite

Frame_Card_STH:	spritemap					; SONIC THE HEDGEHOG
		piece	-$48, 0, 4x2, $5B0, hi
		piece	-$28, 0, 4x2, $5B8, hi
		piece	-8, 0, 4x2, $5C0, hi
		piece	$18, 0, 4x2, $5C8, hi
		piece	$38, 0, 2x2, $5D0, hi
		endsprite

Frame_Card_RedTriangles:	spritemap			; red triangle border
		piece	0, -$70, 1x4, $5D4, hi
		piece	0, -$50, 1x4, $5D4, hi
		piece	0, -$30, 1x4, $5D4, hi
		piece	0, -$10, 1x4, $5D4, hi
		piece	0, $10, 1x4, $5D4, hi
		piece	0, $30, 1x4, $5D4, hi
		piece	0, $50, 1x4, $5D4, hi
		endsprite
