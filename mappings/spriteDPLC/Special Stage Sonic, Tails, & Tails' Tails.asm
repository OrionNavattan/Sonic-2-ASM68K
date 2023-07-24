; -------------------------------------------------------------------------------
; Custom DPLCs - Special Stage Sonic, Tails and Tails' tails

; The first $12 frames are for Sonic; the next $12 frames are for Tails;
; the final $15 frames are for Tails' tails.
; The first $24 frames are almost normal DPLCS, the only difference being
; that the art tile to load is pre-shifted left by 4 bits.
; The same applies to the last $15 frames, but they have a second difference:
; a small space optimization. These frames only have one DPLC per frame ever,
; hence the two-byte dplc count is removed from each frame.	
; -------------------------------------------------------------------------------
	
SS_Sonic_Tails_DPLC:	index offset(*)
		ptr word_3466C					; 0 
		ptr word_34674					; 1
		ptr word_3467C					; 2
		ptr word_34684					; 3
		ptr word_3468C					; 4
		ptr word_34696					; 5
		ptr word_346A2					; 6
		ptr word_346AE					; 7
		ptr word_346BA					; 8
		ptr word_346C4					; 9
		ptr word_346D0					; 10
		ptr word_346DC					; 11
		ptr word_346EA					; 12
		ptr word_346F2					; 13
		ptr word_346FA					; 14
		ptr word_34702					; 15
		ptr word_3470A					; 16
		ptr word_34710					; 17
		ptr word_34716					; 18
		ptr word_3471E					; 19
		ptr word_34728					; 20
		ptr word_34732					; 21
		ptr word_3473E					; 22
		ptr word_34746					; 23
		ptr word_34750					; 24
		ptr word_3475C					; 25
		ptr word_34766					; 26
		ptr word_34770					; 27
		ptr word_3477C					; 28
		ptr word_34788					; 29
		ptr word_34792					; 30
		ptr word_34798					; 31
		ptr word_347A0					; 32
		ptr word_347A6					; 33
		ptr word_347AE					; 34
		ptr word_347B2					; 35
		ptr word_347B6					; 36
		ptr word_347B8					; 37
		ptr word_347BA					; 38
		ptr word_347BC					; 39
		ptr word_347BE					; 40
		ptr word_347C0					; 41
		ptr word_347C2					; 42
		ptr word_347C4					; 43
		ptr word_347C6					; 44
		ptr word_347C8					; 45
		ptr word_347CA					; 46
		ptr word_347CC					; 47
		ptr word_347CE					; 48
		ptr word_347D0					; 49
		ptr word_347D2					; 50
		ptr word_347D4					; 51
		ptr word_347D6					; 52
		ptr word_347D8					; 53
		ptr word_347DA					; 54
		ptr word_347DC					; 55
		ptr word_347DE					; 56
		
word_3466C:	dc.w 3			
		dc.w $F000					; 0
		dc.w $8100					; 1
		dc.w $1190					; 2
word_34674:	dc.w 3			
		dc.w $81B0					; 0
		dc.w $7240					; 1
		dc.w $32C0					; 2
word_3467C:	dc.w 3			
		dc.w $B300					; 0
		dc.w $73C0					; 1
		dc.w $5440					; 2
word_34684:	dc.w 3			
		dc.w $81B0					; 0
		dc.w $74A0					; 1
		dc.w $5520					; 2
word_3468C:	dc.w 4			
		dc.w $8000					; 0
		dc.w $3090					; 1
		dc.w $10D0					; 2
		dc.w $B0F0					; 3
word_34696:	dc.w 5			
		dc.w $51B0					; 0
		dc.w $1210					; 1
		dc.w $7230					; 2
		dc.w $72B0					; 3
		dc.w  $330					; 4
word_346A2:	dc.w 5			
		dc.w $1340					; 0
		dc.w $B360					; 1
		dc.w $2420					; 2
		dc.w $5450					; 3
		dc.w $34B0					; 4
word_346AE:	dc.w 5			
		dc.w $14F0					; 0
		dc.w $F510					; 1
		dc.w $2610					; 2
		dc.w  $640					; 3
		dc.w $3650					; 4
word_346BA:	dc.w 4			
		dc.w $3690					; 0
		dc.w $36D0					; 1
		dc.w $B710					; 2
		dc.w $37D0					; 3
word_346C4:	dc.w 5			
		dc.w $3810					; 0
		dc.w $2850					; 1
		dc.w $7880					; 2
		dc.w $7900					; 3
		dc.w  $980					; 4
word_346D0:	dc.w 5			
		dc.w $5990					; 0
		dc.w $19F0					; 1
		dc.w $7A10					; 2
		dc.w $7A90					; 3
		dc.w  $B10					; 4
