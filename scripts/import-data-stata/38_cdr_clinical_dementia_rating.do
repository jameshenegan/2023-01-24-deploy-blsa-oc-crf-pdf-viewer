clear
import delimited "../data-csv/38_cdr_clinical_dementia_rating.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable cdr_memory "Memory"

label variable cdr_orientation "Orientation"

label variable cdr_judgement "Judgment and Problem Solving"

label variable cdr_community "Community Affairs"

label variable cdr_home "Home & Hobbies"

label variable cdr_personal "Personal Care"
label define _cdr_personal 0 "0.0) NONE: Fully capable of self-care" 1 "1.0) MILD: Needs prompting" 2 "2.0) MODERATE: Requires assistance in dressing" 3 "3.0) SEVERE: Requires much help with personal care; frequent incontinence"
label values cdr_personal _cdr_personal

label variable cdr_total "Clinical Dementia Rating, CDR, Total (range: 0 to 18)  Memory ([cdr_memory_num]) + Orientation ([cdr_orientation_num]) + Judgement ([cdr_judgement_num]) + Community ([cdr_community_num]) + Home ([cdr_home_num]) + Personal ([cdr_personal_num])"

label variable cdr_score "Clinical Dementia Rating, CDR, Global Score  Primary Category: Memory ([cdr_memory_num])   Secondary Categories: Orientation ([cdr_orientation_num]), Judgement ([cdr_judgement_num]), Community ([cdr_community_num]), Home ([cdr_home_num]), Personal ([cdr_personal_num])"

