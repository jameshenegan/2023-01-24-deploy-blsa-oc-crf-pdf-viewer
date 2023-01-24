clear
import delimited "../data-csv/BLSA_Capacity_Assessment.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_capass "CRF Version"

label variable date_capass "Date"

// Generate 'date version' of the 'date_capass' variable
gen _date_capass = date(date_capass, "YMD")
format _date_capass %td

label variable testerid_capass "Tester ID"

label variable q1purpose "What is the purpose of this research"

label variable q1comments "Purpose Raters comments"

label variable q1rating "Purpose Raters Rating"
label define _Fpe1h943tm 1 "1. Able to give informed consent at this time" 2 "2. Unable to give informed consent at this time" 3 "3. Questionable (unsure) ability to give informed consent at this time"
label values q1rating _Fpe1h943tm

label variable q2nametests "Can you name 3 tests that you performed at your last visit"

label variable q2comments "Name tests comment"

label variable q2rating "Name tests Raters Rating"
label define _HTQPr5CPJh 1 "1. Able to give informed consent at this time" 2 "2. Unable to give informed consent at this time" 3 "3. Questionable (unsure) ability to give informed consent at this time"
label values q2rating _HTQPr5CPJh

label variable q3riskfactors "Based on your answer above can you name a risk factor for one of those tests"

label variable q3comments "Risk factor comment"

label variable crf_parent_name_capass "CRF Parent Name"

label variable study_name_capass "Study Name"

