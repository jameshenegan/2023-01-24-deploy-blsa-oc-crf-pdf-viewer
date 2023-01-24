clear
import delimited "../data-csv/BLSA_Pulse_Wave_Velocity.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_pulwavvel "CRF Version"

label variable obsdate_pwvdate_pulwavvel "Date Completed"

// Generate 'date version' of the 'obsdate_pwvdate_pulwavvel' variable
gen _obsdate_pwvdate_pulwavvel = date(obsdate_pwvdate_pulwavvel, "YMD")
format _obsdate_pwvdate_pulwavvel %td

label variable blank_pulwavvel "Blank Form"

label variable pwvttrid_pulwavvel "Tester ID"

label variable pwv01_pulwavvel "Was PWV performed"
label define _KsdwRynw3b 0 "No" 1 "Yes"
label values pwv01_pulwavvel _KsdwRynw3b

label variable pwv01a_pulwavvel "PWV reason not done"
label define _BvnElijVWp 000 "Other" 1 "Contraindication" 555 "Physical" 666 "Cognitive" 777 "Physical and Cognitive" 888 "Refused" 999 "Technical problems"
label values pwv01a_pulwavvel _BvnElijVWp

label variable pwv01b_pulwavvel "PWV Contraindications"
label define _murtXpYfaM 1 "TIA or CVA within past 6 months" 2 "Bilateral carotid bruits" 3 "Hardware on neck precluding access to carotid pulse"
label values pwv01b_pulwavvel _murtXpYfaM

label variable pwv01c_pulwavvel "PWV reason not done Other"

label variable agi01_pulwavvel "Was AGI performed"
label define _v6Zt7EC36w 0 "No" 1 "Yes"
label values agi01_pulwavvel _v6Zt7EC36w

label variable agi01a_pulwavvel "AGI reason not done"
label define _IEUXhQJi7k 000 "Other" 1 "Contraindication" 555 "Physical" 666 "Cognitive" 777 "Physical and Cognitive" 888 "Refused" 999 "Technical problems"
label values agi01a_pulwavvel _IEUXhQJi7k

label variable agi01b_pulwavvel "AGI Contraindications"
label define _KYUdmJmBpJ 1 "TIA or CVA within past 6 months" 2 "Bilateral carotid bruits" 3 "Hardware on neck precluding access to carotid pulse"
label values agi01b_pulwavvel _KYUdmJmBpJ

label variable agi01c_pulwavvel "AGI reason not done Other"

label variable abi01_pulwavvel "Was ABI performed"
label define _cUp98vyY9z 0 "No" 1 "Yes both sides" 2 "Right only" 3 "Left only"
label values abi01_pulwavvel _cUp98vyY9z

label variable abi01a_pulwavvel "ABI reason not done"
label define _bPUcgLb7Br 000 "Other" 1 "Contraindication" 555 "Physical" 666 "Cognitive" 777 "Physical and Cognitive" 888 "Refused" 999 "Technical problems"
label values abi01a_pulwavvel _bPUcgLb7Br

label variable abi01b_pulwavvel "ABI reason not done Other"

label variable pwbp01_pulwavvel "Blood pressure"
label define _OMQRrE1LpJ 0 "No" 1 "Yes"
label values pwbp01_pulwavvel _OMQRrE1LpJ

label variable pwsbp_pulwavvel "BP systolic"

label variable pwdbp_pulwavvel "BP diastolic"

label variable pwmap_pulwavvel "BP MAP"

label variable vaseracolin "Was Vasera and Colin comparison study performed"
label define _bkGpyUZmcX 0 "No" 1 "Yes"
label values vaseracolin _bkGpyUZmcX

label variable pwran_pulwavvel "Randomization list"
label define _OVujgcyPPH 1 "Complior first SphygmoCor second" 2 "SphgmoCor first Complior second" 3 "Complior Only"
label values pwran_pulwavvel _OVujgcyPPH

label variable auto_id_pulwavvel "Unique Teleform Number"

label variable crf_parent_name_pulwavvel "CRF Parent Name"

label variable study_name_pulwavvel "Study Name"

