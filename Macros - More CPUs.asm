; ---------------------------------------------------------------------------
; Change CPU
; ---------------------------------------------------------------------------

cpu:		macro
		if strcmp("\1","z80")
		pusho						; save previous options
		cpu_mode:	= 1				; Z80
		opt	an+					; 1234h style numbering
		opt	ae-					; disable auto evens

		else
		if def(cpu_mode)
		popo						; restore options
		endc

		cpu_mode:	= 0				; 68000 by default
		endc
		endm

; ---------------------------------------------------------------------------
; AS compatibility
; ---------------------------------------------------------------------------

phase:		macros
		obj \1

dephase:	macros
		objend

listing:	macro
		if strcmp("\1","on")
		list
		else
		nolist
		endc
		endm

binclude:	macros
		incbin	\_

; ---------------------------------------------------------------------------
; Z80 instruction set
; ---------------------------------------------------------------------------

z80_error:	macro

		instruction: equs \1
		errtype: equs \2
		invoc:	equs \3

		inform 2,"\errtype: \instruction \invoc"
		endm

getzreg:	macro						; convert register to numerical value
		if strcmp("\1","a")
		zreg: = 7
		elseif strcmp("\1","b")
		zreg: = 0
		elseif strcmp("\1","c")
		zreg: = 1
		elseif strcmp("\1","d")
		zreg: = 2
		elseif strcmp("\1","e")
		zreg: = 3
		elseif strcmp("\1","h")
		zreg: = 4
		elseif strcmp("\1","l")
		zreg: = 5
		elseif strcmp("\1","(hl)")
		zreg: = 6
		else
		endc
		endm


getindex:	macro						; convert index register to register offset and value
		if instr("\1","(ix")
		ireg: = $dd
		elseif instr("\1","(iy")
		ireg: = $fd
		else
			inform 2,"Could not determine ireg."
		endc
		endm


ix: =		0						; allows (ix+n) to be parsed as n
iy: =		0

adc:		macro
		local num
		if strcmp("\1","hl")
			if strcmp("\2","bc")
			dc.w $ed4a
			elseif strcmp("\2","de")
			dc.w $ed5a
			elseif strcmp("\2","hl")
			dc.w $ed6a
			elseif strcmp("\2","sp")
			dc.w $ed7a
			else
			z80_error	"adc","Illegal addressing mode or unexpected end of line","\_"
			mexit
			endc
			mexit
		endc

		; "adc a,x" or "adc x"
		if narg=2 & ~strcmp("\1","a") ;& strcmp("\2","a")	; filter out illegal destinations
			z80_error	"adc","Illegal addressing mode or unexpected end of line","\_"
			mexit
		elseif narg=2 & strcmp("\1","a")
			shift					; ignore a
		endc

		if (narg=1) | (narg=2)
			if instr("a b c d e h l (hl) ","\1\ ")
			getzreg	\1
			dc.b $88+zreg
			elseif strcmp("\1","ixh")|strcmp("\1","ixu")
			dc.w $dd8c
			elseif strcmp("\1","ixl")
			dc.w $dd8d
			elseif strcmp("\1","iyh")|strcmp("\1","iyu")
			dc.w $fd8c
			elseif strcmp("\1","iyl")
			dc.w $fd8d
			elseif instr("\1","(i")			; adc (ix+n)
				num: equ \1
				getindex \1
				dc.b ireg, $8e, num
			else					; adc n
			num: equ \1
			dc.b $ce, num
			endc
		else
		z80_error	"adc","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


bit:		macro
		local num, num2
		num: equ \1
		if instr("a b c d e h l (hl) ","\2\ ")
		getzreg	\2
		dc.b $cb, $40+(num*8)+zreg
		elseif instr("\2","(i")				; bit n,(ix+n)
			num2: equ \2
			getindex \2
			dc.b ireg, $cb, num2, $46+(num*8)
		else
		z80_error	"bit","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


call:		macro
		local num
		if narg=1					; call n
		num: equ \1
		dc.b $cd
		elseif narg=2					; call x, n
			num: equ \2
			if strcmp("\1","nz")
			dc.b $c4
			elseif strcmp("\1","z")
			dc.b $cc
			elseif strcmp("\1","nc")
			dc.b $d4
			elseif strcmp("\1","c")
			dc.b $dc
			elseif strcmp("\1","po")
			dc.b $e4
			elseif strcmp("\1","pe")
			dc.b $ec
			elseif strcmp("\1","p")
			dc.b $f4
			elseif strcmp("\1","m")
			dc.b $fc
			else
				z80_error	"call","Illegal branch condition","\_"
				mexit
			endc

			shift
		else
			z80_error	"call","Unexpected end of line","\_"
			mexit
		endc

		dc.b num&$FF, (num>>8)&$FF
		endm

ccf:		macros
		dc.b $3f


