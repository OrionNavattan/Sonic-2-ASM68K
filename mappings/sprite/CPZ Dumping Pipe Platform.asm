; -------------------------------------------------------------------------------
; Mappings - CPZ Dumping Pipe Platform
; -------------------------------------------------------------------------------
Map_obj0B:	mappingsTable offset(*)
	mappingsTableEntry.w	Map_obj0B_000A
	mappingsTableEntry.w	Map_obj0B_001C
	mappingsTableEntry.w	Map_obj0B_002E
	mappingsTableEntry.w	Map_obj0B_0040
	mappingsTableEntry.w	Map_obj0B_0052

Map_obj0B_000A:	spriteHeader offset(*)
	spritePiece	-$10, -$10, 4, 1, 0, 0, 0, 0, 0
	spritePiece	-$10, -8, 4, 3, $24, 0, 0, 0, 0
		spriteFooter offset(*)

Map_obj0B_001C:	spriteHeader offset(*)
	spritePiece	-$10, -$18, 4, 4, 4, 0, 0, 0, 0
	spritePiece	-$10, -8, 4, 3, $24, 0, 0, 0, 0
		spriteFooter offset(*)

Map_obj0B_002E:	spriteHeader offset(*)
	spritePiece	-$10, -$C, 4, 4, $14, 0, 0, 0, 0
	spritePiece	-$10, -8, 4, 3, $24, 0, 0, 0, 0
		spriteFooter offset(*)

Map_obj0B_0040:	spriteHeader offset(*)
	spritePiece	-$10, 0, 4, 4, 4, 0, 1, 0, 0
	spritePiece	-$10, -8, 4, 3, $24, 0, 0, 0, 0
		spriteFooter offset(*)

Map_obj0B_0052:	spriteHeader offset(*)
	spritePiece	-$10, $10, 4, 1, 0, 0, 1, 0, 0
	spritePiece	-$10, -8, 4, 3, $24, 0, 0, 0, 0
		spriteFooter offset(*)

	even
