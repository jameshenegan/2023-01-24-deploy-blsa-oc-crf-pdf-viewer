clear
import delimited "../data-csv/BLSA_Skin_Biopsy_Eligibility.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_skibioeli "CRF Version"

label variable obsdate_datecompleted_skibioeli "Date Completed"

// Generate 'date version' of the 'obsdate_datecompleted_skibioeli' variable
gen _obsdate_datecompleted_skibioeli = date(obsdate_datecompleted_skibioeli, "YMD")
format _obsdate_datecompleted_skibioeli %td

label variable blank_skibioeli "Blank Form"

label variable testerid_skibioeli "Tester ID"

label variable provideinformedconsent_skibioeli "Able to provide informed consent"
label define _T7LpgXTCdo 0 "No" 1 "Yes"
label values provideinformedconsent_skibioeli _T7LpgXTCdo

label variable nohxbleedingdisorder_skibioeli "Does not have history of bleeding disorder"
label define _AzN033Akcx 0 "No" 1 "Yes"
label values nohxbleedingdisorder_skibioeli _AzN033Akcx

label variable nomedsincrbleeding_skibioeli "Does not take medications that will increase bleeding"
label define _DHAVy8Whp6 0 "No" 1 "Yes"
label values nomedsincrbleeding_skibioeli _DHAVy8Whp6

label variable nonsaids_skibioeli "Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
label define _MSu9BJAxJi 0 "No" 1 "Yes"
label values nonsaids_skibioeli _MSu9BJAxJi

label variable lessth81mgaspirin_skibioeli "Does not take more than 81 mg Aspirin a day"
label define _S9ff5Ghr2s 0 "No" 1 "Yes"
label values lessth81mgaspirin_skibioeli _S9ff5Ghr2s

label variable noallergylocalanesthetic "Is not allergic to Lidocaine or other local anesthetic"
label define _Jg7DvHznem 0 "No" 1 "Yes"
label values noallergylocalanesthetic _Jg7DvHznem

label variable noinfectionskincond_skibioeli "Has no active infection or chronic skin condition around biopsy site"
label define _YGQOePzo0j 0 "No" 1 "Yes"
label values noinfectionskincond_skibioeli _YGQOePzo0j

label variable notpregnant_skibioeli "Is not pregnant"
label define _J8UlZvkkZu 0 "No" 1 "Yes"
label values notpregnant_skibioeli _J8UlZvkkZu

label variable eligibility_skibioeli "Eligibility"
label define _LzqvUnDFUM 0 "No" 1 "Yes"
label values eligibility_skibioeli _LzqvUnDFUM

label variable tester_skibioeli "Tester"

label variable crf_parent_name_skibioeli "CRF Parent Name"

label variable study_name_skibioeli "Study Name"