cp:		macro
		local num

		if narg=2 & ~strcmp("\1","a")
			z80_error	"cp","Illegal addressing mode","\_"
			mexit
		elseif narg=2 & strcmp("\1","a")
			shift					; ignore a if using alternate syntax
		endc

		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $b8+zreg
		elseif strcmp("\1","ixh")|strcmp("\1","ixu")
		dc.w $ddbc
		elseif strcmp("\1","ixl")
		dc.w $ddbd
		elseif strcmp("\1","iyh")|strcmp("\1","iyu")
		dc.w $fdbc
		elseif strcmp("\1","iyl")
		dc.w $fdbd
		elseif instr("\1","(i")				; cp (ix+n)
			num: equ \1
			getindex \1
			dc.b ireg, $be, num
		else						; cp n
		num: equ \1
		dc.b $fe, num
		endc
		endm


cpd:		macros
		dc.w $eda9


cpdr:		macros
		dc.w $edb9


cpi:		macros
		dc.w $eda1


cpir:		macros
		dc.w $edb1


cpl:		macros
		dc.b $2f


daa:		macros
		dc.b $27


dec:		macro
		local num
		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $5+(zreg*8)
		elseif strcmp("\1","ixh")|strcmp("\1","ixu")
		dc.w $dd25
		elseif strcmp("\1","ixl")
		dc.w $dd2d
		elseif strcmp("\1","iyh")|strcmp("\1","iyu")
		dc.w $fd25
		elseif strcmp("\1","iyl")
		dc.w $fd2d
		elseif strcmp("\1","bc")
		dc.b $b
		elseif strcmp("\1","de")
		dc.b $1b
		elseif strcmp("\1","hl")
		dc.b $2b
		elseif strcmp("\1","ix")
		dc.w $dd2b
		elseif strcmp("\1","iy")
		dc.w $fd2b
		elseif strcmp("\1","sp")
		dc.b $3b
		elseif instr("\1","(i")				; dec (ix+n)
			num: equ \1
			getindex \1
			dc.b ireg, $35, num
		else
		z80_error	"dec","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


di:		macros
		dc.b $f3


djnz:		macro
		local num
		num: equ \1
		;if ((num-*)>=-$80)&((num-*)<=$7f)
		;inform 2,"Branch (%h) is out of range: djnz \_",num-*
		;mexit
		;endc
		dc.b $10, num-*-2
		endm


ei:		macros
		dc.b $fb


ex:		macro
		if strcmp("\_","af,af")				; ex af,af'
		dc.b 8
		elseif strcmp("\_","(sp),hl")|strcmp("\_","hl,(sp)")
		dc.b $e3
		elseif strcmp("\_","(sp),ix")|strcmp("\_","ix,(sp)")
		dc.w $dde3
		elseif strcmp("\_","(sp),iy")|strcmp("\_","iy,(sp)")
		dc.w $fde3
		elseif strcmp("\_","de,hl")|strcmp("\_","hl,de")
		dc.b $eb
		else
		z80_error	"ex","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm

exx:		macros
		dc.b $d9


halt:		macros
		dc.b $76


im:		macro
		if \1=0
		dc.w $ed46
		elseif \1=1
		dc.w $ed56
		elseif \1=2
		dc.w $ed5e
		else
		z80_error	"im","Invalid interrupt mode","\_"
		mexit
		endc
		endm


in:		macro
		local num
		if strcmp("\1","a")
			if strcmp("\2","(c)")
			dc.w $ed78
			else					; in a,n
			num: equ \2
			dc.b $db, num
			endc
		elseif instr("b c d e h l ","\1\ ")&strcmp("\2","(c)")
		getzreg	\1
		dc.w $ed40+(zreg*8)
		elseif strcmp("\1","(c)")
		dc.w $ed70
		else
		z80_error	"in","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


inc:		macro
		local num
		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $4+(zreg*8)
		elseif strcmp("\1","ixh")|strcmp("\1","ixu")
		dc.w $dd24
		elseif strcmp("\1","ixl")
		dc.w $dd2c
		elseif strcmp("\1","iyh")|strcmp("\1","iyu")
		dc.w $fd24
		elseif strcmp("\1","iyl")
		dc.w $fd2c
		elseif strcmp("\1","bc")
		dc.b $3
		elseif strcmp("\1","de")
		dc.b $13
		elseif strcmp("\1","hl")
		dc.b $23
		elseif strcmp("\1","ix")
		dc.w $dd23
		elseif strcmp("\1","iy")
		dc.w $fd23
		elseif strcmp("\1","sp")
		dc.b $33
		elseif instr("\1","(i")				; inc (ix+n)
			num: equ \1
			getindex \1
			dc.b ireg, $34, num
		else
		z80_error	"inc","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


ind:		macros
		dc.w $edaa


indr:		macros
		dc.w $edba


ini:		macros
		dc.w $eda2


inir:		macros
		dc.w $edb2


jp:		macro
		local num
		if strcmp("\1","(hl)")
		dc.b $e9
		elseif strcmp("\1","(ix)")
		dc.w $dde9
		elseif strcmp("\1","(iy)")
		dc.w $fde9
		else
			if strcmp("\1","nz")
			num: equ \2
			dc.b $c2
			elseif strcmp("\1","z")
			num: equ \2
			dc.b $ca
			elseif strcmp("\1","nc")
			num: equ \2
			dc.b $d2
			elseif strcmp("\1","c")
			num: equ \2
			dc.b $da
			elseif strcmp("\1","po")
			num: equ \2
			dc.b $e2
			elseif strcmp("\1","pe")
			num: equ \2
			dc.b $ea
			elseif strcmp("\1","p")
			num: equ \2
			dc.b $f2
			elseif strcmp("\1","m")
			num: equ \2
			dc.b $fa
			else
			if narg=2
			z80_error	"jp","Illegal branch condition","\_"
			mexit
			endc

			num: equ \1					; jp n
			dc.b $c3
			endc
			if narg=2
			shift
			endc
			dc.b num&$FF, (num>>8)&$FF
		endc
		endm


