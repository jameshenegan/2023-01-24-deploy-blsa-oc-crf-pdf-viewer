clear
import delimited "../data-csv/37_eci_everyday_cognition_12_informant.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable eci_obj_placement "Remember where he/she placed objects"
label define _eci_obj_placement 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_obj_placement _eci_obj_placement

label variable eci_current_date "Remember the current date/day of the week"
label define _eci_current_date 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_current_date _eci_current_date

label variable eci_lang_ext "Communicate thoughts in a conversation"
label define _eci_lang_ext 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_lang_ext _eci_lang_ext

label variable eci_lang_int "Understand spoken directions or instructions"
label define _eci_lang_int 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_lang_int _eci_lang_int

label variable eci_map "Read a map and help with directions when someone else is driving"
label define _eci_map 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_map _eci_map

label variable eci_home "Find his/her way around a house they visited many times"
label define _eci_home 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_home _eci_home

label variable eci_weather "Anticipate weather changes and plan accordingly (wear coat or bring umbrella)"
label define _eci_weather 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_weather _eci_weather

label variable eci_premeditate "Think ahead (planning for a trip, cooking a large holiday dinner)"
label define _eci_premeditate 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_premeditate _eci_premeditate

label variable eci_living_org "Keep living and work spaces organized"
label define _eci_living_org 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_living_org _eci_living_org

label variable eci_fin_org "Balance the checkbook without error"
label define _eci_fin_org 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_fin_org _eci_fin_org

label variable eci_multitask_gen "Do two things at once"
label define _eci_multitask_gen 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_multitask_gen _eci_multitask_gen

label variable eci_multitask_talk "Cook/work and talk at the same time"
label define _eci_multitask_talk 1 "Better or No Change" 2 "Questionable or Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 888 "Don't Know"
label values eci_multitask_talk _eci_multitask_talk

label variable eci_obj_placement_num "Placement"

label variable eci_current_date_num "Current Date"

label variable eci_lang_ext_num "Language Externalizing"

label variable eci_lang_int_num "Language Internalizing"

label variable eci_map_num "Map"

label variable eci_home_num "Navigation"

label variable eci_weather_num "Weather"

label variable eci_premeditate_num "Plan"

label variable eci_living_org_num "Organize"

label variable eci_fin_org_num "Finances"

label variable eci_multitask_gen_num "General Multitasking"

label variable eci_multitask_talk_num "Talking Multitasking"

label variable eci_score "Everyday Cognition-12, ECOG-12, Informant Score (range: 1-4)  Placement ([eci_obj_placement_num]) + Current Date ([eci_current_date_num]) + Language Externalizing ([eci_lang_ext_num]) + Language Internalizing ([eci_lang_int_num]) + Map ([eci_map_num]) + Navigation ([eci_home_num]) + Weather ([eci_weather_num]) + Plan ([eci_premeditate_num]) + Organize ([eci_living_org_num]) + Finances ([eci_fin_org_num]) + General Multitasking ([eci_multitask_gen_num]) + Talking Multitasking ([eci_multitask_talk_num]) / 12"

label variable eci_relationship "What is your relationship to the participant?"
label define _eci_relationship 1 "Spouse/Partner" 2 "Son" 3 "Daughter" 4 "Son-in-law" 5 "Daughter-in-law" 6 "Other family member" 7 "Friend" 0 "Other {eci_relationship_other}"
label values eci_relationship _eci_relationship

label variable eci_visit_freq "How often do you see him/her?"
label define _eci_visit_freq 1 "Everyday" 2 "4-6 days per week" 3 "2-3 days per week" 4 "Once a week" 5 "Once every two weeks" 6 "Once per month" 7 "Less than once per month"
label values eci_visit_freq _eci_visit_freq

label variable eci_visit_hrs "On average, how many hours per week do you spend with him/her?"

label variable eci_yrs "How many years have you known the participant?"

label variable eci_inf_male "What is your gender?"
label define _eci_inf_male 0 "Female" 1 "Male"
label values eci_inf_male _eci_inf_male

label variable eci_inf_age "How old are you?"

