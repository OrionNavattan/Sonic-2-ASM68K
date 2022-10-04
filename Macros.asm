; ---------------------------------------------------------------------------
; Test if argument is used
; ---------------------------------------------------------------------------

ifarg		macros
		if strlen("\1")>0

ifnotarg	macros
		if strlen("\1")=0

; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------
; Align and pad.
; input: length to align to, value to use as padding (default is 0)
; ---------------------------------------------------------------------------

align:		macro loc,length,value
		ifarg \value
		dcb.b (\length-(loc%\length))%\length,\value
		else
		dcb.b (\length-(loc%\length))%\length,0
		endc
		endm
		
; ---------------------------------------------------------------------------
; Save and restore registers from the stack.
; ---------------------------------------------------------------------------


chkifreg:	macro
		isreg: = 1					; assume string is register
		isregm: = 0					; assume single register
		regtmp: equs \1					; copy input
		rept strlen(\1)
		regchr:	substr ,1,"\regtmp"			; get first character
		regtmp:	substr 2,,"\regtmp"			; remove first character
		if instr("ad01234567/-","\regchr")
		else
		isreg: = 0					; string isn't register if it contains characters besides those listed
		endc
		if instr("/-","\regchr")
		isregm: = 1					; string is multi-register
		endc
		endr
		endm

pushr:		macro
		chkifreg "\1"
		if (isreg=1)&(isregm=1)
			ifarg \0				; check if size is specified
			movem.\0	\1,-(sp)		; save multiple registers (b/w)
			else
			movem.l	\1,-(sp)			; save multiple registers
			endc
		else
			ifarg \0				; check if size is specified
			move.\0	\1,-(sp)			; save one register (b/w)
			else
			move.l	\1,-(sp)			; save one whole register
			endc
		endc
		endm

popr:		macro
		chkifreg "\1"
		if (isreg=1)&(isregm=1)
			ifarg \0				; check if size is specified
			movem.\0	(sp)+,\1		; restore multiple registers (b/w)
			else
			movem.l	(sp)+,\1			; restore multiple whole registers
			endc
		else
			ifarg \0				; check if size is specified
			move.\0	(sp)+,\1			; restore one register (b/w)
			else
			move.l	(sp)+,\1			; restore one whole register
			endc
		endc
		endm
		
; ---------------------------------------------------------------------------
; Add/sub optimizations.
; Almost all possible add/sub optimizations were made in Revision 2.
; ---------------------------------------------------------------------------
	
    if AddSubOptimize
	; if addsubOptimize, optimize these...
addi_:		macro	src,dest
		addq.\0	\src,\dest
	endm
subi_:		macro
		subq.\0	\src,\dest
	endm
adda_:		macro
		addq.\0	\src,\dest
	endm

    else

	; ...otherwise, leave them unoptimized.
addi_:		macro	src,dest
		addi.\0	\src,\dest
	endm
subi_:		macro
		subi.\0	\src,\dest
	endm
adda_:		macro
		adda.\0	\src,\dest
	endm
    endc
    
    
; ------------------------------------------------------------------------------
; Relative lea.
; Optimize various lea instructions to be PC relative instead of absolute long.
; These were deoptimized to absolute long in Revision 2.
; ------------------------------------------------------------------------------

lea_: 		macro address,reg
	if RelativeLea
		lea \address(pc),\reg
	else
		lea (\address).l,\reg
	endc
    endm

; ---------------------------------------------------------------------------
; Revision 2 even. Unnecessary even commands, most likely 
; automatically generated by the assembler after 'dc.b' opcodes.
; ---------------------------------------------------------------------------
rev02even:	 macro
	if Revision=2
		even
	endc
    endm

; ---------------------------------------------------------------------------
; Depending on if RemoveJmpTos is set or not, these macros will create a jump directly
; to the destination, or create a branch to a JmpTo
; ---------------------------------------------------------------------------
jsrto:		 macro directaddr,indirectaddr
	if RemoveJmpTos
		jsr (\directaddr).l	; jump directly to address
	else
		bsr.w \indirectaddr	; otherwise, branch to an indirect JmpTo
	endc
    endm

