clear
import delimited "../data-csv/BLSA_TM_Stress_Blood.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_tmstrblo "CRF Version"

label variable obsdate_tmsb "Date Completed"

// Generate 'date version' of the 'obsdate_tmsb' variable
gen _obsdate_tmsb = date(obsdate_tmsb, "YMD")
format _obsdate_tmsb %td

label variable tmsb_done "Treadmill stress blood completed"
label define _ezWks4LVyO 0 "No" 1 "Yes"
label values tmsb_done _ezWks4LVyO

label variable tmsb_rnd "TMSB reason not done"
label define _mJaCePfWeP 1 "Refused" 2 "Unable" 3 "Not Scheduled" 4 "Other"
label values tmsb_rnd _mJaCePfWeP

label variable tmsb_comment2 "Comment"

label variable tmsb_samples "Were all blood draws completed"
label define _gGUx8T64yJ 0 "No" 1 "Yes"
label values tmsb_samples _gGUx8T64yJ

label variable tmsb_rnc "Reason not completed"
label define _saNH3OVtDf 1 "IV access" 2 "Refused" 3 "Other"
label values tmsb_rnc _saNH3OVtDf

label variable crf_parent_name_tmstrblo "CRF Parent Name"

label variable study_name_tmstrblo "Study Name"

