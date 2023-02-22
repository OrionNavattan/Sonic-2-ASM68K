; ---------------------------------------------------------------------------
; Dynamic Pattern Load Cues - splash and spindash dust
; ---------------------------------------------------------------------------

DynPLC_SplashDust:	index offset(*)
	ptr	DPLC_obj08_002C
	ptr	DPLC_obj08_002E
	ptr	DPLC_obj08_0032
	ptr	DPLC_obj08_0036
	ptr	DPLC_obj08_003A
	ptr	DPLC_obj08_003E
	ptr	DPLC_obj08_0042
	ptr	DPLC_obj08_0046
	ptr	DPLC_obj08_004A
	ptr	DPLC_obj08_004E
	ptr	DPLC_obj08_0052
	ptr	DPLC_obj08_0056
	ptr	DPLC_obj08_005A
	ptr	DPLC_obj08_005E
	ptr	DPLC_obj08_0064
	ptr	DPLC_obj08_006A
	ptr	DPLC_obj08_0070
	ptr	DPLC_obj08_0076
	ptr	DPLC_obj08_0076
	ptr	DPLC_obj08_0076
	ptr	DPLC_obj08_0076
	ptr	DPLC_obj08_0078

DPLC_obj08_002C:	dplcHeader
DPLC_obj08_002C_End

DPLC_obj08_002E:	dplcHeader
	dplcEntry	8, 0
DPLC_obj08_002E_End

DPLC_obj08_0032:	dplcHeader
	dplcEntry	$10, 8
DPLC_obj08_0032_End

DPLC_obj08_0036:	dplcHeader
	dplcEntry	$10, $18
DPLC_obj08_0036_End

DPLC_obj08_003A:	dplcHeader
	dplcEntry	$10, $28
DPLC_obj08_003A_End

DPLC_obj08_003E:	dplcHeader
	dplcEntry	$10, $38
DPLC_obj08_003E_End

DPLC_obj08_0042:	dplcHeader
	dplcEntry	$10, $48
DPLC_obj08_0042_End

DPLC_obj08_0046:	dplcHeader
	dplcEntry	8, $58
DPLC_obj08_0046_End

DPLC_obj08_004A:	dplcHeader
	dplcEntry	8, $60
DPLC_obj08_004A_End

DPLC_obj08_004E:	dplcHeader
	dplcEntry	8, $68
DPLC_obj08_004E_End

DPLC_obj08_0052:	dplcHeader
	dplcEntry	8, $70
DPLC_obj08_0052_End

DPLC_obj08_0056:	dplcHeader
	dplcEntry	8, $78
DPLC_obj08_0056_End

DPLC_obj08_005A:	dplcHeader
	dplcEntry	8, $80
DPLC_obj08_005A_End

DPLC_obj08_005E:	dplcHeader
	dplcEntry	2, $88
	dplcEntry	8, $8A
DPLC_obj08_005E_End

DPLC_obj08_0064:	dplcHeader
	dplcEntry	4, $92
	dplcEntry	8, $96
DPLC_obj08_0064_End

DPLC_obj08_006A:	dplcHeader
	dplcEntry	6, $9E
	dplcEntry	8, $A4
DPLC_obj08_006A_End

DPLC_obj08_0070:	dplcHeader
	dplcEntry	6, $AC
	dplcEntry	8, $B2
DPLC_obj08_0070_End

DPLC_obj08_0076:	dplcHeader
DPLC_obj08_0076_End

DPLC_obj08_0078:	dplcHeader
	dplcEntry	$10, $BA
DPLC_obj08_0078_End

	even
