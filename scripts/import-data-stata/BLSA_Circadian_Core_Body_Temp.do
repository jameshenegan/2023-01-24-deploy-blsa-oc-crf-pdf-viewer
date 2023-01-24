clear
import delimited "../data-csv/BLSA_Circadian_Core_Body_Temp.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_circorbodtem "CRF Version"

label variable obsdate_cctdate "Date Completed"

// Generate 'date version' of the 'obsdate_cctdate' variable
gen _obsdate_cctdate = date(obsdate_cctdate, "YMD")
format _obsdate_cctdate %td

label variable blank_circorbodtem "Blank Form"

label variable ccttid "Tester ID"

label variable cct01 "Use pacemaker or other implanted electro medical device"
label define _i49eHs7Cho 0 "No" 1 "Yes" 2 " Don't know"
label values cct01 _i49eHs7Cho

label variable cct02 "Scheduled to receive an MRI within next 5 days"
label define _wEb14lgTpS 0 "No" 1 "Yes" 2 " Don't know"
label values cct02 _wEb14lgTpS

label variable cct03 "Have impaired gag reflex or trouble swallowing large pills"
label define _p0CFvXuVzL 0 "No" 1 "Yes" 2 " Don't know"
label values cct03 _p0CFvXuVzL

label variable cct04 "Hx or suspicion of gastrointestinal obstruction diverticulitis or IBS"
label define _NePEJZJu8G 0 "No" 1 "Yes" 2 " Don't know"
label values cct04 _NePEJZJu8G

label variable cct05 "Have severe constipation"
label define _JPjgmu3dA5 0 "No" 1 "Yes" 2 " Don't know"
label values cct05 _JPjgmu3dA5

label variable cct06 "Have had gastrointestinal surgery"
label define _eDGuYPDLVX 0 "No" 1 "Yes" 2 " Don't know"
label values cct06 _eDGuYPDLVX

label variable cct07 "Hx of reflux esophagitis esophageal food impaction or feninization of the esophagus"
label define _pJ6EIsTIfh 0 "No" 1 "Yes" 2 " Don't know"
label values cct07 _pJ6EIsTIfh

label variable cctstid "Sensor administration tester ID"

label variable cctsdate "Sensor Administration Date Completed"

// Generate 'date version' of the 'cctsdate' variable
gen _cctsdate = date(cctsdate, "YMD")
format _cctsdate %td

label variable cctstime "Sensor Administration time"

label variable cctsm "Senson Administration AmPm"
label define _WhhHiLQy09 1 "Am" 2 "Pm"
label values cctsm _WhhHiLQy09

label variable cctsn "Sensor serial number"

label variable cctcn "Sensor calibration number"

label variable cctrtid "Recorder tester ID"

label variable cctrn "Recprder number"

label variable cctrbdt "Begin recording Date"

// Generate 'date version' of the 'cctrbdt' variable
gen _cctrbdt = date(cctrbdt, "YMD")
format _cctrbdt %td

label variable cctrbtm "Begin recording time"

label variable cctrbm "Begin recording time AmPm"
label define _jsL7ZzWfQP 1 "Am" 2 "Pm"
label values cctrbm _jsL7ZzWfQP

label variable cctredt "End recording Date"

// Generate 'date version' of the 'cctredt' variable
gen _cctredt = date(cctredt, "YMD")
format _cctredt %td

label variable cctretm "End recording time"

label variable cctrem "End recording time AmPm"
label define _YL19MlYKb0 1 "Am" 2 "Pm"
label values cctrem _YL19MlYKb0

label variable ccttma "Treadmill start time"

label variable ccttmam "Treadmill start time AmPm"
label define _QrCjfwzwBU 1 "Am" 2 "Pm"
label values ccttmam _QrCjfwzwBU

label variable ccttmb "Treadmill stop time"

label variable ccttmbm "Treadmill stop time AmPm"
label define _aTGFBCvkcN 1 "Am" 2 "Pm"
label values ccttmbm _aTGFBCvkcN

label variable ccttmc "Treadmill not done during monitoring"

label variable cctla "Long Distance Corridor Walk start"

label variable cctlam "LDCW start time AmPm"
label define _HURuodYeTg 1 "Am" 2 "Pm"
label values cctlam _HURuodYeTg

label variable cctlb "Long Distance Corridor Walk stop"

label variable cctlbm "LDCW stop time AmPm"
label define _JblGiNB0XD 1 "Am" 2 "Pm"
label values cctlbm _JblGiNB0XD

label variable cctlc "Long Distance Corridor Walk not done during monitoring"

label variable cctga "GAIT start"

label variable cctgam "GAIT start time AmPm"
label define _cRdFO873nr 1 "Am" 2 "Pm"
label values cctgam _cRdFO873nr

label variable cctgb "GAIT stop"

label variable cctgbm "GAIT stop time AmPm"
label define _vm7pWHPUbW 1 "Am" 2 "Pm"
label values cctgbm _vm7pWHPUbW

label variable cctgc "GAIT not done during monitoring"

label variable cctca "Cognitive Assessment start"

label variable cctcam "Cognitive start time AmPm"
label define _mSS2oQZfQR 1 "Am" 2 "Pm"
label values cctcam _mSS2oQZfQR

label variable cctcb "Cognitive Assessment stop"

label variable cctcbm "Cognitive stop time AmPm"
label define _x0teKhI9al 1 "Am" 2 "Pm"
label values cctcbm _x0teKhI9al

label variable cctcc "Cognitive Assessment not done during monitoring"

label variable cctst "In bed for sleeping start"

label variable cctstm "In bed for sleeping start AmPm"
label define _gyD3xbadtf 1 "Am" 2 "Pm"
label values cctstm _gyD3xbadtf

label variable cctat "Awake in the morning start"

label variable cctatm "Awake start AmPm"
label define _eQkOWgP2ct 1 "Am" 2 "Pm"
label values cctatm _eQkOWgP2ct

label variable auto_id_circorbodtem "Unique Teleform Number"

label variable blank_1_circorbodtem "Blank"

label variable cctcc_1 "Cognitive Assessment not done during monitoring : Not done during monitoring (Checkbox Indicator)"

label variable cctgc_1 "GAIT not done during monitoring : Not done during monitoring (Checkbox Indicator)"

label variable cctlc_1 "Long Distance Corridor Walk not done during monitoring : Not done during monitoring (Checkbox Indicator)"

label variable crf_parent_name_circorbodtem "CRF Parent Name"

label variable study_name_circorbodtem "Study Name"

