clear
import delimited "../data-csv/blsa_der_medications.csv", bindquote(strict)

label variable idno "BLSA ID"

label variable visit "Visit Number"

label variable antacidmed_file "Antacid Medication Brought to Clinic"
label define _kY1pOg4glD 0 "No" 1 "Yes"
label values antacidmed_file _kY1pOg4glD

label variable anticoagmed_file "Anticoagulant Medication Brought to Clinic"
label define _ecYakheKb8 0 "No" 1 "Yes"
label values anticoagmed_file _ecYakheKb8

label variable antihistaminemed_file "Antihistamine Medication Brought to Clinic"
label define _ZCAhDFGc9e 0 "No" 1 "Yes"
label values antihistaminemed_file _ZCAhDFGc9e

label variable antipsychoticmeds "Antipsychotic Medication Brought to Clinic"
label define _PXHu3ZRGcXdb 0 "No" 1 "Yes"
label values antipsychoticmeds _PXHu3ZRGcXdb

label variable antiviralabxmeds "Antivirals and Antibiotics Medication Brought to Clinic"
label define _XMXWVhk2NhPp 0 "No" 1 "Yes"
label values antiviralabxmeds _XMXWVhk2NhPp

label variable asthmameds_file "Asthma Medication Brought to Clinic"
label define _ItBFNyKb75rz 0 "No" 1 "Yes"
label values asthmameds_file _ItBFNyKb75rz

label variable cholesterolmeds_file "Cholesterol Medication Brought to Clinic"
label define _W8sc8dAv7tFV 0 "No" 1 "Yes"
label values cholesterolmeds_file _W8sc8dAv7tFV

label variable chfmeds_file "Congestive Heart Failure Medication Brought to Clinic"
label define _NeUdCqbcuS7p 0 "No" 1 "Yes"
label values chfmeds_file _NeUdCqbcuS7p

label variable cancermeds_file "Chemotherapy Medication Brought to Clinic"
label define _c0Mp7h51blOF 0 "No" 1 "Yes"
label values cancermeds_file _c0Mp7h51blOF

label variable copdmeds_file "Chronic Obstructive Pulmonary Disease Medication Brought to Clinic"
label define _ItTJ79C49dTB 0 "No" 1 "Yes"
label values copdmeds_file _ItTJ79C49dTB

label variable dementiameds_file "Dementia Medication Brought to Clinic"
label define _Ag1462HzJ8d8 0 "No" 1 "Yes"
label values dementiameds_file _Ag1462HzJ8d8

label variable depressionmeds_file "Depression Medication Brought to Clinic"
label define _a9Id9l3sf5X3 0 "No" 1 "Yes"
label values depressionmeds_file _a9Id9l3sf5X3

label variable diabetesmeds_file "Diabetes Medication Brought to Clinic"
label define _qy94Cy2sJ19C 0 "No" 1 "Yes"
label values diabetesmeds_file _qy94Cy2sJ19C

label variable gerdmeds_file "Gastro-Esophageal Reflux Medication Brought to Clinic"
label define _l84sTc2XurJY 0 "No" 1 "Yes"
label values gerdmeds_file _l84sTc2XurJY

label variable bpmeds_file "BP Medication Brought to Clinic"
label define _VTc3bJJEH7Cr 0 "No" 1 "Yes"
label values bpmeds_file _VTc3bJJEH7Cr

label variable laxativemeds_file "Laxatives Medication Brought to Clinic"
label define _FA9I8tPi162f 0 "No" 1 "Yes"
label values laxativemeds_file _FA9I8tPi162f

label variable aspirinmeds_file "Low Dose Aspirin Brought to Clinic"
label define _KkqjsNCHj9Ob 0 "No" 1 "Yes"
label values aspirinmeds_file _KkqjsNCHj9Ob

label variable edmeds_file "Male Impotence Medication Brought to Clinic"
label define _pA81v59J1816 0 "No" 1 "Yes"
label values edmeds_file _pA81v59J1816

label variable osteoporosismeds_file "Osteoporosis Medication Brought to Clinic"
label define _atSJK6MP9kCa 0 "No" 1 "Yes"
label values osteoporosismeds_file _atSJK6MP9kCa

label variable painmeds_file "Pain Medication Brought to Clinic"
label define _JTW9JlvPl39Q 0 "No" 1 "Yes"
label values painmeds_file _JTW9JlvPl39Q

label variable parkinsonmeds_file "Parkinson's Medication Brought to Clinic"
label define _dly7AqwyESqd 0 "No" 1 "Yes"
label values parkinsonmeds_file _dly7AqwyESqd

label variable sleepmeds_file "Sleep Medication Brought to Clinic"
label define _h6L5Gas5HH0u 0 "No" 1 "Yes"
label values sleepmeds_file _h6L5Gas5HH0u

label variable thyroidmeds_file "Thyroid Hormone Medication Brought to Clinic"
label define _lS6x8x1yvhP4 0 "No" 1 "Yes"
label values thyroidmeds_file _lS6x8x1yvhP4

label variable topicalmeds_file "Topical Medication Brought to Clinic"
label define _D6JlgQosooWr 0 "No" 1 "Yes"
label values topicalmeds_file _D6JlgQosooWr

label variable triglyceridemeds_file "Triglycerides Medication Brought to Clinic"
label define _zEJoc24TiftJ 0 "No" 1 "Yes"
label values triglyceridemeds_file _zEJoc24TiftJ

label variable vitaminmineralmeds_file "Vitamin or Mineral Medication Brought to Clinic"
label define _SIA3662tSkFI 0 "No" 1 "Yes"
label values vitaminmineralmeds_file _SIA3662tSkFI

label variable vitamindmeds_file "Vitamin D Medication Brought to Clinic"
label define _iErIa0t1G9lU 0 "No" 1 "Yes"
label values vitamindmeds_file _iErIa0t1G9lU

