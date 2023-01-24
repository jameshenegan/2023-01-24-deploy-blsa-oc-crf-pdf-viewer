clear
import delimited "../data-csv/BLSA_Aging_and_Skin_Inflammation.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_agiandskiinf "CRF Version"

label variable date_agiandskiinf "Date Completed"

// Generate 'date version' of the 'date_agiandskiinf' variable
gen _date_agiandskiinf = date(date_agiandskiinf, "YMD")
format _date_agiandskiinf %td

label variable rash6mo "Have you had an itchy rash that was coming and going for at least 6 months"
label define _JJ1CXVOq3I 0 "No" 1 "Yes"
label values rash6mo _JJ1CXVOq3I

label variable rash12mo "Have you had this itchy rash at any time in the past 12 months"
label define _Y6yMAH7dcf 0 "No" 1 "Yes"
label values rash12mo _Y6yMAH7dcf

label variable rashlocation "Has this rash affected the folds of the elbows behind knees front of ankles under buttocks or around neck ears or eyes"
label define _Uol2sPFCaZ 0 "No" 1 "Yes"
label values rashlocation _Uol2sPFCaZ

label variable eczemadx "Have you been diagnosed by a doctor with atopic dermatitis also known as eczema"
label define _u1QcWtRNpM 0 "No" 1 "Yes"
label values eczemadx _u1QcWtRNpM

label variable dryskinhx "Do you have a history of generally dry skin"
label define _A7VdBbYjlI 0 "No" 1 "Yes"
label values dryskinhx _A7VdBbYjlI

label variable usemoisturizer "Have you regularly used a skin moisturizer emollient over the past year"
label define _eRrl1How8C 0 "No" 1 "Yes"
label values usemoisturizer _eRrl1How8C

label variable sunexp1hr "Outdoors for about 1 hr at noon without sunscreen would skin become ink red irritated tender or itchy"
label define _GVEnOmW9Ht 0 "No" 1 "Yes"
label values sunexp1hr _GVEnOmW9Ht

label variable sunexp7days "Over the next 7 days, would you then develop a tan or notice your skin becoming darker"
label define _KVAIuP06lz 0 "No" 1 "Yes"
label values sunexp7days _KVAIuP06lz

label variable crf_parent_name_agiandskiinf "CRF Parent Name"

label variable study_name_agiandskiinf "Study Name"

