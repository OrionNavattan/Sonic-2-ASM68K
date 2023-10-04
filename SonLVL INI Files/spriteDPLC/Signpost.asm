; ---------------------------------------------------------------------------
; Dynamic Pattern Load Cues - signpost
; ---------------------------------------------------------------------------

DynPLC_Signpost:	index offset(*)
	ptr	DPLC_obj0D_000C
	ptr	DPLC_obj0D_0012
	ptr	DPLC_obj0D_001A
	ptr	DPLC_obj0D_0020
	ptr	DPLC_obj0D_0024
	ptr	DPLC_obj0D_0020

DPLC_obj0D_000C:	dplcheader
	dplc_entry	$C, $22
	dplc_entry	$C, $2E
DPLC_obj0D_000C_End

DPLC_obj0D_0012:	dplcheader
	dplc_entry	4, $3A
	dplc_entry	$10, $3E
	dplc_entry	4, $3A
DPLC_obj0D_0012_End

DPLC_obj0D_001A:	dplcheader
	dplc_entry	$C, 0
	dplc_entry	$C, 0
DPLC_obj0D_001A_End

DPLC_obj0D_0020:	dplcheader
	dplc_entry	$10, $C
DPLC_obj0D_0020_End

DPLC_obj0D_0024:	dplcheader
	dplc_entry	4, $1C
DPLC_obj0D_0024_End

	even
