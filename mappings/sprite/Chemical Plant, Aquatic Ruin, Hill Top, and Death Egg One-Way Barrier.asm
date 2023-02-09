; -------------------------------------------------------------------------------
; Sprite Mappings - Chemical Plant, Aquatic Ruin, Hill Top, and Death Egg one-way barrier 

; The frames for CPZ, ARZ, and DEZ are unused because Sonic Team
; forgot to set the subtype for these objects in the object layouts.
; -------------------------------------------------------------------------------

Map_Barrier:	index offset(*)
	ptr	Frame_Barrier_HTZ
	ptr	Frame_Barrier_Open
	ptr	Frame_Barrier_CPZ_ARZ_DEZ_1
	ptr	Frame_Barrier_CPZ_ARZ_DEZ_2

Frame_Barrier_HTZ:	spriteHeader
	spritePiece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
	spritePiece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
	spritePiece	-8, 0, 2, 2, 0, 0, 0, 0, 0
	spritePiece	-8, $10, 2, 2, 0, 0, 0, 0, 0
	spriteFooter

Frame_Barrier_Open:	spriteHeader
	spritePiece	-$C, -$20, 3, 4, $5F, 0, 0, 0, 0
	spritePiece	-$C, 0, 3, 4, $5F, 0, 0, 0, 0
	spriteFooter

Frame_Barrier_CPZ_ARZ_DEZ_1:	spriteHeader
	spritePiece	-8, -$20, 2, 4, 0, 0, 0, 0, 0
	spritePiece	-8, 0, 2, 4, 0, 0, 0, 0, 0
	spriteFooter

Frame_Barrier_CPZ_ARZ_DEZ_2:	spriteHeader
	spritePiece	-8, -$20, 2, 4, 0, 0, 0, 0, 0
	spritePiece	-8, 0, 2, 4, 0, 0, 0, 0, 0
	spriteFooter

	even
