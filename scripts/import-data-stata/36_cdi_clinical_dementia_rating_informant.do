clear
import delimited "../data-csv/36_cdi_clinical_dementia_rating_informant.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable cdi_interview_type "Interview Type"
label define _cdi_interview_type 1 "In-Person Interview" 2 "Phone Interview"
label values cdi_interview_type _cdi_interview_type

label variable cdi_relationship "What is your relationship to the participant?"
label define _cdi_relationship 1 "Spouse" 2 "Sibling" 3 "Child" 4 "Other Relative" 5 "Friend"
label values cdi_relationship _cdi_relationship

label variable cdi_years_known "For how many years have you known the participant?"

label variable cdi_see_how_often "How often do you see the participant?"
label define _cdi_see_how_often 0 "Every day or every other day" 1 "Between one and three times a week" 2 "Once a month" 3 "A few times a year or less often"
label values cdi_see_how_often _cdi_see_how_often

label variable cdi_hearing_dfficulty "Does the participant have significant hearing difficulties that interfere with daily communication?"
label define _cdi_hearing_dfficulty 1 "Yes" 0 "No"
label values cdi_hearing_dfficulty _cdi_hearing_dfficulty

label variable cdi_visual_dfficulty "Does the participant have significant visual difficulties that interfere with daily activities?"
label define _cdi_visual_dfficulty 1 "Yes" 0 "No"
label values cdi_visual_dfficulty _cdi_visual_dfficulty

label variable cdi_walking_difficulty "Does the participant have significant walking or balance difficulties that interfere with daily activities?"
label define _cdi_walking_difficulty 1 "Yes" 0 "No"
label values cdi_walking_difficulty _cdi_walking_difficulty

label variable cdi_english_first_lang "Does the participant speak English as her/his first language?"
label define _cdi_english_first_lang 1 "Yes" 0 "No"
label values cdi_english_first_lang _cdi_english_first_lang

label variable cdi_lifelong_mental "Are there any other circumstances, such as lifelong mental retardation, severe medical illness, or depression that impact the participant's daily functioning?"
label define _cdi_lifelong_mental 1 "Yes" 0 "No"
label values cdi_lifelong_mental _cdi_lifelong_mental

label variable cdi_circumstance "If Yes, what is the circumstance?"
label define _cdi_circumstance 0 "Lifelong mental retardation" 1 "Severe illness" 2 "Depression" 3 "Other"
label values cdi_circumstance _cdi_circumstance

label variable cdi_dem_fh "Were any of the participant's immediate family members, that is biological parents or full brothers or sisters, ever diagnosed with dementia, Alzheimer's disease, senility, or hardening of the arteries in the brain?"
label define _cdi_dem_fh 1 "Yes" 0 "No"
label values cdi_dem_fh _cdi_dem_fh

label variable cdi_dem_fh_member___1 "Mother (If Yes, which family member?)"

label variable cdi_dem_fh_member___2 "Father (If Yes, which family member?)"

label variable cdi_dem_fh_member___3 "Sibling (If Yes, which family member?)"

label variable cdi_demdx "Has the participant been diagnosed with dementia, Alzheimer's Disease or mild cognitive impairment?"
label define _cdi_demdx 0 "No" 1 "Mild Cognitive Impairment" 2 "Dementia" 3 "Alzheimer's Disease"
label values cdi_demdx _cdi_demdx

label variable cdi_consistent_changes "Have you noticed any consistent changes in the participant's memory over the past year?"
label define _cdi_consistent_changes 0 "No (or no evidence of)" 1 "Slight or possible" 2 "Definite"
label values cdi_consistent_changes _cdi_consistent_changes

label variable cdi_memory_changes "Did these memory changes start slowly, or more quickly?"
label define _cdi_memory_changes 0 "Slow" 1 "They started very quickly" 2 "They started quickly" 3 "Don't know"
label values cdi_memory_changes _cdi_memory_changes

