clear
import delimited "../data-csv/BLSA_PWV_Sphygmocor.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_pwvsph "CRF Version"

label variable obsdate_pwvdate_pwvsph "Date Completed"

// Generate 'date version' of the 'obsdate_pwvdate_pwvsph' variable
gen _obsdate_pwvdate_pwvsph = date(obsdate_pwvdate_pwvsph, "YMD")
format _obsdate_pwvdate_pwvsph %td

label variable blank_pwvsph "Blank Form"

label variable pwvttrid_pwvsph "Tester ID"

label variable pwran_pwvsph "Randomization list"
label define _NPEcypgWnE 1 "Complior first SphygmoCor second" 2 "SphgmoCor first Complior second" 3 "Complior Only"
label values pwran_pwvsph _NPEcypgWnE

label variable pwv01_pwvsph "Was PWV performed"
label define _G7NsTCvWwF 0 "No" 1 "Yes"
label values pwv01_pwvsph _G7NsTCvWwF

label variable pwv01a_pwvsph "PWV reason not done"
label define _oXpvRLNMrv 0 "Other" 1 "Contraindication" 555 "Physical" 666 "Cognitive" 777 "Physical and Cognitive" 888 "Refused" 999 "Technical problems"
label values pwv01a_pwvsph _oXpvRLNMrv

label variable pwv01b_pwvsph "PWV Contraindications"
label define _y9wK6DaIMj 1 "TIA or CVA within past 6 months" 2 "Bilateral carotid bruits" 3 "Hardware on neck precluding access to carotid pulse"
label values pwv01b_pwvsph _y9wK6DaIMj

label variable pwv01c_pwvsph "PWV reason not done Other"

label variable agi01_pwvsph "Was AGI performed"
label define _enHHyugeF6 0 "No" 1 "Yes"
label values agi01_pwvsph _enHHyugeF6

label variable agi01a_pwvsph "AGI reason not done"
label define _tkxIrAybqD 0 "Other" 1 "Contraindication" 555 "Physical" 666 "Cognitive" 777 "Physical and Cognitive" 888 "Refused" 999 "Technical problems"
label values agi01a_pwvsph _tkxIrAybqD

label variable agi01b_pwvsph "AGI Contraindications"

label variable agi01c_pwvsph "AGI reason not done Other"

label variable abi01_pwvsph "Was ABI performed"
label define _dRBIokUZiY 0 "No" 1 "Yes both sides" 2 "Right only" 3 "Left only"
label values abi01_pwvsph _dRBIokUZiY

label variable abi01a_pwvsph "ABI reason not done"
label define _X1KaY5F0tR 0 "Other" 1 "Contraindication" 555 "Physical" 666 "Cognitive" 777 "Physical and Cognitive" 888 "Refused" 999 "Technical problems"
label values abi01a_pwvsph _X1KaY5F0tR

label variable abi01b_pwvsph "ABI reason not done Other"

label variable pwbp01_pwvsph "Blood pressure"
label define _HK8i93lnLR 0 "No" 1 "Yes"
label values pwbp01_pwvsph _HK8i93lnLR

label variable pwsbp_pwvsph "BP systolic"

label variable pwdbp_pwvsph "BP diastolic"

label variable pwmap_pwvsph "BP MAP"

label variable auto_id_pwvsph "Unique Teleform Number"

label variable crf_parent_name_pwvsph "CRF Parent Name"

label variable study_name_pwvsph "Study Name"

