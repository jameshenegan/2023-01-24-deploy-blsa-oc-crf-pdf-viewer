clear
import delimited "../data-csv/BLSA_Blessed_Mental.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_blemen "CRF Version"

label variable obsdate_bledate "Date Completed"

// Generate 'date version' of the 'obsdate_bledate' variable
gen _obsdate_bledate = date(obsdate_bledate, "YMD")
format _obsdate_bledate %td

label variable blank_blemen "Blank Form"

label variable bletid "Tester ID"

label variable yourname "What is your name"

label variable ble01 "What is your name Correct Incorrect"
label define _r7iC3uoC3d 0 "Correct" 1 "Incorrect"
label values ble01 _r7iC3uoC3d

label variable yourage "Can you tell me your age"

label variable ble02 "Can you tell me your age correct incorrect"
label define _IJM459hRBB 0 "Correct" 1 "Incorrect"
label values ble02 _IJM459hRBB

label variable whenwereyouborn "When were you born"

label variable ble03 "When were you born correct incorrect"
label define _kaqh5xb29o 0 "Correct" 1 "Incorrect"
label values ble03 _kaqh5xb29o

label variable wherewereyouborn "Where were you born"

label variable ble04 "Where were you born correct incorrect"
label define _WyEa1S2zVR 0 "Correct" 1 "Incorrect"
label values ble04 _WyEa1S2zVR

label variable whereareyourightnow "Where are you right now"

label variable ble05 "Where are you right now correct incorrect"
label define _X8xPgPDBp0 0 "Correct" 1 "Incorrect"
label values ble05 _X8xPgPDBp0

label variable whatstreetisiton "What street is it on"

label variable ble06 "What street is it on correct incorrect"
label define _K3Qfuw0TjL 0 "Correct" 1 "Incorrect"
label values ble06 _K3Qfuw0TjL

label variable hourssinceyouarrived "How many hours has it been since you arrived on the unit correct incorrect"

label variable ble07 "How many hours has it been since you arrived on the unit"
label define _HhlSwaftqV 0 "Correct" 1 "Incorrect"
label values ble07 _HhlSwaftqV

label variable whatcityisitin "What city is it in"

label variable ble08 "What city is it in correct incorrect"
label define _bePi6sQnhL 0 "Correct" 1 "Incorrect"
label values ble08 _bePi6sQnhL

label variable whatistodaysdate "What is todays date"

label variable ble09 "What is todays date correct incorrect"
label define _eY6Pewt1e3 0 "Correct" 1 "Incorrect"
label values ble09 _eY6Pewt1e3

label variable whatisthecurrentmonth "What is the current month"

label variable ble10 "What is the current month correct incorrect"
label define _gBFSqVNtBu 0 "Correct" 1 "Incorrect"
label values ble10 _gBFSqVNtBu

label variable whatisthecurrentyear "What is the current year"

label variable ble11 "What is the current year correct incorrect"
label define _HacBm5nKuy 0 "Correct" 1 "Incorrect"
label values ble11 _HacBm5nKuy

label variable whatdayoftheweek "What day of the week is today"

label variable ble12 "What day of the week is today correct incorrect"
label define _FtAkj8HiMm 0 "Correct" 1 "Incorrect"
label values ble12 _FtAkj8HiMm

label variable whatpartoftheday "What part of the day is it"

label variable ble13 "What part of the day is it correct incorrect"
label define _ApQ9apvq67 0 "Correct" 1 "Incorrect"
label values ble13 _ApQ9apvq67

label variable aboutwhattimeisit "About what time is it"

label variable ble14 "About what time is it correct incorrect"
label define _Qhu99BZg2n 0 "Correct" 1 "Incorrect"
label values ble14 _Qhu99BZg2n

label variable whatseasonisthis "What season is this"

label variable ble15 "What season is this correct incorrect"
label define _l2gg35KLcF 0 "Correct" 1 "Incorrect"
label values ble15 _l2gg35KLcF

