clear
import delimited "../data-csv/16_bmt_blessed_memory_test.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable bmt_names_just_met "The names of people you have just met?"
label define _bmt_names_just_met 0 "Better" 1 "As Good" 2 "Slightly Worse" 3 "Definitely Worse"
label values bmt_names_just_met _bmt_names_just_met

label variable bmt_faces_just_met "The faces of people you have just met?"
label define _bmt_faces_just_met 0 "Better" 1 "As Good" 2 "Slightly Worse" 3 "Definitely Worse"
label values bmt_faces_just_met _bmt_faces_just_met

label variable bmt_close_friends "The names of close friends and family?"
label define _bmt_close_friends 0 "Better" 1 "As Good" 2 "Slightly Worse" 3 "Definitely Worse"
label values bmt_close_friends _bmt_close_friends

label variable bmt_appointments "Appointments correctly?"
label define _bmt_appointments 0 "Better" 1 "As Good" 2 "Slightly Worse" 3 "Definitely Worse"
label values bmt_appointments _bmt_appointments

label variable bmt_problem_lately "Do you feel as if you have any problems with any other aspect of your thinking or memory lately?"
label define _bmt_problem_lately 1 "Yes {bmt_problem_lately_other}" 0 "No" 888 "Don't Know" 999 "Refused"
label values bmt_problem_lately _bmt_problem_lately

label variable bmt_subtotal_memory "Memory Total (range: 0-12):   New Names ([bmt_names_just_met]) + New Faces ([bmt_faces_just_met]) + Old Names ([bmt_close_friends]) + Appointments ([bmt_appointments])"

