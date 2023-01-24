clear
import delimited "../data-csv/BLSA_Orientation_Updating_Test.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_oriupdtes "CRF Version"

label variable obsdate_outdate "Date Completed"

// Generate 'date version' of the 'obsdate_outdate' variable
gen _obsdate_outdate = date(obsdate_outdate, "YMD")
format _obsdate_outdate %td

label variable blank_oriupdtes "Blank Form"

label variable outtid "Tester ID"

label variable outt1a "Trial 1 direction of rotation"
label define _j4tPfOtMAX 1 "Left turn" 2 "Right turn"
label values outt1a _j4tPfOtMAX

label variable outt1b "Trial 1 angle or rotation"

label variable outt1c "Trial 1 error of angle estimation"

label variable outt1d "Trial 1 how confident is the subject"
label define _jbiHHpvE8Z 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt1d _jbiHHpvE8Z

label variable outt2a "Trial 2 direction of rotation"
label define _un3dTzZUUH 1 "Left turn" 2 "Right turn"
label values outt2a _un3dTzZUUH

label variable outt2b "Trial 2 angle or rotation"

label variable outt2c "Trial 2 error of angle estimation"

label variable outt2d "Trial 2 how confident is the subject"
label define _jyiEVBScA7 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt2d _jyiEVBScA7

label variable outt3a "Trial 3 direction of rotation"
label define _Vl5D6xQsI8 1 "Left turn" 2 "Right turn"
label values outt3a _Vl5D6xQsI8

label variable outt3b "Trial 3 angle or rotation"

label variable outt3c "Trial 3 error of angle estimation"

label variable outt3d "Trial 3 how confident is the subject"
label define _nq05geAZhw 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt3d _nq05geAZhw

label variable outt4a "Trial 4 direction of rotation"
label define _OOBfjAyv5s 1 "Left turn" 2 "Right turn"
label values outt4a _OOBfjAyv5s

label variable outt4b "Trial 4 angle or rotation"

label variable outt4c "Trial 4 error of angle estimation"

label variable outt4d "Trial 4 how confident is the subject"
label define _FylYfbTCLV 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt4d _FylYfbTCLV

label variable outt5a "Trial 5 direction of rotation"
label define _LAshAd0Zml 1 "Left turn" 2 "Right turn"
label values outt5a _LAshAd0Zml

label variable outt5b "Trial 5 angle or rotation"

label variable outt5c "Trial 5 error of angle estimation"

label variable outt5d "Trial 5 how confident is the subject"
label define _QsDiUSNvW4 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt5d _QsDiUSNvW4

label variable outt6a "Trial 6 direction of rotation"
label define _LwPI0sFSjn 1 "Left turn" 2 "Right turn"
label values outt6a _LwPI0sFSjn

label variable outt6b "Trial 6 angle or rotation"

label variable outt6c "Trial 6 error of angle estimation"

label variable outt6d "Trial 6 how confident is the subject"
label define _CPGUCSuoD2 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt6d _CPGUCSuoD2

label variable outt7a "Trial 7 direction of rotation"
label define _Km1M0hnAiP 1 "Left turn" 2 "Right turn"
label values outt7a _Km1M0hnAiP

label variable outt7b "Trial 7 angle or rotation"

label variable outt7c "Trial 7 error of angle estimation"

label variable outt7d "Trial 7 how confident is the subject"
label define _m4e2B3fRAj 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt7d _m4e2B3fRAj

label variable outt8a "Trial 8 direction of rotation"
label define _NOSmAtJg7P 1 "Left turn" 2 "Right turn"
label values outt8a _NOSmAtJg7P

label variable outt8b "Trial 8 angle or rotation"

label variable outt8c "Trial 8 error of angle estimation"

label variable outt8d "Trial 8 how confident is the subject"
label define _qtLCBty47n 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt8d _qtLCBty47n

label variable outt9a "Trial 9 direction of rotation"
label define _cEvM9Hn2Ck 1 "Left turn" 2 "Right turn"
label values outt9a _cEvM9Hn2Ck

label variable outt9b "Trial 9 angle or rotation"

label variable outt9c "Trial 9 error of angle estimation"

label variable outt9d "Trial 9 how confident is the subject"
label define _XXKw9ukY20 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt9d _XXKw9ukY20

label variable outt10a "Trial 10 direction of rotation"
label define _uReRjVwfac 1 "Left turn" 2 "Right turn"
label values outt10a _uReRjVwfac

label variable outt10b "Trial 10 angle or rotation"

label variable outt10c "Trial 10 error of angle estimation"

label variable outt10d "Trial 10 how confident is the subject"
label define _Ep1nR6Jg8P 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt10d _Ep1nR6Jg8P

label variable outt11a "Trial 11 direction of rotation"
label define _tzfH6yQRcJ 1 "Left turn" 2 "Right turn"
label values outt11a _tzfH6yQRcJ

label variable outt11b "Trial 11 angle or rotation"

label variable outt11c "Trial 11 error of angle estimation"

label variable outt11d "Trial 11 how confident is the subject"
label define _uyARrP9SZr 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt11d _uyARrP9SZr

label variable outt12a "Trial 12 direction of rotation"
label define _DXAxnJ1vvs 1 "Left turn" 2 "Right turn"
label values outt12a _DXAxnJ1vvs

label variable outt12b "Trial 12 angle or rotation"

label variable outt12c "Trial 12 error of angle estimation"

label variable outt12d "Trial 12 how confident is the subject"
label define _KXaKSzencU 0 "I am sure" 1 "I am somewhat sure" 2 "I am randomly guessing/very unsure"
label values outt12d _KXaKSzencU

label variable outdone "Did participant complete testing"
label define _yv217kxweq 0 "Yes" 1 "No"
label values outdone _yv217kxweq

label variable outpilot "Pilot"
label define _l0Ta0MUEZy 0 "No" 1 "Yes"
label values outpilot _l0Ta0MUEZy

label variable auto_id_oriupdtes "Unique Teleform Number"

label variable outrnd2 "Reason not done"
label define _DJNHSc0nk0 1 "Do not understand test instructions" 2 "Got too disoriented or dizzy during the test" 3 "Refused participation during the test" 4 "Refused the entire test" 5 "Time constraints" 6 "Not Scheduled"
label values outrnd2 _DJNHSc0nk0

label variable outrnd "Reason not done"
label define _CJePLHOSv0 1 "Do not understand test instructions" 2 "Got too disoriented or dizzy during the test" 3 "Refused participation during the test" 4 "Refused the entire test" 5 "Time constraints"
label values outrnd _CJePLHOSv0

label variable crf_parent_name_oriupdtes "CRF Parent Name"

label variable study_name_oriupdtes "Study Name"

