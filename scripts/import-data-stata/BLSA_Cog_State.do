clear
import delimited "../data-csv/BLSA_Cog_State.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_cogsta "CRF Version"

label variable date_cogsta "Date Completed"

// Generate 'date version' of the 'date_cogsta' variable
gen _date_cogsta = date(date_cogsta, "YMD")
format _date_cogsta %td

label variable blank_cogsta "Blank Form"

label variable tid_cogsta "Tester ID"

label variable randomizationid "Randomization number"

label variable handprob "Does the participant have physical hand problems"
label define _zJZD5Nphjh 0 "No" 1 "Yes"
label values handprob _zJZD5Nphjh

label variable done_cogsta "Was Cog State protocol completed"
label define _zxKyhL9mGC 0 "No" 1 "Yes"
label values done_cogsta _zxKyhL9mGC

label variable rnd "Reason test not performed or unsatisfactory"
label define _TQHTpHXkEd 1 "Other (please specify)" 555 "Physical problems" 666 "Mental problems" 777 "Physical and mental problems" 888 "Refused" 999 "Technical problems (includes no time or no tester)"
label values rnd _TQHTpHXkEd

label variable rndother "Other Reason test not done"

label variable crf_parent_name_cogsta "CRF Parent Name"

label variable study_name_cogsta "Study Name"

