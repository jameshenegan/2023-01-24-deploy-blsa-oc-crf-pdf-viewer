clear
import delimited "../data-csv/24_hcu_health_care_use.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable hcu_routine_exam "How often do you have a routine medical examination? (not for a particular illness, but just for a general checkup)"
label define _hcu_routine_exam 1 "At least annually" 2 "At least every 2 years" 3 "At least every 5 years" 4 "More than 5 years apart" 5 "Does not get routine exams" 888 "Don't know" 999 "Refused"
label values hcu_routine_exam _hcu_routine_exam

label variable hcu_encounter_last "When was the last time you went to a routine medical examination?"
label define _hcu_encounter_last 1 "Within the past year" 2 "At least 1 year ago but less than 2 years ago" 3 "At least 2 years ago but less than 4 years ago" 4 "5 or more years ago" 5 "Never"
label values hcu_encounter_last _hcu_encounter_last

label variable hcu_encounter_ct "During the last 12 months, how many times did you see a health care provider?"

label variable hcu_courtesy "did Office staff treat you with courtesy and respect?"
label define _hcu_courtesy 1 "Never" 2 "Sometimes" 3 "Usually" 4 "Always"
label values hcu_courtesy _hcu_courtesy

label variable hcu_helpful "did Office staff be as helpful as you thought they should be?"
label define _hcu_helpful 1 "Never" 2 "Sometimes" 3 "Usually" 4 "Always"
label values hcu_helpful _hcu_helpful

label variable hcu_listen "did Doctors or other healthcare providers listen carefully to you?"
label define _hcu_listen 1 "Never" 2 "Sometimes" 3 "Usually" 4 "Always"
label values hcu_listen _hcu_listen

label variable hcu_explain "did Doctors or other healthcare providers explain things in a way you could understand?"
label define _hcu_explain 1 "Never" 2 "Sometimes" 3 "Usually" 4 "Always"
label values hcu_explain _hcu_explain

label variable hcu_respect "did Doctors or other healthcare providers show respect for what you had to say?"
label define _hcu_respect 1 "Never" 2 "Sometimes" 3 "Usually" 4 "Always"
label values hcu_respect _hcu_respect

label variable hcu_time "did Doctors or other healthcare providers spend enough time with you?"
label define _hcu_time 1 "Never" 2 "Sometimes" 3 "Usually" 4 "Always"
label values hcu_time _hcu_time

label variable hcu_comm "did you have a hard time understanding what a doctor or other health care provider was trying to tell you?"
label define _hcu_comm 1 "Never" 2 "Sometimes" 3 "Usually" 4 "Always"
label values hcu_comm _hcu_comm

label variable hcu_acute_care "In the last 12 months, how difficult was it to get to appointments with your health care provider on short notice, for example, within one or two days?"
label define _hcu_acute_care 1 "Very difficult" 2 "Somewhat difficult" 3 "Not too difficult" 4 "Not at all difficult"
label values hcu_acute_care _hcu_acute_care

label variable hcu_unavailable "Was there a time in the past 12 months when you needed health care but could not get it?"
label define _hcu_unavailable 0 "No" 1 "Yes" 888 "Don't Know" 999 "Refused"
label values hcu_unavailable _hcu_unavailable

label variable hcu_nohc___1 "Couldn't get through on the telephone (What reason(s) did you not get health care in the past 12 months when you needed it?)"

label variable hcu_nohc___2 "Couldn't get an appointment soon enough (What reason(s) did you not get health care in the past 12 months when you needed it?)"

label variable hcu_nohc___3 "Once you got there (What reason(s) did you not get health care in the past 12 months when you needed it?)"

label variable hcu_nohc___4 "The clinic wasn't open when you could get there (What reason(s) did you not get health care in the past 12 months when you needed it?)"

label variable hcu_nohc___5 "Didn't have transportation (What reason(s) did you not get health care in the past 12 months when you needed it?)"

label variable hcu_nohc___6 "Couldn't take time off work (What reason(s) did you not get health care in the past 12 months when you needed it?)"

label variable hcu_nohc___7 "Taking care of someone and could not leave them alone (What reason(s) did you not get health care in the past 12 months when you needed it?)"

label variable hcu_nohc___8 "Couldn't afford it (What reason(s) did you not get health care in the past 12 months when you needed it?)"

label variable hcu_nohc___9 "Other {hcu_nohc_other} (What reason(s) did you not get health care in the past 12 months when you needed it?)"

label variable hcu_nohc_cost___1 "prescription medications (Details: Cost-related reason(s))"

label variable hcu_nohc_cost___2 "doctor visit (Details: Cost-related reason(s))"

label variable hcu_nohc_cost___3 "mental health care or counseling (Details: Cost-related reason(s))"

label variable hcu_nohc_cost___4 "dental care (Details: Cost-related reason(s))"

label variable hcu_nohc_cost___5 "eyeglasses (Details: Cost-related reason(s))"

label variable hcu_nohc_other "Details: Other reason(s) did you not get health care in the past 12 months when you needed it"

label variable hcu_insurance___0 "None (What type of health insurance do you currently have?)"

