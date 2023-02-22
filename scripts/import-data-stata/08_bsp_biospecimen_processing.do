clear
import delimited "../data-csv/08_bsp_biospecimen_processing.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable poc_sys "Analyzer System"
label define _poc_sys 1 "Alere Cholestech LDX (software version 3.41); Whole Blood - Heparin Additive"
label values poc_sys _poc_sys

label variable bsp_totchol_result "TC: Result"
label define _bsp_totchol_result 0 "Completed" 1 "1" 2 "< 100 mg/dL" 3 "> 500 mg/dL"
label values bsp_totchol_result _bsp_totchol_result

label variable bsp_totchol "TC: Total Cholesterol (mg/dL)"

label variable bsp_hdl_result "HDL: Result"
label define _bsp_hdl_result 0 "Completed" 1 "1" 2 "< 15 mg/dL" 3 "> 100 mg/dL"
label values bsp_hdl_result _bsp_hdl_result

label variable bsp_hdl "HDL: HDL Cholesterol Level (mg/dL)"

label variable bsp_trigs_result "TRG: Result"
label define _bsp_trigs_result 0 "Completed" 1 "1" 2 "< 45 mg/dL" 3 "> 650 mg/dL"
label values bsp_trigs_result _bsp_trigs_result

label variable bsp_trigs "TRG: Triglyceride Level (mg/dL)"

label variable bsp_ldl_result "LDL: Result"
label define _bsp_ldl_result 0 "Completed" 1 "1"
label values bsp_ldl_result _bsp_ldl_result

label variable bsp_ldl "LDL: LDL Cholesterol Level (mg/dL)"

label variable bsp_nonhdl_result "non-HDL: Result"
label define _bsp_nonhdl_result 0 "Completed" 1 "1"
label values bsp_nonhdl_result _bsp_nonhdl_result

label variable bsp_nonhdl "non-HDL: Non-HDL Cholesterol Level (mg/dL)"

label variable bsp_cholrat_result "TC/HDL: Result"
label define _bsp_cholrat_result 0 "Completed" 1 "1"
label values bsp_cholrat_result _bsp_cholrat_result

label variable bsp_cholrat "TC/HDL: Total Cholesterol to HDL Ratio"

label variable bsp_glucose_result "GLU: Result"
label define _bsp_glucose_result 0 "Completed" 1 "1" 2 "< 50 mg/dL" 3 "> 500 mg/dL"
label values bsp_glucose_result _bsp_glucose_result

label variable bsp_glucose "GLU: Plasma Glucose (mg/dL)"

