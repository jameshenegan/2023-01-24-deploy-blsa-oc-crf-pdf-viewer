clear
import delimited "../data-csv/27_ecp_everyday_cognition_12_participant.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable ecp_obj_placement "Remember where you've placed objects"
label define _ecp_obj_placement 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_obj_placement _ecp_obj_placement

label variable ecp_current_date "Remember the current date/day of the week"
label define _ecp_current_date 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_current_date _ecp_current_date

label variable ecp_lang_ext "Communicate thoughts in a conversation"
label define _ecp_lang_ext 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_lang_ext _ecp_lang_ext

label variable ecp_lang_int "Understand spoken directions or instructions"
label define _ecp_lang_int 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_lang_int _ecp_lang_int

label variable ecp_map "Read a map and help with directions when someone else is driving"
label define _ecp_map 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_map _ecp_map

label variable ecp_home "Find your way around a house you've visited many times"
label define _ecp_home 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_home _ecp_home

label variable ecp_weather "Anticipate weather changes and plan accordingly (wear coat or bring umbrella)"
label define _ecp_weather 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_weather _ecp_weather

label variable ecp_premeditate "Think ahead (planning for a trip, cooking a large holiday dinner)"
label define _ecp_premeditate 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_premeditate _ecp_premeditate

label variable ecp_living_org "Keep living and work spaces organized"
label define _ecp_living_org 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_living_org _ecp_living_org

label variable ecp_fin_org "Balance the checkbook without error"
label define _ecp_fin_org 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_fin_org _ecp_fin_org

label variable ecp_multitask_gen "Do two things at once"
label define _ecp_multitask_gen 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_multitask_gen _ecp_multitask_gen

label variable ecp_multitask_talk "Cook/work and talk at the same time"
label define _ecp_multitask_talk 1 "Better or No Change" 2 "Occasionally Worse" 3 "Consistently a Little Worse" 4 "Consistently Much Worse" 999 "Refused"
label values ecp_multitask_talk _ecp_multitask_talk

label variable ecp_obj_placement_num "Placement"

label variable ecp_current_date_num "Current Date"

label variable ecp_lang_ext_num "Language Externalizing"

label variable ecp_lang_int_num "Language Internalizing"

label variable ecp_map_num "Map"

label variable ecp_home_num "Navigation"

label variable ecp_weather_num "Weather"

label variable ecp_premeditate_num "Plan"

label variable ecp_living_org_num "Organize"

label variable ecp_fin_org_num "Finances"

label variable ecp_multitask_gen_num "General Multitasking"

label variable ecp_multitask_talk_num "Talking Multitasking"

label variable ecp_score "Everyday Cognition-12, ECOG-12, Participant Score (range: 1-4)  Placement ([ecp_obj_placement]) + Current Date ([ecp_current_date_num]) + Language Externalizing ([ecp_lang_ext_num]) + Language Internalizing ([ecp_lang_int_num]) + Map ([ecp_map_num]) + Navigation ([ecp_home_num]) + Weather ([ecp_weather_num]) + Plan ([ecp_premeditate_num]) + Organize ([ecp_living_org_num]) + Finances ([ecp_fin_org_num]) + General Multitasking ([ecp_multitask_gen_num]) + Talking Multitasking ([ecp_multitask_talk_num]) / 12"

