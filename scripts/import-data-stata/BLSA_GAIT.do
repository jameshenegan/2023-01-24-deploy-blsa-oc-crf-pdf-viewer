clear
import delimited "../data-csv/BLSA_GAIT.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_gai "CRF Version"

label variable obsdate_glabdate "Date Completed"

// Generate 'date version' of the 'obsdate_glabdate' variable
gen _obsdate_glabdate = date(obsdate_glabdate, "YMD")
format _obsdate_glabdate %td

label variable blank_gai "Blank Form"

label variable glabtid "Tester ID"

label variable shoesworn "Were shoes worn during this test"
label define _vO0Tf5WYhq 0 "No" 1 "Yes"
label values shoesworn _vO0Tf5WYhq

label variable glab001 "Status of Gait Lab testing"
label define _PvATCVFiDV 0 "Not attempted" 1 "Attempted"
label values glab001 _PvATCVFiDV

label variable glab001a "Reason Gait Lat testing not done"
label define _VZHEYY5EN9 1 "1-Not enough time/not scheduled" 2 "2-No examiner" 3 "3-Technical/equipment problem" 4 "4-Cognitively impaired" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt unsafe" 7 "7-Participant refused" 8 "8-Reason unknown" 9 "9-Other Physical Problems"
label values glab001a _VZHEYY5EN9

label variable glab001b "Was accelerometer worn during this test"
label define _IDkYVncwnQ 0 "No" 1 "Yes"
label values glab001b _IDkYVncwnQ

label variable glab002 "Quiet Stance Static Stand Positive Trial"
label define _lWNxLhooOn 0 "Incomplete/Not done" 1 "Complete"
label values glab002 _lWNxLhooOn

label variable glab002a "Quiet Stance Static Stand Positive Trial RND"
label define _dwvgmxaCrE 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab002a _dwvgmxaCrE

label variable glab003 "Quiet Stance Static Stand Negative Trial"
label define _kTO9TNB9yo 0 "Incomplete/Not done" 1 "Complete"
label values glab003 _kTO9TNB9yo

label variable glab003a "Quiet Stance Static Stand Negative Trial RND"
label define _WsU8uQiZdj 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab003a _WsU8uQiZdj

label variable glb004a "Steady State Walks Normal Pace Status"
label define _H6QC0GUbNg 0 "Incomplete/Not done" 1 "Complete"
label values glb004a _H6QC0GUbNg

label variable glb004b "Steady State Walks Normal Pace RND"
label define _xC8Rf0noAs 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glb004b _xC8Rf0noAs

label variable glb004 "Steady State Walks Normal Pace Number Of Trials"

label variable glb005a "Steady State Walks Fast Pace Status"
label define _jXazsgOnqy 0 "Incomplete/Not done" 1 "Complete"
label values glb005a _jXazsgOnqy

label variable glb005b "Steady State Walks Fast Pace RND"
label define _b68xUNbXkL 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glb005b _b68xUNbXkL

label variable glb005 "Steady State Walks Fast Pace Number Of Trials"

label variable glab024 "Normal Pace Walk With Obstacle Status trial 1"
label define _pYFWYV7wLI 0 "Incomplete/Not done" 1 "Complete"
label values glab024 _pYFWYV7wLI

label variable glab024a "Normal Pace Walk With Obstacle RND trial 1"
label define _OEYbTLoJ31 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab024a _OEYbTLoJ31

label variable glab025 "Normal Pace Walk With Obstacle Status trial 2"
label define _stAFpsPfQo 0 "Incomplete/Not done" 1 "Complete"
label values glab025 _stAFpsPfQo

label variable glab025a "Normal Pace Walk With Obstacle RND trial 2"
label define _eEfGYN586E 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab025a _eEfGYN586E

label variable glab026 "Normal Pace Walk With Obstacle Status trial 3"
label define _NJJJLFOmDH 0 "Incomplete/Not done" 1 "Complete"
label values glab026 _NJJJLFOmDH

label variable glab026a "Normal Pace Walk With Obstacle RND trial 3"
label define _UIZOLJovYl 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab026a _UIZOLJovYl

label variable glab027 "Normal Pace Walk With Obstacle Status trial 4"
label define _O4217AuBsJ 0 "Incomplete/Not done" 1 "Complete"
label values glab027 _O4217AuBsJ

label variable glab027a "Normal Pace Walk With Obstacle RND trial 4"
label define _ivMtkbvsRV 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab027a _ivMtkbvsRV