jmpto:		 macro directaddr,indirectaddr
	if RemoveJmpTos
		jmp (\directaddr).l	; jump directly to address
	else
		bra.w \indirectaddr	; otherwise, branch to an indirect JmpTo
	endc
    endm


; ---------------------------------------------------------------------------
; Align and pad RAM sections so that they are divisible by a longword,
; and organize ram into blocks for clear_ram macro
; ---------------------------------------------------------------------------

rsalign:	macro
		rs.b (\1-(__rs%\1))%\1
		endm

rsblock:	macro
		rsalign 2					; align to even address
		\1\: equ __rs
		endm

rsblockend:	macro ; Adapted to Sonic 2's macro-based RAM clearing
		\1\_end:	equ __rs
		endm
; ---------------------------------------------------------------------------
; Organise object RAM usage.
; ---------------------------------------------------------------------------

rsobj:		macro name,start
		rsobj_name: equs "\name"			; remember name of current object
		ifarg \start
		rsset \start					; start at specified position
		else
		rsset ost_used					; start at end of regular OST usage
		endc
		pusho						; save options
		opt	ae+					; enable auto evens
		endm

rsobjend:	macro
		if __rs>sizeof_ost
		inform	3,"OST for \rsobj_name exceeds maximum by $%h bytes.",__rs-sizeof_ost
		else
		;inform	0,"0-$%h bytes of OST for \rsobj_name used, leaving $%h bytes unused.",__rs-1,sizeof_ost-__rs
		endc
		popo
		endm
		
; ---------------------------------------------------------------------------
; Clear an area of RAM.
; input: start address, end address
; ---------------------------------------------------------------------------		
		
clear_ram:		 macro startaddr,endaddr
	if startaddr>endaddr
		inform 3,"Starting address of clearRAM $%h is after ending address $%h.",startaddr,endaddr
    elseif startaddr=endaddr
		inform 1,"clearRAM is clearing zero bytes. Turning this into a nop instead."
		mexit
    endc
    if ((startaddr)&$8000)=0
		lea	(startaddr).l,a1
    else
		lea	(startaddr).w,a1
   	endc
		moveq	#0,d0
    if ((startaddr)&1)
		move.b	d0,(a1)+
    endc
		move.w	(endaddr-startaddr)/4)-1,d1
	.loop\@:	
		move.l	d0,(a1)+
		dbf	d1,.loop\@
    if (((endaddr-startaddr)-((startaddr)&1))&2)
		move.w	d0,(a1)+
    endc
    if (((endaddr-startaddr)-((startaddr)&1))&1)
		move.b	d0,(a1)+
    endc
    	endm		

; ---------------------------------------------------------------------------
; Create a pointer index.
; input: start location (usually offset(*) or 0; leave blank to make pointers
; relative to themselves), id start (default 0), id increment (default 1)
; ---------------------------------------------------------------------------

index:		macro start,idstart,idinc
		nolist
		pusho
		opt	m-

		ifarg \start					; check if start is defined
		index_start: = \start
		else
		index_start: = -1
		endc

		ifarg \0					; check if width is defined (b, w, l)
		index_width: equs "\0"
		else
		index_width: equs "w"				; use w by default
		endc
		
		ifarg \idstart					; check if first pointer id is defined
		ptr_id: = \idstart
		else
		ptr_id: = 0					; use 0 by default
		endc

		ifarg \idinc					; check if pointer id increment is defined
		ptr_id_inc: = \idinc
		else
		ptr_id_inc: = 1					; use 1 by default
		endc
		
		popo
		list
		endm
; ---------------------------------------------------------------------------
; Item in a pointer index.
; input: pointer target, pointer label array (optional)
; ---------------------------------------------------------------------------