jr:		macro
		local num
		if strcmp("\1","nz")
		num: equ \2
		dc.b $20
		elseif strcmp("\1","z")
		num: equ \2
		dc.b $28
		elseif strcmp("\1","nc")
		num: equ \2
		dc.b $30
		elseif strcmp("\1","c")
		num: equ \2
		dc.b $38
		else
		if narg=2
		z80_error	"jr","Illegal branch condition","\_"
		mexit
		endc
		num: equ \1		; jr n
		dc.b $18
		endc
		if narg=2
		shift
		endc
		;if ((num-*)>=-$80)&((num-*)<=$7f)
		;inform 2,"Branch (%h) is out of range: jr \_",num-*
		;mexit
		;endc
		dc.b num-*-1
		endm


ld:		macro
		local num, num2

		if ~(narg=2)|strcmp("\2","")
			z80_error	"ld","Unexpected end of line","\_"
			mexit
		endc
		if strcmp("\1","a")
			if (strlen("\2")=2)&instr("bc de hl sp ix iy ","\2\ ")	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			if instr("a b c d e h l (hl) ","\2\ ")
			getzreg	\2
			dc.b $78+zreg
			elseif strcmp("\2","i")
			dc.w $ed57
			elseif strcmp("\2","r")
			dc.w $ed5f
			elseif strcmp("\2","ixh")|strcmp("\2","ixu")
			dc.w $dd7c
			elseif strcmp("\2","ixl")
			dc.w $dd7d
			elseif strcmp("\2","iyh")|strcmp("\2","iyu")
			dc.w $fd7c
			elseif strcmp("\2","iyl")
			dc.w $fd7d
			elseif strcmp("\2","(bc)")
			dc.b $0a
			elseif strcmp("\2","(de)")
			dc.b $1a
			elseif instr("\2","(i")			; ld a,(ix+n)
				num: equ \2
				getindex \2
				dc.b ireg, $7e, num
			else
				num: equ \2
				tmp_len: = strlen("\2")
				tmp_fc:	substr	1,1,"\2"
				tmp_lc:	substr	tmp_len,tmp_len,"\2"
				if strcmp("\tmp_fc","(") & strcmp("\tmp_lc",")") ; ld a,(n)
				dc.b $3a, num&$ff, (num>>8)&$ff
				else				; ld a,n
				dc.b $3e, num
				endc
			endc
		elseif strcmp("\1","b")

			if ((strlen("\2")=2)&instr("bc de hl sp ix iy ","\2\ "))|((strlen("\2")=1)&instr("i r ","\2\ "))	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc

			if instr("a b c d e h l (hl) ","\2\ ")
			getzreg	\2
			dc.b $40+zreg
			elseif strcmp("\2","ixh")|strcmp("\2","ixu")
			dc.w $dd44
			elseif strcmp("\2","ixl")
			dc.w $dd45
			elseif strcmp("\2","iyh")|strcmp("\2","iyu")
			dc.w $fd44
			elseif strcmp("\2","iyl")
			dc.w $fd45
			elseif instr("\2","(i")			; ld b,(ix+n)
				num: equ \2
				getindex \2
				dc.b ireg, $46, num
			else					; ld b,n
			num: equ \2
			dc.b $6, num
			endc
		elseif strcmp("\1","c")
			if ((strlen("\2")=2)&instr("bc de hl sp ix iy ","\2\ "))|((strlen("\2")=1)&instr("i r ","\2\ "))	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			if instr("a b c d e h l (hl) ","\2\ ")
			getzreg	\2
			dc.b $48+zreg
			elseif strcmp("\2","ixh")|strcmp("\2","ixu")
			dc.w $dd4c
			elseif strcmp("\2","ixl")
			dc.w $dd4d
			elseif strcmp("\2","iyh")|strcmp("\2","iyu")
			dc.w $fd4c
			elseif strcmp("\2","iyl")
			dc.w $fd4d
			elseif instr("\2","(i")			; ld c,(ix+n)
				num: equ \2
				getindex \2
				dc.b ireg, $4e, num
			else					; ld c,n
			num: equ \2
			dc.b $e, num
			endc
		elseif strcmp("\1","d")
			if ((strlen("\2")=2)&instr("bc de hl sp ix iy ","\2\ "))|((strlen("\2")=1)&instr("i r ","\2\ "))	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			if instr("a b c d e h l (hl) ","\2\ ")
			getzreg	\2
			dc.b $50+zreg
			elseif strcmp("\2","ixh")|strcmp("\2","ixu")
			dc.w $dd54
			elseif strcmp("\2","ixl")
			dc.w $dd55
			elseif strcmp("\2","iyh")|strcmp("\2","iyu")
			dc.w $fd54
			elseif strcmp("\2","iyl")
			dc.w $fd55
			elseif instr("\2","(i")			; ld d,(ix+n)
				num: equ \2
				getindex \2
				dc.b ireg, $56, num
			else					; ld d,n
			num: equ \2
			dc.b $16, num
			endc
		elseif strcmp("\1","e")
			if ((strlen("\2")=2)&instr("bc de hl sp ix iy ","\2\ "))|((strlen("\2")=1)&instr("i r ","\2\ "))	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			if instr("a b c d e h l (hl) ","\2\ ")
			getzreg	\2
			dc.b $58+zreg
			elseif strcmp("\2","ixh")|strcmp("\2","ixu")
			dc.w $dd5c
			elseif strcmp("\2","ixl")
			dc.w $dd5d
			elseif strcmp("\2","iyh")|strcmp("\2","iyu")
			dc.w $fd5c
			elseif strcmp("\2","iyl")
			dc.w $fd5d
			elseif instr("\2","(i")			; ld e,(ix+n)
				num: equ \2
				getindex \2
				dc.b ireg, $5e, num
			else					; ld e,n
			num: equ \2
			dc.b $1e, num
			endc
		elseif strcmp("\1","h")
			if ((strlen("\2")=2)&instr("bc de hl sp ix iy ","\2\ "))|((strlen("\2")=1)&instr("i r ","\2\ "))	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			if instr("a b c d e h l (hl) ","\2\ ")
			getzreg	\2
			dc.b $60+zreg
			elseif instr("\2","(i")			; ld h,(ix+n)
				num: equ \2
				getindex \2
				dc.b ireg, $66, num
			else					; ld h,n
			num: equ \2
			dc.b $26, num
			endc
		elseif strcmp("\1","l")
			if ((strlen("\2")=2)&instr("bc de hl sp ix iy ","\2\ "))|((strlen("\2")=1)&instr("i r ","\2\ "))	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			if instr("a b c d e h l (hl) ","\2\ ")
			getzreg	\2
			dc.b $68+zreg
			elseif instr("\2","(i")			; ld l,(ix+n)
				num: equ \2
				getindex \2
				dc.b ireg, $6e, num
			else					; ld l,n
			num: equ \2
			dc.b $2e, num
			endc
		elseif strcmp("\1","i")		; ld i,a
			if strcmp("\2","a")
			dc.w $ed47
			else
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
		elseif strcmp("\1","r")		; ld r,a
			if	strcmp("\2","a")
			dc.w $ed4f
			else
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
		elseif strcmp("\1","ixh")|strcmp("\1","ixu")
			if ((strlen("\2")=2)&instr("bc de hl sp ix iy ","\2\ "))|((strlen("\2")=1)&instr("i r h l ","\2\ "))	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			if instr("a b c d e ","\2\ ")
			getzreg	\2
			dc.w $dd60+zreg
			elseif strcmp("\2","ixh")|strcmp("\2","ixu")
			dc.w $dd64
			elseif strcmp("\2","ixl")
			dc.w $dd65
			else					; ld ixh,n
			num: equ \2
			dc.b $dd, $26, num
			endc
		elseif strcmp("\1","ixl")
			if ((strlen("\2")=2)&instr("bc de hl sp ix iy ","\2\ "))|((strlen("\2")=1)&instr("i r h l ","\2\ "))	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			if instr("a b c d e ","\2\ ")
			getzreg	\2
			dc.w $dd68+zreg
			elseif strcmp("\2","ixh")|strcmp("\2","ixu")
			dc.w $dd6c
			elseif strcmp("\2","ixl")
			dc.w $dd6d
			else					; ld ixl,n
			num: equ \2
			dc.b $dd, $2e, num
			endc
		elseif strcmp("\1","iyh")|strcmp("\1","iyu")
			if ((strlen("\2")=2)&instr("bc de hl sp ix iy ","\2\ "))|((strlen("\2")=1)&instr("i r h l ","\2\ "))	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			if instr("a b c d e ","\2\ ")
			getzreg	\2
			dc.w $fd60+zreg
			elseif strcmp("\2","iyh")|strcmp("\2","iyu")
			dc.w $fd64
			elseif strcmp("\2","iyl")
			dc.w $fd65
			else					; ld iyh,n
			num: equ \2
			dc.b $fd, $26, num
			endc
		elseif strcmp("\1","iyl")
			if ((strlen("\2")=2)&instr("bc de hl sp ix iy ","\2\ "))|((strlen("\2")=1)&instr("i r h l ","\2\ "))	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			if instr("a b c d e ","\2\ ")
			getzreg	\2
			dc.w $fd68+zreg
			elseif strcmp("\2","iyh")|strcmp("\2","iyu")
			dc.w $fd6c
			elseif strcmp("\2","iyl")
			dc.w $fd6d
			else					; ld iyl,n
			num: equ \2
			dc.b $fd, $2e, num
			endc
		elseif strcmp("\1","bc")
			if instr("a b c d e h l (hl) ixh ixu ixl iyh iyu iyl i r ","\2\ ")	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			num: equ \2
			tmp_len: = strlen("\2")
			tmp_fc:	substr	1,1,"\2"
			tmp_lc:	substr	tmp_len,tmp_len,"\2"
			if strcmp("\tmp_fc","(") & strcmp("\tmp_lc",")") ; ld bc,(n)
			dc.b $ed, $4b, num&$ff, (num>>8)&$ff
			else					; ld bc,n
			dc.b $1, num&$ff, (num>>8)&$ff
			endc
		elseif strcmp("\1","de")
			if instr("a b c d e h l (hl) ixh ixu ixl iyh iyu iyl i r ","\2\ ")	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			num: equ \2
			tmp_len: = strlen("\2")
			tmp_fc:	substr	1,1,"\2"
			tmp_lc:	substr	tmp_len,tmp_len,"\2"
			if strcmp("\tmp_fc","(") & strcmp("\tmp_lc",")") ; ld de,(n)
			dc.b $ed, $5b, num&$ff, (num>>8)&$ff
			else					; ld de,n
			dc.b $11, num&$ff, (num>>8)&$ff
			endc
		elseif strcmp("\1","hl")
			if instr("a b c d e h l (hl) ixh ixu ixl iyh iyu iyl i r ","\2\ ")	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			num: equ \2
			tmp_len: = strlen("\2")
			tmp_fc:	substr	1,1,"\2"
			tmp_lc:	substr	tmp_len,tmp_len,"\2"
			if strcmp("\tmp_fc","(") & strcmp("\tmp_lc",")") ; ld hl,(n)
			dc.b $2a, num&$ff, (num>>8)&$ff
			else					; ld hl,n
			dc.b $21, num&$ff, (num>>8)&$ff
			endc
		elseif strcmp("\1","sp")
			if instr("a b c d e h l (hl) ixh ixu ixl iyh iyu iyl i r ","\2\ ")	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			if strcmp("\2","hl")
			dc.b $f9
			elseif strcmp("\2","ix")
			dc.w $ddf9
			elseif strcmp("\2","iy")
			dc.w $fdf9
			else
				num: equ \2
				tmp_len: = strlen("\2")
				tmp_fc:	substr	1,1,"\2"
				tmp_lc:	substr	tmp_len,tmp_len,"\2"
				if strcmp("\tmp_fc","(") & strcmp("\tmp_lc",")") ; ld sp,(n)
				dc.b $ed, $7b, num&$ff, (num>>8)&$ff
				else				; ld sp,n
				dc.b $31, num&$ff, (num>>8)&$ff
				endc
			endc
		elseif strcmp("\1","ix")
			if instr("a b c d e h l (hl) ixh ixu ixl iyh iyu iyl i r ","\2\ ")	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			num: equ \2
			tmp_len: = strlen("\2")
			tmp_fc:	substr	1,1,"\2"
			tmp_lc:	substr	tmp_len,tmp_len,"\2"
			if strcmp("\tmp_fc","(") & strcmp("\tmp_lc",")") ; ld ix,(n)
			dc.b $dd, $2a, num&$ff, (num>>8)&$ff
			else					; ld ix,n
			dc.b $dd, $21, num&$ff, (num>>8)&$ff
			endc
		elseif strcmp("\1","iy")
			if instr("a b c d e h l (hl) ixh ixu ixl iyh iyu iyl i r ","\2\ ")	; filter out illegal sources
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			num: equ \2
			tmp_len: = strlen("\2")
			tmp_fc:	substr	1,1,"\2"
			tmp_lc:	substr	tmp_len,tmp_len,"\2"
			if strcmp("\tmp_fc","(") & strcmp("\tmp_lc",")") ; ld iy,(n)
			dc.b $fd, $2a, num&$ff, (num>>8)&$ff
			else					; ld iy,n
			dc.b $fd, $21, num&$ff, (num>>8)&$ff
			endc
		elseif strcmp("\1","(bc)")
			if strcmp("\2","a")			; ld (bc),a
			dc.b 2
			else
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
		elseif strcmp("\1","(de)")
			if strcmp("\2","a")			; ld (de),a
			dc.b $12
			else
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
		elseif strcmp("\1","(hl)")
			if instr("a b c d e h l ","\2\ ")
			getzreg	\2
			dc.b $70+zreg
			else					; ld (hl),n
			num: equ \2
			dc.b $36, num
			endc
		elseif instr("\1","(i")				; ld (ix+n),?
			if instr("a b c d e h l ","\2\ ")
				num: equ \1
				getzreg	\2
				getindex \1
				dc.b ireg, $70|zreg, num
			else					; ld (ix+n),n
				num: equ \1
				num2: equ \2
				getindex \1
				dc.b ireg, $36, num, num2
			endc
		else						; ld (n),?
			num: equ \1
			if strcmp("\2","a")
			dc.b $32
			elseif strcmp("\2","bc")
			dc.w $ed43
			elseif strcmp("\2","de")
			dc.w $ed53
			elseif strcmp("\2","hl")
			dc.b $22
			elseif strcmp("\2","sp")
			dc.w $ed73
			elseif strcmp("\2","ix")
			dc.w $dd22
			elseif strcmp("\2","iy")
			dc.w $fd22
			else
			z80_error	"ld","Illegal addressing mode","\_"
			mexit
			endc
			dc.b num&$FF, (num>>8)&$ff
		endc
		endm


