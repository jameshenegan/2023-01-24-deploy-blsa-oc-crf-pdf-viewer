clear
import delimited "../data-csv/18_cesd_depression_scale.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable cesd_appetite "I did not feel like eating; my appetite was poor"
label define _cesd_appetite 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_appetite _cesd_appetite

label variable cesd_depressed "I felt depressed"
label define _cesd_depressed 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_depressed _cesd_depressed

label variable cesd_effort "I felt everything I did was an effort"
label define _cesd_effort 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_effort _cesd_effort

label variable cesd_sleep "My sleep was restless"
label define _cesd_sleep 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_sleep _cesd_sleep

label variable cesd_happy "I was happy"
label define _cesd_happy 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_happy _cesd_happy

label variable cesd_lonely "I felt lonely"
label define _cesd_lonely 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_lonely _cesd_lonely

label variable cesd_unfriendly "People were unfriendly"
label define _cesd_unfriendly 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_unfriendly _cesd_unfriendly

label variable cesd_life "I enjoyed life"
label define _cesd_life 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_life _cesd_life

label variable cesd_sad "I felt sad"
label define _cesd_sad 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_sad _cesd_sad

label variable cesd_disliked "I felt that people disliked me"
label define _cesd_disliked 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_disliked _cesd_disliked

label variable cesd_getgoing "I could not get going"
label define _cesd_getgoing 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_getgoing _cesd_getgoing

label variable cesd_hopeless "The future seemed hopeless to me"
label define _cesd_hopeless 0 "#1Hardly Ever or Never (less than 1 day)" 1 "#2Some of the Time (1-2 days)" 2 "#3Much/Most of the Time (3-7 days)"
label values cesd_hopeless _cesd_hopeless

label variable cesd_total "Center for Epidemiological Studies Depression (CES-D) Scale Score (range: 0-22)"

label variable mhf_htn___0 "None (High blood pressure or hypertension (HTN))"

label variable mhf_htn___1 "Me (High blood pressure or hypertension (HTN))"

label variable mhf_htn___2 "Father (High blood pressure or hypertension (HTN))"

label variable mhf_htn___3 "Mother (High blood pressure or hypertension (HTN))"

label variable mhf_htn___4 "Brother(s) (High blood pressure or hypertension (HTN))"

label variable mhf_htn___5 "Sister(s) (High blood pressure or hypertension (HTN))"

label variable mhf_htn___6 "Child(ren) (High blood pressure or hypertension (HTN))"

label variable mhf_angina___0 "None (Angina (chest pain due to heart disease or coronary artery disease))"

label variable mhf_angina___1 "Me (Angina (chest pain due to heart disease or coronary artery disease))"

label variable mhf_angina___2 "Father (Angina (chest pain due to heart disease or coronary artery disease))"

label variable mhf_angina___3 "Mother (Angina (chest pain due to heart disease or coronary artery disease))"

label variable mhf_angina___4 "Brother(s) (Angina (chest pain due to heart disease or coronary artery disease))"

label variable mhf_angina___5 "Sister(s) (Angina (chest pain due to heart disease or coronary artery disease))"

label variable mhf_angina___6 "Child(ren) (Angina (chest pain due to heart disease or coronary artery disease))"

label variable mhf_mi___0 "None (Heart attack / Myocardial Infarction (MI))"

label variable mhf_mi___1 "Me (Heart attack / Myocardial Infarction (MI))"

label variable mhf_mi___2 "Father (Heart attack / Myocardial Infarction (MI))"

label variable mhf_mi___3 "Mother (Heart attack / Myocardial Infarction (MI))"

label variable mhf_mi___4 "Brother(s) (Heart attack / Myocardial Infarction (MI))"

label variable mhf_mi___5 "Sister(s) (Heart attack / Myocardial Infarction (MI))"

label variable mhf_mi___6 "Child(ren) (Heart attack / Myocardial Infarction (MI))"

label variable mhf_hf___0 "None (Heart Failure or Congestive Heart Failure (HF))"

label variable mhf_hf___1 "Me (Heart Failure or Congestive Heart Failure (HF))"

label variable mhf_hf___2 "Father (Heart Failure or Congestive Heart Failure (HF))"

label variable mhf_hf___3 "Mother (Heart Failure or Congestive Heart Failure (HF))"

label variable mhf_hf___4 "Brother(s) (Heart Failure or Congestive Heart Failure (HF))"

label variable mhf_hf___5 "Sister(s) (Heart Failure or Congestive Heart Failure (HF))"

label variable mhf_hf___6 "Child(ren) (Heart Failure or Congestive Heart Failure (HF))"

