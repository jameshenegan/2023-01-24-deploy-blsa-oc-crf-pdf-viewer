clear
import delimited "../data-csv/BLSA_Knee_x-ray.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_knexra "CRF Version"

label variable obsdate_knxdat2 "Date Completed 2"

// Generate 'date version' of the 'obsdate_knxdat2' variable
gen _obsdate_knxdat2 = date(obsdate_knxdat2, "YMD")
format _obsdate_knxdat2 %td

label variable knxqdat "Date Completed"

// Generate 'date version' of the 'knxqdat' variable
gen _knxqdat = date(knxqdat, "YMD")
format _knxqdat %td

label variable blank_knexra "Blank Form"

label variable knxqtid "Tester ID"

label variable knx000 "Which knee submitted for interpretation"
label define _ykYqerSodT 0 "None" 1 "Both" 2 "Left only" 3 "Right only"
label values knx000 _ykYqerSodT

label variable knxqa1 "Are both knees radiographed R"
label define _N8ZO70Jly4 0 "No" 1 "Yes"
label values knxqa1 _N8ZO70Jly4

label variable knxqb1 "Are both knees radiographed L"
label define _jGWsrLm9kb 0 "No" 1 "Yes"
label values knxqb1 _jGWsrLm9kb

label variable knxqa2 "Are markers on each film in a location that does not obscure any structure R"
label define _DUmLbWJRKt 0 "No" 1 "Yes"
label values knxqa2 _DUmLbWJRKt

label variable knxqb2 "Are markers on each film in a location that does not obscure any structure L"
label define _NL2TQts7yM 0 "No" 1 "Yes"
label values knxqb2 _NL2TQts7yM

label variable knxqa3 "Does the entire joint appear on the film R"
label define _Me59hW7b3C 0 "No" 1 "Yes"
label values knxqa3 _Me59hW7b3C

label variable knxqb3 "Does the entire joint appear on the film L"
label define _T0IguDm6JY 0 "No" 1 "Yes"
label values knxqb3 _T0IguDm6JY

label variable knxqa4 "Are the lines of beads in the positioning frame visible R"
label define _PhkjZp96RB 0 "No" 1 "Yes"
label values knxqa4 _PhkjZp96RB

label variable knxqb4 "Are the lines of beads in the positioning frame visible R"
label define _gDWIDufLCl 0 "No" 1 "Yes"
label values knxqb4 _gDWIDufLCl

label variable knxqa5 "Is articular surface of the medial femoral condyle sharply delineated R"
label define _NwRhBQnoRU 0 "No" 1 "Yes"
label values knxqa5 _NwRhBQnoRU

label variable knxqb5 "Is articular surface of the medial femoral condyle sharply delineated L"
label define _zRJvsqY6tx 0 "No" 1 "Yes"
label values knxqb5 _zRJvsqY6tx

label variable knxqa6 "Is floor of the medial tibial plateau clearly delineated and flat R"
label define _O7zBNUdaiF 0 "No" 1 "Yes"
label values knxqa6 _O7zBNUdaiF

label variable knxqb6 "Is floor of the medial tibial plateau clearly delineated and flat L"
label define _NFAbheZiQD 0 "No" 1 "Yes"
label values knxqb6 _NFAbheZiQD

label variable knxqa7 "Is cortex of the tibial plateau floor sharply delineated R"
label define _rTmnf1GHJP 0 "No" 1 "Yes"
label values knxqa7 _rTmnf1GHJP

label variable knxqb7 "Is cortex of the tibial plateau floor sharply delineated L"
label define _xVMotiNL1a 0 "No" 1 "Yes"
label values knxqb7 _xVMotiNL1a

label variable knxqa8 "Vertical distance between anterior and posterior tibial margins at center of medial tibial plateau gr than about mm R"
label define _Cbs6tacsZW 0 "No" 1 "Yes"
label values knxqa8 _Cbs6tacsZW

label variable knxqb8 "Vertical distance between anterior and posterior tibial margins at center of medial tibial plateau gr than about mm L"
label define _APfWJUB0SB 0 "No" 1 "Yes"
label values knxqb8 _APfWJUB0SB

label variable knxqa9 "Are medial and lateral sides of knee joint including bone margins clearly visible without use of high intensity light R"
label define _zjPp3SxzUg 0 "No" 1 "Yes"
label values knxqa9 _zjPp3SxzUg

label variable knxqb9 "Are medial and lateral sides of knee joint including bone margins clearly visible without use of high intensity light L"
label define _LX5TEsZMlm 0 "No" 1 "Yes"
label values knxqb9 _LX5TEsZMlm

label variable knxqa10 "Is soft tissue visible R"
label define _PT90Rj6w22 0 "No" 1 "Yes"
label values knxqa10 _PT90Rj6w22

label variable knxqb10 "Is soft tissue visible L"
label define _CJu9U49xJj 0 "No" 1 "Yes"
label values knxqb10 _CJu9U49xJj

label variable knxqa11 "Is any hardware visible R"
label define _HgAgys555g 0 "No" 1 "Yes"
label values knxqa11 _HgAgys555g

label variable knxqb11 "Is any hardware visible L"
label define _sKb99PJ4V5 0 "No" 1 "Yes"
label values knxqb11 _sKb99PJ4V5

label variable knxa1m "Knee alignment R"
label define _Ce9HTTvwms 0 "Zero" 9 "Unknown"
label values knxa1m _Ce9HTTvwms

label variable knxa1 "Knee alignment R not zero"

label variable knxa2a1 "Mid JSW Medial R"

label variable knxa2a2 "Mid JSW Lateral R"

label variable knxa2b1 "Min JSW Medial R"

label variable knxa2b2 "Min JSW Lateral R"