ptr:		macro
		nolist
		pusho
		opt	m-

		if index_start=-1
		dc.\index_width \1-offset(*)
		else
		dc.\index_width \1-index_start
		endc
		
		if ~def(prefix_id)
		prefix_id: equs "id_"
		endc
		
		if instr("\1",".")=1				; check if pointer is local
		else
			if ~def(\prefix_id\\1)
			\prefix_id\\1: equ ptr_id		; create id for pointer
			else
			\prefix_id\\1_\$ptr_id: equ ptr_id	; if id already exists, append number
			endc
		endc
		
		ptr_id: = ptr_id+ptr_id_inc			; increment id

		popo
		list
		endm

; ---------------------------------------------------------------------------
; Set a VRAM address via the VDP control port.
; input: 16-bit VRAM address, control port (default is ($C00004).l)
; ---------------------------------------------------------------------------

locVRAM:	macro loc,controlport
		ifarg \controlport
		move.l	#($40000000+(((loc)&$3FFF)<<16)+(((loc)&$C000)>>14)),(vdp_control_port).l
		else
		move.l	#($40000000+(((loc)&$3FFF)<<16)+(((loc)&$C000)>>14)),\controlport
		endc
		endm

; ---------------------------------------------------------------------------
; DMA copy data from 68K (ROM/RAM) to VRAM/CRAM/VSRAM.
; input: source, length, destination ([vram address]|cram|vsram),
; cram/vsram destination (0 by default)
; ---------------------------------------------------------------------------

dma:		macro
		dma_type: = $4000
		dma_type2: = $80
		
		if strcmp("\3","cram")
		dma_type: = $C000
			if strlen("\4")=0
			dma_dest: = 0
			else
			dma_dest: = \4
			endc
		elseif strcmp("\3","vsram")
		dma_type2: = $90
			if strlen("\4")=0
			dma_dest: = 0
			else
			dma_dest: = \4
			endc
		else
		dma_dest: = \3
		endc
		
		lea	(vdp_control_port).l,a5
		move.l	#$94000000+(((\2>>1)&$FF00)<<8)+$9300+((\2>>1)&$FF),(a5)
		move.l	#$96000000+(((\1>>1)&$FF00)<<8)+$9500+((\1>>1)&$FF),(a5)
		move.w	#$9700+((((\1>>1)&$FF0000)>>16)&$7F),(a5)
		move.w	#dma_type+(dma_dest&$3FFF),(a5)
		move.w	#dma_type2+((dma_dest&$C000)>>14),(v_vdp_dma_buffer).w
		move.w	(v_vdp_dma_buffer).w,(a5)
		endm

; ---------------------------------------------------------------------------
; DMA fill VRAM with a byte value.
; input: value, length, destination
; uses d1, a5
; ---------------------------------------------------------------------------

dma_fill:	macro value,length,dest
		lea	(vdp_control_port).l,a5
		move.w	#$8F01,(a5)				; set VDP increment to 1 byte
		move.l	#$94000000+(((length)&$FF00)<<8)+$9300+((length)&$FF),(a5) ; set length of DMA
		move.w	#$9780,(a5)				; set DMA mode to fill
		move.l	#$40000080+(((dest)&$3FFF)<<16)+(((dest)&$C000)>>14),(a5) ; set target of DMA
		move.w	#value<<8,(vdp_data_port).l		; set byte to fill with
	.wait_for_dma\@:
		move.w	(a5),d1					; get status register
		btst	#1,d1					; is DMA in progress?
		bne.s	.wait_for_dma\@				; if yes, branch
		move.w	#$8F02,(a5)				; set VDP increment 2 bytes
		endm

; ---------------------------------------------------------------------------
; Disable display
; uses d0
; ---------------------------------------------------------------------------

disable_display:	macro
		move.w	(v_vdp_mode_buffer).w,d0		; $81xx
		andi.b	#$BF,d0					; clear bit 6
		move.w	d0,(vdp_control_port).l
		endm

; ---------------------------------------------------------------------------
; Enable display
; uses d0
; ---------------------------------------------------------------------------

enable_display:	macro
		move.w	(v_vdp_mode_buffer).w,d0		; $81xx
		ori.b	#$40,d0					; set bit 6
		move.w	d0,(vdp_control_port).l
		endm

