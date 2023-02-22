clear
import delimited "../data-csv/17_cdp_clinical_dementia_rating_participant.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable cdp_forget_appointment "Do you forget appointments and (or) rely more on a calendar?"
label define _cdp_forget_appointment 1 "Yes" 0 "No"
label values cdp_forget_appointment _cdp_forget_appointment

label variable cdp_repeat_ques "Do you repeat the same questions or stories?"
label define _cdp_repeat_ques 1 "Yes" 0 "No"
label values cdp_repeat_ques _cdp_repeat_ques

label variable cdp_forget_people_say "Do you forget what people say in conversations or on the phone, or forget to pass on messages?"
label define _cdp_forget_people_say 1 "Yes" 0 "No"
label values cdp_forget_people_say _cdp_forget_people_say

label variable cdp_spend_more "Do you spend more time than you used to looking for objects?(papers, glasses, keys, wallet)"
label define _cdp_spend_more 1 "Yes" 0 "No"
label values cdp_spend_more _cdp_spend_more

label variable cdp_trouble_finding_words "Do you have more trouble finding the words that you want to use?"
label define _cdp_trouble_finding_words 1 "Yes" 0 "No"
label values cdp_trouble_finding_words _cdp_trouble_finding_words

label variable cdp_trouble_names "Do you have more trouble coming up with names of people that you see often?"
label define _cdp_trouble_names 1 "Yes" 0 "No"
label values cdp_trouble_names _cdp_trouble_names

label variable cdp_trouble_lights_on "Do you have problems leaving the stove on, or leaving car lights on, or doors unlocked?"
label define _cdp_trouble_lights_on 1 "Yes" 0 "No"
label values cdp_trouble_lights_on _cdp_trouble_lights_on

label variable cdp_memory_got_worse "Do you think these changes in your memory have gotten worse in the past year?"
label define _cdp_memory_got_worse 1 "Yes" 0 "No"
label values cdp_memory_got_worse _cdp_memory_got_worse

label variable cdp_memory_concern "Has anyone in your family ever expressed concern or worry about your memory?"
label define _cdp_memory_concern 1 "Yes" 0 "No"
label values cdp_memory_concern _cdp_memory_concern

label variable cdp_accidents_while_driving "Have you had any accidents or close calls while driving in the past year?"
label define _cdp_accidents_while_driving 1 "Yes" 0 "No" 2 "Does Not Drive"
label values cdp_accidents_while_driving _cdp_accidents_while_driving

label variable cdp_someone_ride_always "Does someone always ride with you as a navigator when you drive?"
label define _cdp_someone_ride_always 1 "Yes" 0 "No"
label values cdp_someone_ride_always _cdp_someone_ride_always

label variable cdp_gotten_lost "Have you gotten lost in a familiar area?"
label define _cdp_gotten_lost 1 "Yes" 0 "No"
label values cdp_gotten_lost _cdp_gotten_lost

label variable cdp_difficulty_finding_your_way "Have you had more difficulty finding your way around outside your own neighborhood?"
label define _cdp_difficulty_finding_your_way 1 "Yes" 0 "No"
label values cdp_difficulty_finding_your_way _cdp_difficulty_finding_your_way

label variable cdp_change_dealing_money "Have you noticed any changes in your ability to deal with money? (figuring out a tip, getting back correct change)"
label define _cdp_change_dealing_money 0 "No Loss" 1 "Some Loss" 2 "Severe Loss"
label values cdp_change_dealing_money _cdp_change_dealing_money

label variable cdp_ability_to_pay_bills "Have you noticed any changes in your ability to balance your checkbook or pay bills? (bounced checks, forgotten to pay a bill, paid bill twice)"
label define _cdp_ability_to_pay_bills 0 "No Change" 1 "Some Change" 2 "Severe Change"
label values cdp_ability_to_pay_bills _cdp_ability_to_pay_bills

label variable cdp_still_working "Are you still working?"
label define _cdp_still_working 1 "Yes" 0 "No" 2 "Never worked"
label values cdp_still_working _cdp_still_working

label variable cdp_memory_problems_interfere "Did memory problems interfere with your ability to do your job? (when you were working)"
label define _cdp_memory_problems_interfere 1 "Yes" 0 "No"
label values cdp_memory_problems_interfere _cdp_memory_problems_interfere

label variable cdp_belong_to_any_groups "Do you belong to any groups? (senior citizen, religious, political, professional, volunteer, or social)"
label define _cdp_belong_to_any_groups 1 "Yes" 0 "No"
label values cdp_belong_to_any_groups _cdp_belong_to_any_groups

label variable cdp_attended_group_func "Have you attended group functions or meetings as often as you usually do in the past few months?"
label define _cdp_attended_group_func 0 "As often" 1 "Less often" 2 "Not at all"
label values cdp_attended_group_func _cdp_attended_group_func

label variable cdp_shopping_help "Does someone help you with shopping (food or clothes) who previously hadn't? (transportation, driving)"
label define _cdp_shopping_help 1 "Yes" 0 "No" 2 "Does not shop"
label values cdp_shopping_help _cdp_shopping_help

label variable cdp_change_in_household_chores "Have you noticed changes in your ability to do household chores? (cooking, laundry, cleaning, using household appliances like dishwasher, vacuum, or television, doing grocery shopping, yard work, taking out the garbage, taking care of the car, or fixing things around the house)"
label define _cdp_change_in_household_chores 0 "No Change" 1 "Some Change" 2 "Never do household chores"
label values cdp_change_in_household_chores _cdp_change_in_household_chores

label variable cdp_change_in_involvement "Has there been any change in your involvement in any hobbies or pastimes? (sewing, knitting, painting, playing cards, reading, watching or playing sports)"
label define _cdp_change_in_involvement 0 "No Change" 1 "Some Change" 2 "Do not have hobbies or pastimes"
label values cdp_change_in_involvement _cdp_change_in_involvement

