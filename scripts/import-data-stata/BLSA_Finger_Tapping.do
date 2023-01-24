clear
import delimited "../data-csv/BLSA_Finger_Tapping.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_fintap "CRF Version"

label variable obsdate_fttdate "Date Completed"

// Generate 'date version' of the 'obsdate_fttdate' variable
gen _obsdate_fttdate = date(obsdate_fttdate, "YMD")
format _obsdate_fttdate %td

label variable blank_fintap "Blank Form"

label variable ftttid "Tester ID"

label variable ftt01 "Does the participant have physical hand problems"
label define _v5xRsWJxAc 0 "No" 1 "Yes"
label values ftt01 _v5xRsWJxAc

label variable fttdone "Was finger tapping completed"
label define _vPbM5CBaGC 0 "No" 1 "Yes"
label values fttdone _vPbM5CBaGC

label variable ftt02a "Reason test not performed or unsatisfactory"
label define _o77Pgxqq5g 1 "Other (please specify)" 555 "Physical problems" 666 "Mental problems" 777 "Physical and mental problems" 888 "Refused" 999 "Technical problems (includes no time or no tester)"
label values ftt02a _o77Pgxqq5g

label variable ftt02b "Other Reason test not done"

label variable auto_id_fintap "Unique Teleform Number"

label variable crf_parent_name_fintap "CRF Parent Name"

label variable study_name_fintap "Study Name"

