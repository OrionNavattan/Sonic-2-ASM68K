; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean breakable launcher block
; -------------------------------------------------------------------------------

Map_LaunchBlock:	index offset(*)
		ptr	Map_obj3D_0008
		ptr	Map_obj3D_002A
		ptr	Map_obj3D_00AC
		ptr	Map_obj3D_00CE

Map_obj3D_0008:	spritemap
		piece	-$10, -$10, 1x4, 0
		piece	-8, -$10, 1x4, 0
		piece	0, -$10, 1x4, 0
		piece	8, -$10, 1x4, 0
		endsprite

Map_obj3D_002A:	spritemap
		piece	-$10, -$10, 1x1, 0
		piece	-8, -$10, 1x1, 0
		piece	0, -$10, 1x1, 0
		piece	8, -$10, 1x1, 0
		piece	-$10, -8, 1x1, 1
		piece	-8, -8, 1x1, 1
		piece	0, -8, 1x1, 1
		piece	8, -8, 1x1, 1
		piece	-$10, 0, 1x1, 2
		piece	-8, 0, 1x1, 2
		piece	0, 0, 1x1, 2
		piece	8, 0, 1x1, 2
		piece	-$10, 8, 1x1, 3
		piece	-8, 8, 1x1, 3
		piece	0, 8, 1x1, 3
		piece	8, 8, 1x1, 3
		endsprite

Map_obj3D_00AC:	spritemap
		piece	-$10, -$10, 4x1, 0
		piece	-$10, -8, 4x1, 0
		piece	-$10, 0, 4x1, 0
		piece	-$10, 8, 4x1, 0
		endsprite

Map_obj3D_00CE:	spritemap
		piece	-$10, -$10, 1x1, 0
		piece	-8, -$10, 1x1, 1
		piece	0, -$10, 1x1, 2
		piece	8, -$10, 1x1, 3
		piece	-$10, -8, 1x1, 0
		piece	-8, -8, 1x1, 1
		piece	0, -8, 1x1, 2
		piece	8, -8, 1x1, 3
		piece	-$10, 0, 1x1, 0
		piece	-8, 0, 1x1, 1
		piece	0, 0, 1x1, 2
		piece	8, 0, 1x1, 3
		piece	-$10, 8, 1x1, 0
		piece	-8, 8, 1x1, 1
		piece	0, 8, 1x1, 2
		piece	8, 8, 1x1, 3
		endsprite

		even
