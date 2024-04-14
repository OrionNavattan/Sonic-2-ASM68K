		opt	l.					; . is the local label symbol
		opt	ae-					; automatic evens disabled by default
		opt an+						; allow Intel/Zilog-style number suffixes (used in the Z80 code and definitions)
		opt	ws+					; allow statements to contain white-spaces
		opt	w+					; print warnings

MusHeader:	equ 1						; let Sound Equates.asm know we're assembled compressed music

FixMusicAndSFXDataBugs:	equ FixBugs

; ---------------------------------------------------------------------------
; Test if argument is used
; ---------------------------------------------------------------------------

ifarg:		macros
		if strlen("\1")>0

; ---------------------------------------------------------------------------
; Generate a size constant for a block of RAM
; ---------------------------------------------------------------------------

ramblocksize:	macros
		sizeof_\1: equ	__rs-\1

; ---------------------------------------------------------------------------
; Make a Z80 pointer for use with compressed music
; ---------------------------------------------------------------------------

z80_ptr: macros
		dc.w ((\1&$7FFF)<<8)&$FF00+(\1&$7FFF)>>8

; ===========================================================================

		include "sound/Sound Equates.asm"
		include "sound/Frequency, Note, Envelope, & Sample Definitions.asm"
		include "sound/Sound Language.asm"

Header: group word,org(z_music_data)
		section _Header,Header

; ---------------------------------------------------------------------------
; Generate an include for a music file and output the assembled bytecode to
; its own file.
; ---------------------------------------------------------------------------

inc_music:	macro songname
		pushs

Music\@:	section	org(z_music_data),file("sound/music/compressed/\songname\.unc"),over(Header) ; output each music track to its own file
		include "sound/music/\songname\.asm"		; include the actual music file for assembly

		if offset(*)>sizeof_z_music_data		; size of Z80 decompression buffer
			inform 2,"\songname is too large for the Z80 decompression buffer! It should be uncompressed instead."
		endc
		pops
		endm
