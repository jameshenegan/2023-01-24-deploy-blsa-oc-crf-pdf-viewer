clear
import delimited "../data-csv/BLSA_Samples.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_sam "CRF Version"

label variable obsdate_samdate "Date Completed"

// Generate 'date version' of the 'obsdate_samdate' variable
gen _obsdate_samdate = date(obsdate_samdate, "YMD")
format _obsdate_samdate %td

label variable blank_sam "Blank Form"

label variable sam3tid "Stool Sample Tester ID"

label variable sam03 "Was Stool Sample collected"
label define _Zl1qzxTcVn 0 "No" 1 "Yes"
label values sam03 _Zl1qzxTcVn

label variable sam03a "Stool Sample reason not cone"
label define _zMgyJng84Z 3 "3-No Time" 4 "4-Refused" 5 "5-Unable (Physical or Mental)" 6 "6-Equipment problems" 7 "7-No Tester" 8 "8-Not Eligible" 9 "9-Not Scheduled/Not Applicable"
label values sam03a _zMgyJng84Z

label variable sam03b "Date Collected"

// Generate 'date version' of the 'sam03b' variable
gen _sam03b = date(sam03b, "YMD")
format _sam03b %td

label variable sam03c "Time collected"

label variable sam03d "Time ampm"
label define _BsEQHsyTnZ 1 "Am" 2 "Pm"
label values sam03d _BsEQHsyTnZ

label variable sam4tid "Stress Blood Sample Tester ID"

label variable sam04 "Was stress blood sample collected"
label define _cfBmCcvEqV 0 "No" 1 "Yes"
label values sam04 _cfBmCcvEqV

label variable sam04a "Blood Sample reason not cone"
label define _SYI3xaifZY 3 "3-No Time" 4 "4-Refused" 5 "5-Unable (Physical or Mental)" 6 "6-Equipment problems" 7 "7-No Tester" 8 "8-Not Eligible" 9 "9-Not Scheduled/Not Applicable"
label values sam04a _SYI3xaifZY

label variable sam04b "Date Collected"

// Generate 'date version' of the 'sam04b' variable
gen _sam04b = date(sam04b, "YMD")
format _sam04b %td

label variable sam04c "Time collected"

label variable sam04d "Time pm"

label variable sam04e "What time did you have dinner"

label variable sam04f "Anything to eat or drink after dinner"
label define _zFzwUJ7s5P 0 "No" 1 "Yes"
label values sam04f _zFzwUJ7s5P

label variable sam04g "Time you last consumed anything"

label variable sam04h "Time pm"

label variable sam04i "Comment"

label variable sam2tid "Saliva Tester ID"

label variable sam02 "Was Saliva collected"
label define _BTyTSKYYzP 0 "No" 1 "Yes"
label values sam02 _BTyTSKYYzP

label variable sam02a "Saliva reason not cone"
label define _AtIgELIz5b 3 "3-No Time" 4 "4-Refused" 5 "5-Unable (Physical or Mental)" 6 "6-Equipment problems" 7 "7-No Tester" 8 "8-Not Eligible" 9 "9-Not Scheduled/Not Applicable"
label values sam02a _AtIgELIz5b

label variable sam1tid "Nail Clippings Tester ID"

label variable sam01c "Were nail clippings collected right"
label define _PLWK6E8lMJ 0 "No" 1 "Yes"
label values sam01c _PLWK6E8lMJ

label variable sam01d "Nail Clippings reason not done right"
label define _T9GkXZv35C 3 "3-No Time" 4 "4-Refused" 5 "5-Unable (Physical or Mental)" 6 "6-Equipment problems" 7 "7-No Tester" 8 "8-Not Eligible" 9 "9-Not Scheduled/Not Applicable"
label values sam01d _T9GkXZv35C

label variable sam01r "Nail clippings right"
label define _GEwD0vqKax 1 "1" 2 "2" 3 "3" 4 "4" 5 "5"
label values sam01r _GEwD0vqKax

label variable sam01a "Were nail clippings collected left"
label define _G8tzvFJQQY 0 "No" 1 "Yes"
label values sam01a _G8tzvFJQQY

label variable sam01b "Nail Clippings reason not done left"
label define _n7a9ABsFuJ 3 "3-No Time" 4 "4-Refused" 5 "5-Unable (Physical or Mental)" 6 "6-Equipment problems" 7 "7-No Tester" 8 "8-Not Eligible" 9 "9-Not Scheduled/Not Applicable"
label values sam01b _n7a9ABsFuJ

label variable sam01l "Nail clippings left"
label define _vVIqsLqqYs 1 "1" 2 "2" 3 "3" 4 "4" 5 "5"
label values sam01l _vVIqsLqqYs

label variable auto_id_sam "Unique Teleform Number"

label variable crf_parent_name_sam "CRF Parent Name"

label variable item_group_repeat_sam "Item Group Repeate"

label variable sam04d_2 "Time pm : Pm (Checkbox Indicator)"

label variable study_name_sam "Study Name"