word_346DC:	dc.w 6			
		dc.w  $B20					; 0
		dc.w $7B30					; 1
		dc.w  $BB0					; 2
		dc.w $1BC0					; 3
		dc.w $7BE0					; 4
		dc.w $5C60					; 5
word_346EA:	dc.w 3			
		dc.w $5000					; 0
		dc.w   $60					; 1
		dc.w $F070					; 2
word_346F2:	dc.w 3			
		dc.w $5170					; 0
		dc.w $31D0					; 1
		dc.w $B210					; 2
word_346FA:	dc.w 3			
		dc.w $22D0					; 0
		dc.w $2300					; 1
		dc.w $F330					; 2
word_34702:	dc.w 3			
		dc.w $5430					; 0
		dc.w $3490					; 1
		dc.w $B210					; 2
word_3470A:	dc.w 2			
		dc.w $7000					; 0
		dc.w $1080					; 1
word_34710:	dc.w 2			
		dc.w $70A0					; 0
		dc.w $1080					; 1
word_34716:	dc.w 3			
		dc.w $8000					; 0
		dc.w $5090					; 1
		dc.w   $F0					; 2
word_3471E:	dc.w 4			
		dc.w $3100					; 0
		dc.w $5140					; 1
		dc.w $31A0					; 2
		dc.w $31E0					; 3
word_34728:	dc.w 4			
		dc.w $3220					; 0
		dc.w $5260					; 1
		dc.w $32C0					; 2
		dc.w $3300					; 3
word_34732:	dc.w 5			
		dc.w $3100					; 0
		dc.w $5140					; 1
		dc.w $3340					; 2
		dc.w $3380					; 3
		dc.w  $3C0					; 4
word_3473E:	dc.w 3			
		dc.w $3000					; 0
		dc.w $7040					; 1
		dc.w $70C0					; 2
word_34746:	dc.w 4			
		dc.w $1140					; 0
		dc.w $7160					; 1
		dc.w $81E0					; 2
		dc.w $1270					; 3
word_34750:	dc.w 5			
		dc.w  $290					; 0
		dc.w $22A0					; 1
		dc.w $72D0					; 2
		dc.w  $350					; 3
		dc.w $5360					; 4
word_3475C:	dc.w 4			
		dc.w  $3C0					; 0
		dc.w $F3D0					; 1
		dc.w  $4D0					; 2
		dc.w $14E0					; 3
word_34766:	dc.w 4			
		dc.w $3500					; 0
		dc.w $3540					; 1
		dc.w $7580					; 2
		dc.w $5600					; 3
word_34770:	dc.w 5			
		dc.w  $660					; 0
		dc.w $7670					; 1
		dc.w  $6F0					; 2
		dc.w $7700					; 3
		dc.w $1780					; 4
word_3477C:	dc.w 5			
		dc.w  $7A0					; 0
		dc.w $B7B0					; 1
		dc.w  $870					; 2
		dc.w $3880					; 3
		dc.w $18C0					; 4
word_34788:	dc.w 4			
		dc.w  $8E0					; 0
		dc.w $B8F0					; 1
		dc.w  $9B0					; 2
		dc.w $79C0					; 3
word_34792:	dc.w 2			
		dc.w $8000					; 0
		dc.w $7090					; 1
word_34798:	dc.w 3			
		dc.w $3110					; 0
		dc.w  $150					; 1
		dc.w $B160					; 2
word_347A0:	dc.w 2			
		dc.w $1220					; 0
		dc.w $F240					; 1
word_347A6:	dc.w 3			
		dc.w $2340					; 0
		dc.w $2370					; 1
		dc.w $B160					; 2
word_347AE:	dc.w 1			
		dc.w $7000
word_347B2:	dc.w 1			
		dc.w $7080
		
word_347B6:	dc.w $5000		
word_347B8:	dc.w $8060		
word_347BA:	dc.w $50F0		
word_347BC:	dc.w $5150		
word_347BE:	dc.w $71B0		
word_347C0:	dc.w $8230		
word_347C2:	dc.w $82C0		
word_347C4:	dc.w $8000		
word_347C6:	dc.w $5090		
word_347C8:	dc.w $50F0		
word_347CA:	dc.w $7150		
word_347CC:	dc.w $B1D0		
word_347CE:	dc.w $8290		
word_347D0:	dc.w $8320		
word_347D2:	dc.w $5000		
word_347D4:	dc.w $8060		
word_347D6:	dc.w $50F0		
word_347D8:	dc.w $5150		
word_347DA:	dc.w $71B0		
word_347DC:	dc.w $8230		
word_347DE:	dc.w $82C0		
