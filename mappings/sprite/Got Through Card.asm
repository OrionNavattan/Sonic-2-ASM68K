; ---------------------------------------------------------------------------
; Sprite mappings - "SONIC GOT THROUGH" title card
; ---------------------------------------------------------------------------

Map_GotThrough:	index offset (*)
		ptr word_14CDA					; 0			
		ptr word_14D1C
		ptr word_14D5E
		ptr word_14DA0
		ptr word_14DDA
		ptr Frame_Card_Zone
		ptr Frame_Card_Act1
		ptr Frame_Card_Act2
		ptr Frame_Card_Act3
		ptr word_14DF4
		ptr word_14E1E
		ptr word_14E50
		ptr word_14E82
		ptr word_14E8C
		ptr word_14E96

word_14CDA:	spritemap
		piece	-$40, 0, 2x2, $5D0, hi
		piece	-$30, 0, 2x2, $588, hi
		piece	-$20, 0, 2x2, $584, hi
		piece	-$10, 0, 1x2, $5C0, hi
		piece	-8, 0, 2x2, $5B4, hi
		piece	$10, 0, 2x2, $5B8, hi
		piece	$20, 0, 2x2, $588, hi
		piece	$2F, 0, 2x2, $5D4, hi
		endsprite

word_14D1C:	spritemap
		piece	-$44, 0, 3x2, $5C6, hi
		piece	-$2C, 0, 1x2, $5C0, hi
		piece	-$24, 0, 2x2, $5C2, hi
		piece	-$14, 0, 2x2, $580, hi
		piece	-4, 0, 2x2, $5D0, hi
		piece	$14, 0, 2x2, $5B8, hi
		piece	$24, 0, 2x2, $588, hi
		piece	$33, 0, 2x2, $5D4, hi
		endsprite

word_14D5E:	spritemap
		piece	-$3D, 0, 2x2, $5D4, hi
		piece	-$30, 0, 2x2, $5B0, hi
		piece	-$20, 0, 1x2, $5C0, hi
		piece	-$18, 0, 2x2, $5C2, hi
		piece	-8, 0, 2x2, $5D0, hi
		piece	$10, 0, 2x2, $5B8, hi
		piece	$20, 0, 2x2, $588, hi
		piece	$2F, 0, 2x2, $5D4, hi
		endsprite

word_14DA0:	spritemap
		piece	-$38, 0, 2x2, $5D4, hi
		piece	-$28, 0, 2x2, $5BC, hi
		piece	-$18, 0, 2x2, $5CC, hi
		piece	-8, 0, 2x2, $588, hi
		piece	8, 0, 2x2, $5D8, hi
		piece	$18, 0, 2x2, $5B8, hi
		piece	$28, 0, 2x2, $5BC, hi
		endsprite

word_14DDA:	spritemap
		piece	0, 0, 2x2, $5B0, hi
		piece	$10, 0, 2x2, $5B4, hi
		piece	$1F, 0, 2x2, $5D4, hi
		endsprite

word_14DF4:	spritemap
		piece	-$48, 0, 3x2, $5E6, pal2, hi
		piece	-$30, 0, 2x2, $5EC, pal2, hi
		piece	-$2C, 0, 2x2, $5F0, hi
		piece	$38, 0, 4x2, $520, hi
		piece	$58, 0, 1x2, $6F0, hi
		endsprite

word_14E1E:	spritemap
		piece	-$5C, 0, 4x2, $6DA, pal2, hi
		piece	-$34, 0, 4x2, $5DE, pal2, hi
		piece	-$14, 0, 1x2, $6CA, pal2, hi
		piece	-$18, 0, 2x2, $5F0, hi
		piece	$38, 0, 4x2, $528, hi
		piece	$58, 0, 1x2, $6F0, hi
		endsprite

word_14E50:	spritemap
		piece	-$5C, 0, 4x2, $6D2, pal2, hi
		piece	-$34, 0, 4x2, $5DE, pal2, hi
		piece	-$14, 0, 1x2, $6CA, pal2, hi
		piece	-$18, 0, 2x2, $5F0, hi
		piece	$38, 0, 4x2, $530, hi
		piece	$58, 0, 1x2, $6F0, hi
		endsprite

word_14E82:	spritemap
		piece	0, 0, 2x3, $5F4, hi
		endsprite

word_14E8C:	spritemap
		piece	0, 0, 2x3, $5FA, hi
		endsprite

word_14E96:	spritemap
		piece	-$68, 0, 4x2, $540, pal2, hi
		piece	-$48, 0, 3x2, $548, pal2, hi
		piece	-$28, 0, 4x2, $5DE, pal2, hi
		piece	-8, 0, 1x2, $6CA, pal2, hi
		piece	-$C, 0, 2x2, $5F0, hi
		piece	$38, 0, 4x2, $538, hi
		piece	$58, 0, 1x2, $6F0, hi
		endsprite

		even
