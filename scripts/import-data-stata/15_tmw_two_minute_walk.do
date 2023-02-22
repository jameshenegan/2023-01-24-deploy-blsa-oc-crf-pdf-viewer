clear
import delimited "../data-csv/15_tmw_two_minute_walk.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable tmw_additional_feet "Additional feet:"

label variable tmw_participant_stop "Did the participant stop?"
label define _tmw_participant_stop 0 "No" 1 "Yes"
label values tmw_participant_stop _tmw_participant_stop

label variable tmw_result "Result of Two Minute Walk:"
label define _tmw_result 1 "Completed two minutes" 0 "Attempted / Unable to complete" 777 "Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (broken leg"
label values tmw_result _tmw_result

label variable tmw_time_walk_mins "How many full minutes did the participant walk?"
label define _tmw_time_walk_mins 0 "0 minutes" 1 "1 minutes"
label values tmw_time_walk_mins _tmw_time_walk_mins

label variable tmw_walktime_secs "How many additional seconds did the participant walk?"

label variable tmw_symptoms "Symptoms during/after TMW"
label define _tmw_symptoms 0 "Participant completed TMW with no symptoms" 1 "Chest pain" 2 "Chest pain"
label values tmw_symptoms _tmw_symptoms

