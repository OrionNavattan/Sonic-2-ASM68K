; -------------------------------------------------------------------------------
; Sprite Mappings - Level Title Cards
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

Frame_Card_EHZ:	spriteHeader					; EMERALD HILL
		spritePiece	-$3D, 0, 2, 2, $580, 0, 0, 0, 1
		spritePiece	-$30, 0, 3, 2, $5DE, 0, 0, 0, 1
		spritePiece	-$18, 0, 2, 2, $580, 0, 0, 0, 1
		spritePiece	-8, 0, 2, 2, $5E4, 0, 0, 0, 1
		spritePiece	8, 0, 2, 2, $5E8, 0, 0, 0, 1
		spritePiece	$18, 0, 2, 2, $5EC, 0, 0, 0, 1
		spritePiece	$28, 0, 2, 2, $5F0, 0, 0, 0, 1
		spritePiece	$48, 0, 2, 2, $5F4, 0, 0, 0, 1
		spritePiece	$58, 0, 1, 2, $5F8, 0, 0, 0, 1
		spritePiece	$60, 0, 2, 2, $5EC, 0, 0, 0, 1
		spritePiece	$70, 0, 2, 2, $5EC, 0, 0, 0, 1
		spriteFooter

Frame_Card_MTZ:	spriteHeader					; METROPOLIS
		spritePiece	-$20, 0, 3, 2, $5DE, 0, 0, 0, 1
		spritePiece	-8, 0, 2, 2, $580, 0, 0, 0, 1
		spritePiece	8, 0, 2, 2, $5E4, 0, 0, 0, 1
		spritePiece	$18, 0, 2, 2, $5E8, 0, 0, 0, 1
		spritePiece	$28, 0, 2, 2, $588, 0, 0, 0, 1
		spritePiece	$38, 0, 2, 2, $5EC, 0, 0, 0, 1
		spritePiece	$48, 0, 2, 2, $588, 0, 0, 0, 1
		spritePiece	$58, 0, 2, 2, $5F0, 0, 0, 0, 1
		spritePiece	$68, 0, 1, 2, $5F4, 0, 0, 0, 1
		spritePiece	$70, 0, 2, 2, $5F6, 0, 0, 0, 1
		spriteFooter

Frame_Card_HTZ:	spriteHeader					; HILL TOP
		spritePiece	8, 0, 2, 2, $5DE, 0, 0, 0, 1
		spritePiece	$18, 0, 1, 2, $5E2, 0, 0, 0, 1
		spritePiece	$20, 0, 2, 2, $5E4, 0, 0, 0, 1
		spritePiece	$30, 0, 2, 2, $5E4, 0, 0, 0, 1
		spritePiece	$51, 0, 2, 2, $5E8, 0, 0, 0, 1
		spritePiece	$60, 0, 2, 2, $588, 0, 0, 0, 1
		spritePiece	$70, 0, 2, 2, $5EC, 0, 0, 0, 1
		spriteFooter

Frame_Card_HPZ:	spriteHeader					; HIDDEN PALACE
		spritePiece	-$48, 0, 2, 2, $5DE, 0, 0, 0, 1
		spritePiece	-$38, 0, 1, 2, $5E2, 0, 0, 0, 1
		spritePiece	-$30, 0, 2, 2, $5E4, 0, 0, 0, 1
		spritePiece	-$20, 0, 2, 2, $5E4, 0, 0, 0, 1
		spritePiece	-$10, 0, 2, 2, $580, 0, 0, 0, 1
		spritePiece	0, 0, 2, 2, $584, 0, 0, 0, 1
		spritePiece	$20, 0, 2, 2, $5E8, 0, 0, 0, 1
		spritePiece	$30, 0, 2, 2, $5EC, 0, 0, 0, 1
		spritePiece	$40, 0, 2, 2, $5F0, 0, 0, 0, 1
		spritePiece	$50, 0, 2, 2, $5EC, 0, 0, 0, 1
		spritePiece	$60, 0, 2, 2, $5F4, 0, 0, 0, 1
		spritePiece	$70, 0, 2, 2, $580, 0, 0, 0, 1
		spriteFooter

Frame_Card_OOZ:	spriteHeader					; OIL OCEAN
		spritePiece	-5, 0, 2, 2, $588, 0, 0, 0, 1
		spritePiece	$B, 0, 1, 2, $5DE, 0, 0, 0, 1
		spritePiece	$13, 0, 2, 2, $5E0, 0, 0, 0, 1
		spritePiece	$33, 0, 2, 2, $588, 0, 0, 0, 1
		spritePiece	$43, 0, 2, 2, $5E4, 0, 0, 0, 1
		spritePiece	$53, 0, 2, 2, $580, 0, 0, 0, 1
		spritePiece	$60, 0, 2, 2, $5E8, 0, 0, 0, 1
		spritePiece	$70, 0, 2, 2, $584, 0, 0, 0, 1
		spriteFooter