; ---------------------------------------------------------------------------
; Compare the size of an index with ZoneCount constant
; (should be used immediately after the index)
; input: index address, element size
; ---------------------------------------------------------------------------

zonewarning:	macro loc,elementsize
	.end:
		if (.end-loc)-(ZoneCount*elementsize)<>0
		inform 1,"Size of \loc ($%h) does not match ZoneCount ($\#ZoneCount).",(.end-loc)/elementsize
		endc
		endm

; ---------------------------------------------------------------------------
; Copy a tilemap from 68K (ROM/RAM) to the VRAM without using DMA
; input: source, destination, width [cells], height [cells]
; ---------------------------------------------------------------------------

copy_tilemap:	macro source,loc,x,y,width,height
		lea	(source).l,a1
		vram_loc: = (loc)+(sizeof_vram_row*(y))+((x)*2)
		locVRAM	vram_loc,d0
		moveq	#width-1,d1
		moveq	#height-1,d2
		bsr.w	TilemapToVRAM
		endm

; ---------------------------------------------------------------------------
; check if object moves out of range
; input: location to jump to if out of range, x-axis pos (ost_x_pos(a0) by default)
; uses d0, d1
; ---------------------------------------------------------------------------

out_of_range:	macro exit,pos
		ifarg \pos
		move.w	pos,d0					; get object position (if specified as not ost_x_pos)
		else
		move.w	ost_x_pos(a0),d0			; get object position
		endc
		andi.w	#$FF80,d0				; round down to nearest $80
		move.w	(v_camera_x_pos).w,d1			; get screen position
		subi.w	#128,d1
		andi.w	#$FF80,d1
		sub.w	d1,d0					; d0 = approx distance between object and screen (negative if object is left of screen)
		cmpi.w	#128+320+192,d0
		bhi.\0	exit					; branch if d0 is negative or higher than 640
		endm

; ---------------------------------------------------------------------------
; Sprite mappings header and footer
; ---------------------------------------------------------------------------

