clear
import delimited "../data-csv/BLSA_Radiation_Exposure_Checklist.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_radexpche "CRF Version"

label variable obsdate_radexdt "Date Completed"

// Generate 'date version' of the 'obsdate_radexdt' variable
gen _obsdate_radexdt = date(obsdate_radexdt, "YMD")
format _obsdate_radexdt %td

label variable blank_radexpche "Blank Form"

label variable radscid "Screener ID"

label variable radex1a "BLSA"

label variable radex1b "CT"

label variable radex1e "DEXA"

label variable radex1i "NIA Subtotal"

label variable radex2 "radiation exposure past 12 months"
label define _DxdNeQ71CZ 0 "No" 1 "Yes"
label values radex2 _DxdNeQ71CZ

label variable radex21 "Simple xray or PET"

label variable radex2a "Simple x-ray or PET total"

label variable radex22 "X-ray with contrast"

label variable radex2b "X-ray with contrast total"

label variable radex23 "CT or MUGA"

label variable radex2c "CT or MUGA total"

label variable radex24 "Mamography"

label variable radex2d "Mamography total"

label variable radex2e "Other studies subtotal"

label variable radex3 "Total"

label variable radsc1 "Is participant female not hysterectomized and under 56y"
label define _TLrFArCgbm 0 "No" 1 "Yes"
label values radsc1 _TLrFArCgbm

label variable radsc1a "If yes urine pregnancy results"
label define _fpMTkzw3YU 0 "Negative" 1 "Positive"
label values radsc1a _fpMTkzw3YU

label variable radex_pib "PiB"

label variable radex_tau "Tau"

label variable radex1f "Neuroimaging"

label variable radex1g "VALIDATE"

label variable auto_id_radexpche "Unique Teleform Number"

label variable radexid "Tester ID"

label variable radex1c "Knee x-ray"

label variable radex1d "Hand x-ray"

label variable radex1h "MUGA"

label variable radsc2 "Knee replacement surgery"
label define _RxCxNJv26w 0 "No" 1 "Yes" 777 "Refused" 888 "Don't know"
label values radsc2 _RxCxNJv26w

label variable radsc2a "Knee replacement which knee"
label define _cL9Ks6rqT2 0 "Right" 1 "Left" 2 "Both"
label values radsc2a _cL9Ks6rqT2

label variable radtecid "Rad Technician ID"

label variable rad01 "Hand x-ray done"
label define _R3JvET7kVX 0 "None" 1 "Both" 2 "Left only" 3 "Right only"
label values rad01 _R3JvET7kVX

label variable rad01a "Hand x-ray reason not done"
label define _kxDZvKEKDT 555 "Physical problems" 666 "Cognitive problems" 888 "Refused" 999 "Technical problems"
label values rad01a _kxDZvKEKDT

label variable rad02 "Knee x-ray done"
label define _ssTsvWnT29 0 "None" 1 "Both" 2 "Left only" 3 "Right only"
label values rad02 _ssTsvWnT29

label variable rad02a "Knee x-ray RND"
label define _Ap7wMjYMP3 1 "Joint replacement" 555 "Physical problems" 666 "Cognitive problems" 888 "Refused" 999 "Technical problems"
label values rad02a _Ap7wMjYMP3

label variable rad03 "Did hand xrays receive KL grades 0 in both sides"
label define _oAWsad1k9p 0 "No" 1 "Yes"
label values rad03 _oAWsad1k9p

label variable rad04 "Did knee xrays receive KL grades 0 in both sides"
label define _Sq3dCkS3xt 0 "No" 1 "Yes"
label values rad04 _Sq3dCkS3xt

label variable rad05 "Is participants age 60 or older"
label define _dNYVCLY3zn 0 "No" 1 "Yes"
label values rad05 _dNYVCLY3zn

label variable rad06 "If answered NO to hip replacement surgery"
label define _LG04FvAiVn 0 "No" 1 "Yes"
label values rad06 _LG04FvAiVn

label variable rad07 "If answered NO to back surgery or hardware"
label define _lSuQpu3Uvc 0 "No" 1 "Yes"
label values rad07 _lSuQpu3Uvc

label variable rad08 "Were sunrise knee RX done"
label define _nWcyiPGzAT 0 "None" 1 "Both" 2 "Left only" 3 "Right only"
label values rad08 _nWcyiPGzAT

label variable rad08a "Sunrise knee RX reason not done"
label define _dyYEg7m4g6 0 "Answered NO to any of the above (3-7)" 555 "Physical problems" 666 "Cognitive problems" 888 "Refused" 999 "Technical problems"
label values rad08a _dyYEg7m4g6

label variable crf_parent_name_radexpche "CRF Parent Name"

label variable item_group_repeat_radexpche "Item Group Repeate"

label variable radex1a_blsa "BLSA : BLSA 0.52 REM (Please specify) (Checkbox Indicator)"

label variable radex1b_blsa_ct "CT : CT 0.5155080 REM (Checkbox Indicator)"

label variable radex1c_blsa_knee_xray "Knee x-ray : Knee x-ray 0.0002580 REM (Checkbox Indicator)"

label variable radex1d_blsa_hand_xray "Hand x-ray : Hand x-ray 0.0000070 REM (Checkbox Indicator)"

label variable radex1e_blsa_dexa "DEXA : DEXA 0.0000012 REM (Checkbox Indicator)"

label variable radex1f_early_markers "Neuroimaging : Neuroimaging 0.480 REM (Checkbox Indicator)"

label variable radex1g_validate "VALIDATE : Validate 0.155 REM (Checkbox Indicator)"

label variable radex1h_jhh80062503 "MUGA : MUGA 1.550 REM (Checkbox Indicator)"

label variable radex21_rad_rx_simple "Simple xray or PET : Any simple Xray or PET (Checkbox Indicator)"

label variable radex22_rad_rx_contrast "X-ray with contrast : Any Xray with contrast (Checkbox Indicator)"

label variable radex23_rad_ct "CT or MUGA : Any CT or MUGA (Checkbox Indicator)"

label variable radex24_rad_mamography "Mamography : Mamography (Checkbox Indicator)"

label variable radex_pib_pib "PiB : PiB 0.303 (Checkbox Indicator)"

label variable study_name_radexpche "Study Name"

