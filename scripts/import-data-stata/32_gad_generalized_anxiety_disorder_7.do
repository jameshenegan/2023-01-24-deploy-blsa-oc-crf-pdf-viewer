clear
import delimited "../data-csv/32_gad_generalized_anxiety_disorder_7.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable gad_nervous "Feeling nervous, anxious or on edge"
label define _gad_nervous 0 "Not at all" 1 "Several days" 2 "More than half the days" 3 "Nearly every day"
label values gad_nervous _gad_nervous

label variable gad_worry1 "Not being able to stop or control worrying"
label define _gad_worry1 0 "Not at all" 1 "Several days" 2 "More than half the days" 3 "Nearly every day"
label values gad_worry1 _gad_worry1

label variable gad_worry2 "Worrying too much about different things"
label define _gad_worry2 0 "Not at all" 1 "Several days" 2 "More than half the days" 3 "Nearly every day"
label values gad_worry2 _gad_worry2

label variable gad_relax "Trouble relaxing"
label define _gad_relax 0 "Not at all" 1 "Several days" 2 "More than half the days" 3 "Nearly every day"
label values gad_relax _gad_relax

label variable gad_restless "Being so restless that it is hard to sit still"
label define _gad_restless 0 "Not at all" 1 "Several days" 2 "More than half the days" 3 "Nearly every day"
label values gad_restless _gad_restless

label variable gad_annoy "Becoming easily annoyed or irritable"
label define _gad_annoy 0 "Not at all" 1 "Several days" 2 "More than half the days" 3 "Nearly every day"
label values gad_annoy _gad_annoy

label variable gad_afraid "Feeling afraid as if something awful might happen"
label define _gad_afraid 0 "Not at all" 1 "Several days" 2 "More than half the days" 3 "Nearly every day"
label values gad_afraid _gad_afraid

label variable gad_difficult "How difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?"
label define _gad_difficult 0 "Not difficult at all" 1 "Somewhat difficult" 2 "Very difficult" 3 "Extremely difficult"
label values gad_difficult _gad_difficult

label variable gad_nervous_num "Nervous"

label variable gad_worry1_num "Control Worry"

label variable gad_worry2_num "General Worry"

label variable gad_relax_num "Relax"

label variable gad_restless_num "Restless"

label variable gad_annoy_num "Annoyed"

label variable gad_afraid_num "Afraid"

label variable gad_total "Generalized Anxiety Disorder 7-Item, GAD-7, Total Score (range: 0 to 21)  Nervous ([gad_nervous_num]) + Control Worry ([gad_worry1_num]) + General Worry ([gad_worry2_num]) + Relax ([gad_relax_num]) + Restless ([gad_restless_num]) + Annoyed ([gad_annoy_num]) + Afraid ([gad_afraid_num])"