label variable cdi_complain_memory_prob "Does the participant consistently complain about memory problems?"
label define _cdi_complain_memory_prob 1 "Yes" 0 "No"
label values cdi_complain_memory_prob _cdi_complain_memory_prob

label variable cdi_forget_events "Does the participant forget recent events such as a trip, party, family gathering"
label define _cdi_forget_events 0 "No (or no evidence of)" 1 "Rarely (once a week or less)" 2 "Between rarely and frequently" 3 "Frequently (every day or more often)"
label values cdi_forget_events _cdi_forget_events

label variable cdi_repeat_same_ques "Does the participant repeat the same questions or stories more than once in a short period of time?"
label define _cdi_repeat_same_ques 0 "No (or no evidence of)" 1 "Rarely (once a week or less)" 2 "Between rarely and frequently" 3 "Frequently (every day or more often)"
label values cdi_repeat_same_ques _cdi_repeat_same_ques

label variable cdi_forget_conversation "Does the participant forget conversations?"
label define _cdi_forget_conversation 0 "No (or no evidence of)" 1 "Rarely (once a week or less)" 2 "Between rarely and frequently" 3 "Frequently (every day or more often)"
label values cdi_forget_conversation _cdi_forget_conversation

label variable cdi_spend_more_time "Does the participant spend more time looking for belongings (papers, glasses, keys, wallet, jewelry, etc) (e.g., Misplacing things)?"
label define _cdi_spend_more_time 0 "No (or no evidence of)" 1 "Rarely (once a week or less)" 2 "Between rarely and frequently" 3 "Frequently (every day or more often)"
label values cdi_spend_more_time _cdi_spend_more_time

label variable cdi_forget_appointments "Does the participant forget appointments?"
label define _cdi_forget_appointments 0 "Remembers without written or verbal reminders" 1 "Remembers but with aid of notes" 2 "Remembers with verbal reminders on day" 3 "Usually forgets appointments" 4 "Never kept track of appointments"
label values cdi_forget_appointments _cdi_forget_appointments

label variable cdi_keep_track_current_events "Does the participant have trouble keeping track of current events?"
label define _cdi_keep_track_current_events 0 "No (or no evidence of)" 1 "Rarely (once a week or less)" 2 "Between rarely and frequently" 3 "Frequently (every day or more often)" 4 "Never did"
label values cdi_keep_track_current_events _cdi_keep_track_current_events

label variable cdi_forget_names "Does the participant forget names of close friends or relative?"
label define _cdi_forget_names 0 "No (or no evidence of)" 1 "Rarely (once a week or less)" 2 "Between rarely and frequently" 3 "Frequently (every day or more often)"
label values cdi_forget_names _cdi_forget_names

label variable cdi_trouble_forgetting_midstream "Has the participant had trouble with forgetting in 'mid-stream'?"
label define _cdi_trouble_forgetting_midstrea 0 "No (or no evidence of)" 1 "Rarely (once a week or less)" 2 "Between rarely and frequently" 3 "Frequently (every day or more often)"
label values cdi_trouble_forgetting_midstream _cdi_trouble_forgetting_midstrea

label variable cdi_trouble_knowing_day "Do you think that the participant has more trouble knowing the exact day of the week and date (time orientation)?"
label define _cdi_trouble_knowing_day 0 "No (or no evidence of)" 1 "Rarely (once a week or less)" 2 "Between rarely and frequently" 3 "Frequently (every day or more often)"
label values cdi_trouble_knowing_day _cdi_trouble_knowing_day

label variable cdi_trouble_specific_directions "Does the participant have trouble with directions in familiar areas such as their specific neighborhood?"
label define _cdi_trouble_specific_directions 0 "No (or no evidence of)" 1 "Rarely (once a week or less)" 2 "Between rarely and frequently" 3 "Frequently (every day or more often)" 4 "Never was able to follow directions"
label values cdi_trouble_specific_directions _cdi_trouble_specific_directions

