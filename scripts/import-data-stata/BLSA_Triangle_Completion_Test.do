clear
import delimited "../data-csv/BLSA_Triangle_Completion_Test.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_tricomtes "CRF Version"

label variable obsdate_tricomdate "Date Completed"

// Generate 'date version' of the 'obsdate_tricomdate' variable
gen _obsdate_tricomdate = date(obsdate_tricomdate, "YMD")
format _obsdate_tricomdate %td

label variable blank_tricomtes "Blank Form"

label variable tricomtid "Tester ID"

label variable tricom01a_tricomtes "Able to stand unassisted"
label define _HHFQvdXGjG 0 "No - DO NOT TEST" 1 "Yes"
label values tricom01a_tricomtes _HHFQvdXGjG

label variable tricom01b "Use assistive device for standing or walking"
label define _AWjBt9MDmA 0 "No" 1 "Yes - DO NOT TEST"
label values tricom01b _AWjBt9MDmA

label variable tricomt1dd "Triangle 1 distance of deviation"

label variable tricomt1ad "Triangle 1 angle of deviation"

label variable tricomt1dt "Triangle 1 distance traveled"

label variable tricomt1ar "Triangle 1 angle rotated"

label variable tricom1yn "Triangle 1 think you reached original starting point"
label define _IbrYofH0Mn 0 "No" 1 "Yes"
label values tricom1yn _IbrYofH0Mn

label variable tricom1lr "Triangle 1 think you are to the left or right"
label define _AeKwN2TLP4 1 "to it's Left" 2 "to it's right"
label values tricom1lr _AeKwN2TLP4

label variable tricomt1i "Triangle 1 interrupted by tester for safety"
label define _h8uSAdWEBI 1 "Interrupted by tester for safety"
label values tricomt1i _h8uSAdWEBI

label variable tricomt2dd "Triangle 2 distance of deviation"

label variable tricomt2ad "Triangle 2 angle of deviation"

label variable tricomt2dt "Triangle 2 distance traveled"

label variable tricomt2ar "Triangle 2 angle rotated"

label variable tricom2yn "Triangle 2 think you reached original starting point"
label define _rDT2cYK71G 0 "No" 1 "Yes"
label values tricom2yn _rDT2cYK71G

label variable tricom2lr "Triangle 2 think you are to the left or right"
label define _U08FXc2MIy 1 "to it's Left" 2 "to it's right"
label values tricom2lr _U08FXc2MIy

label variable tricomt2i "Triangle 2 interrupted by tester for safety"
label define _CJtTmRvNH6 1 "Interrupted by tester for safety"
label values tricomt2i _CJtTmRvNH6

label variable tricomt3dd "Triangle 3 distance of deviation"

label variable tricomt3ad "Triangle 3 angle of deviation"

label variable tricomt3dt "Triangle 3 distance traveled"

label variable tricomt3ar "Triangle 3 angle rotated"

label variable tricom3yn "Triangle 3 think you reached original starting point"
label define _SwNfl6gg5a 0 "No" 1 "Yes"
label values tricom3yn _SwNfl6gg5a

label variable tricom3lr "Triangle 3 think you are to the left or right"
label define _EDnvyGBwtL 1 "to it's Left" 2 "to it's right"
label values tricom3lr _EDnvyGBwtL

label variable tricomt3i "Triangle 3 interrupted by tester for safety"
label define _haETpiUauo 1 "Interrupted by tester for safety"
label values tricomt3i _haETpiUauo

label variable tricomt4dd "Triangle 4 distance of deviation"

label variable tricomt4ad "Triangle 4 angle of deviation"

label variable tricomt4dt "Triangle 4 distance traveled"

label variable tricomt4ar "Triangle 4 angle rotated"

label variable tricom4yn "Triangle 4 think you reached original starting point"
label define _t4xZJMcxQi 0 "No" 1 "Yes"
label values tricom4yn _t4xZJMcxQi

label variable tricom4lr "Triangle 4 think you are to the left or right"
label define _uNGCfi2tPB 1 "to it's Left" 2 "to it's right"
label values tricom4lr _uNGCfi2tPB

label variable tricomt4i "Triangle 4 interrupted by tester for safety"
label define _siWSd4Ttx3 1 "Interrupted by tester for safety"
label values tricomt4i _siWSd4Ttx3

label variable tricomdone "Was triangle completion test done"
label define _U6YxjfFQqo 0 "No" 1 "Yes"
label values tricomdone _U6YxjfFQqo

label variable tricomrnd "reason not done"
label define _iqzXBkZEZm 3 "3-No Time" 4 "4-Refused" 5 "5-Unable (Physical or Mental)" 6 "6-Equipment problem" 7 "7-No Tester" 8 "8-Not eligible" 9 "9-Not scheduled/Not applicable"
label values tricomrnd _iqzXBkZEZm

label variable trisod "Sense of Direction"
label define _KMHqMZsuGb 1 "1 Poor" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7 Good"
label values trisod _KMHqMZsuGb

label variable auto_id_tricomtes "Unique Teleform Number"

label variable crf_parent_name_tricomtes "CRF Parent Name"

label variable study_name_tricomtes "Study Name"