ldd:		macros
		dc.w $eda8


lddr:		macros
		dc.w $edb8


ldi:		macros
		dc.w $eda0


ldir:		macros
		dc.w $edb0


otdr:		macros
		dc.w $edbb


otir:		macros
		dc.w $edb3


out:		macro
		local num
		if strcmp("\1","(c)")&instr("a b c d e h l ","\2\ ")
		getzreg	\2
		dc.w $ed41+(zreg*8)
		elseif strcmp("\_","(c),0")
		dc.w $ed71
		elseif strcmp("\2","a")				; out n,a
		num: equ \1
		dc.b $d3, num
		else
		z80_error	"out","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


outd:		macros
		dc.w $edab


outi:		macros
		dc.w $eda3


pop:		macro
		if strcmp("\1","bc")
		dc.b $c1
		elseif strcmp("\1","de")
		dc.b $d1
		elseif strcmp("\1","hl")
		dc.b $e1
		elseif strcmp("\1","af")
		dc.b $f1
		elseif strcmp("\1","ix")
		dc.w $dde1
		elseif strcmp("\1","iy")
		dc.w $fde1
		else
		z80_error	"pop","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


push:		macro
		if strcmp("\1","bc")
		dc.b $c5
		elseif strcmp("\1","de")
		dc.b $d5
		elseif strcmp("\1","hl")
		dc.b $e5
		elseif strcmp("\1","af")
		dc.b $f5
		elseif strcmp("\1","ix")
		dc.w $dde5
		elseif strcmp("\1","iy")
		dc.w $fde5
		else
		z80_error	"push","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


