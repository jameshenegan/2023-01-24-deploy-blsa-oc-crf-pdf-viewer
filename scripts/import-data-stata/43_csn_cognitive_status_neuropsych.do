clear
import delimited "../data-csv/43_csn_cognitive_status_neuropsych.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable csn_init_class "Initial Neuro-Psychologist Cognitive Classification"
label define _csn_init_class 0 "Normal" 1 "MCI" 2 "Dementia"
label values csn_init_class _csn_init_class

label variable csn_init_spectrum "Initial Neuro-Psychologist Cognitive Spectrum  Place the slider where you think the participant's cognition resides on the spectrum from Normal to Dementia.   (0:Normal) to (50: MCI) to (100: Dementia)"

label variable csn_init_certainty "Initial Neuro-Psychologist Certainty Factor  How sure are you of the initial Cognitive Classification? (0: Totally Unsure) to (100: Totally Sure)"

label variable csn_inf_class "Informed Neuro-Psychologist Cognitive Classification"
label define _csn_inf_class 0 "Normal" 1 "MCI" 2 "Dementia"
label values csn_inf_class _csn_inf_class

label variable csn_inf_spectrum "Informed Neuro-Psychologist Cognitive Spectrum  Place the slider where you think the participant's cognition resides on the spectrum from Normal to Dementia.   (0:Normal) to (50: MCI) to (100: Dementia)"

label variable csn_inf_certainty "Informed Neuro-Psychologist Certainty Factor  How sure are you of the initial Cognitive Classification? (0: Totally Unsure) to (100: Totally Sure)"