label variable glab030 "Pain Assessment"
label define _aopn5lHhLp 0 "No pain during the tests" 1 "Any pain (specify place and severity)" 7 "Refused" 8 "Don't know"
label values glab030 _aopn5lHhLp

label variable glab031 "Pain Assessment feet"
label define _cgKVSZiMmD 1 "Right" 2 "Left" 3 "Both"
label values glab031 _cgKVSZiMmD

label variable glab031a "Pain Feet Right"
label define _QAdeOTZwIN 0 "0-None" 1 "1-Mild" 2 "2-Moderate" 3 "3-Severe" 4 "4-Extreme" 8 "8-Don't know"
label values glab031a _QAdeOTZwIN

label variable glab031b "Pain Feet Left"
label define _ztjVnIR5qM 0 "0-None" 1 "1-Mild" 2 "2-Moderate" 3 "3-Severe" 4 "4-Extreme" 8 "8-Don't know"
label values glab031b _ztjVnIR5qM

label variable glab032 "Pain Assessment ankles"
label define _ggWeyl93Lc 1 "Right" 2 "Left" 3 "Both"
label values glab032 _ggWeyl93Lc

label variable glab032a "Pain Ankle Right"
label define _RxUHaVonjt 0 "0-None" 1 "1-Mild" 2 "2-Moderate" 3 "3-Severe" 4 "4-Extreme" 8 "8-Don't know"
label values glab032a _RxUHaVonjt

label variable glab032b "Pain Ankle Left"
label define _Um6wje6J7u 0 "0-None" 1 "1-Mild" 2 "2-Moderate" 3 "3-Severe" 4 "4-Extreme" 8 "8-Don't know"
label values glab032b _Um6wje6J7u

label variable glab033 "Pain Assessment knees"
label define _tTQ6QvcWcN 1 "Right" 2 "Left" 3 "Both"
label values glab033 _tTQ6QvcWcN

label variable glab033a "Pain Knee Right"
label define _xbMDdy5paX 0 "0-None" 1 "1-Mild" 2 "2-Moderate" 3 "3-Severe" 4 "4-Extreme" 8 "8-Don't know"
label values glab033a _xbMDdy5paX

label variable glab033b "Pain Knee Left"
label define _zqj1lDEoMF 0 "0-None" 1 "1-Mild" 2 "2-Moderate" 3 "3-Severe" 4 "4-Extreme" 8 "8-Don't know"
label values glab033b _zqj1lDEoMF

label variable glab034 "Pain Assessment hips"
label define _b9U1G5yFsI 1 "Right" 2 "Left" 3 "Both"
label values glab034 _b9U1G5yFsI

label variable glab034a "Pain Hip Right"
label define _vrTP0y9CBm 0 "0-None" 1 "1-Mild" 2 "2-Moderate" 3 "3-Severe" 4 "4-Extreme" 8 "8-Don't know"
label values glab034a _vrTP0y9CBm

label variable glab034b "Pain Hip Left"
label define _rDLijDjKCO 0 "0-None" 1 "1-Mild" 2 "2-Moderate" 3 "3-Severe" 4 "4-Extreme" 8 "8-Don't know"
label values glab034b _rDLijDjKCO

label variable glab035 "Pain Back"
label define _nAxOM4NVsK 1 "Yes"
label values glab035 _nAxOM4NVsK

label variable glab035a "Pain Back intensity"
label define _SOhG0Hiev5 0 "0-None" 1 "1-Mild" 2 "2-Moderate" 3 "3-Severe" 4 "4-Extreme" 8 "8-Don't know"
label values glab035a _SOhG0Hiev5

label variable comments_gai "Comments"

label variable zeno "Was Zeno walkway used to record GAIT"
label define _UjUcFp88fD 0 "No" 1 "Yes"
label values zeno _UjUcFp88fD

label variable vicon "Was Vicon walkway used to record GAIT"
label define _zfvWfqPacY 0 "No" 1 "Yes"
label values vicon _zfvWfqPacY

label variable zenot1 "T1 If using Zeno was clicker used to mark heel strike before obstacle crossing"
label define _aCeDFpnxHH 0 "No" 1 "Yes" 2 "N/A Vicon used"
label values zenot1 _aCeDFpnxHH

label variable zenot2 "T2 If using Zeno was clicker used to mark heel strike before obstacle crossing"
label define _UkYykPuyYS 0 "No" 1 "Yes" 2 "N/A Vicon used"
label values zenot2 _UkYykPuyYS

