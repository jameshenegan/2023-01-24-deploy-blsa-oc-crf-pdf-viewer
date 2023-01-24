clear
import delimited "../data-csv/BLSA_CT_Reader_Checklist_rev.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_ctreacherev "CRF Version"

label variable obsdate_ctdondt "Date CT done"

// Generate 'date version' of the 'obsdate_ctdondt' variable
gen _obsdate_ctdondt = date(obsdate_ctdondt, "YMD")
format _obsdate_ctdondt %td

label variable blank_ctreacherev "Blank Form"

label variable ctredid "Tester ID"

label variable ctred01 "CD received"
label define _SbepxVOWhS 0 "No" 1 "Yes"
label values ctred01 _SbepxVOWhS

label variable ctrecdt "Date CT received"

// Generate 'date version' of the 'ctrecdt' variable
gen _ctrecdt = date(ctrecdt, "YMD")
format _ctrecdt %td

label variable ctred02 "Are there duplicate images"
label define _gCCAe7TbsU 0 "No" 1 "Yes"
label values ctred02 _gCCAe7TbsU

label variable ctred02a "L1-L2 how many"

label variable ctred02b "L4-L5 how many"

label variable ctred02c "Thigh how many"

label variable ctred02d "Upper tibia how many"

label variable ctred02e "Lower tibia how many"

label variable ctred02f "Foot how many"

label variable ctred02g "Scout Film Torso how many"

label variable ctred02h "Scout Film - Legs how many"

label variable ctred03a "Image Missing"

label variable ctred03b "Hardware"

label variable ctred03c "Malalignment"

label variable ctred03d "Artifact"

label variable auto_id_ctreacherev "Unique Teleform Number"

label variable crf_parent_name_ctreacherev "CRF Parent Name"

label variable crf_status_ctreacherev "CRF Status"

label variable ctred03a_1 "Image Missing : L1-L2 (Checkbox Indicator)"

label variable ctred03a_2 "Image Missing : L4-L5 (Checkbox Indicator)"

label variable ctred03a_3 "Image Missing : Thigh (Checkbox Indicator)"

label variable ctred03a_4 "Image Missing : Upper Tibia (Checkbox Indicator)"

label variable ctred03a_5 "Image Missing : Lower Tibia (Checkbox Indicator)"

label variable ctred03a_6 "Image Missing : Foot (Checkbox Indicator)"

label variable ctred03b_1 "Hardware : L1-L2 (Checkbox Indicator)"

label variable ctred03b_2 "Hardware : L4-L5 (Checkbox Indicator)"

label variable ctred03b_3 "Hardware : Thigh (Checkbox Indicator)"

label variable ctred03b_4 "Hardware : Upper Tibia (Checkbox Indicator)"

label variable ctred03b_5 "Hardware : Lower Tibia (Checkbox Indicator)"

label variable ctred03b_6 "Hardware : Foot (Checkbox Indicator)"

label variable ctred03c_1 "Malalignment : L1-L2 (Checkbox Indicator)"

label variable ctred03c_2 "Malalignment : L4-L5 (Checkbox Indicator)"

label variable ctred03c_3 "Malalignment : Thigh (Checkbox Indicator)"

label variable ctred03c_4 "Malalignment : Upper Tibia (Checkbox Indicator)"

label variable ctred03c_5 "Malalignment : Lower Tibia (Checkbox Indicator)"

label variable ctred03c_6 "Malalignment : Foot (Checkbox Indicator)"

label variable ctred03d_1 "Artifact : L1-L2 (Checkbox Indicator)"

label variable ctred03d_2 "Artifact : L4-L5 (Checkbox Indicator)"

label variable ctred03d_3 "Artifact : Thigh (Checkbox Indicator)"

label variable ctred03d_4 "Artifact : Upper Tibia (Checkbox Indicator)"

label variable ctred03d_5 "Artifact : Lower Tibia (Checkbox Indicator)"

label variable study_name_ctreacherev "Study Name"

