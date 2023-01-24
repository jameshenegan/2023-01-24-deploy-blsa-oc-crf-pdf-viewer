clear
import delimited "../data-csv/BLSA_Walking_Speed.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_walspe "CRF Version"

label variable obsdate_wsdate "Date Completed"

// Generate 'date version' of the 'obsdate_wsdate' variable
gen _obsdate_wsdate = date(obsdate_wsdate, "YMD")
format _obsdate_wsdate %td

label variable blank_walspe "Blank Form"

label variable wstid "Tester ID"

label variable wsup10 "Usual Pace 10ft"
label define _VyHObjWvBD 0 "Not attempted unable to walk unaided" 1 "Completes without walking aid" 7 "Participant refused (includes not time/no tester"
label values wsup10 _VyHObjWvBD

label variable wsup10t "Usual Pace 10ft time"

label variable wsup100 "Usual Pace 100ft"
label define _czlPITzJze 0 "Not attempted unable to walk unaided" 1 "Completes without walking aid" 7 "Participant refused (includes not time/no tester"
label values wsup100 _czlPITzJze

label variable wsup100t "Usual Pace 100ft time"

label variable wsfp10 "Fast Pace 10ft"
label define _LZhAWsvWj7 0 "Not attempted unable to walk unaided" 1 "Completes without walking aid" 7 "Participant refused (includes not time/no tester"
label values wsfp10 _LZhAWsvWj7

label variable wsfp10t "Fast Pace 10ft time"

label variable wsfp100 "Fast Pace 100ft"
label define _G50g8PKjAM 0 "Not attempted unable to walk unaided" 1 "Completes without walking aid" 7 "Participant refused (includes not time/no tester"
label values wsfp100 _G50g8PKjAM

label variable wsfp100t "Fast Pace 100ft time"

label variable auto_id_walspe "Unique Teleform Number"

label variable crf_parent_name_walspe "CRF Parent Name"

label variable study_name_walspe "Study Name"

