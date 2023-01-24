clear
import delimited "../data-csv/BLSA_PFT.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_pft "CRF Version"

label variable obsdate_pftdate "Date Completed"

// Generate 'date version' of the 'obsdate_pftdate' variable
gen _obsdate_pftdate = date(obsdate_pftdate, "YMD")
format _obsdate_pftdate %td

label variable blank_pft "Blank Form"

label variable pfttid "Tester ID"

label variable pft01a "Myocardial infarcaion"
label define _mrNLbPJVb9 0 "No" 1 "Yes"
label values pft01a _mrNLbPJVb9

label variable pft01b "Unstable Angina"
label define _UyL7cOfTgg 0 "No" 1 "Yes"
label values pft01b _UyL7cOfTgg

label variable pft01c "Surgery abdomen thorax past 3 months"
label define _O3esdAuL2v 0 "No" 1 "Yes"
label values pft01c _O3esdAuL2v

label variable pft01d "surgery eye past 3 months"
label define _S4a5ACgfCL 0 "No" 1 "Yes"
label values pft01d _S4a5ACgfCL

label variable pft01e "Syncope with forced exhalation"
label define _e0jOXrXL3M 0 "No" 1 "Yes"
label values pft01e _e0jOXrXL3M

label variable pft01f "Recent upper respiratory infection"
label define _aZXom8CMvF 0 "No" 1 "Yes"
label values pft01f _aZXom8CMvF

label variable pft01g "Poulmonary embolus within past 3 months"
label define _TS79s2nIyY 0 "No" 1 "Yes"
label values pft01g _TS79s2nIyY

label variable pft01h "Thoratic abdominal or cerebral aneurysm"
label define _LqHgz8K2r3 0 "No" 1 "Yes"
label values pft01h _LqHgz8K2r3

label variable pft01i "Uncontrolled hypertension"
label define _pnJgVOsoEq 0 "No" 1 "Yes"
label values pft01i _pnJgVOsoEq

label variable pft01j "Acute disease processes e g nausea vomiting etc"
label define _WzO40U6Iq7 0 "No" 1 "Yes"
label values pft01j _WzO40U6Iq7

label variable pft02 "Is participant on a bronchodilator"
label define _IuBkEC9EO3 0 "No" 1 "Yes"
label values pft02 _IuBkEC9EO3

label variable pft02a "How long ago was it taken"

label variable pft03 "Was PFT performed"
label define _p8SsIB08p3 0 "No" 1 "Yes"
label values pft03 _p8SsIB08p3

label variable pft03a "Reason test not performed or unsatisfactory"
label define _wsdVlK2Gon 0 "Other (please specify)" 1 "Contraindication" 5 "Physical problems" 6 "Cognitive" 7 "Physical and Cognitive" 8 "Refused to perform the test" 9 "Technical problems"
label values pft03a _wsdVlK2Gon

label variable pft03c "Other reason test not performed or unsatisfactory"

label variable pft04 "All 3 good trials were achieved"
label define _Dp13KFeBDM 0 "None good trials were achieved" 1 "Only one good trial was achieved" 2 "Two good trials were achieved" 3 "Yes (3)"
label values pft04 _Dp13KFeBDM

label variable auto_id_pft "Unique Teleform Number"

label variable pft01 "Contraindications"

label variable crf_parent_name_pft "CRF Parent Name"

label variable item_group_repeat_pft "Item Group Repeate"

label variable pft01_pft01a "Contraindications : Myocardial infarction within past 3 months (Checkbox Indicator)"

label variable pft01_pft01b "Contraindications : Unstable angina (Checkbox Indicator)"

label variable pft01_pft01c "Contraindications : Surgery (abdomen thorax) within past 3 months (Checkbox Indicator)"

label variable pft01_pft01d "Contraindications : Surgery (eye) within past 3 months (Checkbox Indicator)"

label variable pft01_pft01e "Contraindications : Syncope with forced exhalation (Checkbox Indicator)"

label variable pft01_pft01f "Contraindications : Recent URI (upper respiratory infection) (Checkbox Indicator)"

label variable pft01_pft01g "Contraindications : Pulmonary Embolus within past 3 mo (Checkbox Indicator)"

label variable pft01_pft01h "Contraindications : Thoracic Abdominal or Cerebral aneurysm (Checkbox Indicator)"

label variable pft01_pft01i "Contraindications : Uncontrolled Hypertension (Checkbox Indicator)"

label variable study_name_pft "Study Name"