label variable bmt_address_trial1___0 "None (Trial 1: Repeat this name and address after me: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial1___1 "John (Trial 1: Repeat this name and address after me: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial1___2 "Brown (Trial 1: Repeat this name and address after me: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial1___3 "42 (Trial 1: Repeat this name and address after me: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial1___4 "Market Street (Trial 1: Repeat this name and address after me: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial1___5 "Chicago (Trial 1: Repeat this name and address after me: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial2___0 "None (Trial 2: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial2___1 "John (Trial 2: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial2___2 "Brown (Trial 2: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial2___3 "42 (Trial 2: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial2___4 "Market Street (Trial 2: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial2___5 "Chicago (Trial 2: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial3___0 "None (Trial 3: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial3___1 "John (Trial 3: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial3___2 "Brown (Trial 3: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial3___3 "42 (Trial 3: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial3___4 "Market Street (Trial 3: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_address_trial3___5 "Chicago (Trial 3: Let's try that again, the name and address is: John Brown 42 Market Street Chicago)"

label variable bmt_subtotal_phrase_reg1 "Phrase Registration Trial 1 (range: 0-5)"

label variable bmt_subtotal_phrase_reg2 "Phrase Registration Trial 2 (range: 0-5)"

label variable bmt_subtotal_phrase_reg3 "Phrase Registration Trial 3 (range: 0-5)"

label variable bmt_subtotal_phrase_reg "Phrase Registration Total (range: 0-5):   5 - max[Trial 1 ([bmt_subtotal_phrase_reg1]), Trial 2 ([bmt_subtotal_phrase_reg2]), Trial 3 ([bmt_subtotal_phrase_reg3])]"

label variable bmt_year_result "Score: What year is this?"
label define _bmt_year_result 1 "Correct Response" 0 "Incorrect Response"
label values bmt_year_result _bmt_year_result

label variable bmt_month_result "Score: What month is it?"
label define _bmt_month_result 1 "Correct Response" 0 "Incorrect Response"
label values bmt_month_result _bmt_month_result

label variable bmt_weekday_result "Score: What day of the week is it?"
label define _bmt_weekday_result 1 "Correct Response" 0 "Incorrect Response"
label values bmt_weekday_result _bmt_weekday_result

label variable bmt_monthday_result "Score: What is the date today?"
label define _bmt_monthday_result 1 "Correct Response" 0 "Incorrect Response"
label values bmt_monthday_result _bmt_monthday_result

label variable bmt_location_result "Score: What is the name of this place where we are right now?"
label define _bmt_location_result 1 "Correct Response" 0 "Incorrect Response"
label values bmt_location_result _bmt_location_result

label variable bmt_city_result "Score: What city are we in?"
label define _bmt_city_result 1 "Correct Response" 0 "Incorrect Response"
label values bmt_city_result _bmt_city_result

label variable bmt_time_result "Score: Without looking at a clock or watch, what is the approximate time of day?"
label define _bmt_time_result 1 "Correct Response" 0 "Incorrect Response"
label values bmt_time_result _bmt_time_result

label variable bmt_subtotal_orientation "Orientation Total (range: 0-7)  7 - Year ([bmt_year_result]) - Month ([bmt_month_result]) - Week Day ([bmt_weekday_result]) - Month Day ([bmt_monthday_result]) - Location ([bmt_location_result]) - City ([bmt_city_result]) - Time ([bmt_time_result])"

label variable bmt_vegetables "How are A TURNIP and A CAULIFLOWER alike?"
label define _bmt_vegetables 1 "Vegetables" 0 "Anything Else{bmt_vegetables_other}"
label values bmt_vegetables _bmt_vegetables

label variable bmt_furniture "How are A DESK and A BOOKCASE alike?"
label define _bmt_furniture 1 "Furniture" 0 "Anything Else{bmt_furniture_other}"
label values bmt_furniture _bmt_furniture

label variable bmt_lie_mistake "How are A LIE and A MISTAKE different?"
label define _bmt_lie_mistake 1 "One Deliberate" 0 "Anything Else{bmt_lie_mistake_other}"
label values bmt_lie_mistake _bmt_lie_mistake

label variable bmt_river_canal "How are A RIVER and A CANAL different?"
label define _bmt_river_canal 1 "Natural" 0 "Anything Else{bmt_river_canal_other}"
label values bmt_river_canal _bmt_river_canal

label variable bmt_subtotal_judgement "Judgement Total (range: 0-4):   4 - Turnip-Cauliflower ([bmt_vegetables]) - Desk-Bookcase ([bmt_furniture]) - Lie-Mistake ([bmt_lie_mistake]) - River-Canal ([bmt_river_canal])"

label variable bmt_money05 "How many nickels are in a dollar?"
label define _bmt_money05 1 "20" 0 "Anything Else {bmt_money05_other}"
label values bmt_money05 _bmt_money05

label variable bmt_money25 "How many quarters are there in $6.75?"
label define _bmt_money25 1 "27" 0 "Anything Else {bmt_money25_other}"
label values bmt_money25 _bmt_money25

label variable bmt_subtraction___20 "20 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___19 "19 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___18 "18 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___17 "17 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___16 "16 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___15 "15 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___14 "14 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___13 "13 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___12 "12 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___11 "11 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___10 "10 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___9 "9 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___8 "8 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___7 "7 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___6 "6 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___5 "5 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___4 "4 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___3 "3 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___2 "2 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___1 "1 (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction___0 "Anything Else {bmt_subtraction_other} (Subtract 3 from 20 and keep subtracting by 3 all the way down.)"

label variable bmt_subtraction_result "Score: Subtract 3 from 20 and keep subtracting by 3 all the way down."

label variable bmt_unfamiliar_city "Upon arriving in an unfamiliar city, how would you get in touch with a friend that you wished to see if you don't have their contact information?"
label define _bmt_unfamiliar_city 1 "Acceptable Response (use a cell phone" 0 "Anything Else{bmt_unfamiliar_city_other} (call the police"
label values bmt_unfamiliar_city _bmt_unfamiliar_city

label variable bmt_subtotal_prob_solving "Problem Solving Total (range: 0-4):   4 - Currency Conversion, Nickels ([bmt_money05]) - Currency Conversion, Quarters ([bmt_money25]) - Subtraction ([bmt_subtraction_result]) - Unfamiliar City ([bmt_unfamiliar_city])"

label variable bmt_address_remember___0 "None (Phrase Elements)"

label variable bmt_address_remember___1 "John (Phrase Elements)"

label variable bmt_address_remember___2 "Brown (Phrase Elements)"

label variable bmt_address_remember___3 "42 (Phrase Elements)"

label variable bmt_address_remember___4 "Market Street (Phrase Elements)"

label variable bmt_address_remember___5 "Chicago (Phrase Elements)"

label variable bmt_subtotal_phrase_recall1 "Phrase Recall Trial 1 (range: 0-5)"

label variable bmt_subtotal_phrase_recall "Phrase Recall Total (range: 0-5):   5 - max[Trial 1 ([bmt_subtotal_phrase_recall1])]"

label variable bmt_total "BMT Total (range: 0-37):   Memory ([bmt_subtotal_memory]) + Phrase Regristration ([bmt_subtotal_phrase_reg]) + Orientation ([bmt_subtotal_orientation]) + Judgement ([bmt_subtotal_judgement]) + Problem Solving ([bmt_subtotal_prob_solving]) + Phrase Recall ([bmt_subtotal_phrase_recall])"

