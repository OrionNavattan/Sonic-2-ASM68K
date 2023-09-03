; -------------------------------------------------------------------------------
; Sprite mappings - Scenery1 subtype 9 (unused)
; The tile value used with them suggests ARZ, and they do produce legible sprites,
; (a bit of grass and a slide of ground), but what they would have been used for
; is unknown.
; -------------------------------------------------------------------------------

Map_ARZUnusedScenery:	index offset(*)
		ptr	Frame_ARZSceneryGrass
		ptr	Frame_ARZSceneryGround

Frame_ARZSceneryGrass:	spritemap
		piece	-4, -8, 1, 2, 0, 0, 0, 0, 0
		endsprite

Frame_ARZSceneryGround:	spritemap
		piece	-4, -8, 1, 2, 2, 0, 0, 0, 0
		endsprite

		even
