clear
import delimited "../data-csv/25_spf_subjective_physical_function.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable spf_wlk_qrtmi "Walking a distance of quarter of a mile (about 2 or 3 blocks)"
label define _spf_wlk_qrtmi 1 "Very easy" 2 "Somewhat easy" 3 "Not so easy" 4 "A little difficult" 5 "Somewhat difficult" 6 "Very difficult" 7 "Don't do for health-related reasons"
label values spf_wlk_qrtmi _spf_wlk_qrtmi

label variable spf_wlk_onemi "Walking a distance of one mile"
label define _spf_wlk_onemi 1 "Very easy" 2 "Somewhat easy" 3 "Not so easy" 4 "A little difficult" 5 "Somewhat difficult" 6 "Very difficult" 7 "Don't do for health-related reasons"
label values spf_wlk_onemi _spf_wlk_onemi

label variable spf_wlk_tenstairs "Walking up 10 steps without resting (about 1 flight of stairs)"
label define _spf_wlk_tenstairs 1 "Very easy" 2 "Somewhat easy" 3 "Not so easy" 4 "A little difficult" 5 "Somewhat difficult" 6 "Very difficult" 7 "Don't do for health-related reasons"
label values spf_wlk_tenstairs _spf_wlk_tenstairs

label variable spf_lft10lbs "Lifting or carrying something weighing 10 pounds (a small bag of groceries, an infant)"
label define _spf_lft10lbs 1 "Very easy" 2 "Somewhat easy" 3 "Not so easy" 4 "A little difficult" 5 "Somewhat difficult" 6 "Very difficult" 7 "Don't do for health-related reasons"
label values spf_lft10lbs _spf_lft10lbs

label variable spf_stand "Standing up from a chair without using your arms"
label define _spf_stand 1 "Very easy" 2 "Somewhat easy" 3 "Not so easy" 4 "A little difficult" 5 "Somewhat difficult" 6 "Very difficult" 7 "Don't do for health-related reasons"
label values spf_stand _spf_stand

label variable spf_crouch "Stooping, crouching, or kneeling"
label define _spf_crouch 1 "Very easy" 2 "Somewhat easy" 3 "Not so easy" 4 "A little difficult" 5 "Somewhat difficult" 6 "Very difficult" 7 "Don't do for health-related reasons"
label values spf_crouch _spf_crouch

label variable spf_arm "Raising your arms up over your head"
label define _spf_arm 1 "Very easy" 2 "Somewhat easy" 3 "Not so easy" 4 "A little difficult" 5 "Somewhat difficult" 6 "Very difficult" 7 "Don't do for health-related reasons"
label values spf_arm _spf_arm

label variable spf_handle "Using your fingers to grasp or handle items"
label define _spf_handle 1 "Very easy" 2 "Somewhat easy" 3 "Not so easy" 4 "A little difficult" 5 "Somewhat difficult" 6 "Very difficult" 7 "Don't do for health-related reasons"
label values spf_handle _spf_handle

