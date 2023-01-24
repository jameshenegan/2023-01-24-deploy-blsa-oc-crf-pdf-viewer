clear
import delimited "../data-csv/BLSA_Long_Distance_Corridor_Walk.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_londiscorwal "CRF Version"

label variable obsdate_ldcwdate "Date Completed"

// Generate 'date version' of the 'obsdate_ldcwdate' variable
gen _obsdate_ldcwdate = date(obsdate_ldcwdate, "YMD")
format _obsdate_ldcwdate %td

label variable ldcwtid "Tester ID"

label variable blank_londiscorwal "Blank Form"

label variable ldcw01 "Was the participant able to complete the fast paced 6 meter walk with or without a walking aid"
label define _TmBvg7aXXg 0 "No" 1 "Yes"
label values ldcw01 _TmBvg7aXXg

label variable ldcw02 "Are there abnormal ECG hardcopy references"
label define _SutupCZ0oN 0 "No" 1 "Yes" 2 "ECG not done or not available"
label values ldcw02 _SutupCZ0oN

label variable ldcw02a "Abnormal ECG"

label variable ldcw02a1 "Mobitz Type II 2nd or 3rd degree heart block"

label variable ldcw02a2 "Q-wave > 1mm in 2 continuous leads"

label variable ldcw02a3 "ST depression > 2mm w/o LVH or LBBB"

label variable ldcw02a4 "ST elevation > 2mm w/o LBBB and early repolarization"

label variable ldcw03a "Sitting blood pressure systolic"

label variable ldcw03b "Sitting blood pressure diastolic"

label variable ldcw03c "Sitting heart rate"

label variable ldcw03 "Was resting heart rate greater than 120 bpm"
label define _Gg2npiETxf 0 "No" 1 "Yes"
label values ldcw03 _Gg2npiETxf

label variable ldcw04 "Was Systolic BP greater than 180 or diastolic pressure greater than 110"
label define _sy2dJe0x1i 0 "No" 1 "Yes"
label values ldcw04 _sy2dJe0x1i

label variable ldcw05 "Need to use walking aid"
label define _ih9RQKKqF6 0 "No" 1 "Yes"
label values ldcw05 _ih9RQKKqF6

label variable ldcw06 "Was Cosmed worn during test"
label define _hFxlGcmdMo 0 "No" 1 "Yes"
label values ldcw06 _hFxlGcmdMo

label variable ldcw06a "Mask size"
label define _LxtFd3xU8u 1 "Small" 2 "Medium" 3 "Large"
label values ldcw06a _LxtFd3xU8u

label variable ldcw11 "Had heart attack within past 3 mo"
label define _cqTTKkw7vx 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw11 _cqTTKkw7vx

label variable ldcw12 "Had angioplasty within past 3 mo"
label define _tY113Qbave 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw12 _tY113Qbave

label variable ldcw13 "Had heart surgery within past 3 mo"
label define _CCLt524mk4 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw13 _CCLt524mk4

label variable ldcw14 "Had new or worsening within past 3 mo"
label define _znM85Madwy 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw14 _znM85Madwy

label variable ldcw15 "Had new or worsening angina within past 3 mo"
label define _WZNwW06ZAq 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw15 _WZNwW06ZAq

label variable ldcw16 "Had new or worsening shortness of breath within past 3 mo"
label define _xSGmWXv2wm 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw16 _xSGmWXv2wm

label variable mdcw21 "Usual Pace heart rate"

label variable mdcw22 "Did heart rate exceed predetermined max during first lap"
label define _eSUZoprCs1 0 "No" 1 "Yes"
label values mdcw22 _eSUZoprCs1

label variable mdcw22a "Laps completed"

label variable mdcw23 "Did heart rate exceed predetermined max anytime during the UP Walk"
label define _N9Gr28d2oX 0 "No" 1 "Yes"
label values mdcw23 _N9Gr28d2oX

label variable mdcw24 "UP Number of laps completed"

label variable mdcw25 "Number of additional meters"

label variable mdcw26 "Heart rate at the end of 230 walk"

label variable mdcw27 "Did participant complete 230 walk"
label define _m3psxOCWNa 0 "No" 1 "Yes"
label values mdcw27 _m3psxOCWNa

label variable mdcw27a "Usual Pace reason not done"
label define _I0p197cuxj 1 "Exclusion criteria" 2 "Chest pain" 3 "Short of Breath" 4 "Felt faint" 5 "Knee pain" 6 "Hip pain" 7 "Calf pain" 77 "Refused" 8 "Back pain" 9 "Other" 99 "No time or tester"
label values mdcw27a _I0p197cuxj

