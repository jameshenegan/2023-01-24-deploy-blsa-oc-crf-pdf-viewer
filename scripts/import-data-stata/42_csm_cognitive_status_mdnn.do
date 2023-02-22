clear
import delimited "../data-csv/42_csm_cognitive_status_mdnn.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable csm_init_class "Initial MD/NN Cognitive Classification"
label define _csm_init_class 0 "Normal" 1 "MCI" 2 "Dementia"
label values csm_init_class _csm_init_class

label variable csm_init_spectrum "Initial MD/NN Cognitive Scale Spectrum  Place the slider where you think the participant's cognition resides on the spectrum from Normal to Dementia.   (0:Normal) to (50: MCI) to (100: Dementia)"

label variable csm_init_certainty "Initial MD/NN Certainty Factor  How sure are you of the initial Cognitive Classification? (0: Totally Unsure) to (100: Totally Sure)"

label variable csm_inf_class "Informed MD/NN Cognitive Classification"
label define _csm_inf_class 0 "Normal" 1 "MCI" 2 "Dementia"
label values csm_inf_class _csm_inf_class

label variable csm_inf_spectrum "Informed MD/NN Cognitive Spectrum  Place the slider where you think the participant's cognition resides on the spectrum from Normal to Dementia.   (0:Normal) to (50: MCI) to (100: Dementia)"

label variable csm_inf_certainty "Informed MD/NN Certainty Factor  How sure are you of the initial Cognitive Classification? (0: Totally Unsure) to (100: Totally Sure)"