Frame_Card_MCZ:	spriteHeader					; MYSTIC CAVE
		spritePiece	-$30, 0, 3, 2, $5DE, 0, 0, 0, 1
		spritePiece	-$18, 0, 2, 2, $5E4, 0, 0, 0, 1
		spritePiece	-8, 0, 2, 2, $5E8, 0, 0, 0, 1
		spritePiece	8, 0, 2, 2, $5EC, 0, 0, 0, 1
		spritePiece	$18, 0, 1, 2, $5F0, 0, 0, 0, 1
		spritePiece	$20, 0, 2, 2, $5F2, 0, 0, 0, 1
		spritePiece	$41, 0, 2, 2, $5F2, 0, 0, 0, 1
		spritePiece	$50, 0, 2, 2, $5F6, 0, 0, 0, 1
		spritePiece	$60, 0, 2, 2, $5FA, 0, 0, 0, 1
		spritePiece	$70, 0, 2, 2, $580, 0, 0, 0, 1
		spriteFooter

Frame_Card_CNZ:	spriteHeader					; CASINO NIGHT
		spritePiece	-$2F, 0, 2, 2, $5DE, 0, 0, 0, 1
		spritePiece	-$20, 0, 2, 2, $5E2, 0, 0, 0, 1
		spritePiece	-$10, 0, 2, 2, $5E6, 0, 0, 0, 1
		spritePiece	0, 0, 1, 2, $5EA, 0, 0, 0, 1
		spritePiece	8, 0, 2, 2, $584, 0, 0, 0, 1
		spritePiece	$18, 0, 2, 2, $588, 0, 0, 0, 1
		spritePiece	$38, 0, 2, 2, $584, 0, 0, 0, 1
		spritePiece	$48, 0, 1, 2, $5EA, 0, 0, 0, 1
		spritePiece	$50, 0, 2, 2, $5EC, 0, 0, 0, 1
		spritePiece	$60, 0, 2, 2, $5F0, 0, 0, 0, 1
		spritePiece	$70, 0, 2, 2, $5F4, 0, 0, 0, 1
		spriteFooter

Frame_Card_CPZ:	spriteHeader					; CHEMICAL PLANT
		spritePiece	-$5C, 0, 2, 2, $5DE, 0, 0, 0, 1
		spritePiece	-$4C, 0, 2, 2, $5E2, 0, 0, 0, 1
		spritePiece	-$3C, 0, 2, 2, $580, 0, 0, 0, 1
		spritePiece	-$2F, 0, 3, 2, $5E6, 0, 0, 0, 1
		spritePiece	-$17, 0, 1, 2, $5EC, 0, 0, 0, 1
		spritePiece	-$F, 0, 2, 2, $5DE, 0, 0, 0, 1
		spritePiece	0, 0, 2, 2, $5EE, 0, 0, 0, 1
		spritePiece	$10, 0, 2, 2, $5F2, 0, 0, 0, 1
		spritePiece	$31, 0, 2, 2, $5F6, 0, 0, 0, 1
		spritePiece	$41, 0, 2, 2, $5F2, 0, 0, 0, 1
		spritePiece	$50, 0, 2, 2, $5EE, 0, 0, 0, 1
		spritePiece	$60, 0, 2, 2, $584, 0, 0, 0, 1
		spritePiece	$70, 0, 2, 2, $5FA, 0, 0, 0, 1
		spriteFooter

Frame_Card_ARZ:	spriteHeader					; AQUATIC RUIN
		spritePiece	-$2E, 0, 2, 2, $5DE, 0, 0, 0, 1
		spritePiece	-$1E, 0, 2, 2, $5E2, 0, 0, 0, 1
		spritePiece	-$E, 0, 2, 2, $5E6, 0, 0, 0, 1
		spritePiece	0, 0, 2, 2, $5DE, 0, 0, 0, 1
		spritePiece	$10, 0, 2, 2, $5EA, 0, 0, 0, 1
		spritePiece	$20, 0, 1, 2, $5EE, 0, 0, 0, 1
		spritePiece	$28, 0, 2, 2, $5F0, 0, 0, 0, 1
		spritePiece	$48, 0, 2, 2, $5F4, 0, 0, 0, 1
		spritePiece	$58, 0, 2, 2, $5E6, 0, 0, 0, 1
		spritePiece	$68, 0, 1, 2, $5EE, 0, 0, 0, 1
		spritePiece	$70, 0, 2, 2, $584, 0, 0, 0, 1
		spriteFooter

