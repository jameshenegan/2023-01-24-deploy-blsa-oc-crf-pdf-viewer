clear
import delimited "../data-csv/34_ess_epworth_sleepiness_scale.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable ess_situation_reading "Sitting and reading"
label define _ess_situation_reading 0 "Never" 1 "Slightly Likely" 2 "Moderately Likely" 3 "Highly Likely"
label values ess_situation_reading _ess_situation_reading

label variable ess_situation_tv "Watching TV"
label define _ess_situation_tv 0 "Never" 1 "Slightly Likely" 2 "Moderately Likely" 3 "Highly Likely"
label values ess_situation_tv _ess_situation_tv

label variable ess_situation_public "Sitting, inactive, in a public place like a theater or meeting"
label define _ess_situation_public 0 "Never" 1 "Slightly Likely" 2 "Moderately Likely" 3 "Highly Likely"
label values ess_situation_public _ess_situation_public

label variable ess_situation_passenger "Riding as a passenger in a car for about an hour without a break"
label define _ess_situation_passenger 0 "Never" 1 "Slightly Likely" 2 "Moderately Likely" 3 "Highly Likely"
label values ess_situation_passenger _ess_situation_passenger

label variable ess_situation_rest "Lying down to rest in the afternoon"
label define _ess_situation_rest 0 "Never" 1 "Slightly Likely" 2 "Moderately Likely" 3 "Highly Likely"
label values ess_situation_rest _ess_situation_rest

label variable ess_situation_talking "Sitting and talking to someone"
label define _ess_situation_talking 0 "Never" 1 "Slightly Likely" 2 "Moderately Likely" 3 "Highly Likely"
label values ess_situation_talking _ess_situation_talking

label variable ess_situation_after_lunch "Sitting quietly after lunch without alcohol"
label define _ess_situation_after_lunch 0 "Never" 1 "Slightly Likely" 2 "Moderately Likely" 3 "Highly Likely"
label values ess_situation_after_lunch _ess_situation_after_lunch

label variable ess_situation_traffic "Sitting in a car while stopped for a few minutes in traffic"
label define _ess_situation_traffic 0 "Never" 1 "Slightly Likely" 2 "Moderately Likely" 3 "Highly Likely"
label values ess_situation_traffic _ess_situation_traffic

label variable ess_act_dreams "Have you ever been told that you seem to act out your dreams?(e.g., punched or flailed arms, kicked legs vigorously, shouted or screamed in your sleep)"
label define _ess_act_dreams 0 "No" 1 "Yes" 888 "Don't Know" 999 "Refused"
label values ess_act_dreams _ess_act_dreams

label variable ess_act_dreams_freq "Roughly how many times has this happened?"
label define _ess_act_dreams_freq 0 "None" 1 "Once" 2 "Twice" 3 "Three" 888 "Don't Know" 999 "Refused"
label values ess_act_dreams_freq _ess_act_dreams_freq

label variable ess_act_dreams_dur "How long has this been going on?"
label define _ess_act_dreams_dur 1 "less than 6 Months" 2 "6 to 11 Months" 3 "1 Year" 4 "2 Years" 5 "3 Years" 777 "Longer"
label values ess_act_dreams_dur _ess_act_dreams_dur

label variable ess_act_dreams_dur_other "How long has this been going on? - longer (years)"

label variable ess_snore "Have you ever been told you snore loudly?(louder than talking or loud enough to be heard through closed doors)"
label define _ess_snore 0 "No" 1 "Yes" 888 "Don't Know" 999 "Refused"
label values ess_snore _ess_snore

label variable ess_daytime_fatigue "Do you often feel tired, fatigued, or sleepy during the daytime?"
label define _ess_daytime_fatigue 0 "No" 1 "Yes" 888 "Don't Know" 999 "Refused"
label values ess_daytime_fatigue _ess_daytime_fatigue

label variable ess_apnea "Have you ever been told that you stopped breathing during your sleep?  (by another person or by a healthcare provider)"
label define _ess_apnea 0 "No" 1 "Yes" 888 "Don't Know" 999 "Refused"
label values ess_apnea _ess_apnea