label variable zenot3 "T3 If using Zeno was clicker used to mark heel strike before obstacle crossing"
label define _pj4ZCaN62H 0 "No" 1 "Yes" 2 "N/A Vicon used"
label values zenot3 _pj4ZCaN62H

label variable zenot4 "T4 If using Zeno was clicker used to mark heel strike before obstacle crossing"
label define _WbOw6r7Wri 0 "No" 1 "Yes" 2 "N/A Vicon used"
label values zenot4 _WbOw6r7Wri

label variable walkingaidused "Was a walking aid used"
label define _XjbsAgaVao 0 "No" 1 "Yes"
label values walkingaidused _XjbsAgaVao

label variable typewalkingaid "Type of walking aid"

label variable serial1scounted "Serial 1s counted"

label variable serial1errors "Serial 1s errors"

label variable serial1ssub "Serial 1s Subtractions"

label variable serial1scorrect "Serial 1s total correct"

label variable serial1stoterrors "Serial 1s total errors"

label variable animalfluency "Animal fluency"
label define _ugaUmtO1Ca 1 "B" 2 "L" 3 "D" 4 "C" 5 "M"
label values animalfluency _ugaUmtO1Ca

label variable animaltotal "Total number of animal names"

label variable animaldup "Total number of duplicate animal names"

label variable comments1 "Comments"

label variable glab002wa "Quiet Stance Static Stand Positive Trial Walking aid used"
label define _PGVs6nE7zr 0 "No" 1 "Yes"
label values glab002wa _PGVs6nE7zr

label variable glab003wa "Quiet Stance Static Stand Negative Trial Walking aid used"
label define _QMfYlSfRr2 0 "No" 1 "Yes"
label values glab003wa _QMfYlSfRr2

label variable glb004wa "Steady State Walks Normal Pace Walking aid used"
label define _DJJiMrC2wL 0 "No" 1 "Yes"
label values glb004wa _DJJiMrC2wL

label variable glb005wa "Steady State Walks Fast Pace Walking aid used"
label define _uumc2GPGnt 0 "No" 1 "Yes"
label values glb005wa _uumc2GPGnt

label variable glab024wa "Normal Pace Walk With Obstacle T1 Walking aid used"
label define _fpBshU1yM8 0 "No" 1 "Yes"
label values glab024wa _fpBshU1yM8

label variable glab025wa "Normal Pace Walk With Obstacle Status trial 2 Walking aid used"
label define _ym2q7WhLdW 0 "No" 1 "Yes"
label values glab025wa _ym2q7WhLdW

label variable glab026wa "Normal Pace Walk With Obstacle Status trial 3 Walking aid used"
label define _dJJP3xqluP 0 "No" 1 "Yes"
label values glab026wa _dJJP3xqluP

label variable glab027wa "Normal Pace Walk With Obstacle Status trial 4 Walking aid used"
label define _Eec5sPEJvU 0 "No" 1 "Yes"
label values glab027wa _Eec5sPEJvU

label variable glab004a "Steady State Walks Normal Pace Clear Foot Strikes 1"
label define _TbNlZDvos2 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab004a _TbNlZDvos2

label variable glab005a "Steady State Walks Normal Pace Clear Foot Strikes 2"
label define _mnhH9YHVGu 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab005a _mnhH9YHVGu

label variable glab006a "Steady State Walks Normal Pace Clear Foot Strikes 3"
label define _eRpVC9dIgm 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab006a _eRpVC9dIgm

label variable glb004f "Steady State Walks Normal Pace Clear Foot Strikes 4"
label define _pLHZEnn4Ft 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004f _pLHZEnn4Ft

label variable glb004g "Steady State Walks Normal Pace Clear Foot Strikes 5"
label define _IKnjL2eVGH 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004g _IKnjL2eVGH

label variable glb004h "Steady State Walks Normal Pace Clear Foot Strikes 6"
label define _hZPUe3ULBX 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004h _hZPUe3ULBX

label variable glb004i "Steady State Walks Normal Pace Clear Foot Strikes 7"
label define _F1WJ64Y46O 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004i _F1WJ64Y46O

label variable glb004j "Steady State Walks Normal Pace Clear Foot Strikes 8"
label define _HP2gdL5kfn 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004j _HP2gdL5kfn

label variable glb004k "Steady State Walks Normal Pace Clear Foot Strikes 9"
label define _V2y9J8ZdUJ 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004k _V2y9J8ZdUJ

label variable glb004l "Steady State Walks Normal Pace Clear Foot Strikes 10"
label define _Jhp6r2Ebcc 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004l _Jhp6r2Ebcc

