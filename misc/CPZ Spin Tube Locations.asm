; -------------------------------------------------------------------------------
; Chemical Plant spin tube location data
; -------------------------------------------------------------------------------

SpinTube_TubeData:	index offset(*),,2
		ptr word_22EA6
		ptr word_22EA6
		ptr word_22EBC
		ptr word_22EE6
		ptr word_22EFC
		ptr word_22F12
		ptr word_22F28
		ptr word_22F3A
		ptr word_22F54
		ptr word_22F6E
		ptr word_22F80
		ptr word_22F92
		ptr word_22FAC
		ptr word_22FC2
		ptr word_22FD0

word_22EA6:	tubedatasize
		dc.w $790, $3B0
		dc.w $710, $3B0
		dc.w $710, $6B0
		dc.w $A90, $6B0
		dc.w $A90, $670
		arraysize	word_22EA6

word_22EBC:	tubedatasize
		dc.w $790, $3F0
		dc.w $790, $4B0
		dc.w $A00, $4B0
		dc.w $C10, $4B0
		dc.w $C10, $330
		dc.w $D90, $330
		dc.w $D90, $1B0
		dc.w $F10, $1B0
		dc.w $F10, $2B0
		dc.w $F90, $2B0
		arraysize	word_22EBC

word_22EE6:	tubedatasize
		dc.w $AF0, $630
		dc.w $E90, $630
		dc.w $E90, $6B0
		dc.w $F90, $6B0
		dc.w $F90, $670
		arraysize	word_22EE6

word_22EFC:	tubedatasize
		dc.w $F90, $2F0
		dc.w $F90, $4B0
		dc.w $F10, $4B0
		dc.w $F10, $630
		dc.w $F90, $630
		arraysize	word_22EFC

word_22F12:	tubedatasize
		dc.w $1410, $530
		dc.w $1190, $530
		dc.w $1190, $6B0
		dc.w $1410, $6B0
		dc.w $1410, $570
		arraysize	word_22F12

word_22F28:	tubedatasize
		dc.w $1AF0, $530
		dc.w $1B90, $530
		dc.w $1B90, $330
		dc.w $1E10, $330
		arraysize	word_22F28

word_22F3A:	tubedatasize
		dc.w $1A90, $570
		dc.w $1A90, $5B0
		dc.w $1C10, $5B0
		dc.w $1C10, $430
		dc.w $1E10, $430
		dc.w $1E10, $370
		arraysize	word_22F3A

word_22F54:	tubedatasize
		dc.w $2490, $370
		dc.w $2490, $3D0
		dc.w $2390, $3D0
		dc.w $2390, $5D0
		dc.w $2510, $5D0
		dc.w $2510, $570
		arraysize	word_22F54

word_22F6E:	tubedatasize
		dc.w $24F0, $330
		dc.w $2590, $330
		dc.w $2590, $530
		dc.w $2570, $530
		arraysize	word_22F6E

word_22F80:	tubedatasize
		dc.w $310, $330
		dc.w $290, $330
		dc.w $290, $230
		dc.w $490, $230
		arraysize	word_22F80

word_22F92:	tubedatasize
		dc.w $310, $370
		dc.w $310, $3B0
		dc.w $410, $3B0
		dc.w $410, $2B0
		dc.w $490, $2B0
		dc.w $490, $270
		arraysize	word_22F92

word_22FAC:	tubedatasize
		dc.w $490, $6F0
		dc.w $490, $730
		dc.w $690, $730
		dc.w $890, $730
		dc.w $890, $6F0
		arraysize	word_22FAC

word_22FC2:	tubedatasize
		dc.w $BF0, $330
		dc.w $D90, $330
		dc.w $D90, $2F0
		arraysize	word_22FC2

word_22FD0:	tubedatasize
		dc.w $D90, $2B0
		dc.w $C90, $2B0
		dc.w $C90, $B0
		dc.w $E80, $B0
		dc.w $1110, $B0
		dc.w $1110, $230
		dc.w $10F0, $230
		arraysize	word_22FD0
