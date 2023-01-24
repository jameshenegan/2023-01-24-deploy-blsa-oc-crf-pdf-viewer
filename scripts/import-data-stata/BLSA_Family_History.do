clear
import delimited "../data-csv/BLSA_Family_History.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_famhis "CRF Version"

label variable paternalbirthage "Paternal age at birth"

label variable fatheralive "Is Father still alive"
label define _ew8kfcIVNm 1 "Alive" 2 "Deceased"
label values fatheralive _ew8kfcIVNm

label variable paternalcurrentage "Paternal current age"

label variable crf_parent_name_famhis "CRF Parent Name"

label variable study_name_famhis "Study Name"