label variable glb004m "Steady State Walks Normal Pace Clear Foot Strikes 11"
label define _YD9iBeti0a 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004m _YD9iBeti0a

label variable glb004n "Steady State Walks Normal Pace Clear Foot Strikes 12"
label define _RYHgyiwwLz 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004n _RYHgyiwwLz

label variable glb004o "Steady State Walks Normal Pace Clear Foot Strikes 13"
label define _RsURtIH3lq 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004o _RsURtIH3lq

label variable glb004p "Steady State Walks Normal Pace Clear Foot Strikes 14"
label define _hFubGpY4JN 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004p _hFubGpY4JN

label variable glb004q "Steady State Walks Normal Pace Clear Foot Strikes 15"
label define _WhSqJjGETz 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004q _WhSqJjGETz

label variable glb004r "Steady State Walks Normal Pace Clear Foot Strikes 16"
label define _QUBlBI4TO4 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb004r _QUBlBI4TO4

label variable glab004cw "Cosmed worn during this test"
label define _wQjy92e24X 0 "No" 1 "Yes"
label values glab004cw _wQjy92e24X

label variable glab004rnd "Cosmed mask reason not done"
label define _epHG7cF7Hg 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab004rnd _epHG7cF7Hg

label variable glab004ms "Cosmed mask size"
label define _y2YbHU33MM 1 "Small" 2 "Medium" 3 "Large"
label values glab004ms _y2YbHU33MM

label variable glab008a "Steady State Walks Fast Pace Clear Foot Strikes 1"
label define _SKYjby6gjG 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab008a _SKYjby6gjG

label variable glab009a "Steady State Walks Fast Pace Clear Foot Strikes 2"
label define _Xn4p05SQNA 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab009a _Xn4p05SQNA

label variable glab010a "Steady State Walks Fast Pace Clear Foot Strikes 3"
label define _lg1zdua4As 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab010a _lg1zdua4As

label variable glb005f "Steady State Walks Fast Pace Clear Foot Strikes 4"
label define _oWY5N2QrIh 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005f _oWY5N2QrIh

label variable glb005g "Steady State Walks Fast Pace Clear Foot Strikes 5"
label define _XchzYnJRSu 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005g _XchzYnJRSu

label variable glb005h "Steady State Walks Fast Pace Clear Foot Strikes 6"
label define _Pk7hpSf35F 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005h _Pk7hpSf35F

label variable glb005i "Steady State Walks Fast Pace Clear Foot Strikes 7"
label define _VrIT1isRrk 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005i _VrIT1isRrk

label variable glb005j "Steady State Walks Fast Pace Clear Foot Strikes 8"
label define _MgiOk4KSKN 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005j _MgiOk4KSKN

label variable glb005k "Steady State Walks Fast Pace Clear Foot Strikes 9"
label define _J6WGRNh9nR 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005k _J6WGRNh9nR

label variable glb005l "Steady State Walks Fast Pace Clear Foot Strikes 10"
label define _HDb77DYcuK 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005l _HDb77DYcuK

label variable glb005m "Steady State Walks Fast Pace Clear Foot Strikes 11"
label define _YCE1QIMJdm 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005m _YCE1QIMJdm

label variable glb005n "Steady State Walks Fast Pace Clear Foot Strikes 12"
label define _jwkkbcpnsx 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005n _jwkkbcpnsx

label variable glb005o "Steady State Walks Fast Pace Clear Foot Strikes 13"
label define _YS2UiAxanq 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005o _YS2UiAxanq

label variable glb005p "Steady State Walks Fast Pace Clear Foot Strikes 14"
label define _PyxtUORFr9 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005p _PyxtUORFr9

label variable glb005q "Steady State Walks Fast Pace Clear Foot Strikes 15"
label define _JJaKukUbN5 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005q _JJaKukUbN5

label variable glb005r "Steady State Walks Fast Pace Clear Foot Strikes 16"
label define _tx45F7efFf 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb005r _tx45F7efFf

label variable glb006a "Single Task Narrow Walk Status"
label define _RJZ8JCXjOH 0 "Incomplete/Not done" 1 "Complete"
label values glb006a _RJZ8JCXjOH

label variable glb006b "Single Task Narrow Walk RND"
label define _fVHqPNhfFr 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glb006b _fVHqPNhfFr

label variable glb006 "Single Task Narrow Walk Number Of Trials"

label variable glab012b "Single Task Narrow Walk Clear Foot Strikes 1"
label define _knA0Ltxnta 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab012b _knA0Ltxnta

