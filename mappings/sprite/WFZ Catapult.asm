; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress catapult
; -------------------------------------------------------------------------------

Map_CPult:	index offset(*)
		ptr	Frame_CPult

Frame_CPult:	spritemap
		piece	-$10, -$17, 3x1, 0
		piece	8, -$1F, 1x2, 3
		endsprite

		even
