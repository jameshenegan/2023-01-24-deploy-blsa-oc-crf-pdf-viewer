clear
import delimited "../data-csv/BLSA_Muscle_Biopsy.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_musbio "CRF Version"

label variable obsdate_datecompleted_musbio "Date Completed"

label variable mubdate "Date Completed"

// Generate 'date version' of the 'mubdate' variable
gen _mubdate = date(mubdate, "YMD")
format _mubdate %td

label variable blank_musbio "Blank Form"

label variable mubtid "Tester ID"

label variable mub0a "Muscle Biopsy consent reviewed"
label define _vG491V8oVB 0 "No" 1 "Yes"
label values mub0a _vG491V8oVB

label variable mub0b "Eligibility criteria reviewed"
label define _MRHb6qvwVT 0 "No" 1 "Yes"
label values mub0b _MRHb6qvwVT

label variable mub1a "Pre procedure body temperature"

label variable mub1c "Pre procedure pulse"

label variable mub1b "Pre procedure respirations"

label variable mub1d "Pre procedure BP systolic"

label variable mub1e "Pre procedure BP diastolic"

label variable mub2a "Brief History and Physical performed by MD NP"
label define _V820tX89Km 0 "No" 1 "Yes"
label values mub2a _V820tX89Km

label variable mubt1 "Anesthesia start time"

label variable mubt2 "First biopsy needle inserted"

label variable mubt3 "Leg pressure start"

label variable mubt4 "Leg pressure stop"

label variable muba "Total amount of Anesthesia given"

label variable mubi "Incision closed"
label define _Q7TecSiy3k 1 "Steri Strips" 2 "Self Absorbing Sutures"
label values mubi _Q7TecSiy3k

label variable mub2d "Biopsy tester ID"

label variable mub2b "Biopsy performed"
label define _rqIg8uC533 0 "No" 1 "Yes"
label values mub2b _rqIg8uC533

label variable mub2c "Biopsy comment"

label variable mub2e "Dressing applied"
label define _TxiJSQ6aTt 0 "No" 1 "Yes"
label values mub2e _TxiJSQ6aTt

label variable mub2f "Dressing comment"

label variable mub3b "Post procedure pulse"

label variable mub3a "Post respirations"

label variable mub3c "Post procedure BP systolic"

label variable mub3d "Post procedure BP diastolic"

label variable mub3e "Post procedure instructions reviewed"
label define _HKyN24RG2g 0 "No" 1 "Yes"
label values mub3e _HKyN24RG2g

label variable mub4p1 "Tissue pass 1"

label variable mub4p2 "Tissue pass 2"

label variable mub4p3 "Tissue pass 3"

label variable mub4pt "Tissue Total"

label variable mub4a "Oroboros respirometry"
label define _PVuFGqfznK 0 "Quantity not sufficient" 1 "Sample Collected"
label values mub4a _PVuFGqfznK

label variable mub4b "Oroboros respirometry sample wt"

label variable mub5a "Extra tissue Cardiolipin"
label define _Sn6IWJ2Q4L 0 "Quantity not sufficient" 1 "Sample Collected"
label values mub5a _Sn6IWJ2Q4L

label variable mub5b "Extra tissue Cardiolipin sample wt"

label variable mub6a "Electron Microscopy"
label define _YUBccdz8zN 0 "Quantity not sufficient" 1 "Sample Collected"
label values mub6a _YUBccdz8zN

label variable mub6b "Electron Microscopy sample wt"

label variable mub7a "2D-PAGE & Complex I activity"
label define _QNIX4t7Bjn 0 "Quantity not sufficient" 1 "Sample Collected"
label values mub7a _QNIX4t7Bjn

label variable mub7b "2D-PAGE & Complex I activity sample wt"

label variable mub8a "Cardiolipin 2"
label define _OxPvGG6yjY 0 "Quantity not sufficient" 1 "Sample Collected"
label values mub8a _OxPvGG6yjY

label variable mub8b "Cardiolipin 2 sample wt"

label variable mub9a "Confocal sample 1"
label define _WRIJtLuH2o 0 "Quantity not sufficient" 1 "Sample Collected"
label values mub9a _WRIJtLuH2o

label variable mub9b "Confocal sample 1 wt"

label variable mub10a "Confocal sample 2"
label define _cL9fOBrBrY 0 "Quantity not sufficient" 1 "Sample Collected"
label values mub10a _cL9fOBrBrY

label variable mub10b "Confocal sample 2 wt"

label variable mub11a "Confocal sample 3"
label define _WyVuGaBMrt 0 "Quantity not sufficient" 1 "Sample Collected"
label values mub11a _WyVuGaBMrt

label variable mub11b "Confocal sample 3 wt"

label variable mub12b "Confocal total wt"

label variable mub13a "RNA microarray mtDNA n DNA"
label define _jXt7LBgcN0 0 "Quantity not sufficient" 1 "Sample Collected"
label values mub13a _jXt7LBgcN0

label variable mub13b "RNA microarray mtDNA n DNA sample wt"

label variable mub14a "SubQ"
label define _liwyiPYQTl 0 "Quantity not sufficient" 1 "Sample Collected"
label values mub14a _liwyiPYQTl

label variable mub14b "SubQ sample wt"

label variable testerid_musbio "Tester ID"

label variable provideinformedconsent_musbio "Able to provide informed consent"

label variable nohxbleedingdisorder_musbio "Does not have history of bleeding disorder"

label variable nomedsthatincrbleeding "Does not take medications that will increase bleeding"

label variable nonsaids4dbefore3dafter "Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"

label variable lessthan81mgaspirinday "Does not take more than 81 mg Aspirin a day"

label variable notallergiclocanesth "Is not allergic to Lidocaine or other local anesthetic"

label variable noinfectionaroundbxsite "Has no active infection or chronic skin condition around biopsy site"

label variable notpregnant_musbio "Is not pregnant"

label variable eligibility_musbio "Eligibility"

label variable tester_musbio "Tester"

label variable auto_id_musbio "Unique Teleform Number"

label variable crf_parent_name_musbio "CRF Parent Name"

label variable study_name_musbio "Study Name"