label variable glab013b "Single Task Narrow Walk Clear Foot Strikes 2"
label define _yN19Nh4T87 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab013b _yN19Nh4T87

label variable glab014b "Single Task Narrow Walk Clear Foot Strikes 3"
label define _m5DOekpVv2 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab014b _m5DOekpVv2

label variable glab015b "Single Task Narrow Walk Clear Foot Strikes 4"
label define _pMuVMYKpQW 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab015b _pMuVMYKpQW

label variable glb006g "Single Task Narrow Walk Clear Foot Strikes 5"
label define _MVgtvhYPqp 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006g _MVgtvhYPqp

label variable glb006h "Single Task Narrow Walk Clear Foot Strikes 6"
label define _u10i3oT4o5 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006h _u10i3oT4o5

label variable glb006i "Single Task Narrow Walk Clear Foot Strikes 7"
label define _xJG7ZW1wWw 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006i _xJG7ZW1wWw

label variable glb006j "Single Task Narrow Walk Clear Foot Strikes 8"
label define _Wc4TVehwLX 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006j _Wc4TVehwLX

label variable glb006k "Single Task Narrow Walk Clear Foot Strikes 9"
label define _YIFFoajJU8 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006k _YIFFoajJU8

label variable glb006l "Single Task Narrow Walk Clear Foot Strikes 10"
label define _UzwYeFC4Sp 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006l _UzwYeFC4Sp

label variable glb006m "Single Task Narrow Walk Clear Foot Strikes 11"
label define _RXfNzqvIBY 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006m _RXfNzqvIBY

label variable glb006n "Single Task Narrow Walk Clear Foot Strikes 12"
label define _Qvo0RyBxzu 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006n _Qvo0RyBxzu

label variable glb006o "Single Task Narrow Walk Clear Foot Strikes 13"
label define _yNPYtWVN8H 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006o _yNPYtWVN8H

label variable glb006p "Single Task Narrow Walk Clear Foot Strikes 14"
label define _XyxfmfAJ2Y 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006p _XyxfmfAJ2Y

label variable glb006q "Single Task Narrow Walk Clear Foot Strikes 15"
label define _s1QqEiHHON 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006q _s1QqEiHHON

label variable glb006r "Single Task Narrow Walk Clear Foot Strikes 16"
label define _GCdheID81T 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb006r _GCdheID81T

label variable glab016 "Dual Task Narrow Walk Status trial 1"
label define _IXC15GTLIu 0 "Incomplete/Not done" 1 "Complete"
label values glab016 _IXC15GTLIu

label variable glab016c "Dual Task Narrow Walk RND trial 1"
label define _HGwdZYedm7 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab016c _HGwdZYedm7

label variable glab016a "Dual Task Narrow Walk Recitation Errors trial 1"

label variable glab016b "Dual Task Narrow Walk Days trial 1"

label variable glab016d "Dual Task Narrow Walk clean foot strike trial 1"
label define _V46qkt7Bz6 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab016d _V46qkt7Bz6

label variable glab017 "Dual Task Narrow Walk Status trial 2"
label define _wIZM2VTJ4l 0 "Incomplete/Not done" 1 "Complete"
label values glab017 _wIZM2VTJ4l

label variable glab017c "Dual Task Narrow Walk RND trial 2"
label define _o8TnVbdOw4 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab017c _o8TnVbdOw4

label variable glab017a "Dual Task Narrow Walk Recitation Errors trial 2"

label variable glab017b "Dual Task Narrow Walk Days trial 2"

label variable glab017d "Dual Task Narrow Walk clean foot strike trial 2"
label define _TKB6PpoXEy 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab017d _TKB6PpoXEy

label variable glab018 "Dual Task Narrow Walk Status trial 3"
label define _VkDQRalFrY 0 "Incomplete/Not done" 1 "Complete"
label values glab018 _VkDQRalFrY

label variable glab018c "Dual Task Narrow Walk RND trial 3"
label define _okVbCtNXa9 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab018c _okVbCtNXa9

label variable glab018a "Dual Task Narrow Walk Recitation Errors trial 3"

label variable glab018b "Dual Task Narrow Walk Days trial 3"

label variable glab018d "Dual Task Narrow Walk clean foot strike trial 3"
label define _UG2YBWjXBK 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab018d _UG2YBWjXBK

label variable glab019 "Dual Task Narrow Walk Status trial 4"
label define _ghp5OTCSO9 0 "Incomplete/Not done" 1 "Complete"
label values glab019 _ghp5OTCSO9

