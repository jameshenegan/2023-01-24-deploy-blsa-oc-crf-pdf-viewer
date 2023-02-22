clear
import delimited "../data-csv/14_grip_grip_strength.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable grip_arth "Do you have any pain or arthritis in either hand or wrist?"
label define _grip_arth 0 "No" 1 "Right Hand / Wrist" 2 "Left Hand / Wrist" 3 "Both Hands / Wrists"
label values grip_arth _grip_arth

label variable grip_arth_prog "Has the pain or arthritis gotten worse recently?"
label define _grip_arth_prog 0 "No" 1 "Yes"
label values grip_arth_prog _grip_arth_prog

label variable grip_arth_sqz "Will the pain or arthritis keep you from squeezing as hard as you can?"
label define _grip_arth_sqz 0 "No" 1 "Yes"
label values grip_arth_sqz _grip_arth_sqz

label variable grip_surg "Have you had any surgery on either hand or wrist in the past 3 months?"
label define _grip_surg 0 "No" 1 "Yes - Right Hand/Wrist" 2 "Yes - Left Hand/Wrist" 3 "Yes - Both Hands/Wrists"
label values grip_surg _grip_surg

label variable grip_hand "Which is your preferred hand to use (not necessarily the hand you write with)?"
label define _grip_hand 1 "Right Hand" 2 "Left Hand" 3 "Mixed (Prefers to do some things with one hand and some with the other but can't use both equally well)" 4 "Both (ambidextrous: uses both hands equally well for tasks)"
label values grip_hand _grip_hand

label variable grip_hand_test "Which hand is your preferred or best hand to test for maximum strength? This response determines which hand is tested unless this side was excluded in the previous screening questions."
label define _grip_hand_test 1 "Right Hand" 2 "Left Hand"
label values grip_hand_test _grip_hand_test

label variable grip_grip1_code "Grip strength completion status for trial 1"
label define _grip_grip1_code 1 "Completed" 0 "Attempted / Unable to complete" 777 "Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (out of time"
label values grip_grip1_code _grip_grip1_code

label variable grip_grip1 "Grip strength (kg) for trial 1"

label variable grip_grip2_code "Grip strength completion status for trial 2"
label define _grip_grip2_code 1 "Completed" 0 "Attempted / Unable to complete" 777 "Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (out of time"
label values grip_grip2_code _grip_grip2_code

label variable grip_grip2 "Grip strength (kg) for trial 2"

label variable grip_grip3_yn "Participant requested to complete second trial with alternate hand"
label define _grip_grip3_yn 0 "No" 1 "Yes"
label values grip_grip3_yn _grip_grip3_yn

label variable grip_grip3_code "Grip strength code for supplementary trial 3"
label define _grip_grip3_code 1 "Completed" 0 "Attempted / Unable to complete" 777 "Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (out of time"
label values grip_grip3_code _grip_grip3_code

label variable grip_grip3 "Grip strength (kg) for supplementary trial 3 using alt. hand"

label variable tmw_status___1 "Yes (Can the participant perform the TMW test? (Exclusion Criteria))"

label variable tmw_status___2 "No - Participant has a cast or other immobilizing device on leg (Can the participant perform the TMW test? (Exclusion Criteria))"

label variable tmw_status___3 "No - participant unable to perform 4-meter walk without a walking aid (Can the participant perform the TMW test? (Exclusion Criteria))"

label variable tmw_status___4 "No - Resting heart rate too high (pulse > 120 bpm) (Can the participant perform the TMW test? (Exclusion Criteria))"

label variable tmw_status___5 "No - Systolic blood pressure too high (SBP > 180 mmHg) (Can the participant perform the TMW test? (Exclusion Criteria))"

label variable tmw_status___6 "No - Diastolic blood pressure too high (DBP > 110 mmHg) (Can the participant perform the TMW test? (Exclusion Criteria))"

label variable tmw_status___7 "No - other (Can the participant perform the TMW test? (Exclusion Criteria))"

label variable tmw_number_of_turns___1 "1 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___2 "2 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___3 "3 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___4 "4 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___5 "5 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___6 "6 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___7 "7 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___8 "8 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___9 "9 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___10 "10 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___11 "11 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___12 "12 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___13 "13 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___14 "14 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___15 "15 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___16 "16 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___17 "17 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___18 "18 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___19 "19 (Number of turns (cones) completed:)"

label variable tmw_number_of_turns___20 "20 (Number of turns (cones) completed:)"