label variable cdi_typical_daily_challenges "Do you believe that there are any changes in the participant's thinking and judgment or ability to solve typical daily challenges?"
label define _cdi_typical_daily_challenges 1 "Yes" 0 "No"
label values cdi_typical_daily_challenges _cdi_typical_daily_challenges

label variable cdi_handle_unexpected_problems "How would you rate the participant's ability to handle unexpected problems such as household emergencies in the past year such as plumbing leaks or tripped fuses or circuit breakers?"
label define _cdi_handle_unexpected_problems 0 "As good as they have ever been" 1 "Good" 2 "Fair" 3 "Poor"
label values cdi_handle_unexpected_problems _cdi_handle_unexpected_problems

label variable cdi_change_write_checks "Have you noticed any changes in the participant's ability to write checks, pay routine bills, cope with small sums of money (e.g., make change, leave a small tip, handle cash in the past year)?"
label define _cdi_change_write_checks 0 "No (or no evidence of)" 1 "Yes" 2 "Yes" 3 "Yes" 4 "Never did these things"
label values cdi_change_write_checks _cdi_change_write_checks

label variable cdi_handle_complicated_challenge "Have you noticed any changes in the participant's ability to handle more complicated financial or business transactions (e.g., pay taxes, make decisions about investments and savings) in the past year?"
label define _cdi_handle_complicated_challeng 0 "No (or no evidence of)" 1 "Yes" 2 "Yes" 3 "Yes" 4 "Never did these things"
label values cdi_handle_complicated_challenge _cdi_handle_complicated_challeng

label variable cdi_less_desire "Have you noticed that the participant has less initiative or desire to carry out necessary chores or activities?"
label define _cdi_less_desire 0 "No (or no evidence of)" 1 "Yes" 2 "Yes"
label values cdi_less_desire _cdi_less_desire

label variable cdi_typical_daily_challenges2 "Do you believe that there are any other changes in the participant's thinking and judgment or ability to solve typical daily challenges?"
label define _cdi_typical_daily_challenges2 0 "No (or no evidence of)" 1 "Slight or possible" 2 "Definite yes"
label values cdi_typical_daily_challenges2 _cdi_typical_daily_challenges2

label variable cdi_memory_problems "Does the participant have significant difficulty at (paid or volunteer) job because of problems with memory or thinking?"
label define _cdi_memory_problems 1 "Yes" 0 "No" 2 "Retired"
label values cdi_memory_problems _cdi_memory_problems

label variable cdi_less_involved "Has the participant been less involved in activities outside the home than previously?"
label define _cdi_less_involved 0 "No (or no evidence of)" 1 "Yes" 2 "Yes"
label values cdi_less_involved _cdi_less_involved

label variable cdi_difficulty_shopping_alone "Has the participant had difficulty with shopping alone and making a purchase (at a grocery store, hardware store, department store) on her/his own?"
label define _cdi_difficulty_shopping_alone 0 "No (or no evidence of)" 1 "Yes" 2 "Yes" 3 "Yes" 4 "Never did these things"
label values cdi_difficulty_shopping_alone _cdi_difficulty_shopping_alone

label variable cdi_unsafe_practices "Has the participant exhibited unsafe practices in operating a motor vehicle safely, such as having accidents or near misses, hesitating in intersections, running stop signs/lights, driving recklessly?"
label define _cdi_unsafe_practices 0 "No" 1 "Some minor concerns" 2 "Significant safety concerns" 3 "Ceased driving because of safety" 4 "Never drove or ceased driving for physical or sensory reasons"
label values cdi_unsafe_practices _cdi_unsafe_practices

label variable cdi_household_chores "Have you noticed changes in the participant's ability to do household chores?"
label define _cdi_household_chores 0 "No (or no evidence of)" 1 "Yes" 2 "Yes" 3 "Never did any household chores"
label values cdi_household_chores _cdi_household_chores

