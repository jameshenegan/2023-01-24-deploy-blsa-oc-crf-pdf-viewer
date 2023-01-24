clear
import delimited "../data-csv/BLSA_Intestinal_Permeability.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_intper "CRF Version"

label variable obsdate_dategiven "Date Given"

// Generate 'date version' of the 'obsdate_dategiven' variable
gen _obsdate_dategiven = date(obsdate_dategiven, "YMD")
format _obsdate_dategiven %td

label variable testerid_intper "Tester ID"

label variable blank_intper "Blank Form"

label variable amount "Amount of PEG given"

label variable timedispensed "Time dispensed"

label variable timeampm "Time ampm"
label define _RpVWt52sIy 1 "Am" 2 "Pm"
label values timeampm _RpVWt52sIy

label variable done_intper "Done not done"
label define _GwRQk27yuV 0 "Not Done" 1 "Done"
label values done_intper _GwRQk27yuV

label variable reasonnd "Reason not done"
label define _njqNMyDuRi 1 "Refused" 2 "Not Eligible" 3 "Technical"
label values reasonnd _njqNMyDuRi

label variable ua_volume "UA 24 hr Volume"

label variable comment_intper "Comment"

label variable crf_parent_name_intper "CRF Parent Name"

label variable study_name_intper "Study Name"

