clear
import delimited "../data-csv/22_alc_alcohol_use.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable alc_consumption12mo "In the past 12 months, did you drink any alcoholic beverages?"
label define _alc_consumption12mo 1 "Yes" 0 "No" 888 "Don't know" 999 "Refused"
label values alc_consumption12mo _alc_consumption12mo

label variable alc_drinks "Over the past 12 months, how many alcoholic beverages did you have during a typical week?"

label variable alc_drinks_redwine "Over the past 12 months, how many of these drinks were red wine during a typical week?"

label variable alc_abstain "What is the primary reason you did not drink any alcoholic beverages in the past 12 months?"
label define _alc_abstain 1 "Dislike alcohol" 2 "Religious/moral reasons" 3 "Health reasons" 4 "Alcohol abuse in family" 5 "No occasion" 6 "Personal History of alcohol abuse" 7 "Dietary issues" 8 "Other" 888 "Don't know" 999 "Refused"
label values alc_abstain _alc_abstain

label variable alc_ever "Did you ever drink more alcoholic beverages than you do now?"
label define _alc_ever 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values alc_ever _alc_ever

label variable alc_problem "Was there ever a time in your life when you had 5 or more drinks of any alcoholic beverage almost every day?"
label define _alc_problem 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values alc_problem _alc_problem

