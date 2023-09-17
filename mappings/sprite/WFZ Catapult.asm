; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress catapult
; -------------------------------------------------------------------------------

Map_CPult:	index offset(*)
		ptr	Frame_CPult

Frame_CPult:	spritemap
		piece	-$10, -$17, 3, 1, 0, 0, 0, 0, 0
		piece	8, -$1F, 1, 2, 3, 0, 0, 0, 0
		endsprite

		even