res:		macro
		local num, num2
		num: equ \1
		if instr("a b c d e h l (hl) ","\2\ ")
		getzreg	\2
		dc.b $cb, $80+(num*8)+zreg
		elseif instr("\2","(i")				; res n,(ix+n)
			num2: equ \2
			getindex \2
			dc.b ireg, $cb, num2, $86+(num*8)
		else
		z80_error	"res","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


ret:		macro
		if strcmp("\1","nz")
		dc.b $c0
		elseif strcmp("\1","z")
		dc.b $c8
		elseif strcmp("\1","nc")
		dc.b $d0
		elseif strcmp("\1","c")
		dc.b $d8
		elseif strcmp("\1","po")
		dc.b $e0
		elseif strcmp("\1","pe")
		dc.b $e8
		elseif strcmp("\1","p")
		dc.b $f0
		elseif strcmp("\1","m")
		dc.b $f8
		elseif strlen("\1")=0				; ret
		dc.b $c9
		else
		z80_error	"ret","Illegal branch condition","\_"
		mexit
		endc
		endm


reti:		macros
		dc.w $ed4d


retn:		macros
		dc.w $ed45


rl:		macro
		local num
		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $cb, $10+zreg
		elseif instr("\1","(i")				; rl (ix+n)
			num: equ \1
			getindex \1
			dc.b ireg, $cb, num

			if narg=2				; rl (ix+n),?
			getzreg	\2
			dc.b $10+zreg
			else
			dc.b $16
			endc
		else
		z80_error	"rl","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


