; ---------------------------------------------------------------------------
; Sprite mappings - points that appear when player destroys something
; ---------------------------------------------------------------------------

Map_Points:	index offset(*)
		ptr	Frame_Points_100
		ptr	Frame_Points_200
		ptr	Frame_Points_500
		ptr	Frame_Points_1K
		ptr	Frame_Points_10
		ptr	Frame_Points_10K
		ptr	Frame_Points_50K

Frame_Points_100:	spritemap
		piece	-8, -8, 2, 2, 2, 0, 0, 0, 0
		endsprite

Frame_Points_200:	spritemap
		piece	-8, -8, 2, 2, 6, 0, 0, 0, 0
		endsprite

Frame_Points_500:	spritemap
		piece	-8, -8, 2, 2, $A, 0, 0, 0, 0
		endsprite

Frame_Points_1K:	spritemap
		piece	-8, -8, 1, 2, 0, 0, 0, 0, 0
		piece	0, -8, 2, 2, $E, 0, 0, 0, 0
		endsprite

Frame_Points_10:	spritemap
		piece	-4, -8, 1, 2, 0, 0, 0, 0, 0
		endsprite

Frame_Points_10K:	spritemap
		piece	-$10, -8, 2, 2, 2, 0, 0, 0, 0
		piece	0, -8, 2, 2, $E, 0, 0, 0, 0
		endsprite

Frame_Points_50K:	spritemap
		piece	-$10, -8, 2, 2, $A, 0, 0, 0, 0
		piece	0, -8, 2, 2, $E, 0, 0, 0, 0
		endsprite

		even
