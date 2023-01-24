clear
import delimited "../data-csv/BLSA_Consent_Participant.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_conpar "CRF Version"

label variable obsdate_consents "Date Completed"

// Generate 'date version' of the 'obsdate_consents' variable
gen _obsdate_consents = date(obsdate_consents, "YMD")
format _obsdate_consents %td

label variable entered_by "Staffmember entering this Consent"

label variable dna "MAYBE, I wish to be re-contacted if further studies with my samples are considered. After the study has been explained, I will then decide if I want my samples to be included."
label define _L3fJ1UHENv 0 "NO - I do NOT consent to the DNA collection." 1 "YES - I consent to the DNA collection."
label values dna _L3fJ1UHENv

label variable systemrecordid "ID from MySql Consents Table"

label variable future_studies2 "YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
label define _fMTwW7MJXr 0 "NO - Specimens and data may NOT be stored and used for future research studies." 1 "YES - Specimens and data may be stored and used for future research studies."
label values future_studies2 _fMTwW7MJXr

label variable future_studies_shared "YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
label define _F19igaXFGq 0 "NO - Specimens and data may NOT be shared with other researchers and used by these researchers for future research." 1 "YES - Specimens and data may be shared with other researchers and used by these researchers for future research."
label values future_studies_shared _F19igaXFGq

label variable crf_parent_name_conpar "CRF Parent Name"

label variable study_name_conpar "Study Name"

