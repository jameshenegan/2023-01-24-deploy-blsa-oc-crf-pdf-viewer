clear
import delimited "../data-csv/02_pif_participant_information_form.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable pif_ethnicity "Ethnicity"
label define _pif_ethnicity 1 "Hispanic or Latino" 2 "Not Hispanic or Latino" 888 "Don't Know" 999 "Refused"
label values pif_ethnicity _pif_ethnicity

label variable pif_race___1 "White / Caucasian Race Indicator"
label define _pif_race___1 0 "Not White / Caucasian" 1 "White / Caucasian"
label values pif_race___1 _pif_race___1

label variable pif_race___2 "Black / African American Race Indicator"
label define _pif_race___2 0 "Not Black / African American" 1 "Black / African American"
label values pif_race___2 _pif_race___2

label variable pif_race___3 "Asian Race Indicator"
label define _pif_race___3 0 "Not Asian" 1 "Asian"
label values pif_race___3 _pif_race___3

label variable pif_race___4 "American Indian or Alaskan Native Race Indicator"
label define _pif_race___4 0 "Not American Indian or Alaskan Native" 1 "American Indian or Alaskan Native"
label values pif_race___4 _pif_race___4

label variable pif_race___5 "Native Hawaiian or Other Pacific Islander Race Indicator"
label define _pif_race___5 0 "Not Native Hawaiian or Other Pacific Islander" 1 "Native Hawaiian or Other Pacific Islander"
label values pif_race___5 _pif_race___5

label variable pif_race___6 "Other Race Indicator"
label define _pif_race___6 0 "Not Other Race" 1 "Other Race"
label values pif_race___6 _pif_race___6

label variable pif_race_details "Other Race Details"

label variable pif_age "Current Age (years)"