label variable mdcw27b "Did participant need to use walking aid"
label define _dEa4Gg8AZv 0 "No" 1 "Yes"
label values mdcw27b _dEa4Gg8AZv

label variable ldcw41am "Lap 1 minutes"

label variable ldcw41as "Lap 1 seconds"

label variable ldcw41bm "Lap 2 minutes"

label variable ldcw41bs "Lap 2 seconds"

label variable ldcw41cm "Lap 3 minutes"

label variable ldcw41cs "Lap 3 seconds"

label variable ldcw41dm "Lap 4 minutes"

label variable ldcw41ds "Lap 4 seconds"

label variable ldcw41em "Lap 5 minutes"

label variable ldcw41es "Lap 5 seconds"

label variable ldcw41fm "Lap 6 minutes"

label variable ldcw41fs "Lap 6 seconds"

label variable ldcw41gm "Lap 7 minutes"

label variable ldcw41gs "Lap 7 seconds"

label variable ldcw41hm "Lap 8 minutes"

label variable ldcw41hs "Lap 8 secods"

label variable ldcw41im "Lap 9 minutes"

label variable ldcw41is "Lap 9 seconds"

label variable ldcw41jm "Lap 10 minutes"

label variable ldcw41js "Lap 10 seconds"

label variable ldcw42 "Time at end of 400 meters or STOP minutes"

label variable ldcw42a "Time at end of 400 meters or STOP seconds"

label variable ldcw43 "Heart rate at the end of 400m or Stop"

label variable ldcw44a "BP systolic at the end of 400m"

label variable ldcw44b "Sitting blood pressure diastolic"

label variable ldcw45 "Did participant complete 10 laps"
label define _iTxGzluK1O 0 "No" 1 "Yes"
label values ldcw45 _iTxGzluK1O

label variable ldcw45a "Number of laps completed"

label variable ldcw45b "Number of additional meters"

label variable ldcw46 "Heart rate after 2 min"

label variable ldcw47 "Did participant complete 400 meter walk"
label define _PqEWnvdkij 0 "No" 1 "Yes"
label values ldcw47 _PqEWnvdkij

label variable ldcw47a "400 meter reason not done"
label define _hAzGbC5Kzp 1 "Exclusion criteria" 10 "Did not finish 2:30 walk" 11 "Elevated HR during 2:30 walk" 13 " Had symptoms during 2:30 walk" 14 "Fatigue/Exhaustion/Tiredness" 2 "Chest pain" 3 "Short of Breath" 4 "Felt faint" 5 "Knee pain" 6 "Hip pain" 7 "Calf pain" 77 "Refused" 8 "Back pain" 9 "Other" 99 "No time or tester"
label values ldcw47a _hAzGbC5Kzp

label variable ldcw47c "400 meter other reason not done"

label variable ldcw47b "Did participant need to use walking aid"
label define _nfGl5mk3k0 0 "No" 1 "Yes"
label values ldcw47b _nfGl5mk3k0

label variable ldcw47bs "Borg Score"

label variable ldcw48a "400 meter Chest pain"
label define _GE3wmVD0gN 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw48a _GE3wmVD0gN

label variable ldcw48b "400 meter Shortness of breath"
label define _vTOBmtrRpM 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw48b _vTOBmtrRpM

label variable ldcw48c "400 meter knee pain"
label define _ykvvBqsUXk 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw48c _ykvvBqsUXk

label variable ldcw48d "400 meter hip pain"
label define _Lf9J5ze9dK 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw48d _Lf9J5ze9dK

label variable ldcw48e "400 meter calf pain"
label define _NYvOne2ESo 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw48e _NYvOne2ESo

label variable ldcw48f "400 meter back pain"
label define _so5AvC9nNW 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw48f _so5AvC9nNW

label variable ldcw48g "400 meter foot pain"
label define _iqdJbqtobr 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw48g _iqdJbqtobr

label variable ldcw48h "400 meter leg cramps"
label define _xTmrSVW714 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw48h _xTmrSVW714

label variable ldcw48i "400 meter numbness or tingling in legs or feet"
label define _wYsN6Boz6T 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw48i _wYsN6Boz6T

label variable mdcw51 "Left arm swing when walking"
label define _LH5E2pHBJm 0 "Not attempted unable to walk unaided" 1 "Normal" 2 "Abnormal (diminished in contrast of the other arm)" 3 "Absent"
label values mdcw51 _LH5E2pHBJm

