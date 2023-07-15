; ---------------------------------------------------------------------------
; Test if argument is used
; ---------------------------------------------------------------------------

ifarg:		macros
		if strlen("\1")>0

ifnotarg:	macros
		if strlen("\1")=0

; ---------------------------------------------------------------------------
; Align and pad.
; input: length to align to, value to use as padding (default is 0)
; ---------------------------------------------------------------------------

align:		macro length,value
	ifarg \value
		dcb.b (\length-(offset(*)%\length))%\length,\value
	else
		dcb.b (\length-(offset(*)%\length))%\length,0
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
		ifarg \0					; check if size is specified
		movem.\0	\1,-(sp)			; save multiple registers (b/w)
		else
		movem.l	\1,-(sp)				; save multiple registers
		endc
	else
		ifarg \0					; check if size is specified
		move.\0	\1,-(sp)				; save one register (b/w)
		else
			move.l	\1,-(sp)			; save one whole register
		endc
	endc
	endm

popr:		macro
	chkifreg "\1"
	if (isreg=1)&(isregm=1)
		ifarg \0					; check if size is specified
		movem.\0	(sp)+,\1			; restore multiple registers (b/w)
		else
		movem.l	(sp)+,\1				; restore multiple whole registers
		endc
	else
		ifarg \0					; check if size is specified
		move.\0	(sp)+,\1				; restore one register (b/w)
		else
		move.l	(sp)+,\1				; restore one whole register
		endc
	endc
		endm

; ---------------------------------------------------------------------------		
; Sonic 2 is inconsistent with its handling of address register indirect 
; displacement instructions where the displacement is zero [e.g,. 0(a0)]. 
; Unlike in Sonic 1, where these were never optimized, Sonic 2 optimizes some,
; but not all, of them to address register indirect. Unfortunately, this means
; that we cannot have a bit-perfect disassembly with uniform use of symbolic
; constants for displacement value equal to zero without the use of a macro-based
; workaround. 

; To avoid complexity, we are simply going to do more or less the same 
; thing the SonicRetro AS disasm does: the affected unoptimized instructions
; are macro calls that behave differently depending on if a switch is enabled 
; or disabled. While AS requires a hack to work around its lack of an option 
; to disable the zero-offset optimization, things are much simpler here:
; we just enable the optimization by default in the build options, and use the
; below macros to disable it for the affected instructions.
; ---------------------------------------------------------------------------	

	if ZeroOffsetOptimization=0
		; Temporarily disable zero-offset optimization to assemble these instructions for a
		; bit-perfect build.
	
_move:	macro
		pusho
		opt	oz-
		move.\0	\_
		popo
	endm
	
_add:	macro
		pusho
		opt	oz-
		axd.\0	\_					; axd = AXM68K mnemonic for add
		popo
	endm
	
_addq:	macro
		pusho
		opt	oz-
		addq.\0	\_
		popo
	endm
	
_cmp:	macro
		pusho
		opt	oz-
		cmp.\0 \_
		popo
	endm
	
_cmpi:	macro
		pusho
		opt	oz-
		cmpi.\0	\_
		popo
	endm
	
_clr:	macro
		pusho
		opt	oz-
		clr.\0	\_
		popo
	endm
	
_tst:	macro
		pusho
		opt	oz-
		tst.\0	\_
		popo	
	endm
	
	else
	; Optimize these instructions, making them faster, and freeing up nearly 512 bytes!
	
_move:	macros
		move.\0 \_

_add:	macros
		axd.\0 \_					; axd = AXM68K mnemonic for add

_addq:	macros
		addq.\0 \_

_cmp:	macros
		cmp.\0 \_

_cmpi:	macros
		cmpi.\0 \_

_clr:	macros
		clr.\0 \_

_tst:	macros
		tst.\0 \_
		
	endc
	
; ---------------------------------------------------------------------------
; Optimize 87 addi, 6 adda, and 94 subi instructions to addq and subq.
; Almost all possible add/sub optimizations were made in Revision 2.
; ---------------------------------------------------------------------------
	
    if AddSubOptimize
		; if AddSubOptimize is enabled, optimize these to addq and subq...