label variable ble16a "When did the participant correctly repeat John Brown 42 Market Street Chicago"
label define _nIiIE5XfTT 0 "First time" 1 "When given in 3 phrases" 2 "When given in single words" 3 "Could not repeat"
label values ble16a _nIiIE5XfTT

label variable mothersfirstname "What is your mothers first name"

label variable ble16 "What is your mothers first name correct incorrect"
label define _RORd0wlqbH 0 "Correct" 1 "Incorrect"
label values ble16 _RORd0wlqbH

label variable howmuchschooling "How much schooling did you have"

label variable ble17 "How much schooling did you have correct incorrect"
label define _j2XnITFf0D 0 "Correct" 1 "Incorrect"
label values ble17 _j2XnITFf0D

label variable namepecificschool "Name of one specific school you attended"

label variable ble18 "Name of one specific school you attended correct incorrect"
label define _ljHtmmKCd5 0 "Correct" 1 "Incorrect"
label values ble18 _ljHtmmKCd5

label variable kindofworkdone "Kind of work you have done"

label variable ble19 "Kind of work you have done correct incorrect"
label define _TTCWaie25Y 0 "Correct" 1 "Incorrect"
label values ble19 _TTCWaie25Y

label variable currentpresidentofus "Can you tell me who the president of the United States is right now"

label variable ble20 "Current President of the United states correct incorrect"
label define _cQEV3ImxRg 0 "Correct" 1 "Incorrect"
label values ble20 _cQEV3ImxRg

label variable presidentbeforecurrent "President before current president"

label variable ble21 "President before current president correct incorrect"
label define _nPnNXJVx8H 0 "Correct" 1 "Incorrect"
label values ble21 _nPnNXJVx8H

label variable yearsofworldwari "Can you tell me one of the years of World War I"

label variable ble22 "One of the years of World War I correct incorrect"
label define _UZ3fByh1F9 0 "Correct" 1 "Incorrect"
label values ble22 _UZ3fByh1F9

label variable yearsofworldwarii "Can you tell me one of the years of World War II"

label variable ble23 "One of the years of World War II correct incorrect"
label define _axmnzRjn1r 0 "Correct" 1 "Incorrect"
label values ble23 _axmnzRjn1r

label variable ble24 "Recite months of the year backwards"
label define _pYGEZZ9q0L 0 "Correct" 1 "Self-corrected error" 2 "Incorrect"
label values ble24 _pYGEZZ9q0L

label variable ble25 "Count from 1 to 20"
label define _yJJuBniGfF 0 "Correct" 1 "Self-corrected error" 2 "Incorrect"
label values ble25 _yJJuBniGfF

label variable ble26 "Count backwards from 20 to 1"
label define _fPwp8MN1lQ 0 "Correct" 1 "Self-corrected error" 2 "Incorrect"
label values ble26 _fPwp8MN1lQ

label variable ble27a "Recall John"
label define _mrgmVxyu25 0 "Correct" 1 "Incorrect/Omitted"
label values ble27a _mrgmVxyu25

label variable ble27b "Recall Brown"
label define _Sg1YTWKWK9 0 "Correct" 1 "Incorrect/Omitted"
label values ble27b _Sg1YTWKWK9

label variable ble27c "Recall 42"
label define _TSV4XuHzte 0 "Correct" 1 "Incorrect/Omitted"
label values ble27c _TSV4XuHzte

label variable ble27d "Recall Market Street"
label define _IjMQ6DVKxg 0 "Correct" 1 "Incorrect/Omitted"
label values ble27d _IjMQ6DVKxg

label variable ble27e "Recall Chicago"
label define _zSgfqXW6dd 0 "Correct" 1 "Incorrect/Omitted"
label values ble27e _zSgfqXW6dd

label variable preliminarytotal "PreliminaryTotal"

label variable bletotal "ValidatedTotal"

label variable auto_id_blemen "Unique Teleform Number"

label variable crf_parent_name_blemen "CRF Parent Name"

label variable study_name_blemen "Study Name"

