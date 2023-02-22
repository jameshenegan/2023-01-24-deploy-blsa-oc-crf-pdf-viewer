clear
import delimited "../data-csv/41_csp_cognitive_status_psychometrist.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable csp_init_class "Initial Psychometrist Cognitive Classification"
label define _csp_init_class 0 "Normal" 1 "MCI" 2 "Dementia"
label values csp_init_class _csp_init_class

label variable csp_init_spectrum "Initial Psychometrist Cognitive Spectrum  Place the slider where you think the participant's cognition resides on the spectrum from Normal to Dementia.   (0:Normal) to (50: MCI) to (100: Dementia)"

label variable csp_init_certainty "Initial Psychometrist Certainty Factor  How sure are you of the initial Cognitive Classification? (0: Totally Unsure) to (100: Totally Sure)"

label variable csp_inf_class "Informed Psychometrist Cognitive Classification"
label define _csp_inf_class 0 "Normal" 1 "MCI" 2 "Dementia"
label values csp_inf_class _csp_inf_class

label variable csp_inf_spectrum "Informed Psychometrist Cognitive Spectrum  Place the slider where you think the participant's cognition resides on the spectrum from Normal to Dementia.   (0:Normal) to (50: MCI) to (100: Dementia)"

label variable csp_inf_certainty "Informed Psychometrist Certainty Factor  How sure are you of the initial Cognitive Classification? (0: Totally Unsure) to (100: Totally Sure)"