addi_:		macros
		addq.\0	\_
		
subi_:		macros
		subq.\0	\_
		
adda_:		macros
		addq.\0	\_

    else
		; ...otherwise, leave them unoptimized.
addi_:		macros
		addi.\0	\_
		
subi_:		macros
		subi.\0 \_	
		
adda_:		macros
		adda.\0	\_
    endc
    
; ------------------------------------------------------------------------------
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
; The assembler/linker used for Revisions 0 and 1 (most likely ProASM for
; the Commodore Amiga) handled branches and jumps across source file boundaries 
; in an awkward way, proxying them through groups of jmp instructions appended 
; to the end of each source file. Revision 2 used a different assembler/linker 
; (most likely 2500AD's x68K) that almost always did direct jumps and branches 
; to the destination. These two macros accomodate this difference. 
; ---------------------------------------------------------------------------

jsrto:		 macro directaddr,indirectaddr
		if RemoveJmpTos
			jsr (\directaddr).l			; jump directly to address
		else
			bsr.w \indirectaddr			; otherwise, branch to an indirect JmpTo
		endc
		endm

jmpto:		 macro directaddr,indirectaddr
		if RemoveJmpTos
			jmp (\directaddr).l			; jump directly to address
		else
			bra.w \indirectaddr			; otherwise, branch to an indirect JmpTo
		endc
  		endm

; ---------------------------------------------------------------------------
; Convert to absolute value (i.e., always positive)

; Some instances unnecessarily use word-length branches. The absw macro
; allow optimizing those instances automatically. 
; nxg = AXM68K modded mnemonic for neg.
; ---------------------------------------------------------------------------

abs:	macro dest						; short branch
		tst.\0	\dest					; is value already positive?
		bpl.s	.already_pos\@				; if so, branch
		nxg.\0	\dest					; make value positive
		
	.already_pos\@:
    	endm


absw:	macro dest						; word branch by default, can be optimized to short

   		if 0|AllOptimizations				; if optimizations are enabled...
			abs.\0	\_				; ...pass the input to the abs macro...
    	else							; ...else, do the same, except use a word-length branch
			tst.\0	\dest		
			bpl.w	.already_pos\@
			nxg.\0	\dest
		
		.already_pos\@:
   		endc
		endm
	
	
mvabs:	macro src,dest						; move absolute value from source to destination
		move.\0	\src,\dest				; move from source to destination
		bpl.s	.already_pos\@				; branch if already positive
		nxg.\0	\dest					; make value positive
	
		.already_pos\@:
   		endm

; ---------------------------------------------------------------------------
; Sign-extend a value and use it with moveq
; Replicates the signextendB function in Sonic 2 AS; required to prevent the 
; assembler from generating a sign-extension warning.
; --------------------------------------------------------------------------- 
 
moveq_:		macros
 		moveq	#(\1\+-((-(\1\&(1<<(8-1))))&(1<<(8-1))))!-((-(\1\&(1<<(8-1))))&(1<<(8-1))),\2
    
; ---------------------------------------------------------------------------
; Align the start of RAM sections, and mark the ends for the clear_ram macro.
; As the clear_ram macro can handle sections divisible by bytes and words,
; we do not need to align sections to longwords.
; ---------------------------------------------------------------------------

rsalign:	macros
		rs.b (\1-(__rs%\1))%\1

rsblock:	macro
		rsalign 2					; align to even address
		\1\: equ __rs
		endm
	
rsblockend:	macros						; Adapted to Sonic 2's macro-based RAM clearing
		\1\_end:	equ __rs			; generate symbol for end

; ---------------------------------------------------------------------------
; Mark the start and end of a RAM block without alignment, and generate size 
; constants.
; input: block start label
; ---------------------------------------------------------------------------		

ramblock:	macros
		\1\: equ __rs

ramblocksize:	macros
		sizeof_\1: equ	__rs-\1
		
ramblockend:	macros
		\1\_end:	equ __rs			; generate symbol for end	
		
; ---------------------------------------------------------------------------
; Manage VRAM usage.
; input: common name of graphic, size if not generated by filedef
; ---------------------------------------------------------------------------	

; if nemesis graphic that is loaded immediately after the previous item in the
; the list, then advance RS counter by size of uncompressed graphics

; allow specifying a fixed address 

; use rsset to skip ahead if necessary
;vramaddr:	macro	size

;\* equ *

;	vram_\*\:	equ __rs
;	
;	ifarg size
;		rs.b size
;	else
;		rs.b sizeof_\gfx
;	endc
	
	
;	endm	
; ---------------------------------------------------------------------------
; Make a size constant for an array.
; input: array start label
; ---------------------------------------------------------------------------	

arraysize:	macros
		sizeof_\1: equ	offset(*)-\1
		

; ---------------------------------------------------------------------------
; Organise object RAM usage.
; ---------------------------------------------------------------------------

rsobj:		macro name,start
			rsobj_name: equs "\name"		; remember name of current object
		ifarg \start
			rsset \start				; start at specified position
		else
			rsset ost_used				; start at end of regular OST usage
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
; input: start location, end location (may be defined with rsblock)
; ---------------------------------------------------------------------------		

clear_ram:		macro startaddr,endaddr
		
		if startaddr>endaddr
			inform 3,"Starting address of clearRAM $%h is after ending address $%h.",startaddr,endaddr
		elseif startaddr=endaddr
			inform 1,"clearRAM is clearing zero bytes. Turning this into a nop instead."
		mexit
  		endc
    
		if ((startaddr)&$8000)=0
			lea	(\startaddr).l,a1		; if start address is greater than $FFFF8000
   		else
			lea	(\startaddr).w,a1		; if start address is less than $FFFF8000
	   	endc
			moveq	#0,d0
    	if (\startaddr&1)
			move.b	d0,(a1)+			; clear the first byte if start address is odd
	    endc
		move.w	#((\endaddr-\startaddr)-(\startaddr&1))/4-1,d1
			
	.loop\@:	
		move.l	d0,(a1)+
		dbf	d1,.loop\@
	    if (((endaddr-startaddr)-((startaddr)&1))&2)
			move.w	d0,(a1)+			; if amount to clear is not divisible by longword, clear the last whole word
    	endc
    	if (((endaddr-startaddr)-((startaddr)&1))&1)
			move.b	d0,(a1)+			; if amount to clear is not divisible by word, clear the last byte
    	endc
    	endm		

; ---------------------------------------------------------------------------
; Create a pointer index.
; input: start location (usually offset(*) or 0; leave blank to make pointers
; relative to themselves), id start (default 0), id increment (default 1)
; ---------------------------------------------------------------------------

index:		macro start,idstart,idinc
;		nolist
;		pusho
;		opt	m-

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
			ptr_id: = 0				; use 0 by default
		endc

		ifarg \idinc					; check if pointer id increment is defined
			ptr_id_inc: = \idinc
		else
			ptr_id_inc: = 1				; use 1 by default
		endc
		
;		popo
;		list
		endm
		
; ---------------------------------------------------------------------------
; Item in a pointer index.
; input: pointer target, optional alias (useful if multiple pointers point 
; to same location, such as the bubble mappings or deleted objects
; ---------------------------------------------------------------------------

ptr:		macro
;		nolist
;		pusho
;		opt	m-

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
		
			ifarg \2
				\prefix_id\\2: equ ptr_id	; create id for pointer using explicitly specified alias			
			elseif ~def(\prefix_id\\1)
				\prefix_id\\1: equ ptr_id	; create id for pointer
			else
				\prefix_id\\1_\$ptr_id: equ ptr_id ; if id already exists, append number
			endc
			
		endc
		
		ptr_id: = ptr_id+ptr_id_inc			; increment id

;		popo
;		list
		endm

; ---------------------------------------------------------------------------
; Create a word-length branch index (similar to the one used by GameModeArray)
; ---------------------------------------------------------------------------
	
bra_index:	macro *
\* equ *
		 index_start: = offset(\*)
		 endm
		 
; ---------------------------------------------------------------------------
; Item in a branch index
; ---------------------------------------------------------------------------

braptr:		macro
		id_\1:	equ offset(*)-index_start
		bra.w	\1
		endm
	
; ---------------------------------------------------------------------------
; Make a 68K instruction with a VDP command longword or word as the source 
; This more or less replicating the vdpComm function in Sonic 2 AS.
; input: 68k instruction mnemonic, destination offset, destination 
; (vram/vsram/cram), operation (read/write/dma), destination of 68K instruction,
; additional adjustment to command longword (shifts, ANDs)
; ---------------------------------------------------------------------------

vdp_comm:	macro inst,addr,cmdtarget,cmd,dest,adjustment

		local type,rwd,command
	
		if stricmp ("\cmdtarget","vram")
		type: =	$21					; %10 0001
		elseif stricmp ("\cmdtarget","cram")
		type: = $2B					; %10 1011
		elseif stricmp ("\cmdtarget","vsram")
		type: = $25					; %10 0101
		else inform 2,"Invalid VDP command destination (must be vram, cram, or vsram)."
		endc
	
		if stricmp ("\cmd","read")
		rwd: =	$C					; %00 1100
		elseif stricmp ("\cmd","write")
		rwd: = 7					; %00 0111
		elseif stricmp ("\cmd","dma")
		rwd: = $27					; %10 0111
		else inform 2,"Invalid VDP command type (must be read, write, or dma)."
		endc
		
		if stricmp ("\0",".w")
		command: = (((type&rwd)&3)<<30)|((addr&$3FFF)<<16)|(((type&rwd)&$FC)<<2)|((addr&$C000)>>14)$FFFF ; AND to word-length
		else
		command: = (((type&rwd)&3)<<30)|((addr&$3FFF)<<16)|(((type&rwd)&$FC)<<2)|((addr&$C000)>>14)
		endc
		
		ifarg \dest			
			\inst\.\0	#command\adjustment\,\dest
		else	
			\inst\.\0	command\adjustment\	
		endc
		endm	
	
; ---------------------------------------------------------------------------
; DMA copy data from 68K (ROM/RAM) to VRAM/CRAM/VSRAM.
; input: source, length, destination ([vram address]|cram|vsram),
; cram/vsram destination (0 by default)
; ---------------------------------------------------------------------------

dma:		macro source,length,dest1,dest2
		dma_type: = $4000
		dma_type2: = $80
		
		if strcmp("\dest1","cram")
		dma_type: = $C000
			ifarg \dest2
			dma_dest: =\dest2
			else
			dma_dest: = 0
			endc
		elseif strcmp("\dest1","vsram")
		dma_type2: = $90
			ifarg \dest2
			dma_dest: =\dest2
			else
			dma_dest: = 0
			endc
		else
		dma_dest: = \dest1
		endc
		
		lea	(vdp_control_port).l,a5
		move.l	#(vdp_dma_length_hi<<16)+((((length)>>1)&$FF00)<<8)+vdp_dma_length_low+(((length)>>1)&$FF),(a5)
		move.l	#(vdp_dma_source_mid<<16)+((((source)>>1)&$FF00)<<8)+vdp_dma_source_low+(((source)>>1)&$FF),(a5)
		move.w	#vdp_dma_source_hi+(((((source)>>1)&$FF0000)>>16)&$7F),(a5)
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
		move.w	#vdp_auto_inc+1,(a5)			; set VDP increment to 1 byte
		move.l	#(vdp_dma_length_hi<<16)+(((length-1)&$FF00)<<8)+vdp_dma_length_low+((length-1)&$FF),(a5) ; set length of DMA
		move.w	#vdp_dma_vram_fill,(a5)			; set DMA mode to fill
		move.l	#$40000080+(((dest)&$3FFF)<<16)+(((dest)&$C000)>>14),(a5) ; set target of DMA
		move.w	#value<<8,(vdp_data_port).l		; set byte to fill with
	.wait_for_dma\@:
		move.w	(a5),d1					; get status register
		btst	#dma_status_bit,d1			; is DMA in progress?
		bne.s	.wait_for_dma\@				; if yes, branch
		move.w	#vdp_auto_inc+2,(a5)			; set VDP increment back to 2 bytes
		endm

; ---------------------------------------------------------------------------
; Optimized DMA fill for when multiple DMA fills are done in sequence: 
; skip loading the VDP control port and setting increment length to 1 if not 
; the first, and skip resetting the increment if not the last.
; input: value, length, destination, first/last (leave blank if neither)
; ---------------------------------------------------------------------------

dma_fill_sequential:	macro value,length,dest,firstlast
	
		if strcmp("\firstlast","first")			; if this is the first DMA fill,
			lea	(vdp_control_port).l,a5		; load the VDP control port,
			move.w	#vdp_auto_inc+1,(a5)		; and set VDP increment to 1 byte
		endc	
					
		move.l	#(vdp_dma_length_hi<<16)+(((length-1)&$FF00)<<8)+vdp_dma_length_low+((length-1)&$FF),(a5) ; set length of DMA
		move.w	#vdp_dma_vram_fill,(a5)			; set DMA mode to fill
		move.l	#$40000080+(((dest)&$3FFF)<<16)+(((dest)&$C000)>>14),(a5) ; set target of DMA
		move.w	#value<<8,(vdp_data_port).l		; set byte to fill with
	.wait_for_dma\@:
		move.w	(a5),d1					; get status register
		btst	#dma_status_bit,d1			; is DMA in progress?
		bne.s	.wait_for_dma\@				; if yes, branch
		
		if strcmp("\firstlast","last")			; if this is the last DMA fill in the sequence,
			move.w	#vdp_auto_inc+2,(a5)		; set VDP increment back to 2 bytes
		endc	
		
		endm

; ---------------------------------------------------------------------------
; Clear and reset the DMA queue
; ---------------------------------------------------------------------------

reset_dma_queue:	macro		
		clr.w	(v_dma_queue).w				; clear the first queue slot
		move.l	#v_dma_queue,(v_dma_queue_slot).w	; reset the queue index		
		endm
	
; ---------------------------------------------------------------------------
; Disable display
; uses d0
; ---------------------------------------------------------------------------

disable_display:	macro
		move.w	(v_vdp_mode_buffer).w,d0		; $81xx
		andi.b	#~vdp_enable_display&$FF,d0		; clear bit 6
		move.w	d0,(vdp_control_port).l
		endm

; ---------------------------------------------------------------------------
; Enable display
; uses d0
; ---------------------------------------------------------------------------

enable_display:	macro
		move.w	(v_vdp_mode_buffer).w,d0		; $81xx
		ori.b	#vdp_enable_display&$FF,d0		; set bit 6
		move.w	d0,(vdp_control_port).l
		endm

; ---------------------------------------------------------------------------
; Compare the size of an index with ZoneCount constant
; (should be used immediately after the index)
; input: index address, element size
; ---------------------------------------------------------------------------

zonewarning:	macro dest,elementsize
	.end:
		if (.end-dest)-(ZoneCount*elementsize)<>0
			inform 1,"Size of \dest ($%h) does not match ZoneCount ($%h).",(.end-dest)/elementsize,ZoneCount
		endc
		endm

; ---------------------------------------------------------------------------
; Copy a tilemap from 68K (ROM/RAM) to the VRAM without using DMA
; input: source, destination, width [cells], height [cells]
; ---------------------------------------------------------------------------

;copy_tilemap:	macro source,loc,x,y,width,height
;		lea	(source).l,a1
;		vram_loc: = (loc)+(sizeof_vram_row*(y))+((x)*2)
;		locVRAM	vram_loc,d0
;		moveq	#width-1,d1
;		moveq	#height-1,d2
;		bsr.w	TilemapToVRAM
;		endm

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
; Object placement
; input: xpos, ypos, object id, subtype
; optional: xflip, yflip, rem (any order)
; ---------------------------------------------------------------------------

objpos:		macro
		dc.w \1						; xpos
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
		obj_unkflg: = 0
		rept narg-4
			if strcmp("\5","unkflg")
				obj_unkflg: = $1000
			elseif strcmp("\5","xflip")
				obj_xflip: = $2000
			elseif strcmp("\5","yflip")
				obj_yflip: = $4000
			elseif strcmp("\5","rem")
				obj_rem: = $8000
			else
			endc
		shift
		endr
		
		dc.w obj_rem+obj_ypos+obj_xflip+obj_yflip+obj_unkflg
		dc.b obj_id, obj_sub\@
		endm

endobj:		macros
		objpos $FFFF,0,0,0
		
		
; ---------------------------------------------------------------------------
; Declare OST data for use with LoadSubtypeData
; Each set of data is $A bytes, and consists of:
; - the object's mappings pointer (ost_mappings, longword) 
; - the object's vram assignment (ost_tile, word)
; - the object render flags (ost_render, byte)
; - the object's priority (ost_priority, byte)
; - the object's width (ost_width, byte)
; - the object's collision flags (ost_collision, byte)
; ---------------------------------------------------------------------------		

subtypedata: 	macro mappings,vram,render,priority,width,collision

		dc.l \mappings
		dc.w \vram
		dc.b \render,\priority,\width,\collision
    	endm

; ---------------------------------------------------------------------------
; Declare OST data for use with LoadChild
; Each set of data is 4 bytes, and consists of:
; - the offset in the parent's OST where pointer to child will be stored (word)
; - the child object's ID (ost_id, byte)
; - the child object's subtype (ost_subtype, byte)
; ---------------------------------------------------------------------------		

childobjdata:	macro	chldptroffset,id,subtype

		dc.w \chldptroffset
		dc.b \id,\subtype
		endm
		
; ---------------------------------------------------------------------------
; Declare OST data for the Scenery1 and Scenery2 objects
; Each set of data is 8 bytes, and consists of:
; - a longword with the highest byte set to the object's initial mapping frame 
;	(ost_frame), and the object's mappings pointer in the low word (ost_mappings)
; - the object's vram assignment (ost_tile, word)
; - the object's width (ost_width, byte)
; - the object's priority (ost_priority, byte)
; ---------------------------------------------------------------------------			

sceneryobjdata:	macro	frame,mappings,vram,width,priority

		dc.l (\frame\<<24)|mappings
		dc.w \vram
		dc.b \width,\priority
		endm


; ---------------------------------------------------------------------------
; Declare OST data for use with SpawnProjectiles
; Each set of data is 6 bytes, and consists of:
; - the x and y offsets from the parent object where the projectiles
;	will be spawned (calculated and stored in ost_x_pos and ost_y_pos)
; - the projectile's x and y velocities (ost_x_vel, ost_y_vel)
; -	the projectile's mapping frame (ost_frame)
; -	the projectile's render flags (ost_render)
; ---------------------------------------------------------------------------	

		
; ---------------------------------------------------------------------------
; Remap ASCII to the custom character sets used throughout the game
; input: character set to use, text to display
; ---------------------------------------------------------------------------

charset:	macro	charset,txt

		local str,chr
		str:	equs \txt
		
		if stricmp("\charset","menu")
		
		dc.b	strlen(\txt)-1
	
		rept strlen(\txt)				; repeat for length of string
		chr:	substr ,1,"\str"			; get current character
		str:	substr 2,,"\str"			; advance to next character in string
	
		if strcmp(" ","\chr")
			dc.b	0	
		elseif	instr("0123456789","\chr")
			dc.b	(vram_StandardFont/sizeof_cell)+("\chr"-$30)
		elseif	instr("*","\chr")
			dc.b	(vram_StandardFont/sizeof_cell)+("\chr"-$20)
		elseif	instr("@","\chr")
			dc.b	(vram_StandardFont/sizeof_cell)+("\chr"-$35) ; @ = copyright symbol	
		elseif	instr(":","\chr")
			dc.b	(vram_StandardFont/sizeof_cell)+("\chr"-$2E)
		elseif	instr(".","\chr")
			dc.b	(vram_StandardFont/sizeof_cell)+("\chr"-$21)		
		elseif	instr("ABCDEFGHIJKLMNOPQRSTUVWXYZ","\chr")
			dc.b	(vram_StandardFont/sizeof_cell)+("\chr"-$33)
		else 	
			inform 2,"Invalid character in menu text (must be uppercase letter, numeral, '*', '@', ' ;', or '.')."
		endc		
		endr
					
		elseif stricmp("\charset","copyright")
		
		rept strlen(\txt)				; repeat for length of string
		chr:	substr ,1,"\str"			; get current character
		str:	substr 2,,"\str"			; advance to next character in string
	
		if strcmp(" ","\chr")
			dc.w	0
		elseif	instr("0123456789","\chr")
			dc.w	(vram_StandardFont_TtlScr/sizeof_cell)+("\chr"-$30)
		elseif	instr("*","\chr")
			dc.w	(vram_StandardFont_TtlScr/sizeof_cell)+("\chr"-$2A)
		elseif	instr("@","\chr")
			dc.w	(vram_StandardFont_TtlScr/sizeof_cell)+("\chr"-$35) ; @ = copyright symbol	
		elseif	instr(":","\chr")
			dc.w	(vram_StandardFont_TtlScr/sizeof_cell)+("\chr"-$2E)
		elseif	instr(".","\chr")
			dc.w	(vram_StandardFont_TtlScr/sizeof_cell)+("\chr"-$21)		
		elseif	instr("ABCDEFGHIJKLMNOPQRSTUVWXYZ","\chr")
			dc.w	(vram_StandardFont_TtlScr/sizeof_cell)+("\chr"-$33)
		else 	
			inform 2,"Invalid character in title screen copyright text (must be uppercase letter, numeral, '*', '@', ' ;', or '.')."
		endc
		endr
		endc
		endm
	

; ---------------------------------------------------------------------------
; Define a little-endian 16-bit pointer for the z80 sound driver relative
; to the start address of the Z80 ROM window
; input: address of pointer target
; ---------------------------------------------------------------------------

z80_ptr: macros	
		dc.w (\1<<8&$FF00)|(\1>>8&$7F)|$80
		
; ---------------------------------------------------------------------------		
; Generate the constants used by the sound driver's bankswitch macro.
; This replaces part of the bankswitch macro in Sonic 2 AS' sound driver.
; ---------------------------------------------------------------------------	
bnkswtch_vals: macro *

\* equ *

		cnt: = 0
		ptr_num: = 1
		rept 9

		if OptimizeSoundDriver
								; Because why use a and e when you can use h and l?
			if (offset(*))&(1<<(15+cnt))<>0
				bnkswtch_\*_\$ptr_num:	equ 75h	; ld (hl),l
			else
				bnkswtch_\*_\$ptr_num:	equ 74h	; ld (hl),h
			endc	
		else
			if (offset(*))&(1<<(15+cnt))=0 						
				bnkswtch_\*_\$ptr_num:	equ 77h	; ld (hl),a
			else
				bnkswtch_\*_\$ptr_num:	equ 73h	; ld (hl),e
			endc
		endc	
		cnt: = cnt+1
		ptr_num: = ptr_num+1
		endr
		endm

; ---------------------------------------------------------------------------
; Define and align the start of a sound bank, initialize the sndbank_ptr
; constant, and generate the constants used by the sound driver's bankswitch macro.	
; ---------------------------------------------------------------------------

startbank: macro *

\* equ *

		if ~def(sndbnk_id)				; generate id of soundbank, used later to check for overflow
			sndbnk_id: = 1
			ptr_id: = 0				; initial pointer id constant			
		else
			sndbnk_id: = sndbnk_id+1
			ptr_id: = 80h				; initial pointer id constant; bit 7 is set to indicate second bank
		endc		
		align	sizeof_z80_bank				; align to 32KB boundary
		sound_bank_start: = offset(*)			; start address of sound bank
			
		
		; Unfortunately, because the bnkswtch_vals macro requires a label
		; on the same line, we can't invoke it here; we have no choice but
		; to include the entire macro a second time.

		cnt: = 0
		ptr_num: = 1
		rept 9

		if OptimizeSoundDriver
		; Because why use a and e when you can use h and l?
			if (offset(*))&(1<<(15+cnt))<>0
				bnkswtch_\*_\$ptr_num:	equ 75h	; ld (hl),l
			else
				bnkswtch_\*_\$ptr_num:	equ 74h	; ld (hl),h
			endc	
		else
			if (offset(*))&(1<<(15+cnt))=0 						
				bnkswtch_\*_\$ptr_num:	equ 77h	; ld (hl),a
			else
				bnkswtch_\*_\$ptr_num:	equ 73h	; ld (hl),e
			endc
		endc	
		cnt: = cnt+1
		ptr_num: = ptr_num+1
		endr
		
   		endm
    
; ---------------------------------------------------------------------------
; Pointer to an item in a sound bank
; ---------------------------------------------------------------------------    

sndbank_ptr:	macro sound
		z80_ptr	\sound					; generate little endian pointer relative to the start of the bank
		ptr_\sound: equ ptr_id				; generate constant for the sound driver's playlist 
		ptr_id: = ptr_id+1				; increment pointer   
		endm
		
; ---------------------------------------------------------------------------
; End a sound bank and halt assembly if it is too large
; Can also print the amount of free space in a bank with DebugSoundbanks set
; ---------------------------------------------------------------------------

debug_soundbanks: equ 0

finishbank: macro
		if offset(*)>sound_bank_start+sizeof_z80_bank
			inform 3,"SoundBank %s must fit in $8000 bytes, but it was $%h. Try moving something to another bank.",snkbnk_id,offset(*)-sound_bank_start
		elseif debug_soundbanks
			inform 0,"SoundBank %s has $%h bytes free at end.",snkbnk_id,sizeof_z80_bank+sound_bank_start-offset(*)
		endif
    	endm 
    	
; ---------------------------------------------------------------------------
; Align soundbank contents to the end of the bank
; Replaces the negative cnops in Sonic 2 AS.
; ---------------------------------------------------------------------------    

align_to_end:	macros 
		dcb.b ((-\1\+sizeof_z80_bank-offset(*))&(sizeof_z80_bank-1)),0		
 
; ---------------------------------------------------------------------------
; Define an external file
; input: label, file name (including folder), extension (actual),
; extension (uncompressed)
; ---------------------------------------------------------------------------

filedef:	macro lbl,file,ex1,ex2
		filename: equs \file				; get file name without quotes
		file_\lbl: equs "\filename\.\ex1"		; record file name
		sizeof_\lbl: equ filesize("\filename\.\ex2")	; record file size of associated uncompressed file
		endm

; ---------------------------------------------------------------------------
; Incbin a file
; input: label (must have been declared by filedef)
; ---------------------------------------------------------------------------

incfile:	macro lbl
		filename: equs file_\lbl			; get file name
	\lbl:	incbin	"\filename"				; write file to ROM
		even
		endm
		
; ---------------------------------------------------------------------------
; Incbin a palette (required due to the main Sonic/Tails palette spanning two lines)
; input: label, label of second line (both must be declared by filedef)
; ---------------------------------------------------------------------------
		
incpal: macro lbl,lbl2
		incfile \lbl
    	ifarg lbl2
			incbin "\filename"
	    endc
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
