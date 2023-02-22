clear
import delimited "../data-csv/35_npqi_neuropsychiatric_questionnaire_informant.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable npqi_delusions_yn "Does he/she have false beliefs, such as thinking that others are stealing from him/her or planning to harm him/her in some way?"
label define _npqi_delusions_yn 1 "Yes" 0 "No"
label values npqi_delusions_yn _npqi_delusions_yn

label variable npqi_delusions_severity "Severity  (How severe is this for him/her?)"
label define _npqi_delusions_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_delusions_severity _npqi_delusions_severity

label variable npqi_delusions_distress "Distress(How distressing is this to you?)"
label define _npqi_delusions_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_delusions_distress _npqi_delusions_distress

label variable npqi_hallucinations_yn "Does he/she have hallucinations such as false visions or voices? Does s/he seem to see or hear things that are not present?"
label define _npqi_hallucinations_yn 1 "Yes" 0 "No"
label values npqi_hallucinations_yn _npqi_hallucinations_yn

label variable npqi_hallucinations_severity "Severity  (How severe is this for him/her?)"
label define _npqi_hallucinations_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_hallucinations_severity _npqi_hallucinations_severity

label variable npqi_hallucinations_distress "Distress(How distressing is this to you?)"
label define _npqi_hallucinations_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_hallucinations_distress _npqi_hallucinations_distress

label variable npqi_agitation_yn "Is he/she resistive to help from others at times or hard to handle?"
label define _npqi_agitation_yn 1 "Yes" 0 "No"
label values npqi_agitation_yn _npqi_agitation_yn

label variable npqi_agitation_severity "Severity  (How severe is this for him/her?)"
label define _npqi_agitation_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_agitation_severity _npqi_agitation_severity

label variable npqi_agitation_distress "Distress(How distressing is this to you?)"
label define _npqi_agitation_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_agitation_distress _npqi_agitation_distress

label variable npqi_depression_yn "Does he/she seem sad or say that s/he is depressed?"
label define _npqi_depression_yn 1 "Yes" 0 "No"
label values npqi_depression_yn _npqi_depression_yn

label variable npqi_depression_severity "Severity  (How severe is this for him/her?)"
label define _npqi_depression_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_depression_severity _npqi_depression_severity

label variable npqi_depression_distress "Distress(How distressing is this to you?)"
label define _npqi_depression_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_depression_distress _npqi_depression_distress

label variable npqi_anxiety_yn "Does he/she become upset when separated from you? Does s/he have any other signs of nervousness (such as shortness of breath, sighing, being unable to relax, or feeling excessivelytense)?"
label define _npqi_anxiety_yn 1 "Yes" 0 "No"
label values npqi_anxiety_yn _npqi_anxiety_yn

label variable npqi_anxiety_severity "Severity  (How severe is this for him/her?)"
label define _npqi_anxiety_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_anxiety_severity _npqi_anxiety_severity

label variable npqi_anxiety_distress "Distress(How distressing is this to you?)"
label define _npqi_anxiety_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_anxiety_distress _npqi_anxiety_distress

label variable npqi_elation_yn "Does he/she appear to feel too good or act excessively happy?"
label define _npqi_elation_yn 1 "Yes" 0 "No"
label values npqi_elation_yn _npqi_elation_yn

label variable npqi_elation_severity "Severity  (How severe is this for him/her?)"
label define _npqi_elation_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_elation_severity _npqi_elation_severity

label variable npqi_elation_distress "Distress(How distressing is this to you?)"
label define _npqi_elation_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_elation_distress _npqi_elation_distress

label variable npqi_apathy_yn "Does he/she seem less interested in his/her usual activities or in the activities of others?"
label define _npqi_apathy_yn 1 "Yes" 0 "No"
label values npqi_apathy_yn _npqi_apathy_yn

label variable npqi_apathy_severity "Severity  (How severe is this for him/her?)"
label define _npqi_apathy_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_apathy_severity _npqi_apathy_severity

label variable npqi_apathy_distress "Distress(How distressing is this to you?)"
label define _npqi_apathy_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_apathy_distress _npqi_apathy_distress

label variable npqi_disinhibition_yn "Does he/she seem to act impulsively, for example, talking to strangers as if s/he knows them, or saying things that may hurt people's feelings?"
label define _npqi_disinhibition_yn 1 "Yes" 0 "No"
label values npqi_disinhibition_yn _npqi_disinhibition_yn

label variable npqi_disinhibition_severity "Severity  (How severe is this for him/her?)"
label define _npqi_disinhibition_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_disinhibition_severity _npqi_disinhibition_severity

label variable npqi_disinhibition_distress "Distress(How distressing is this to you?)"
label define _npqi_disinhibition_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_disinhibition_distress _npqi_disinhibition_distress

label variable npqi_irritation_yn "Is he/she impatient or cranky? Does s/he have difficulty coping with delays or waiting for planned activities?"
label define _npqi_irritation_yn 1 "Yes" 0 "No"
label values npqi_irritation_yn _npqi_irritation_yn

label variable npqi_irritation_severity "Severity  (How severe is this for him/her?)"
label define _npqi_irritation_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_irritation_severity _npqi_irritation_severity

label variable npqi_irritation_distress "Distress(How distressing is this to you?)"
label define _npqi_irritation_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_irritation_distress _npqi_irritation_distress

label variable npqi_motor_disturb_yn "Does he/she engage in repetitive activities such as pacing around the house, handling buttons, wrapping string, or doing other things repeatedly?"
label define _npqi_motor_disturb_yn 1 "Yes" 0 "No"
label values npqi_motor_disturb_yn _npqi_motor_disturb_yn

label variable npqi_motor_disturb_severity "Severity  (How severe is this for him/her?)"
label define _npqi_motor_disturb_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_motor_disturb_severity _npqi_motor_disturb_severity

label variable npqi_motor_disturb_distress "Distress(How distressing is this to you?)"
label define _npqi_motor_disturb_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_motor_disturb_distress _npqi_motor_disturb_distress

label variable npqi_nighttime_yn "Does he/she awaken you during the night, rise too early in the morning, or take excessive naps during the day?"
label define _npqi_nighttime_yn 1 "Yes" 0 "No"
label values npqi_nighttime_yn _npqi_nighttime_yn

label variable npqi_nighttime_severity "Severity  (How severe is this for him/her?)"
label define _npqi_nighttime_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_nighttime_severity _npqi_nighttime_severity

label variable npqi_nighttime_distress "Distress(How distressing is this to you?)"
label define _npqi_nighttime_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_nighttime_distress _npqi_nighttime_distress

label variable npqi_appetite_yn "Has he/she lost or gained weight, or had a change in the type of food s/he likes?"
label define _npqi_appetite_yn 1 "Yes" 0 "No"
label values npqi_appetite_yn _npqi_appetite_yn

label variable npqi_appetite_severity "Severity  (How severe is this for him/her?)"
label define _npqi_appetite_severity 1 "Mild" 2 "Moderate" 3 "Severe"
label values npqi_appetite_severity _npqi_appetite_severity

label variable npqi_appetite_distress "Distress(How distressing is this to you?)"
label define _npqi_appetite_distress 0 "No Distress" 1 "Minimal" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Extreme"
label values npqi_appetite_distress _npqi_appetite_distress

