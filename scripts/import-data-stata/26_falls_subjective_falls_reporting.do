clear
import delimited "../data-csv/26_falls_subjective_falls_reporting.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable falls_12mo "Have you fallen and landed on the ground or floor in the past 12 months?"
label define _falls_12mo 0 "No" 1 "Yes" 888 "Don't Know / Don't Do" 999 "Refused"
label values falls_12mo _falls_12mo

label variable falls_12mo_ct "How many times did you fall to the ground in the past 12 months?"
label define _falls_12mo_ct 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6 or more" 888 "Don't know" 999 "Refused"
label values falls_12mo_ct _falls_12mo_ct

label variable falls_12mo_bone "Did you break or fracture a bone on any fall in the past 12 months?"
label define _falls_12mo_bone 0 "No" 1 "Yes" 888 "Don't Know" 999 "Refused"
label values falls_12mo_bone _falls_12mo_bone

label variable falls_12mo_head "Did you hit or injure your head on any fall in the past 12 months?"
label define _falls_12mo_head 0 "No" 1 "Yes" 888 "Don't Know" 999 "Refused"
label values falls_12mo_head _falls_12mo_head

label variable falls_12mo_tissue "Did you have a sprain or strain on any fall in the past 12 months?"
label define _falls_12mo_tissue 0 "No" 1 "Yes" 888 "Don't Know" 999 "Refused"
label values falls_12mo_tissue _falls_12mo_tissue

label variable falls_12mo_bleed "Did you have a bruise or bleeding on any fall in the past 12 months?"
label define _falls_12mo_bleed 0 "No" 1 "Yes" 888 "Don't Know" 999 "Refused"
label values falls_12mo_bleed _falls_12mo_bleed

label variable falls_12mo_act "What type of activity were you doing at the time of your worst fall?"
label define _falls_12mo_act 0 "Normal/Usual (activity that should not result in a fall; ex: walking across a room)" 1 "Unusual/Risky (activity that could result in a fall; ex:playing sports" 2 "Intoxicated" 3 "Fainted" 4 "Other" 888 "Don't know" 999 "Refused"
label values falls_12mo_act _falls_12mo_act

label variable falls_12mo_act_other "Details"