label variable cdi_trouble_household_activities "Does the participant have any trouble using any of the following household appliances?  Washer  dryer   vacuum   Dishwasher   power tool(s) toaster oven  Range   microwave   food processor  Television   VCR/DVD  lawn mower"
label define _cdi_trouble_household_activitie 0 "No (or no evidence of)" 1 "Yes" 2 "Yes" 3 "Yes" 4 "Never used any"
label values cdi_trouble_household_activities _cdi_trouble_household_activitie

label variable cdi_decreased_interest "Has the participant shown decreased interest in previous hobbies or pastimes, such as reading, woodworking, knitting, sewing, gardening, etc?"
label define _cdi_decreased_interest 0 "No (or no evidence of)" 1 "Yes" 2 "Yes" 3 "Yes" 4 "Never had hobbies or pastimes"
label values cdi_decreased_interest _cdi_decreased_interest

label variable cdi_trouble_heating_water "Does the participant have trouble heating up water, making coffee or turning off the stove?"
label define _cdi_trouble_heating_water 0 "No (or no evidence of)" 1 "Yes" 2 "Yes" 3 "Yes" 4 "Never did"
label values cdi_trouble_heating_water _cdi_trouble_heating_water

label variable cdi_trouble_preparing_meal "Does the participant have trouble preparing a balanced meal for him/herself?"
label define _cdi_trouble_preparing_meal 0 "No (or no evidence of)" 1 "Yes" 2 "Yes" 3 "Yes" 4 "Never did"
label values cdi_trouble_preparing_meal _cdi_trouble_preparing_meal

label variable cdi_difficulty_adl "Do you think that the participant has any difficulty managing his/her own bathing, dressing or toileting?"
label define _cdi_difficulty_adl 0 "Completely independent without supervision or concerns" 1 "Somewhat dependent on others for non-physical reasons" 2 "Anything worse"
label values cdi_difficulty_adl _cdi_difficulty_adl

label variable cdi_difficulty_bladder "Do you think that the participant has any difficulty controlling his bladder or bowels?"
label define _cdi_difficulty_bladder 1 "Yes" 0 "No"
label values cdi_difficulty_bladder _cdi_difficulty_bladder

label variable cdi_accidents_bladder "Has the participant had any incontinence, or accidents with their bladder or bowels?"
label define _cdi_accidents_bladder 0 "No" 1 "Yes" 2 "Yes" 3 "Yes"
label values cdi_accidents_bladder _cdi_accidents_bladder

label variable cdi_knowledge_about_ptcpt "How would you rate the proxy's knowledge about the participant?"
label define _cdi_knowledge_about_ptcpt 1 "Good" 2 "Fair" 3 "Poor"
label values cdi_knowledge_about_ptcpt _cdi_knowledge_about_ptcpt

label variable cdi_how_reliable_informant "How reliable of an informant was the proxy? Did he/ she seem to understand the questions and answer appropriately?"
label define _cdi_how_reliable_informant 1 "Good" 2 "Fair" 3 "Poor"
label values cdi_how_reliable_informant _cdi_how_reliable_informant

label variable cdi_lack_private_location "Were there extenuating circumstances, such as poor phone reception or lack of a private location for this interview, that might have interfered with the quality of the responses?"
label define _cdi_lack_private_location 0 "No" 1 "Yes" 2 "Yes"
label values cdi_lack_private_location _cdi_lack_private_location

label variable cdi_overall_impression "In your opinion based on your interview of the informant, what is your overall impression of the subject's level of function in daily affairs?"
label define _cdi_overall_impression 0 "Normal level" 1 "Daily functioning is questionably impaired on cognitive grounds" 2 "Daily functioning is mildly but definitely impaired on cognitive grounds" 3 "Daily functioning is at least moderately impaired on cognitive grounds"
label values cdi_overall_impression _cdi_overall_impression