label variable glab019c "Dual Task Narrow Walk RND trial 4"
label define _dz3TTz836n 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab019c _dz3TTz836n

label variable glab019a "Dual Task Narrow Walk Recitation Errors trial 4"

label variable glab019b "Dual Task Narrow Walk Days trial 4"

label variable glab019d "Dual Task Narrow Walk clean foot strike trial 4"
label define _Qq6N4P41LQ 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab019d _Qq6N4P41LQ

label variable glb011 "Dual Task Narrow Walk Status trial 5"
label define _QHgcxebrQd 0 "Incomplete/Not done" 1 "Complete"
label values glb011 _QHgcxebrQd

label variable glb011d "Dual Task Narrow Walk RND trial 5"
label define _ZQNvAKfx3I 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glb011d _ZQNvAKfx3I

label variable glb011a "Dual Task Narrow Walk Recitation Errors trial 5"

label variable glb011b "Dual Task Narrow Walk Days trial 5"

label variable glb011c "Dual Task Narrow Walk clean foot strike trial 5"
label define _rNfB8Atw4o 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb011c _rNfB8Atw4o

label variable glb012 "Dual Task Narrow Walk Status trial 6"
label define _WB2NLw6Pm8 0 "Incomplete/Not done" 1 "Complete"
label values glb012 _WB2NLw6Pm8

label variable glb012d "Dual Task Narrow Walk RND trial 6"
label define _uF2mX1ZKtv 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glb012d _uF2mX1ZKtv

label variable glb012a "Dual Task Narrow Walk Recitation Errors trial 6"

label variable glb012b "Dual Task Narrow Walk Days trial 6"

label variable glb012c "Dual Task Narrow Walk clean foot strike trial 6"
label define _vbMiuLgAgR 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb012c _vbMiuLgAgR

label variable glb017a "Normal Pace Steady State Fatigue Test Status"
label define _lPHWvt7uNZ 0 "Incomplete/Not done" 1 "Complete"
label values glb017a _lPHWvt7uNZ

label variable glb017b "Normal Pace Steady State Fatigue RND"
label define _rkV0iIcNRX 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glb017b _rkV0iIcNRX

label variable glb017 "Normal Pace Steady State Fatigue Number Of Trials"

label variable glab028a "Normal Pace Steady State Fatigue Clear Foot Strikes 1"
label define _wA6WzxTBPK 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab028a _wA6WzxTBPK

label variable glab029a "Normal Pace Steady State Fatigue Clear Foot Strikes 2"
label define _PVrNUVQZs4 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glab029a _PVrNUVQZs4

label variable glb017e "Normal Pace Steady State Fatigue Clear Foot Strikes 3"
label define _G96qZMpt7H 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017e _G96qZMpt7H

label variable glb017f "Normal Pace Steady State Fatigue Clear Foot Strikes 4"
label define _q18SXbZ7Ld 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017f _q18SXbZ7Ld

label variable glb017g "Normal Pace Steady State Fatigue Clear Foot Strikes 5"
label define _Um5DQ4xb8k 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017g _Um5DQ4xb8k

label variable glb017h "Normal Pace Steady State Fatigue Clear Foot Strikes 6"
label define _QoyWGLo1Ax 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017h _QoyWGLo1Ax

label variable glb017i "Normal Pace Steady State Fatigue Clear Foot Strikes 7"
label define _lmY0vhAI99 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017i _lmY0vhAI99

label variable glb017j "Normal Pace Steady State Fatigue Clear Foot Strikes 8"
label define _SQw1X7jYo0 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017j _SQw1X7jYo0

label variable glb017k "Normal Pace Steady State Fatigue Clear Foot Strikes 9"
label define _yUrHOR0Myy 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017k _yUrHOR0Myy

label variable glb017l "Normal Pace Steady State Fatigue Clear Foot Strikes 10"
label define _YLWV6yc9QM 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017l _YLWV6yc9QM

label variable glb017m "Normal Pace Steady State Fatigue Clear Foot Strikes 11"
label define _Pr2oyfKMRH 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017m _Pr2oyfKMRH

label variable glb017n "Normal Pace Steady State Fatigue Clear Foot Strikes 12"
label define _iLu6lRkHbi 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017n _iLu6lRkHbi

label variable glb017o "Normal Pace Steady State Fatigue Clear Foot Strikes 13"
label define _aS9WMeKp58 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017o _aS9WMeKp58

label variable glb017p "Normal Pace Steady State Fatigue Clear Foot Strikes 14"
label define _gNIgvRuK5A 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017p _gNIgvRuK5A