rla:		macros
		dc.b $17


rlc:		macro
		local num
		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $cb, zreg
		elseif instr("\1","(i")				; rlc (ix+n)
			num: equ \1
			getindex \1
			dc.b ireg, $cb, num

			if narg=2				; rlc (ix+n),?
			getzreg	\2
			dc.b zreg
			else
			dc.b $6
			endc
		else
		z80_error	"rlc","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm

rlca:		macros
		dc.b $7


rld:		macros
		dc.w $ed6f


rr:		macro
		local num
		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $cb, $18+zreg
		elseif instr("\1","(i")				; rr (ix+n)
			num: equ \1
			getindex \1
			dc.b ireg, $cb, num

			if narg=2				; rr (ix+n),?
			getzreg	\2
			dc.b $18+zreg
			else
			dc.b $1e
			endc
		else
		z80_error	"rr","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


rra:		macros
		dc.b $1f


rrc:		macro
		local num
		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $cb, $8+zreg
		elseif instr("\1","(i")				; rrc (ix+n)
			num: equ \1
			getindex \1
			dc.b ireg, $cb, num

			if narg=2				; rrc (ix+n),?
			getzreg	\2
			dc.b $8+zreg
			else
			dc.b $e
			endc
		else
		z80_error	"rrc","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


rrca:		macros
		dc.b $f


rrd:		macros
		dc.w $ed67


rst:		macro
		local num
		if (strlen("\1")=1) & instr("01234567","\1")
		num: equ \1
		elseif type(\1)&2=2				; check if sections/groups are in use
		num: equ offset(\1)
		else
		num: equ \1
		endc
		if num>7
		dc.b $c7+(num&$38)
		else
		dc.b $c7+(num<<3)
		endc
		endm


