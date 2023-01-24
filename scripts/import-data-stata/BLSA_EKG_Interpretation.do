clear
import delimited "../data-csv/BLSA_EKG_Interpretation.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_ekgint "CRF Version"

label variable obsdate_ekgdate "Date Completed"

// Generate 'date version' of the 'obsdate_ekgdate' variable
gen _obsdate_ekgdate = date(obsdate_ekgdate, "YMD")
format _obsdate_ekgdate %td

label variable ekgttrid "Tester ID"

label variable ekgcdrid "Coder ID"

label variable ekg01 "EKG done"
label define _aSnV5FJv71 0 "Other" 1 "Yes" 5 "Physical" 6 "Cognitive" 7 "Physical and cognitive" 8 "Refused" 9 "Technical problems"
label values ekg01 _aSnV5FJv71

label variable ekg01b "EKG other RND"

label variable ekg02 "EKG02"
label define _gGi8j9n7xK 1 "1" 2 "2" 3 "3" 4 "4" 5 "5"
label values ekg02 _gGi8j9n7xK

label variable ekg03 "EKG03"
label define _O14v9VdV72 1 "1" 2 "2" 3 "3"
label values ekg03 _O14v9VdV72

label variable ekg04 "EKG04"
label define _HAbtUuYncn 1 "1" 2 "2" 3 "3" 4 "4"
label values ekg04 _HAbtUuYncn

label variable ekg05 "EKG05"
label define _Gy4YKMuLJ1 1 "1" 2 "2" 3 "3" 4 "4"
label values ekg05 _Gy4YKMuLJ1

label variable ekg06 "EKG06"
label define _HU4LVMOEdN 1 "1" 2 "2" 3 "3" 4 "4" 5 "5"
label values ekg06 _HU4LVMOEdN

label variable ekg07 "EKG07"
label define _VjsIio4LAq 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6"
label values ekg07 _VjsIio4LAq

label variable ekg08 "EKG08"
label define _QLjigDU2vN 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9"
label values ekg08 _QLjigDU2vN

label variable ekg30 "EKG30"
label define _MSniIxgg5z 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8"
label values ekg30 _MSniIxgg5z

label variable ekg09 "EKG09"
label define _JMspKN2Dbv 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7"
label values ekg09 _JMspKN2Dbv

label variable ekg26 "EKG26"
label define _pu8Jo92mJC 1 "1" 2 "2" 3 "3"
label values ekg26 _pu8Jo92mJC

label variable ekg27 "EKG27"
label define _asAsDIHc2X 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8"
label values ekg27 _asAsDIHc2X

label variable ekg28 "EKG28"
label define _DTLBMikprO 1 "1" 2 "2" 3 "3"
label values ekg28 _DTLBMikprO

label variable ekg29 "EKG29"
label define _AgaXmfwjbs 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8"
label values ekg29 _AgaXmfwjbs

label variable crf_parent_name_ekgint "CRF Parent Name"

label variable study_name_ekgint "Study Name"

