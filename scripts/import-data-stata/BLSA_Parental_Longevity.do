clear
import delimited "../data-csv/BLSA_Parental_Longevity.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_parlon "CRF Version"

label variable date_parlon "Date Completed"

// Generate 'date version' of the 'date_parlon' variable
gen _date_parlon = date(date_parlon, "YMD")
format _date_parlon %td

label variable blank_parlon "Blank Form"

label variable tid_parlon "Tester ID"

label variable pl1 "Were you adopted"
label define _g9a44SpTPL 0 "No" 1 "Yes" 7 "Prefer not to answer" 8 "Don't know"
label values pl1 _g9a44SpTPL

label variable pl2 "Is your biological mother alive"
label define _edltXfYcA5 0 "No" 1 "Yes" 7 "Prefer not to answer" 8 "Don't know"
label values pl2 _edltXfYcA5

label variable pl2a "What is your mother's age now"

label variable pl2b "How old was your mother when she died"

label variable pl2c "Cause of death"
label define _mbHg8JPb2c 1 "Myocardial infarction" 10 "Complications of fracture" 11 "Accident/trauma" 12 "Intentional self-harm (suicide)" 13 "Other (please specify)" 14 "Undetermined/unknown" 2 "Stroke" 3 "Other CVD" 4 "Cancer" 5 "COPD (emphysema chronic bronchitis)" 6 "Alzheimer's disease/other dementia" 7 "Diabetes" 8 "Influenze or pneumonia" 9 "Kidney disease"
label values pl2c _mbHg8JPb2c

label variable pl2cother "Cause of death Other"

label variable pl3 "Is your biological father alive"
label define _x9OJddMBDB 0 "No" 1 "Yes" 7 "Prefer not to answer" 8 "Don't know"
label values pl3 _x9OJddMBDB

label variable pl3a "What is your father's age now"

label variable pl3b "How old was your father when he died"

label variable pl3c "Cause of death"
label define _yatPTvNDPv 1 "Myocardial infarction" 10 "Complications of fracture" 11 "Accident/trauma" 12 "Intentional self-harm (suicide)" 13 "Other (please specify)" 14 "Undetermined/unknown" 2 "Stroke" 3 "Other CVD" 4 "Cancer" 5 "COPD (emphysema chronic bronchitis)" 6 "Alzheimer's disease/other dementia" 7 "Diabetes" 8 "Influenze or pneumonia" 9 "Kidney disease"
label values pl3c _yatPTvNDPv

label variable pl3cother "Cause of death Other"

label variable pl4 "Is your adoptivel mother alive"
label define _HcnBVoCznd 0 "No" 1 "Yes" 7 "Prefer not to answer" 8 "Don't know"
label values pl4 _HcnBVoCznd

label variable pl4a "What is your mother's age now"

label variable pl4b "How old was your mother when she died"

label variable pl4c "Cause of death"
label define _b9NuAcOfeQ 1 "Myocardial infarction" 10 "Complications of fracture" 11 "Accident/trauma" 12 "Intentional self-harm (suicide)" 13 "Other (please specify)" 14 "Undetermined/unknown" 2 "Stroke" 3 "Other CVD" 4 "Cancer" 5 "COPD (emphysema chronic bronchitis)" 6 "Alzheimer's disease/other dementia" 7 "Diabetes" 8 "Influenze or pneumonia" 9 "Kidney disease"
label values pl4c _b9NuAcOfeQ

label variable pl4cother "Cause of death Other"

label variable pl5 "Is your adoptive father alive"
label define _peCyLbEqGz 0 "No" 1 "Yes" 7 "Prefer not to answer" 8 "Don't know"
label values pl5 _peCyLbEqGz

label variable pl5a "What is your father's age now"

label variable pl5b "How old was your father when he died"

label variable pl5c "Cause of death"
label define _QOgx7gHkrq 1 "Myocardial infarction" 10 "Complications of fracture" 11 "Accident/trauma" 12 "Intentional self-harm (suicide)" 13 "Other (please specify)" 14 "Undetermined/unknown" 2 "Stroke" 3 "Other CVD" 4 "Cancer" 5 "COPD (emphysema chronic bronchitis)" 6 "Alzheimer's disease/other dementia" 7 "Diabetes" 8 "Influenze or pneumonia" 9 "Kidney disease"
label values pl5c _QOgx7gHkrq

label variable pl5cother "Cause of death Other"

label variable crf_parent_name_parlon "CRF Parent Name"

label variable study_name_parlon "Study Name"