label variable hcu_insurance___1 "Coverage provided through a current or former employer or labor union (excluding military coverage) (What type of health insurance do you currently have?)"

label variable hcu_insurance___2 "Coverage through an individual plan/self-insurance (What type of health insurance do you currently have?)"

label variable hcu_insurance___3 "Coverage through Medicaid (What type of health insurance do you currently have?)"

label variable hcu_insurance___4 "Coverage through Medicare (What type of health insurance do you currently have?)"

label variable hcu_insurance___5 "Coverage provided through the Military (e.g. (What type of health insurance do you currently have?)"

label variable hcu_insurance___6 "Coverage through the Indian Health Services (What type of health insurance do you currently have?)"

label variable hcu_insurance___7 "Medicare Advantage Plan (What type of health insurance do you currently have?)"

label variable hcu_insurance___8 "Other {hcu_insurance_other} (What type of health insurance do you currently have?)"

label variable hcu_insurance___888 "Don't Know (What type of health insurance do you currently have?)"

label variable hcu_insurance___999 "Refused (What type of health insurance do you currently have?)"

label variable hcu_medicare_coverage "What type of Medicare coverage do you have?"
label define _hcu_medicare_coverage 1 "Part A and B Only" 2 "Medicare + Choice" 3 "Part A Only" 888 "Don't Know" 999 "Refused"
label values hcu_medicare_coverage _hcu_medicare_coverage

label variable hcu_medigap "Do you have a MediGap plan (purchased through Medicare)?"
label define _hcu_medigap 1 "Yes" 0 "No" 888 "Don't  Know" 999 "Refused"
label values hcu_medigap _hcu_medigap

label variable hcu_insurance_other "Details: Other type of current health insurance"

label variable hcu_coverage_gap_dur "About how long has it been since you last had health insurance coverage"
label define _hcu_coverage_gap_dur 1 "6 months or less" 2 "More than 6 months but not more than 1 year ago" 3 "More than 1 year but not more than 3 years ago" 4 "More than 3 years" 5 "Never had insurance"
label values hcu_coverage_gap_dur _hcu_coverage_gap_dur

label variable hcu_coverage_gap_reason___1 "Person in family with insurance lost job or changed employers (Why did you stop being covered by health insurance?)"

label variable hcu_coverage_gap_reason___2 "Got divorced or separated/death of spouse (Why did you stop being covered by health insurance?)"

label variable hcu_coverage_gap_reason___3 "Employer doesn't offer coverage or not eligible for coverage (Why did you stop being covered by health insurance?)"

label variable hcu_coverage_gap_reason___4 "Cost is too high; insurance company refused coverage (Why did you stop being covered by health insurance?)"

label variable hcu_coverage_gap_reason___5 "Lost Medicaid/insurance because of new job/increase in income (Why did you stop being covered by health insurance?)"

label variable hcu_coverage_gap_reason___6 "Lost Medicaid (other reason not listed above) (Why did you stop being covered by health insurance?)"

label variable hcu_coverage_gap_reason___7 "Other {hcu_coverage_gap_other} (Why did you stop being covered by health insurance?)"

label variable hcu_coverage_gap_reason___888 "Don't know (Why did you stop being covered by health insurance?)"

label variable hcu_coverage_gap_reason___999 "Refused (Why did you stop being covered by health insurance?)"

label variable hcu_coverage_gap_other "Details: Other reason for stopping health insurance coverage"

label variable hcu_primary_yn "Is there a particular medical person or clinic you usually go to when you are sick or for advice about your health?"
label define _hcu_primary_yn 1 "Yes" 0 "No" 888 "Don't Know"
label values hcu_primary_yn _hcu_primary_yn

label variable hcu_noprimary "Is the reason why you don't see a particular healthcare provider because:"
label define _hcu_noprimary 1 "you have lots of health problems and see many providers" 2 "you don't use health care services much" 3 "you don't have a regular provider" 4 "other {hcu_noprimary_details}"
label values hcu_noprimary _hcu_noprimary

label variable hcu_noprimary_details "Details: Reasons for no primary provider"

label variable hcu_primary_provider_loc "What kind of place or provider do you go to most often?"
label define _hcu_primary_provider_loc 1 "Nurse Practitioner" 2 "Primary Care Physician" 3 "Specialist for medical problem" 4 "Health center/ambulatory care center/outpatient hospital with wide range of providers" 5 "Hospital emergency room" 6 "Physician's assistant" 7 "Federal qualified health care"
label values hcu_primary_provider_loc _hcu_primary_provider_loc

label variable hcu_primary_provider_trans "How do you usually get to your provider?"
label define _hcu_primary_provider_trans 1 "Walking" 2 "Driving myself" 3 "Being driven by family/friend" 4 "Bus or other public transportation" 5 "Taxi" 6 "Health care provider usually comes to home" 7 "Senior citizen van/bus" 8 "Ambulance" 9 "Other {hcu_primary_provider_trans_other}"
label values hcu_primary_provider_trans _hcu_primary_provider_trans

label variable hcu_primary_provider_trans_other "Details: Other transportation method used to get to your provider"

label variable hcu_afterhours "Does your usual health care provider have office hours at night or on weekends?"

