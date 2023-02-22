clear
import delimited "../data-csv/21_sei_social_economic_information.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable sei_marital_status "What is your current marital status?"
label define _sei_marital_status 1 "Married" 2 "Living with a Partner" 3 "Separated" 4 "Divorced" 5 "Widowed" 6 "Never Married" 999 "Refused"
label values sei_marital_status _sei_marital_status

label variable sei_usa_born "Were you born in the United States?"
label define _sei_usa_born 1 "Yes" 0 "No" 888 "Don't know" 999 "Refused"
label values sei_usa_born _sei_usa_born

label variable sei_ms_born "What state were you born in?"
label define _sei_ms_born 1 "Mississippi (MS)" 2 "Alabama (AL)" 3 "Alaska (AK)" 4 "Arizona (AZ)" 5 "Arkansas (AR)" 6 "California (CA)" 7 "Colorado (CO)" 8 "Connecticut (CT)" 9 "Delaware (DE)" 10 "Florida (FL)" 11 "Georgia (GA)" 12 "Hawaii (HI)" 13 "Idaho (ID)" 14 "Illinois (IL)" 15 "Indiana (IN)" 16 "Iowa (IA)" 17 "Kansas (KS)" 18 "Kentucky (KY)" 19 "Louisiana (LA)" 20 "Maine (ME)" 21 "Maryland (MD)" 22 "Massachusetts (MA)" 23 "Michigan (MI)" 24 "Minnesota (MN)" 25 "Missouri (MO)" 26 "Montana (MT)" 27 "Nebraska (NE)" 28 "Nevada (NV)" 29 "New Hampshire (NH)" 30 "New Jersey (NJ)" 31 "New Mexico (NM)" 32 "New York (NY)" 33 "North Carolina (NC)" 34 "North Dakota (ND)" 35 "Ohio (OH)" 36 "Oklahoma (OK)" 37 "Oregon (OR)" 38 "Pennsylvania (PA)" 39 "Rhode Island (RI)" 40 "South Carolina (SC)" 41 "South Dakota (SD)" 42 "Tennessee (TN)" 43 "Texas (TX)" 44 "Utah (UT)" 45 "Vermont (VT)" 46 "Virginia (VA)" 47 "Washington (WA)" 48 "West Virginia (WV)" 49 "Wisconsin (WI)" 50 "Wyoming (WY)"
label values sei_ms_born _sei_ms_born

label variable sei_usa_born_other "Where were you born?"

label variable sei_english "Is English your first language?"
label define _sei_english 1 "Yes" 0 "No" 888 "Don't know" 999 "Refused"
label values sei_english _sei_english

label variable sei_english_other "What is your first language?"

label variable sei_household_size "In addition to yourself, how many other people currently live in your household?"
label define _sei_household_size 0 "Lives Alone" 1 "1 Other" 2 "2 Others" 3 "3 or More" 888 "Don't know" 999 "Refused"
label values sei_household_size _sei_household_size

label variable sei_housing_type "In what type of housing do you live?"
label define _sei_housing_type 1 "Single Family Home" 2 "Apartment or Condo" 3 "Continuing Care Community" 4 "Assisted Living" 888 "Don't know" 999 "Refused"
label values sei_housing_type _sei_housing_type

label variable sei_housing_owner "Which of the following best describes your house, apartment, or dwelling?"
label define _sei_housing_owner 1 "Owned by you or someone in the household free and clear-without a mortgage or loan" 2 "Owned by you or someone in the household-with a mortgage or loan" 3 "Rented" 4 "Occupied Without Payment" 888 "Don't know" 999 "Refused"
label values sei_housing_owner _sei_housing_owner

label variable sei_residence_dur "How many total years have you lived in Hinds/Madison/Rankin county? (probe for an integer number of years)"

label variable sei_education "What is the highest grade in school that you completed?"
label define _sei_education 0 "No Formal Schooling" 15 "Less than 1 year college" 3 "Elementary (1-6)" 16 "1 year college" 7 "Middle (7-8)" 17 "2 years college / Associate's Degree" 9 "9" 18 "3 years college" 10 "10" 19 "4 years college / Bachelor's Degree" 11 "11" 20 "Master's degree" 12 "12" 21 "Doctoral degree" 13 "GED (HS equivalent)" 22 "Multiple Graduate Degrees" 14 "Vocational Training" 888 "Don't know" 999 "Refused"
label values sei_education _sei_education

label variable sei_moved_pre12 "How many times did your family move before you were 12 years old? (or through the 6th grade)"
label define _sei_moved_pre12 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+" 888 "Don't Know" 999 "Refused"
label values sei_moved_pre12 _sei_moved_pre12

label variable sei_income_sources___1 "(A) Full Time Employment Income (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___2 "(B) Part Time Employment Income (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___3 "(C) Pension Income (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___4 "(D) Social Security Income (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___5 "(E) Retirement Investment Income (401k (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___6 "(F) Worker's Compensation (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___7 "(G) Unemployment Compensation (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___8 "(H) Income Assistance Programs (TANF (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___9 "(I) Nutrition Assistance Programs (SNAP (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___10 "(J) Supplemental Security Income (SSI) (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___11 "(K) Supplemental Disability Income (SDI) (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___12 "(L) Investment Income (stocks (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___13 "(M) Gambling Income (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___14 "(N) Other {sei_income_sources_other} (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___15 "(O) None (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___888 "Don't Know (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources___999 "Refused (In the past 12 months, did you or anyone living in your household receive any of the following? Please tell me letters only.)"

label variable sei_income_sources_other "Details: Other income"

label variable sei_income "Which of these income groups represents your total combined family income for the past 12 months? Please tell me the letter only. (include income from all sources such as wages, salaries, social security or retirement benefits, help from relatives, rent from property, and so forth.)"
label define _sei_income 1 "(A) Under $5" 2 "(B) $5" 3 "(C) $8" 4 "(D) $12" 5 "(E) $16" 6 "(F) $25" 7 "(G) $50" 8 "(H) $75" 9 "(I) $100" 888 "Don't Know" 999 "Refused"
label values sei_income _sei_income

label variable sei_income_sufficient "How well does your family income take care of your (and your family's) needs?"
label define _sei_income_sufficient 2 "Very Well" 1 "Fairly Well" 0 "Poorly" 888 "Don't know" 999 "Refused"
label values sei_income_sufficient _sei_income_sufficient

label variable sei_vehicles "How many vehicles do you own? (including any that you own, are paying for, or are leasing)"
label define _sei_vehicles 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+" 888 "Don't know" 999 "Refused"
label values sei_vehicles _sei_vehicles

label variable sei_retired "Are you retired?"
label define _sei_retired 1 "Yes" 0 "No" 999 "Refused"
label values sei_retired _sei_retired

label variable sei_current_job "What is your current (most recent) job title?"

label variable sei_retire_yr "What year did you retire?"

label variable sei_primary_job "What was your primary occupation title during most of your adult life?"

label variable sei_spouse_job "Has your spouse/partner ever worked for pay?"
label define _sei_spouse_job 1 "Yes" 2 "Yes" 0 "No" 888 "Don't Know" 999 "Refused"
label values sei_spouse_job _sei_spouse_job

