; -------------------------------------------------------------------------------
; Metropolis teleporter tube location data
; -------------------------------------------------------------------------------

Telport_TubeData:	index offset(*),,2
		ptr word_2740C				;  0
		ptr word_27426				;  1
		ptr word_27430				;  2
		ptr word_2744A				;  3
		ptr word_27454				;  4
		ptr word_2745E				;  5
		ptr word_27478				;  6
		ptr word_27492				;  7
		ptr word_274AC				;  8
		ptr word_274C6				;  9
		ptr word_274E0				; $A
		ptr word_274FA				; $B
		ptr word_27514				; $C
		
word_2740C:	tubedatasize
		dc.w	$7A8, $270
		dc.w	$750, $270
		dc.w	$740, $280
		dc.w	$740, $3E0
		dc.w	$750, $3F0
		dc.w	$7A8, $3F0
		arraysize	word_2740C

word_27426:	tubedatasize
		dc.w	$C58, $5F0
		dc.w	$E28, $5F0
		arraysize	word_27426

word_27430:	tubedatasize
		dc.w	$1828, $6B0
		dc.w	$17D0, $6B0
		dc.w	$17C0, $6C0
		dc.w	$17C0, $7E0
		dc.w	$17B0, $7F0
		dc.w	$1758, $7F0
		arraysize	word_27430

word_2744A:	tubedatasize
		dc.w	$5D8, $370
		dc.w	$780, $370
		arraysize	word_2744A

word_27454:	tubedatasize
		dc.w	$5D8, $5F0
		dc.w	$700, $5F0
		arraysize	word_27454

word_2745E:	tubedatasize
		dc.w	$BD8, $1F0
		dc.w	$C30, $1F0
		dc.w	$C40, $1E0
		dc.w	$C40, $C0
		dc.w	$C50, $B0
		dc.w	$CA8, $B0
		arraysize	word_2745E

word_27478:	tubedatasize
		dc.w	$1728, $330
		dc.w	$15D0, $330
		dc.w	$15C0, $320
		dc.w	$15C0, $240
		dc.w	$15D0, $230
		dc.w	$1628, $230
		arraysize	word_27478

word_27492:	tubedatasize
		dc.w	$6D8, $1F0
		dc.w	$730, $1F0
		dc.w	$740, $1E0
		dc.w	$740, $100
		dc.w	$750, $F0
		dc.w	$7A8, $F0
		arraysize	word_27492

word_274AC:	tubedatasize
		dc.w	$7D8, $330
		dc.w	$828, $330
		dc.w	$840, $340
		dc.w	$840, $458
		dc.w	$828, $470
		dc.w	$7D8, $470
		arraysize	word_274AC

word_274C6:	tubedatasize
		dc.w	$FD8, $3B0
		dc.w	$1028, $3B0
		dc.w	$1040, $398
		dc.w	$1040, $2C4
		dc.w	$1058, $2B0
		dc.w	$10A8, $2B0
		arraysize	word_274C6

word_274E0:	tubedatasize
		dc.w	$FD8, $4B0
		dc.w	$1028, $4B0
		dc.w	$1040, $4C0
		dc.w	$1040, $5D8
		dc.w	$1058, $5F0
		dc.w	$10A8, $5F0
		arraysize	word_274E0

word_274FA:	tubedatasize
		dc.w	$2058, $430
		dc.w	$20A8, $430
		dc.w	$20C0, $418
		dc.w	$20C0, $2C0
		dc.w	$20D0, $2B0
		dc.w	$2128, $2B0
		arraysize	word_274FA

word_27514:	tubedatasize
		dc.w	$2328, $5B0
		dc.w	$22D0, $5B0
		dc.w	$22C0, $5A0
		dc.w	$22C0, $4C0
		dc.w	$22D0, $4B0
		dc.w	$2328, $4B0
		arraysize	word_27514