Frame_Card_SCZ:	spriteHeader					; SKY CHASE
		spritePiece	-$10, 0, 2, 2, $5DE, 0, 0, 0, 1
		spritePiece	0, 0, 2, 2, $5E2, 0, 0, 0, 1
		spritePiece	$10, 0, 2, 2, $5E6, 0, 0, 0, 1
		spritePiece	$30, 0, 2, 2, $5EA, 0, 0, 0, 1
		spritePiece	$40, 0, 2, 2, $5EE, 0, 0, 0, 1
		spritePiece	$50, 0, 2, 2, $5F2, 0, 0, 0, 1
		spritePiece	$60, 0, 2, 2, $5DE, 0, 0, 0, 1
		spritePiece	$70, 0, 2, 2, $580, 0, 0, 0, 1
		spriteFooter

Frame_Card_WFZ:	spriteHeader					; WING FORTRESS
		spritePiece	-$4F, 0, 3, 2, $5DE, 0, 0, 0, 1
		spritePiece	-$38, 0, 1, 2, $5E4, 0, 0, 0, 1
		spritePiece	-$30, 0, 2, 2, $584, 0, 0, 0, 1
		spritePiece	-$20, 0, 2, 2, $5E6, 0, 0, 0, 1
		spritePiece	1, 0, 2, 2, $5EA, 0, 0, 0, 1
		spritePiece	$10, 0, 2, 2, $588, 0, 0, 0, 1
		spritePiece	$20, 0, 2, 2, $5EE, 0, 0, 0, 1
		spritePiece	$30, 0, 2, 2, $5F2, 0, 0, 0, 1
		spritePiece	$40, 0, 2, 2, $5EE, 0, 0, 0, 1
		spritePiece	$50, 0, 2, 2, $580, 0, 0, 0, 1
		spritePiece	$5F, 0, 2, 2, $5F6, 0, 0, 0, 1
		spritePiece	$6F, 0, 2, 2, $5F6, 0, 0, 0, 1
		spriteFooter

Frame_Card_DEZ:	spriteHeader					; DEATH EGG
		spritePiece	-$E, 0, 2, 2, $5DE, 0, 0, 0, 1
		spritePiece	2, 0, 2, 2, $580, 0, 0, 0, 1
		spritePiece	$10, 0, 2, 2, $5E2, 0, 0, 0, 1
		spritePiece	$20, 0, 2, 2, $5E6, 0, 0, 0, 1
		spritePiece	$30, 0, 2, 2, $5EA, 0, 0, 0, 1
		spritePiece	$51, 0, 2, 2, $580, 0, 0, 0, 1
		spritePiece	$60, 0, 2, 2, $5EE, 0, 0, 0, 1
		spritePiece	$70, 0, 2, 2, $5EE, 0, 0, 0, 1
		spriteFooter

Frame_Card_Zone:	spriteHeader				; ZONE
		spritePiece	1, 0, 2, 2, $58C, 0, 0, 0, 1
		spritePiece	$10, 0, 2, 2, $588, 0, 0, 0, 1
		spritePiece	$20, 0, 2, 2, $584, 0, 0, 0, 1
		spritePiece	$30, 0, 2, 2, $580, 0, 0, 0, 1
		spriteFooter

Frame_Card_Act1:	spriteHeader				; 1
		spritePiece	0, 0, 2, 4, $590, 0, 0, 1, 1
		spriteFooter

Frame_Card_Act2:	spriteHeader				; 2
		spritePiece	0, 0, 3, 4, $598, 0, 0, 1, 1
		spriteFooter

Frame_Card_Act3:	spriteHeader				; 3
		spritePiece	0, 0, 3, 4, $5A4, 0, 0, 1, 1
		spriteFooter

Frame_Card_STH:	spriteHeader					; SONIC THE HEDGEHOG
		spritePiece	-$48, 0, 4, 2, $5B0, 0, 0, 0, 1
		spritePiece	-$28, 0, 4, 2, $5B8, 0, 0, 0, 1
		spritePiece	-8, 0, 4, 2, $5C0, 0, 0, 0, 1
		spritePiece	$18, 0, 4, 2, $5C8, 0, 0, 0, 1
		spritePiece	$38, 0, 2, 2, $5D0, 0, 0, 0, 1
		spriteFooter

Frame_Card_RedTriangles:	spriteHeader			; red triangle border
		spritePiece	0, -$70, 1, 4, $5D4, 0, 0, 0, 1
		spritePiece	0, -$50, 1, 4, $5D4, 0, 0, 0, 1
		spritePiece	0, -$30, 1, 4, $5D4, 0, 0, 0, 1
		spritePiece	0, -$10, 1, 4, $5D4, 0, 0, 0, 1
		spritePiece	0, $10, 1, 4, $5D4, 0, 0, 0, 1
		spritePiece	0, $30, 1, 4, $5D4, 0, 0, 0, 1
		spritePiece	0, $50, 1, 4, $5D4, 0, 0, 0, 1
		spriteFooter