label variable knxa2c "Marker diameter R"

label variable knxb1m "Knee alignment L"
label define _mdlWJ11cAs 0 "Zero" 9 "Unknown"
label values knxb1m _mdlWJ11cAs

label variable knxb1 "Knee alignment L not zero"

label variable knxb2a1 "Mid JSW Medial L"

label variable knxb2a2 "Mid JSW Lateral L"

label variable knxb2b1 "Min JSW Medial L"

label variable knxb2b2 "Min JSW Lateral L"

label variable knxb2c "Marker diameter L"

label variable knxtid "Interpreter Tester ID 1"

label variable knxdate "Date Completed 1"

// Generate 'date version' of the 'knxdate' variable
gen _knxdate = date(knxdate, "YMD")
format _knxdate %td

label variable knxtid2 "Interpreter Tester ID 2"

label variable knxa31 "R Osteophytes score medial"
label define _WFKZriqfrB 0 "Normal (absent)" 1 "Possible" 2 "OARSI Grade1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values knxa31 _WFKZriqfrB

label variable knxa32 "R Osteophytes score lateral"
label define _FnKwNhh87R 0 "Normal (absent)" 1 "Possible" 2 "OARSI Grade1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values knxa32 _FnKwNhh87R

label variable knxa41 "R Narrowing score medial"
label define _bynUuatOdJ 0 "Normal" 1 "OARSI Grade1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values knxa41 _bynUuatOdJ

label variable knxa42 "R Narrowing score lateral"
label define _Buccjxsmph 0 "Normal" 1 "OARSI Grade1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values knxa42 _Buccjxsmph

label variable knxa51 "R Sclerosis score medial"
label define _k7gHIgUbGo 0 "Absent" 1 "Present" 9 "Unknown"
label values knxa51 _k7gHIgUbGo

label variable knxa52 "R Sclerosis score lateral"
label define _A0a1AUTVHM 0 "Absent" 1 "Present" 9 "Unknown"
label values knxa52 _A0a1AUTVHM

label variable knxa6 "R Tibial spines sharpening"
label define _BD8rSXHh7H 0 "Absent" 1 "Present" 9 "Unknown"
label values knxa6 _BD8rSXHh7H

label variable knxa7 "R Chondrocalcinosis"
label define _Yi2fVGpIeg 0 "Absent" 1 "Present" 9 "Unknown"
label values knxa7 _Yi2fVGpIeg

label variable knxa8 "R Old Trauma"
label define _yhdUemjUyr 0 "Absent" 1 "Present" 9 "Unknown"
label values knxa8 _yhdUemjUyr

label variable knxakl "R KL Grade"
label define _u9XJchY5dJ 0 "Grade 0 = No osteophytes normal joint space width" 1 "Grade 1 = Doubtful narrowing possible osteophyte" 2 "Grade 2 = Minimal definite osteophytes unimpared joint space (JS)" 3 "Grade 3 = Moderate osteophytes definite diminution of JS some sclerosos (OARSI 1-2)" 4 "Grade 4 = Severe definite osteophytes joint space greatly narrowed (OARSI grade 3)" 5 "Grade 5 = Endstage knee replaced"
label values knxakl _u9XJchY5dJ

label variable knxb31 "L Osteophytes score medial"
label define _wUEU2Wwqb0 0 "Normal (absent)" 1 "Possible" 2 "OARSI Grade1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values knxb31 _wUEU2Wwqb0

label variable knxb32 "L Osteophytes score lateral"
label define _SwmPfSZsO5 0 "Normal (absent)" 1 "Possible" 2 "OARSI Grade1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values knxb32 _SwmPfSZsO5

label variable knxb41 "L Narrowing score medial"
label define _dS1N0KWixW 0 "Normal" 1 "OARSI Grade1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values knxb41 _dS1N0KWixW

label variable knxb42 "L Narrowing score lateral"
label define _Vx65XQPO9G 0 "Normal" 1 "OARSI Grade1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values knxb42 _Vx65XQPO9G

label variable knxb51 "L Sclerosis score medial"
label define _xhv8KcGbIu 0 "Absent" 1 "Present" 9 "Unknown"
label values knxb51 _xhv8KcGbIu

label variable knxb52 "L Sclerosis score lateral"
label define _BUDSw2Aa9I 0 "Absent" 1 "Present" 9 "Unknown"
label values knxb52 _BUDSw2Aa9I

label variable knxb6 "L Tibial spines sharpening"
label define _u9Z724JE81 0 "Absent" 1 "Present" 9 "Unknown"
label values knxb6 _u9Z724JE81

label variable knxb7 "L Chondrocalcinosis"
label define _enaEt5p61D 0 "Absent" 1 "Present" 9 "Unknown"
label values knxb7 _enaEt5p61D

label variable knxb8 "L Old Trauma"
label define _dxc9KV1ahV 0 "Absent" 1 "Present" 9 "Unknown"
label values knxb8 _dxc9KV1ahV

label variable knxbkl "L KL Grade"
label define _tRE3itQTRi 0 "Grade 0 = No osteophytes normal joint space width" 1 "Grade 1 = Doubtful narrowing possible osteophyte" 2 "Grade 2 = Minimal definite osteophytes unimpared joint space (JS)" 3 "Grade 3 = Moderate osteophytes definite diminution of JS some sclerosos (OARSI 1-2)" 4 "Grade 4 = Severe definite osteophytes joint space greatly narrowed (OARSI grade 3)" 5 "Grade 5 = Endstage knee replaced"
label values knxbkl _tRE3itQTRi

label variable auto_id_knexra "Unique Teleform Number"

label variable crf_parent_name_knexra "CRF Parent Name"

label variable study_name_knexra "Study Name"