label variable glb017q "Normal Pace Steady State Fatigue Clear Foot Strikes 15"
label define _For4du9J1o 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017q _For4du9J1o

label variable glb017r "Normal Pace Steady State Fatigue Clear Foot Strikes 16"
label define _V5HHJgg2qY 0 "None" 1 "Right" 2 "Left" 3 "Both"
label values glb017r _V5HHJgg2qY

label variable glab004 "Normal Pace T1"
label define _ZD3JlY9SCa 0 "Incomplete/Not done" 1 "Complete"
label values glab004 _ZD3JlY9SCa

label variable glab004b "Normal Pace T1 RND"
label define _xAbBRshpp5 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab004b _xAbBRshpp5

label variable glab005 "Normal Pace T2"
label define _zTl84zCrG0 0 "Incomplete/Not done" 1 "Complete"
label values glab005 _zTl84zCrG0

label variable glab005b "Normal Pace T2 RND"
label define _LlD7wqx5q1 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab005b _LlD7wqx5q1

label variable glab006 "Normal Pace T3"
label define _LLQESm6MO1 0 "Incomplete/Not done" 1 "Complete"
label values glab006 _LLQESm6MO1

label variable glab006b "Normal Pace T3 RND"
label define _GgTRmR8Yik 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab006b _GgTRmR8Yik

label variable glab008 "Fast Pace T1"
label define _hU2PVHgJRN 0 "Incomplete/Not done" 1 "Complete"
label values glab008 _hU2PVHgJRN

label variable glab008b "Fast Pace T1 RND"
label define _IGfiuYYSVo 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab008b _IGfiuYYSVo

label variable glab009 "Fast Pace T2"
label define _knfwKteBcA 0 "Incomplete/Not done" 1 "Complete"
label values glab009 _knfwKteBcA

label variable glab009b "Fast Pace T2 RND"
label define _eqTr85qsn9 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab009b _eqTr85qsn9

label variable glab010 "Fast Pace T3"
label define _giId4oEp8E 0 "Incomplete/Not done" 1 "Complete"
label values glab010 _giId4oEp8E

label variable glab010b "Fast Pace T3 RND"
label define _zViveK8F0m 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab010b _zViveK8F0m

label variable glab011 "Recites days correctly"
label define _FErULAfqnA 0 "No" 1 "Yes"
label values glab011 _FErULAfqnA

label variable glab012 "Normal pace narrow walk T1"
label define _D0a3eL6dLP 0 "Incomplete/Not done" 1 "Complete"
label values glab012 _D0a3eL6dLP

label variable glab012a "Normal pace narrow walk T1 RND"
label define _mPZ13HegRE 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab012a _mPZ13HegRE

label variable glab013 "Normal pace narrow walk T2"
label define _N6bpJkivwn 0 "Incomplete/Not done" 1 "Complete"
label values glab013 _N6bpJkivwn

label variable glab013a "Normal pace narrow walk T2 RND"
label define _RdHIlTjtsB 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab013a _RdHIlTjtsB

label variable glab014 "Normal pace narrow walk T3"
label define _VI4W0Fy00A 0 "Incomplete/Not done" 1 "Complete"
label values glab014 _VI4W0Fy00A

label variable glab014a "Normal pace narrow walk T3 RND"
label define _HTeDZ8A1aV 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab014a _HTeDZ8A1aV

label variable glab015 "Normal pace narrow walk T4"
label define _NC1f0fwO0c 0 "Incomplete/Not done" 1 "Complete"
label values glab015 _NC1f0fwO0c

label variable glab015a "Normal pace narrow walk T4 RND"
label define _CbRNCNRmdf 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab015a _CbRNCNRmdf

label variable glab1298 "Dual Task Narrow Walk Total Errors"

label variable glab1299 "Dual Task Narrow Walk Total Recited"

label variable glab020 "Fast pace narrow walk T1"
label define _jznYkm1Fh3 0 "Incomplete/Not done" 1 "Complete"
label values glab020 _jznYkm1Fh3

label variable glab020a "Fast pace narrow walk T1 RND"
label define _h6DVIeogtw 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab020a _h6DVIeogtw

label variable glab021 "Fast pace narrow walk T2"
label define _fefVsqf4HW 0 "Incomplete/Not done" 1 "Complete"
label values glab021 _fefVsqf4HW

label variable glab021a "Fast pace narrow walk T2 RND"
label define _IXbyw411ey 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab021a _IXbyw411ey

