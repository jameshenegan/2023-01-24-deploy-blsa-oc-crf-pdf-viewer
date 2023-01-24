clear
import delimited "../data-csv/blsa_der_bloodpressure.csv", bindquote(strict)

label variable idno "BLSA ID"

label variable visit "Visit Number"

label variable hbp_hx "Self-Reported History of High Blood Pressure"
label define _T1Bz6sg27z89 0 "No" 1 "Yes"
label values hbp_hx _T1Bz6sg27z89

label variable bpmeds_self "Self-Reported BP Medication Use"
label define _Cgmbk1N20840 0 "No" 1 "Yes"
label values bpmeds_self _Cgmbk1N20840

label variable htn_self "Hypertension Status (using self-reported physician DX and BP medication use)"
label define _OcIpfrnx844v 0 "No" 1 "Yes"
label values htn_self _OcIpfrnx844v

label variable sbp "Systolic Blood Pressure (mmHg)"

label variable dbp "Diastolic Blood Pressure (mmHg)"

label variable bpjnc7 "JNC 7 BP Classification"
label define _oAIexwqPRo5Z 0 "Normal" 1 "Pre-HTN" 2 "Stage I HTN" 3 "Stage II HTN"
label values bpjnc7 _oAIexwqPRo5Z

label variable bpmeds_file "BP Medication Brought to Clinic"
label define _VTc3bJJEH7Cr 0 "No" 1 "Yes"
label values bpmeds_file _VTc3bJJEH7Cr

label variable bpmeds "BP Medication Use"
label define _iz0G40W46sG3 0 "Yes" 1 "Not Listed"
label values bpmeds _iz0G40W46sG3

label variable bp2cat "Elevated BP Classification"
label define _gqg3iEf7hfe9 0 "No" 1 "Yes"
label values bp2cat _gqg3iEf7hfe9

label variable htn "Hypertension Status"
label define _T9c22uO68nkA 0 "Non-Hypertensive" 1 "Hypertensive"
label values htn _T9c22uO68nkA

label variable abi "Ankle-Brachial Index"

label variable abi2cat "Peripheral Artery Disease ABI Classification"

label variable icrose "Classic Symptoms of Intermittent Claudication as Defined by Rose"
label define _SX1H4ZBV7Ly6 0 "Symptoms Absent" 1 "Symptoms Present"
label values icrose _SX1H4ZBV7Ly6

label variable pad "Peripheral Artery Disease"
label define _SMZCX0DsUp9q 0 "PAD Absent" 1 "PAD Present"
label values pad _SMZCX0DsUp9q