sbc:		macro
		local num
		if strcmp("\1","hl")
			if strcmp("\2","bc")
			dc.w $ed42
			elseif strcmp("\2","de")
			dc.w $ed52
			elseif strcmp("\2","hl")
			dc.w $ed62
			elseif strcmp("\2","sp")
			dc.w $ed72
			else
			z80_error	"sbc","Illegal addressing mode or unexpected end of line","\_"
			mexit
			endc
			mexit
		endc

		; "sbc a, x" or "sbc x"
		if narg=2 & strcmp("\1","a")
			shift					; ignore a
		endc

		if (narg=1) | (narg=2)
			if instr("a b c d e h l (hl) ","\1\ ")
			getzreg	\1
			dc.b $98+zreg
			elseif strcmp("\1","ixh")|strcmp("\1","ixu")
			dc.w $dd9c
			elseif strcmp("\1","ixl")
			dc.w $dd9d
			elseif strcmp("\1","iyh")|strcmp("\1","iyu")
			dc.w $fd9c
			elseif strcmp("\1","iyl")
			dc.w $fd9d
			elseif instr("\1","(i")			; sbc a,(ix+n)
				num: equ \1
				getindex \1
				dc.b ireg, $9e, num
			else					; sbc a,n
			num: equ \1
			dc.b $de, num
			endc
		else
		z80_error	"sbc","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


scf:		macros
		dc.b $37


set:		macro
		local num, num2
		num: equ \1
		if narg=1
		inform 3,"Use = instead of SET for redefinable symbols."
		elseif instr("a b c d e h l (hl) ","\2\ ")
		getzreg	\2
		dc.b $cb, $c0+(num*8)+zreg
		elseif instr("\2","(i")				; set n,(ix+n)
			num2: equ \2
			getindex \2
			dc.b ireg, $cb, num2, $c6+(num*8)
		else
		z80_error	"set","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


sla:		macro
		local num
		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $cb, $20+zreg
		elseif instr("\1","(i")
			num: equ \1
			getindex \1
			dc.b ireg, $cb, num

			if narg=2				; sla (ix+n),?
			getzreg	\2
			dc.b $20+zreg
			else					; sla (ix+n)
			dc.b $26
			endc
		else
		z80_error	"sla","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


sll:		macro
		local num
		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $cb, $30+zreg
		elseif instr("\1","(i")
			num: equ \1
			getindex \1
			dc.b ireg, $cb, num

			if narg=2				; sll (ix+n),?
			getzreg	\2
			dc.b $30+zreg
			else					; sll (ix+n)
			dc.b $36
			endc
		else
		z80_error	"sll","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm

sl1:		macros
		sll \_

sls:		macros
		sll \_

slia:		macros
		sll \_


sra:		macro
		local num
		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $cb, $28+zreg
		elseif instr("\1","(i")
			num: equ \1
			getindex \1
			dc.b ireg, $cb, num

			if narg=2				; sra (ix+n),?
			getzreg	\2
			dc.b $28+zreg
			else					; sra (ix+n)
			dc.b $2e
			endc
		else
		z80_error	"sra","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


srl:		macro
		local num
		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $cb, $38+zreg
		elseif instr("\1","(i")
			num: equ \1
			getindex \1
			dc.b ireg, $cb, num

			if narg=2				; srl (ix+n),?
			getzreg	\2
			dc.b $38+zreg
			else					; srl (ix+n)
			dc.b $3e
			endc
		else
		z80_error	"srl","Illegal addressing mode or unexpected end of line","\_"
		mexit
		endc
		endm


xor:		macro
		local num
		if narg=2 & strcmp("\1","a")
		shift						; ignore a if using alternate syntax
		endc
		if instr("a b c d e h l (hl) ","\1\ ")
		getzreg	\1
		dc.b $a8+zreg
		elseif strcmp("\1","ixh")|strcmp("\1","ixu")
		dc.w $ddac
		elseif strcmp("\1","ixl")
		dc.w $ddad
		elseif strcmp("\1","iyh")|strcmp("\1","iyu")
		dc.w $fdac
		elseif strcmp("\1","iyl")
		dc.w $fdad
		elseif instr("\1","(i")				; xor (ix+n)
			num: equ \1
			getindex \1
			dc.b ireg, $ae, num
		else						; xor n
		num: equ \1
		dc.b $ee, num
		endc
		endm


db:		macros
		dc.b \_


