clear
import delimited "../data-csv/33_cov_covid_impact.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable cov_diagn "Have you been diagnosed with COVID-19 (you tested positive or were presumed to have COVID-19 by a healthcare provider)?"
label define _cov_diagn 0 "No" 1 "Yes - positive test for acute infection" 2 "Yes - presumed COVID-19 by healthcare provider but not tested" 3 "Yes - presumed COVID-19 but not tested and not verified healthcare provider" 888 "Unsure or Unknown" 999 "Decline to answer"
label values cov_diagn _cov_diagn

label variable cov_admit "Were you admitted to a hospital for treatment of COVID-19?"
label define _cov_admit 0 "No" 1 "Yes - but not the intensive care unit (ICU)" 2 "Yes - including a stay in the ICU and/or ventilator support (breathing tube in your throat)" 888 "Unsure or Unknown" 999 "Decline to answer"
label values cov_admit _cov_admit

label variable cov_vaccinated "Have you been vaccinated for COVID-19?"
label define _cov_vaccinated 1 "Yes" 0 "No" 888 "Unsure or unknown" 999 "Decline to answer"
label values cov_vaccinated _cov_vaccinated

label variable cov_vaccineplan "Do you plan to get a COVID-19 vaccine?"
label define _cov_vaccineplan 1 "I plan to get it as soon as possible" 2 "I plan to wait to see how it affects others in the community before I get it" 3 "I do not plan to get it soon" 4 "I do not plan to ever get the vaccine" 888 "Unsure or Unknown" 999 "Decline to answer"
label values cov_vaccineplan _cov_vaccineplan

label variable cov_healthworry "How worried are you that COVID-19 infection is going to have a long-term effect on your health?"
label define _cov_healthworry 1 "Not at all" 2 "A little" 3 "Somewhat" 4 "Very" 5 "Extremely" 999 "Decline to answer"
label values cov_healthworry _cov_healthworry

label variable cov_reinfectworry "How worried are you that you will get COVID-19 again?"
label define _cov_reinfectworry 1 "Not at all" 2 "A little" 3 "Somewhat" 4 "Very" 5 "Extremely" 999 "Decline to answer"
label values cov_reinfectworry _cov_reinfectworry

label variable cov_infectworry "How worried are you that you will get COVID-19?"
label define _cov_infectworry 1 "Not at all" 2 "A little" 3 "Somewhat" 4 "Very" 5 "Extremely" 999 "Decline to answer"
label values cov_infectworry _cov_infectworry

label variable cov_isolated "How isolated or cut off from family and friends are you feeling due to COVID-19?"
label define _cov_isolated 1 "Not at all" 2 "A little" 3 "Somewhat" 4 "Very" 5 "Extremely" 999 "Decline to answer"
label values cov_isolated _cov_isolated

label variable cov_disruptive "How disruptive has the COVID-19 pandemic been to your everyday life?"
label define _cov_disruptive 1 "Not at all" 2 "A little" 3 "Somewhat" 4 "Very" 5 "Extremely" 999 "Decline to answer"
label values cov_disruptive _cov_disruptive

label variable cov_income "Has your household's income been significantly reduced due to COVID-19?"
label define _cov_income 1 "Yes" 0 "No" 888 "Unsure or Unknown" 999 "Decline to answer"
label values cov_income _cov_income

label variable cov_changes "Have you noticed any changes in your memory or thinking abilities, depression, anxiety, or other mood-related symptoms since the COVID-19 pandemic began?   (due to need for social distancing, sheltering in place, worries about getting infected, or other causes)"
label define _cov_changes 0 "No changes" 1 "Some changes" 2 "A great deal of change" 888 "Unsure or Unknown" 999 "Decline to answer"
label values cov_changes _cov_changes

label variable cov_whatchanged___1 "Memory (Please tell us what has changed)"

label variable cov_whatchanged___2 "Thinking abilities (Please tell us what has changed)"

label variable cov_whatchanged___3 "Depression (Please tell us what has changed)"

label variable cov_whatchanged___4 "Anxiety (Please tell us what has changed)"

label variable cov_whatchanged___5 "Other mood-related symptoms (Please tell us what has changed)"

label variable cov_whatchanged___6 "Other (Please tell us what has changed)"

label variable cov_whatchanged___999 "Decline to answer (Please tell us what has changed)"

label variable cov_whatchanged_other "Details: Please tell us what has changed"

