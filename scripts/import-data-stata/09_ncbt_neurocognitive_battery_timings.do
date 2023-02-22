clear
import delimited "../data-csv/09_ncbt_neurocognitive_battery_timings.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable cfa_result "Animal Naming"
label define _cfa_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values cfa_result _cfa_result

label variable cfa_secs "Animal Naming Duration, seconds"

label variable ravl1_result "RAVLT-Immediate"
label define _ravl1_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values ravl1_result _ravl1_result

label variable ravl1_secs "RAVLT-Immediate Duration, seconds"

label variable ravl1_t1_secs "RAVLT-Immediate Trial 1 Duration, seconds"

label variable ravl1_t2_secs "RAVLT-Immediate Trial 1 Duration, seconds"

label variable ravl1_t3_secs "RAVLT-Immediate Trial 3 Duration, seconds"

label variable ravl1_t4_secs "RAVLT-Immediate Trial 4 Duration, seconds"

label variable ravl1_t5_secs "RAVLT-Immediate Trial 5 Duration, seconds"

label variable ravl1_tb_secs "RAVLT-Immediate Trial B Duration, seconds"

label variable ravl1_t6_secs "RAVLT-Immediate Trial 6 Duration, seconds"

label variable bcfc1_result "Benson-Immediate"
label define _bcfc1_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values bcfc1_result _bcfc1_result

label variable bcfc1_secs "Benson-Immediate Duration, seconds"

label variable ldst_result "LDST"
label define _ldst_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values ldst_result _ldst_result

label variable ldst_secs "LDST Duration, seconds"

label variable cfv_result "Veggie Naming"
label define _cfv_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values cfv_result _cfv_result

label variable cfv_secs "Veggie Naming Duration, seconds"

label variable il_result "Incidental Learning"
label define _il_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values il_result _il_result

label variable il_secs "Incidental Learning Duration, seconds"

label variable nsb_result "Number Span Backwards"
label define _nsb_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values nsb_result _nsb_result

label variable nsb_secs "Number Span Backwards Duration, seconds"

label variable trailsa_result "Trails A"
label define _trailsa_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values trailsa_result _trailsa_result

label variable trailsa_secs "Trails A Duration, seconds"

label variable trailsb_result "Trails B"
label define _trailsb_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values trailsb_result _trailsb_result

label variable trailsb_secs "Trails B Duration, seconds"

label variable bcfc2_result "Benson-Delayed"
label define _bcfc2_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values bcfc2_result _bcfc2_result

label variable bcfc2_secs "Benson-Delayed Duration, seconds"

label variable ravl2_result "RAVLT-Delayed"
label define _ravl2_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values ravl2_result _ravl2_result

label variable ravl2_secs "RAVLT-Delayed Duration, seconds"

label variable ravl3_result "RAVLT-Recognition"
label define _ravl3_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values ravl3_result _ravl3_result

label variable ravl3_secs "RAVLT-Recognition Duration, seconds"

label variable craft1_result "Craft 21-Immediate"
label define _craft1_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values craft1_result _craft1_result

label variable craft1_secs "Craft 21-Immediate Duration, seconds"

label variable mint_result "MINT"
label define _mint_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values mint_result _mint_result

label variable mint_secs "MINT Duration, seconds"

label variable vf_result "Verbal Fluency"
label define _vf_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values vf_result _vf_result

label variable vff_secs "Verbal Fluency Letter F Duration, seconds"

label variable vfl_secs "Verbal Fluency Letter L Duration, seconds"

label variable vf_secs "Verbal Fluency Duration, seconds"

label variable wrat4_result "WRAT4"
label define _wrat4_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values wrat4_result _wrat4_result

label variable wrat4_secs "WRAT4 Duration, seconds"

label variable craft2_result "Craft 21-Delayed"
label define _craft2_result 0 "Completed" 1 "Refusal" 2 "Task difficulty" 3 "Impairment"
label values craft2_result _craft2_result

label variable craft2_secs "Craft 21-Delayed Duration, seconds"

