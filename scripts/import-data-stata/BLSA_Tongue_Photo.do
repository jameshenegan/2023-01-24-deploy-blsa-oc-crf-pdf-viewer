clear
import delimited "../data-csv/BLSA_Tongue_Photo.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_tonpho "CRF Version"

label variable obsdate_tphdat "Date Completed"

// Generate 'date version' of the 'obsdate_tphdat' variable
gen _obsdate_tphdat = date(obsdate_tphdat, "YMD")
format _obsdate_tphdat %td

label variable blank_tonpho "Blank Form"

label variable tphtid "Tester ID"

label variable tph01 "Were Tongue photos taken"
label define _Btdij8k0hf 0 "Other" 1 "Yes" 4 "Refused" 6 "Technical" 7 "No tester" 9 "Not scheduled"
label values tph01 _Btdij8k0hf

label variable tph01c "Comment"

label variable tph02a "Photo taken without food coloring Left"
label define _g5xSlWWL4X 0 "No" 1 "Yes"
label values tph02a _g5xSlWWL4X

label variable tph02b "Photo taken without food coloring Right"
label define _DnFEj3uPMs 0 "No" 1 "Yes"
label values tph02b _DnFEj3uPMs

label variable tph02c "Photo taken with food coloring Left"
label define _vaxeHIw9Uk 0 "No" 1 "Yes"
label values tph02c _vaxeHIw9Uk

label variable tph02d "Photo taken with food coloring Right"
label define _chvcRJpXXu 0 "No" 1 "Yes"
label values tph02d _chvcRJpXXu

label variable tph03a "Reason all photos not collected"
label define _VmWM31SR73 0 "Other" 4 "Refused" 6 "Technical"
label values tph03a _VmWM31SR73

label variable tph03b "Other reason all photos not collected"

label variable auto_id_tonpho "Unique Teleform Number"

label variable crf_parent_name_tonpho "CRF Parent Name"

label variable study_name_tonpho "Study Name"

