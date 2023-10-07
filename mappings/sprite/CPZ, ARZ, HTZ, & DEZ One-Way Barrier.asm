; -------------------------------------------------------------------------------
; Sprite mappings - Chemical Plant, Aquatic Ruin (unused), and Hill Top one-way 
; barrier 

; The frames for CPZ are unused because Sonic Team forgot to set the subtype for 
; these objects in the object layouts.
; -------------------------------------------------------------------------------

Map_Barrier:	index offset(*)
		ptr	Frame_Barrier_HTZ
		ptr	Frame_Barrier_Open
		ptr	Frame_Barrier_CPZ_ARZ_1
		ptr	Frame_Barrier_CPZ_ARZ_2

Frame_Barrier_HTZ:	spritemap
		piece	-8, -$20, 2x2, 0
		piece	-8, -$10, 2x2, 0
		piece	-8, 0, 2x2, 0
		piece	-8, $10, 2x2, 0
		endsprite

Frame_Barrier_Open:	spritemap
		piece	-$C, -$20, 3x4, $5F
		piece	-$C, 0, 3x4, $5F
		endsprite

Frame_Barrier_CPZ_ARZ_1:	spritemap
		piece	-8, -$20, 2x4, 0
		piece	-8, 0, 2x4, 0
		endsprite

Frame_Barrier_CPZ_ARZ_2:	spritemap
		piece	-8, -$20, 2x4, 0
		piece	-8, 0, 2x4, 0
		endsprite

		even
