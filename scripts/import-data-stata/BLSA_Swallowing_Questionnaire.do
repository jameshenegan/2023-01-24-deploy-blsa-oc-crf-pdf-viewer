clear
import delimited "../data-csv/BLSA_Swallowing_Questionnaire.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_swaque "CRF Version"

label variable obsdate_swadate "Date Completed"

// Generate 'date version' of the 'obsdate_swadate' variable
gen _obsdate_swadate = date(obsdate_swadate, "YMD")
format _obsdate_swadate %td

label variable blank_swaque "Blank Form"

label variable swatid "Tester ID"

label variable swaq01 "Cough when drink liquids"
label define _FuGE6W61nh 0 "Never" 1 "Sometimes" 2 "Always"
label values swaq01 _FuGE6W61nh

label variable swaq02 "Cough when eat solild food"
label define _RFZ91O3rWi 0 "Never" 1 "Sometimes" 2 "Always"
label values swaq02 _RFZ91O3rWi

label variable swaq03 "Need to drink fluids to wash food down"
label define _JQ26LElkFe 0 "Never" 1 "Sometimes" 2 "Always"
label values swaq03 _JQ26LElkFe

label variable swaq04 "I choke when I take my medication"
label define _CXOwrY33sH 0 "Never" 1 "Sometimes" 2 "Always"
label values swaq04 _CXOwrY33sH

label variable auto_id_swaque "Unique Teleform Number"

label variable crf_parent_name_swaque "CRF Parent Name"

label variable study_name_swaque "Study Name"

