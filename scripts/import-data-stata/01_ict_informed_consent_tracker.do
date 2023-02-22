clear
import delimited "../data-csv/01_ict_informed_consent_tracker.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable ict_visit_date "Visit Date"

label variable ict_mri "I agree to answer questions to determine my MRI eligibility."
label define _ict_mri 1 "I agree" 0 "I do not agree"
label values ict_mri _ict_mri

label variable ict_ancillaries "The Study of Aging may contact me about additional studies that I may be interested in."
label define _ict_ancillaries 1 "I agree" 0 "I do not agree"
label values ict_ancillaries _ict_ancillaries

label variable ict_commercial "Commercial or for-profit companies that are not part of the Study of Aging may use my genetic and non-genetic data, blood, cells, and urine samples in research that may benefit people."
label define _ict_commercial 1 "I agree" 0 "I do not agree"
label values ict_commercial _ict_commercial

label variable ict_strikethrough "Were any additional items marked out?"
label define _ict_strikethrough 0 "No" 1 "Yes"
label values ict_strikethrough _ict_strikethrough

label variable ict_blooddraw "Participant crossed out blood draws"
label define _ict_blooddraw 0 "No" 1 "Yes"
label values ict_blooddraw _ict_blooddraw

label variable ict_genetics "Participant crossed out genetics"
label define _ict_genetics 0 "No" 1 "Yes"
label values ict_genetics _ict_genetics

label variable ict_ehr "Participant crossed out access to medical records"
label define _ict_ehr 0 "No" 1 "Yes"
label values ict_ehr _ict_ehr

label variable ict_hardcopy "Upload copy of the signed consent form"

