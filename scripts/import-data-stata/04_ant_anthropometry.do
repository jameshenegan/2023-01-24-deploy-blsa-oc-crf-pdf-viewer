clear
import delimited "../data-csv/04_ant_anthropometry.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable ant_wt_sr "Self-Reported Weight (lb)"

label variable ant_wt_sr_chg "Self-Reported Weight Change"
label define _ant_wt_sr_chg 1 "lost more than 10 pounds" 2 "lost 5 to 10 pounds" 3 "maintained about the same weight (lost/gained less than 5 pounds)" 4 "gained 5 to 10 pounds" 5 "gained more than 10 pounds" 888 "Don't know" 999 "Refused"
label values ant_wt_sr_chg _ant_wt_sr_chg

label variable ant_wt_sr_intendloss "Self-Reported Intended Weight Loss"
label define _ant_wt_sr_intendloss 1 "Yes" 0 "No" 888 "Don't  Know" 999 "Refused"
label values ant_wt_sr_intendloss _ant_wt_sr_intendloss

label variable ant_ht_ft_sr "Self-Reported Standing Height (Feet):"

label variable ant_ht_in_sr "Self-Reported Standing Height (Inches):"

label variable ant_ht_sr_dk "Self-Reported Standing Height Don't Know Indicator"
label define _ant_ht_sr_dk 888 "Don't Know"
label values ant_ht_sr_dk _ant_ht_sr_dk

label variable ant_ht_sr "Self-Reported Standing Height (cm):"

label variable ant_waist "Waist (cm)"

label variable ant_hip "Hip (cm)"