;spritemap:	macro
;		if ~def(current_sprite)
;		current_sprite: = 1
;		endc
;		sprite_start: = *+1
;		dc.b (sprite_\#current_sprite-sprite_start)/5
;		endm

;endsprite:	macro
;		sprite_\#current_sprite: equ *
;		current_sprite: = current_sprite+1
;		endm

; ---------------------------------------------------------------------------
; Sprite mappings piece
; input: xpos, ypos, size, tile index
; optional: xflip, yflip, pal2|pal3|pal4, hi (any order)
; ---------------------------------------------------------------------------

;piece:		macro
;		dc.b \2		; ypos
;		sprite_width:	substr	1,1,"\3"
;		sprite_height:	substr	3,3,"\3"
;		dc.b ((sprite_width-1)<<2)+sprite_height-1
;		sprite_xpos: = \1
;		if \4<0						; is tile index negative?
;			sprite_tile: = $10000+(\4)		; convert signed to unsigned
;		else
;			sprite_tile: = \4
;		endc
;		
;		sprite_xflip: = 0
;		sprite_yflip: = 0
;		sprite_hi: = 0
;		sprite_pal: = 0
;		rept narg-4
;			if strcmp("\5","xflip")
;			sprite_xflip: = $800
;			elseif strcmp("\5","yflip")
;			sprite_yflip: = $1000
;			elseif strcmp("\5","hi")
;			sprite_hi: = $8000
;			elseif strcmp("\5","pal2")
;			sprite_pal: = $2000
;			elseif strcmp("\5","pal3")
;			sprite_pal: = $4000
;			elseif strcmp("\5","pal4")
;			sprite_pal: = $6000
;			else
;			endc
;		shift
;		endr
		
;		dc.w (sprite_tile+sprite_xflip+sprite_yflip+sprite_hi+sprite_pal)&$FFFF
;		dc.b sprite_xpos
;		endm

; ---------------------------------------------------------------------------
; Object placement
; input: xpos, ypos, object id, subtype
; optional: xflip, yflip, rem (any order)
; ---------------------------------------------------------------------------

objpos:		macro
		dc.w \1		; xpos
		obj_ypos: = \2
		if strcmp("\3","0")
		obj_id: = 0
		else
		obj_id: = id_\3
		endc
		obj_sub\@: equ \4
		obj_xflip: = 0
		obj_yflip: = 0
		obj_rem: = 0
		rept narg-4
			if strcmp("\5","xflip")
			obj_xflip: = $4000
			elseif strcmp("\5","yflip")
			obj_yflip: = $8000
			elseif strcmp("\5","rem")
			obj_rem: = $80
			else
			endc
		shift
		endr
		
		dc.w obj_ypos+obj_xflip+obj_yflip
		dc.b obj_id+obj_rem, obj_sub\@
		endm

endobj:		macro
		objpos $FFFF,0,0,0
		endm

; ---------------------------------------------------------------------------
; Define a little-endian 16-bit pointer for the z80 sound driver
; input: address of pointer target
; ---------------------------------------------------------------------------

;rom_ptr_z80: macro addr
;		dc.w	((((addr&$7FFF)+$8000)<<8)&$FF00)+(((addr&$7FFF)+$8000)>>8)


; ---------------------------------------------------------------------------
; Define and align the start of a sound bank
; ---------------------------------------------------------------------------
start_bank macro *
	align	$8000
sound_bank_start = \*
sound_bank_name = "\*"
    endm

; ---------------------------------------------------------------------------
; End a sound bank and halt assembly if it is too large
; Can also print the amount of free space in a bank with DebugSoundbanks set
; ---------------------------------------------------------------------------
DebugSoundbanks = 0

finish_bank macro *
	if * > sound_bank_start+$8000
		inform 3,"SoundBank %s must fit in $8000 bytes but was $%h. Try moving something to another bank.",sound_bank_name,*-sound_bank_start
	elseif DebugSoundbanks<>0
		inform 0,"SoundBank %s has $%h bytes free at end.",sound_bank_name,$8000+sound_bank_start-*
	endif
    endm
; ---------------------------------------------------------------------------
; Define an external file
; input: label, file name (including folder), extension (actual),
;  extension (uncompressed)
; ---------------------------------------------------------------------------

filedef:	macro lbl,file,ex1,ex2
		filename: equs \file				; get file name without quotes
		file_\lbl: equs "\filename\.\ex1"		; record file name
		sizeof_\lbl: equ filesize("\filename\.\ex2")	; record file size of associated uncompressed file
		endm

; ---------------------------------------------------------------------------
; Incbins a file
; input: label (must have been declared by filedef)
; ---------------------------------------------------------------------------

incfile:	macro lbl
		filename: equs file_\lbl			; get file name
	\lbl:	incbin	"\filename"				; write file to ROM
		even
		endm

; ---------------------------------------------------------------------------
; Declares a blank object
; input: label
; ---------------------------------------------------------------------------

blankobj:	macro
	\1:	rts
		endm

; ---------------------------------------------------------------------------
; Long conditional jumps
; ---------------------------------------------------------------------------

jcond:		macro btype,jumpto
		btype.s	.nojump\@
		jmp	jumpto
	.nojump\@:
		endm

jhi:		macro
		jcond bls,\1
		endm

jcc:		macro
		jcond bcs,\1
		endm

jhs:		macro
		jcc	\1
		endm

jls:		macro
		jcond bhi,\1
		endm

jcs:		macro
		jcond bcc,\1
		endm

jlo:		macro
		jcs	\1
		endm

jeq:		macro
		jcond bne,\1
		endm

jne:		macro
		jcond beq,\1
		endm

jgt:		macro
		jcond ble,\1
		endm

jge:		macro
		jcond blt,\1
		endm

jle:		macro
		jcond bgt,\1
		endm

jlt:		macro
		jcond bge,\1
		endm

jpl:		macro
		jcond bmi,\1
		endm

jmi:		macro
		jcond bpl,\1
		endm
