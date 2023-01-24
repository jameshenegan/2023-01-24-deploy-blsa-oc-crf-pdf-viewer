clear
import delimited "../data-csv/BLSA_Echo_and_Carotid.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_echandcar "CRF Version"

label variable obsdate_echodate "Date Completed"

// Generate 'date version' of the 'obsdate_echodate' variable
gen _obsdate_echodate = date(obsdate_echodate, "YMD")
format _obsdate_echodate %td

label variable echotid "Tester ID"

label variable blank_echandcar "Blank Form"

label variable echo01 "Echo done"
label define _oZpajPKOHH 0 "No" 1 "Yes"
label values echo01 _oZpajPKOHH

label variable echo01a "Echo reason not done"
label define _VfizWxyooo 0 "Other" 555 "Physical problems" 666 "Cognitive" 777 "Physical and cognitive" 888 "Refused" 999 "Technical problems"
label values echo01a _VfizWxyooo

label variable echo01b "Echo RND other"

label variable ct01 "Carotid done"
label define _qeJRA6VQsO 0 "No" 1 "Yes"
label values ct01 _qeJRA6VQsO

label variable ct01a "Carotid reason not done"
label define _FD6V54x6V3 1 "Other" 555 "Physical problems" 666 "Cognitive" 777 "Physical and cognitive" 888 "Refused" 999 "Technical problems"
label values ct01a _FD6V54x6V3

label variable ct01b "Carotid RND other"

label variable bp001 "Blood pressure measured"
label define _E5cnXNi3eF 0 "No" 1 "Yes"
label values bp001 _E5cnXNi3eF

label variable bpsbp "Systolic"

label variable bpdbp "Diastolic"

label variable bpmap "MAP"

label variable auto_id_echandcar "Unique Teleform Number"

label variable crf_parent_name_echandcar "CRF Parent Name"

label variable study_name_echandcar "Study Name"

