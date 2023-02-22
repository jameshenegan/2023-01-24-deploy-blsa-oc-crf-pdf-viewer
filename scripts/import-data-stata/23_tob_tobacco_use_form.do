clear
import delimited "../data-csv/23_tob_tobacco_use_form.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable tob_cig "Have you smoked at least 100 cigarettes (5 packs) over your entire life?"
label define _tob_cig 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values tob_cig _tob_cig

label variable tob_cig_user_ever "Have you ever smoked cigarettes on a regular basis; that is, daily for at least 6 months?"
label define _tob_cig_user_ever 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values tob_cig_user_ever _tob_cig_user_ever

label variable tob_cig_user_age "How old were you when you first started smoking cigarettes regularly (years)"

label variable tob_cig_user_amt "On average, over the entire time you have smoked, how many cigarettes have you usually smoked per day?"

label variable tob_cig_user_current "Do you smoke cigarettes now?"
label define _tob_cig_user_current 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values tob_cig_user_current _tob_cig_user_current

label variable tob_cig_user_current_amt "On average, how many cigarettes a day do you smoke now?"

label variable tob_cig_user_current_quit "How many times have you seriously tried to quit smoking?"

label variable tob_cig_user_past_age "How old were you when you stopped smoking? (years)"

label variable tob_cigar "Have you smoked at least 50 cigars over your entire life?"
label define _tob_cigar 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values tob_cigar _tob_cigar

label variable tob_cigar_user_age "How old were you when you first started smoking cigars? (years)"

label variable tob_cigar_user_amt "On average, over the entire time you have smoked cigars, how many cigars did you usually smoked per week?"

label variable tob_cigar_user_current "Do you smoke cigars now?"
label define _tob_cigar_user_current 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values tob_cigar_user_current _tob_cigar_user_current

label variable tob_cigar_user_current_amt "On average, how many cigars do you smoke now, per week?"

label variable tob_cigar_user_past_age "How old were you when you stopped smoking cigars? (years)"

label variable tob_vape "Have you ever vaped?"
label define _tob_vape 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values tob_vape _tob_vape

label variable tob_vape_days_lifetime "...in your lifeime?"
label define _tob_vape_days_lifetime 0 "0 Days" 1 "1-2 Days" 2 "3-5 Days" 3 "6-9 Days" 4 "10-19 Days" 5 "20 or More"
label values tob_vape_days_lifetime _tob_vape_days_lifetime

label variable tob_vape_days_12mos "...during the last 12 months?"
label define _tob_vape_days_12mos 0 "0 Days" 1 "1-2 Days" 2 "3-5 Days" 3 "6-9 Days" 4 "10-19 Days" 5 "20 or More"
label values tob_vape_days_12mos _tob_vape_days_12mos

label variable tob_vape_days_30days "...during the last 30 days?"
label define _tob_vape_days_30days 0 "0 Days" 1 "1-2 Days" 2 "3-5 Days" 3 "6-9 Days" 4 "10-19 Days" 5 "20 or More"
label values tob_vape_days_30days _tob_vape_days_30days

