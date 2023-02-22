clear
import delimited "../data-csv/05_sbp_sitting_blood_pressure.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable sbp_arm "Arm used for sitting blood pressure measurement"
label define _sbp_arm 1 "Right (preferred)" 2 "Left" 3 "Issues in both arms"
label values sbp_arm _sbp_arm

label variable sbp_arm_details "Details"

label variable sbp_arm_loc "Arm location used"
label define _sbp_arm_loc 1 "Upper arm" 2 "Forearm"
label values sbp_arm_loc _sbp_arm_loc

label variable sbp_arm_circ "Arm circumference (cm)"

label variable sbp_cuff_size "Cuff size"
label define _sbp_cuff_size 1 "Small (17.0-21.9 cm)" 2 "Adult (22.0-32.5 cm)" 3 "Large (32.6-42.5 cm)" 4 "X Large (42.6-50.0+ cm)"
label values sbp_cuff_size _sbp_cuff_size

label variable sbp_time "Time of measurement"

label variable sbp_systolic_1 "Systolic (mmHg)"

label variable sbp_diastolic_1 "Diastolic (mmHg)"

label variable sbp_pulse_1 "Pulse (bpm)"

label variable sbp_systolic_2 "Systolic (mmHg)"

label variable sbp_diastolic_2 "Diastolic (mmHg)"

label variable sbp_pulse_2 "Pulse (bpm)"

label variable sbp_systolic_3 "Systolic (mmHg)"

label variable sbp_diastolic_3 "Diastolic (mmHg)"

label variable sbp_pulse_3 "Pulse (bpm)"

label variable sbp_systolic_avg "Average Systolic (mmHg)"

label variable sbp_diastolic_avg "Average Diastolic (mmHg)"

label variable sbp_pulse_avg "Average Pulse (bpm)"