label variable glab022 "Fast pace narrow walk T3"
label define _ajhGO081UQ 0 "Incomplete/Not done" 1 "Complete"
label values glab022 _ajhGO081UQ

label variable glab022a "Fast pace narrow walk T3 RND"
label define _n6WZ2MMCaD 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab022a _n6WZ2MMCaD

label variable glab023 "Fast pace narrow walk T4"
label define _wQ5DOcQUqY 0 "Incomplete/Not done" 1 "Complete"
label values glab023 _wQ5DOcQUqY

label variable glab023a "Fast pace narrow walk T4 RND"
label define _hTpqvMP6LR 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab023a _hTpqvMP6LR

label variable glab028 "Normal pace steady state fatigue walk T1"
label define _rxAsrbiPJA 0 "Incomplete/Not done" 1 "Complete"
label values glab028 _rxAsrbiPJA

label variable glab028b "Normal pace steady state fatigue walk T1 RND"
label define _ys63BBuMu9 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab028b _ys63BBuMu9

label variable glab029 "Normal pace steady state fatigue walk T2"
label define _wx3RSnjxnX 0 "Incomplete/Not done" 1 "Complete"
label values glab029 _wx3RSnjxnX

label variable glab029b "Normal pace steady state fatigue walk T2 RND"
label define _l5X2FmNyO7 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Technical problem" 4 "4-Participant unable to understand instructions" 5 "5-Unable to stand/walk unaided" 6 "6-Examiner felt it was unsafe" 7 "7-Refused" 8 "8-Reason unknown"
label values glab029b _l5X2FmNyO7

label variable auto_id_gai "Unique Teleform Number"

label variable crf_parent_name_gai "CRF Parent Name"

label variable item_group_repeat_gai "Item Group Repeate"

label variable serial1errors_1 "Serial 1s errors : 1 (Checkbox Indicator)"

label variable serial1errors_2 "Serial 1s errors : 2 (Checkbox Indicator)"

label variable serial1errors_3 "Serial 1s errors : 3 (Checkbox Indicator)"

label variable serial1errors_4 "Serial 1s errors : 4 (Checkbox Indicator)"

label variable serial1errors_5 "Serial 1s errors : 5 (Checkbox Indicator)"

label variable serial1errors_6 "Serial 1s errors : 6 (Checkbox Indicator)"

label variable serial1scounted_1 "Serial 1s counted : 200 (Checkbox Indicator)"

label variable serial1scounted_10 "Serial 1s counted : 191 (Checkbox Indicator)"

label variable serial1scounted_11 "Serial 1s counted : 190 (Checkbox Indicator)"

label variable serial1scounted_12 "Serial 1s counted : 189 (Checkbox Indicator)"

label variable serial1scounted_13 "Serial 1s counted : 188 (Checkbox Indicator)"

label variable serial1scounted_14 "Serial 1s counted : 187 (Checkbox Indicator)"

label variable serial1scounted_15 "Serial 1s counted : 186 (Checkbox Indicator)"

label variable serial1scounted_16 "Serial 1s counted : 185 (Checkbox Indicator)"

label variable serial1scounted_17 "Serial 1s counted : 184 (Checkbox Indicator)"

label variable serial1scounted_18 "Serial 1s counted : 183 (Checkbox Indicator)"

label variable serial1scounted_19 "Serial 1s counted : 182 (Checkbox Indicator)"

label variable serial1scounted_2 "Serial 1s counted : 199 (Checkbox Indicator)"

label variable serial1scounted_20 "Serial 1s counted : 181 (Checkbox Indicator)"

label variable serial1scounted_21 "Serial 1s counted : 180 (Checkbox Indicator)"

label variable serial1scounted_22 "Serial 1s counted : 179 (Checkbox Indicator)"

label variable serial1scounted_23 "Serial 1s counted : 178 (Checkbox Indicator)"

label variable serial1scounted_24 "Serial 1s counted : 177 (Checkbox Indicator)"

label variable serial1scounted_3 "Serial 1s counted : 198 (Checkbox Indicator)"

label variable serial1scounted_4 "Serial 1s counted : 197 (Checkbox Indicator)"

label variable serial1scounted_5 "Serial 1s counted : 196 (Checkbox Indicator)"

label variable serial1scounted_6 "Serial 1s counted : 195 (Checkbox Indicator)"

label variable serial1scounted_7 "Serial 1s counted : 194 (Checkbox Indicator)"

label variable serial1scounted_8 "Serial 1s counted : 193 (Checkbox Indicator)"

label variable study_name_gai "Study Name"

