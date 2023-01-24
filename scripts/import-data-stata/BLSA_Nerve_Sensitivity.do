clear
import delimited "../data-csv/BLSA_Nerve_Sensitivity.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_nersen "CRF Version"

label variable obsdate_nrvsdat "Date Completed"

// Generate 'date version' of the 'obsdate_nrvsdat' variable
gen _obsdate_nrvsdat = date(obsdate_nrvsdat, "YMD")
format _obsdate_nrvsdat %td

label variable blank_nersen "Blank Form"

label variable nrvstid "Tester ID"

label variable nrvs01a "Foot temperature at start of study"

label variable nrvs01b "Foot temperature following heating:"

label variable nrvs01c "Foot temperature at end of tests:"

label variable nrvs02 "Which leg was tested"
label define _m5dK8dIjgi 0 "Right" 1 "Left"
label values nrvs02 _m5dK8dIjgi

label variable nrvs02a "Why wasn't right let tested"
label define _aoybU5YaXP 1 "Amputation" 2 "Ulcer" 3 "Trauma or surgery (including knee replacement)" 9 "Other please specify"
label values nrvs02a _aoybU5YaXP

label variable nrvs02b "Other reason R leg not tested"

label variable nrvsdon "Was test done"
label define _NBIgDr10zK 1 "Yes" 5 "Physical problems" 6 "Cognitive problems" 7 "Refused" 9 "Technical problems"
label values nrvsdon _NBIgDr10zK

label variable crf_parent_name_nersen "CRF Parent Name"

label variable study_name_nersen "Study Name"

