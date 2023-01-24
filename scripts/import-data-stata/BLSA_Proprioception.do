clear
import delimited "../data-csv/BLSA_Proprioception.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_pro "CRF Version"

label variable obsdate_prodate "Date Completed"

// Generate 'date version' of the 'obsdate_prodate' variable
gen _obsdate_prodate = date(obsdate_prodate, "YMD")
format _obsdate_prodate %td

label variable blank_pro "Blank Form"

label variable protid "Tester ID"

label variable pro01 "Status of Proprioception test"
label define _vGOldTeLrP 0 "Not attempted" 1 "Attempted"
label values pro01 _vGOldTeLrP

label variable pro01a "Reason test not performed"
label define _Ba6bNP7JL5 1 "Not enough time/not scheduled" 10 "Lower limb braces ambulatory" 11 "Severely limited ankle range of motion (<10 degree dorsiflexion or plantar flexion)" 12 "Unable to follow directions" 2 "No examiner available" 3 "Technical/equipment problem" 4 "Cognitively impaired" 5 "Unable to stand/walk" 6 "Examiner felt unsafe" 7 "Participant refused" 8 "Other Physical problems" 9 "Lower limb amputations"
label values pro01a _Ba6bNP7JL5

label variable pro02 "Accuracy in threshold test"
label define _FhUgThcAg1 1 "All Correct" 2 "Partially Correct"
label values pro02 _FhUgThcAg1

label variable pro02a "Partially correct threshold"

label variable pro03 "Comments"

label variable auto_id_pro "Unique Teleform Number"

label variable crf_parent_name_pro "CRF Parent Name"

label variable item_group_repeat_pro "Item Group Repeate"

label variable pro02a_1 "Partially correct threshold : Threshold 1 (Checkbox Indicator)"

label variable pro02a_2 "Partially correct threshold : Threshold 2 (Checkbox Indicator)"

label variable pro02a_3 "Partially correct threshold : Threshold 3 (Checkbox Indicator)"

label variable study_name_pro "Study Name"