dw:		macro
		local c
		c: = 0
		rept narg
			local num\#c
			num\#c\: equ \1
			dc.b (num\#c\)&$FF, ((num\#c\)>>8)&$FF
			shift
			c: = c+1
		endr
		endm

; ---------------------------------------------------------------------------
; Mixed instruction set
; ---------------------------------------------------------------------------

add:		macro
		local num
		if cpu_mode=1					; Z80
			if strcmp("\1","hl")
				if strcmp("\2","bc")
				dc.b $9
				elseif strcmp("\2","de")
				dc.b $19
				elseif strcmp("\2","hl")
				dc.b $29
				elseif strcmp("\2","sp")
				dc.b $39
				else
				z80_error	"add","Illegal addressing mode or unexpected end of line","\_"
				mexit
				endc
				mexit

			elseif strcmp("\1","ix")
				if strcmp("\2","bc")
				dc.w $dd09
				elseif strcmp("\2","de")
				dc.w $dd19
				elseif strcmp("\2","ix")
				dc.w $dd29
				elseif strcmp("\2","sp")
				dc.w $dd39
				else
				z80_error	"add","Illegal addressing mode or unexpected end of line","\_"
				mexit
				endc
				mexit

			elseif strcmp("\1","iy")
				if strcmp("\2","bc")
				dc.w $fd09
				elseif strcmp("\2","de")
				dc.w $fd19
				elseif strcmp("\2","iy")
				dc.w $fd29
				elseif strcmp("\2","sp")
				dc.w $fd39
				else
				z80_error	"add","Illegal addressing mode or unexpected end of line","\_"
				mexit
				endc
				mexit
			endc

								; "add a, x" or "add x"
			if (narg=2) & strcmp("\1","a")
				shift				; ignore a
			endc

			if (narg=1) | (narg=2)
				if instr("a b c d e h l (hl) ","\1\ ")
				getzreg	\1
				dc.b $80+zreg
				elseif strcmp("\1","ixh")|strcmp("\1","ixu")
				dc.w $dd84
				elseif strcmp("\1","ixl")
				dc.w $dd85
				elseif strcmp("\1","iyh")|strcmp("\1","iyu")
				dc.w $fd84
				elseif strcmp("\1","iyl")
				dc.w $fd85
				elseif instr("\1","(i")		; add (ix+n)
					num: equ \1
					getindex \1
					dc.b ireg, $86, num
				else				; add n
				num: equ \1
				dc.b $c6, num
				endc
			else
			z80_error	"add","Illegal addressing mode or unexpected end of line","\_"
			mexit
			endc
		else						; 68k
		axd.\0	\_
		endc
		endm


and:		macro
		local num
		if cpu_mode=1					; Z80
			if narg=2 & strcmp("\1","a")
			shift					; ignore a if using alternate syntax
			endc
			if instr("a b c d e h l (hl) ","\1\ ")
			getzreg	\1
			dc.b $a0+zreg
			elseif strcmp("\1","ixh")|strcmp("\1","ixu")
			dc.w $dda4
			elseif strcmp("\1","ixl")
			dc.w $dda5
			elseif strcmp("\1","iyh")|strcmp("\1","iyu")
			dc.w $fda4
			elseif strcmp("\1","iyl")
			dc.w $fda5
			elseif instr("\1","(i")			; and (ix+n)
				num: equ \1
				getindex \1
				dc.b ireg, $a6, num
			else					; and n
			num: equ \1
			dc.b $e6, num
			endc
		else						; 68k
		anx.\0	\_
		endc
		endm


neg:		macro
		if cpu_mode=1					; Z80
		dc.w $ed44
		else						; 68k
		nxg.\0	\_
		endc
		endm


nop:		macro
		if cpu_mode=1					; Z80
		dc.b 0
		else						; 68k
		nxp
		endc
		endm


or:		macro
		local num
		if cpu_mode=1					; Z80
			if narg=2 & strcmp("\1","a")
			shift					; ignore a if using alternate syntax
			endc
			if instr("a b c d e h l (hl) ","\1\ ")
			getzreg	\1
			dc.b $b0+zreg
			elseif strcmp("\1","ixh")|strcmp("\1","ixu")
			dc.w $ddb4
			elseif strcmp("\1","ixl")
			dc.w $ddb5
			elseif strcmp("\1","iyh")|strcmp("\1","iyu")
			dc.w $fdb4
			elseif strcmp("\1","iyl")
			dc.w $fdb5
			elseif instr("\1","(i")			; or (ix+n)
				num: equ \1
				getindex \1
				dc.b ireg, $b6, num
			else					; or n
			num: equ \1
			dc.b $f6, num
			endc
		else						; 68k
		ox.\0	\_
		endc
		endm


sub:		macro
		local num
		if cpu_mode=1					; Z80
			if narg=2 & strcmp("\1","a")
			shift					; ignore a if using alternate syntax
			endc
			if instr("a b c d e h l (hl) ","\1\ ")
			getzreg	\1
			dc.b $90+zreg
			elseif strcmp("\1","ixh")|strcmp("\1","ixu")
			dc.w $dd94
			elseif strcmp("\1","ixl")
			dc.w $dd95
			elseif strcmp("\1","iyh")|strcmp("\1","iyu")
			dc.w $fd94
			elseif strcmp("\1","iyl")
			dc.w $fd95
			elseif instr("\1","(i")			; sub (ix+n)
				num: equ \1
				getindex \1
				dc.b ireg, $96, num
			else					; sub n
			num: equ \1
			dc.b $d6, num
			endc
		else						; 68k
		sxb.\0	\_
		endc
		endm

; ---------------------------------------------------------------------------
; Restored ASM68k instruction set
; ---------------------------------------------------------------------------

adda:		macros
		axda.\0	\_

addi:		macros
		axdi.\0	\_

addq:		macros
		axdq.\0	\_

addx:		macros
		axdx.\0	\_

andi:		macros
		anxi.\0	\_

negx:		macros
		nxgx.\0	\_

ori:		macros
		oxi.\0	\_

suba:		macros
		sxba.\0	\_

subi:		macros
		sxbi.\0	\_

subq:		macros
		sxbq.\0	\_

subx:		macros
		sxbx.\0	\_