label variable mdcw52 "Right arm swing when walking"
label define _UZR50uHT4U 0 "Not attempted unable to walk unaided" 1 "Normal" 2 "Abnormal (diminished in contrast of the other arm)" 3 "Absent"
label values mdcw52 _UZR50uHT4U

label variable mdcw53 "Hand tremor LEFT arm"
label define _ZLjAxBzOkB 0 "Not attempted unable to walk unaided" 1 "Never" 2 "Intermittent (rare < 10% of the walking time - 30 sec for a 5km/h gait)" 3 "Intermittent (moderate < 50% of the walking time)" 4 "Intermittent (frequent >/= 50% of the walking time)" 5 "Persistent"
label values mdcw53 _ZLjAxBzOkB

label variable mdcw54 "Hand tremor RIGHT arm"
label define _vcLxD0StcK 0 "Not attempted unable to walk unaided" 1 "Never" 2 "Intermittent (rare < 10% of the walking time - 30 sec for a 5km/h gait)" 3 "Intermittent (moderate < 50% of the walking time)" 4 "Intermittent (frequent >/= 50% of the walking time)" 5 "Persistent"
label values mdcw54 _vcLxD0StcK

label variable amstartampm "Activity Monitor start time Ampm"
label define _GQsrRDSp1o 1 "Am" 2 "Pm"
label values amstartampm _GQsrRDSp1o

label variable amstopampm "Activity Monitor stop time Ampm"
label define _uRxXIKFTlH 1 "Am" 2 "Pm"
label values amstopampm _uRxXIKFTlH

label variable am_starttime "Activity Monitor start time"

label variable am_stoptime "Activity Monitor stop time"

label variable cosmed5k "Cosmed K5"

label variable ldcw44c "BP systolic at 2 minutes of recovery"

label variable ldcw44d "BP diastolic at 2 minutes of recovery"

label variable ldcw44e "BP systolic at 5 minutes of recovery"

label variable ldcw44f "BP diastolic at 5 minutes of recovery"

label variable amstarttime "Activity Monitor start time"

label variable amstoptime "Activity Monitor stop time"

label variable auto_id_londiscorwal "Unique Form"

label variable blank_1_londiscorwal "Blank"

label variable crf_parent_name_londiscorwal "CRF Parent Name"

label variable item_group_repeat_londiscorwal "Item Group Repeate"

label variable ldcw02a1_ldcw02a1 "Mobitz Type II 2nd or 3rd degree heart block : Mobitz type II 2nd or 3rd degree heart block (Checkbox Indicator)"

label variable ldcw02a2_ldcw02a2 "Q-wave > 1mm in 2 continuous leads : Q-wave > 1mm in 2 contiguous leads (Checkbox Indicator)"

label variable ldcw02a3_ldcw02a3 "ST depression > 2mm w/o LVH or LBBB : ST depression > 2mm w/o LVH or LBBB (Checkbox Indicator)"

label variable ldcw02a4_ldcw02a4 "ST elevation > 2mm w/o LBBB and early repolarization : ST elevation > 2mm w/o LBBB and early repolarization (Checkbox Indicator)"

label variable ldcw02a_ldcw02a1 "Abnormal ECG : Mobitz type II 2nd or 3rd degree heart block (Checkbox Indicator)"

label variable ldcw02a_ldcw02a2 "Abnormal ECG : Q-wave > 1mm in 2 contiguous leads (Checkbox Indicator)"

label variable ldcw02a_ldcw02a3 "Abnormal ECG : ST depression > 2mm w/o LVH or LBBB (Checkbox Indicator)"

label variable ldcw02a_ldcw02a4 "Abnormal ECG : ST elevation > 2mm w/o LBBB and early repolarization (Checkbox Indicator)"

label variable mdcw22a_1 "Laps completed : 1 (Checkbox Indicator)"

label variable mdcw22a_2 "Laps completed : 2 (Checkbox Indicator)"

label variable mdcw22a_3 "Laps completed : 3 (Checkbox Indicator)"

label variable mdcw22a_4 "Laps completed : 4 (Checkbox Indicator)"

label variable mdcw22a_5 "Laps completed : 5 (Checkbox Indicator)"

label variable mdcw22a_6 "Laps completed : 6 (Checkbox Indicator)"

label variable mdcw22a_7 "Laps completed : 7 (Checkbox Indicator)"

label variable study_name_londiscorwal "Study Name"

