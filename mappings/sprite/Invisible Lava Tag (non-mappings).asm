; -------------------------------------------------------------------------------
; Sprite Non-mappings - invisible lava tag
; This is a dumb workaround for a bug in this object's init routine.
; -------------------------------------------------------------------------------

NonMap_LTag:	index offset(*)
	ptr	Map_obj31_a_0006
	ptr	Map_obj31_a_0006
	ptr	Map_obj31_a_0006

Map_obj31_a_0006:	spritemap
	endsprite

	even
