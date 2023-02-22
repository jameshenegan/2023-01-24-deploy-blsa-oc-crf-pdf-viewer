clear
import delimited "../data-csv/44_csa_cognitive_status_adjudication.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable csn_adj_class "Adjudicated Neuro-Psychologist Cognitive ClassificationInitial: [csn_init_class] ([csn_init_certainty]%)Informed: [csn_inf_class] ([csn_inf_certainty]%)"
label define _csn_adj_class 0 "Normal" 1 "MCI" 2 "Dementia"
label values csn_adj_class _csn_adj_class

label variable csn_adj_spectrum "Adjudicated Neuro-Psychologist Cognitive Spectrum  Place the slider where you think the participant's cognition resides on the spectrum from Normal to Dementia.   (0:Normal) to (50: MCI) to (100: Dementia)    Initial: [csn_init_spectrum]  Informed: [csn_inf_spectrum]"

label variable csn_adj_certainty "Adjudicated Neuro-Psychologist Certainty Factor  How sure are you of the initial Cognitive Classification? (0: Totally Unsure) to (100: Totally Sure)    Initial: [csn_init_certainty]%  Informed: [csn_inf_certainty]%"

label variable csm_adj_class "Adjudicated MD/NN Cognitive ClassificationInitial: [csm_init_class] ([csm_init_certainty]%)Informed: [csm_inf_class] ([csm_inf_certainty]%)"
label define _csm_adj_class 0 "Normal" 1 "MCI" 2 "Dementia"
label values csm_adj_class _csm_adj_class

label variable csm_adj_spectrum "Adjudicated MD/NN Cognitive Spectrum  Place the slider where you think the participant's cognition resides on the spectrum from Normal to Dementia.   (0:Normal) to (50: MCI) to (100: Dementia)    Initial: [csm_init_spectrum]  Informed: [csm_inf_spectrum]"

label variable csm_adj_certainty "Adjudicated MD/NN Certainty Factor  How sure are you of the initial Cognitive Classification? (0: Totally Unsure) to (100: Totally Sure)    Initial: [csm_init_certainty]%  Informed: [csm_inf_certainty]%"

label variable csp_adj_class "Adjudicated Psychometrist Cognitive Classification Initial: [csp_init_class] ([csp_init_certainty]%)Informed: [csp_inf_class] ([csp_inf_certainty]%)"
label define _csp_adj_class 0 "Normal" 1 "MCI" 2 "Dementia"
label values csp_adj_class _csp_adj_class

label variable csp_adj_spectrum "Adjudicated Psychometrist Cognitive Spectrum  Place the slider where you think the participant's cognition resides on the spectrum from Normal to Dementia.   (0:Normal) to (50: MCI) to (100: Dementia)    Initial: [csp_init_spectrum]  Informed: [csp_inf_spectrum]"

label variable csp_adj_certainty "Adjudicated Psychometrist Certainty Factor  How sure are you of the initial Cognitive Classification?   (0: Totally Unsure) to (100: Totally Sure)    Initial: [csp_init_certainty]%  Informed: [csp_inf_certainty]%"

label variable csn_consensus_cognstatus "Consensus Cognitive Status"
label define _csn_consensus_cognstatus 0 "Normal" 1 "MCI" 2 "Dementia"
label values csn_consensus_cognstatus _csn_consensus_cognstatus

