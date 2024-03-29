; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress vertical propeller
; -------------------------------------------------------------------------------

Map_VertProp:	index offset(*)
		ptr	Frame_VertProp1				; 1
		ptr	Frame_VertProp2				; 2
		ptr	Frame_VertProp3				; 3

Frame_VertProp1:	spritemap
		piece	-4, -$40, 1x4, 0
		piece	-4, -$20, 1x4, 0, yflip
		endsprite

Frame_VertProp2:	spritemap
		piece	-4, -$20, 1x4, 0
		piece	-4, 0, 1x4, 0, yflip
		endsprite

Frame_VertProp3:	spritemap
		piece	-4, 0, 1x4, 0
		piece	-4, $20, 1x4, 0, yflip
		endsprite

		even
