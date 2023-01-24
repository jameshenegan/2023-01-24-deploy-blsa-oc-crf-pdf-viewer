clear
import delimited "../data-csv/BLSA_Lab_Processing.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_labpro "CRF Version"

label variable obsdate_labdate "Date Completed"

// Generate 'date version' of the 'obsdate_labdate' variable
gen _obsdate_labdate = date(obsdate_labdate, "YMD")
format _obsdate_labdate %td

label variable blank_labpro "Blank Form"

label variable labtid "Tester ID"

label variable lab03 "Venipuncture done"
label define _W60dJ1Gjmo 0 "No" 1 "Yes"
label values lab03 _W60dJ1Gjmo

label variable lab03c "Venipuncture reason not done"
label define _DWkb8CR8YO 0 "Other (please specify)" 1 "Exclusion criteria (includes lower hemoglobin)" 2 "Insufficient venous access" 5 "Physical problems" 7 "Refused" 9 "Technical problems"
label values lab03c _DWkb8CR8YO

label variable lab03d "Venipuncture other RND"

label variable lab03a "Venipuncture require more than 2 sticks"
label define _jMjt4n3vKb 0 "No" 1 "Yes"
label values lab03a _jMjt4n3vKb

label variable lab03b "Veins quality assessment"
label define _h9hAUDFVMW 1 "Poor (small veins could not thread IV difficult blood blow)" 2 "Fair (this veins slow blood flow)" 3 "Good (moderate thin veins adequate blood flow)" 4 "Excellent (large veins no problems all tubes collected)"
label values lab03b _h9hAUDFVMW

label variable lab04 "Were all expected samples collected at first day"
label define _V1ILxL2pxL 0 "No" 1 "Yes"
label values lab04 _V1ILxL2pxL

label variable lab04a "Fasting"
label define _XAJYLkIMw0 0 "Not fasting" 1 "Fasting"
label values lab04a _XAJYLkIMw0

label variable auto_id_labpro "Unique Teleform Number"

label variable comment_labpro "Comment"

label variable lab01 "Have you donated blood within 56 days"
label define _uNctNHaCK8 0 "No" 1 "Yes"
label values lab01 _uNctNHaCK8

label variable lab02 "Have history of anemia"
label define _qyUKNX5RtK 0 "No" 1 "Yes"
label values lab02 _qyUKNX5RtK

label variable day2tubescoll "Describe tubes collected second day"

label variable lab07 "Was 24 hour urine collection obtained"
label define _RYA8ZIZF1U 0 "No" 1 "Yes"
label values lab07 _RYA8ZIZF1U

label variable lab07a_labpro "24 hour urine begin time"

label variable lab07b_labpro "24 hour urine end time"

label variable lab05a "3ml Lavender label"

label variable lab05b "8.5 ml Red"

label variable lab05c "4.5 ml Blue"

label variable lab05d "RPR 3.5ml Gold"

label variable lab05e "HIV 3.5 ml Gold"

label variable lab06 "Urine specimen collected for UA"
label define _wXxkQxAnL8 0 "No" 1 "Yes"
label values lab06 _wXxkQxAnL8

label variable lab06a "Urine Fasting or Non Fasting"
label define _HQEyG5AUWq 0 "Not fasting" 1 "Fasting"
label values lab06a _HQEyG5AUWq

label variable lab06b "HH Urine Sample label"

label variable lab07d "Total time for 24 hr urine"

label variable lab07c "24 hour urine label"

label variable crf_parent_name_labpro "CRF Parent Name"

label variable study_name_labpro "Study Name"

