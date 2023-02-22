clear
import delimited "../data-csv/12_sms_short_test_of_mental_status.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable sms_name "What is your full name?"
label define _sms_name 1 "Matches provided information" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_name _sms_name

label variable sms_address "What is your home address?"
label define _sms_address 1 "Matches provided information" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_address _sms_address

label variable sms_location "What is the name of this place where we are right now?"
label define _sms_location 1 "University of Mississippi Medical Center (UMMC) or similar" 2 "MIND Center" 3 "Research Clinic" 4 "Study of Aging Visit" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_location _sms_location

label variable sms_city "What city is this?"
label define _sms_city 1 "Jackson" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_city _sms_city

label variable sms_state "What state are we in?"
label define _sms_state 1 "Mississippi" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_state _sms_state

label variable sms_date "What date is it?"
label define _sms_date 1 "Today's Date ([sms_date_pipe])" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_date _sms_date

label variable sms_weekday "What is the day of the week?"
label define _sms_weekday 1 "Monday" 2 "Tuesday" 3 "Wednesday" 4 "Thursday" 5 "Friday" 6 "Saturday" 7 "Sunday" 888 "Don't Know" 999 "Refused"
label values sms_weekday _sms_weekday

label variable sms_date_components___1 "Matched Day of Week (Sunday-Saturday) (Date Recall Scoring)"

label variable sms_date_components___2 "Matched Date of Month (1st-31st) (Date Recall Scoring)"

label variable sms_date_components___3 "Matched Year (20xx) (Date Recall Scoring)"

label variable sms_date_components___4 "Matched Month of Year (1-12) (Date Recall Scoring)"

label variable sms_date_components___888 "Didn't Know (Date Recall Scoring)"

label variable sms_date_components___999 "Refused (Date Recall Scoring)"

label variable sms_subtotal_orientation "Orientation Total (0-8)"

label variable sms_subtotal_nr "Number Recall Total (best series length recall; 0, 2-7)"

label variable sms_wr1___1 "apple (Trial 1 Repeat these words after me: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr1___2 "Mr. Johnson (Trial 1 Repeat these words after me: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr1___3 "charity (Trial 1 Repeat these words after me: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr1___4 "tunnel (Trial 1 Repeat these words after me: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr1___5 "none (Trial 1 Repeat these words after me: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr2___1 "apple (Trial 2 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr2___2 "Mr. Johnson (Trial 2 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr2___3 "charity (Trial 2 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr2___4 "tunnel (Trial 2 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr2___5 "none (Trial 2 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr3___1 "apple (Trial 3 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr3___2 "Mr. Johnson (Trial 3 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr3___3 "charity (Trial 3 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr3___4 "tunnel (Trial 3 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr3___5 "none (Trial 3 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr4___1 "apple (Trial 4 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr4___2 "Mr. Johnson (Trial 4 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr4___3 "charity (Trial 4 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr4___4 "tunnel (Trial 4 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr4___5 "none (Trial 4 Let's try that again, the words are: apple, Mr. Johnson, charity, tunnel)"

label variable sms_wr_trials "Number of trials (1-4)"

label variable sms_wr_best "Max number of items learned (0-4)"

label variable sms_subtotal_wr "Word Recall Total (Best recall in single trial - Number of additional trials beyond the first ; -3,4)"

label variable sms_calc_mul "What is 5 times 13?"
label define _sms_calc_mul 1 "65" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_calc_mul _sms_calc_mul

label variable sms_calc_sub "What is 65 minus 7?"
label define _sms_calc_sub 1 "58" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_calc_sub _sms_calc_sub

label variable sms_calc_div "What is 58 divided by 2?"
label define _sms_calc_div 1 "29" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_calc_div _sms_calc_div

label variable sms_calc_add "What is 29 plus 11?"
label define _sms_calc_add 1 "40" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_calc_add _sms_calc_add

label variable sms_subtotal_calc "Calculations Total (0-4)"

label variable sms_sim_fruit "How are AN ORANGE and A BANANA alike?"
label define _sms_sim_fruit 1 "Fruits" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_sim_fruit _sms_sim_fruit

label variable sms_sim_animal "How are A DOG and A HORSE alike?"
label define _sms_sim_animal 1 "Animals" 2 "Mammals" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_sim_animal _sms_sim_animal

label variable sms_sim_furniture "How are A TABLE and A BOOKCASE alike?"
label define _sms_sim_furniture 1 "Furniture" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_sim_furniture _sms_sim_furniture

label variable sms_subtotal_similar "Similarities Total (0-3)"

label variable sms_cube "Copy this cube in the white space below."
label define _sms_cube 2 "Perfect copy (2 offset squares and lines connecting them)" 1 "Clear attempt at a cube (3-D quality" 0 "All others" 888 "Unable to do for reasons unrelated to cognition (e.g. visual impairment" 999 "Refused"
label values sms_cube _sms_cube

label variable sms_clock "Draw the face of a clock, put on all the numbers. (wait)Now set the time to eleven ten."
label define _sms_clock 2 "Circle with all the numbers" 1 "All numbers are placed on the face but hands are incorrect; or numbers are incomplete or grossly misaligned but hands are placed correctly." 0 "All others" 888 "Unable to do for reasons unrelated to cognition (e.g. visual impairment" 999 "Refused"
label values sms_clock _sms_clock

label variable sms_subtotal_draw "Drawings Total (0-4)"

label variable sms_presnow "What is the name of the current US president?"
label define _sms_presnow 1 "Correct" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_presnow _sms_presnow

label variable sms_pres1 "What is the name of the first US president?"
label define _sms_pres1 1 "Washington" 2 "George Washington" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_pres1 _sms_pres1

label variable sms_calendar "How many weeks are there in a year?"
label define _sms_calendar 1 "52" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_calendar _sms_calendar

label variable sms_island "Define the word island prompting is allowed. For example, if they respond with surrounded by water, the examiner could say Can you be more specific? or what is surrounded by water? to see if they can clarify that land is surrounded by water."
label define _sms_island 1 "Land surrounded by water" 2 "Freestanding cabinetry in kitchen" 0 "Anything Else" 888 "Don't Know" 999 "Refused"
label values sms_island _sms_island

label variable sms_subtotal_questions "Questions Total (0-4)"

label variable sms_dwr___1 "apple (Word Elements)"

label variable sms_dwr___2 "Mr. Johnson (Word Elements)"

label variable sms_dwr___3 "charity (Word Elements)"

label variable sms_dwr___4 "tunnel (Word Elements)"

label variable sms_dwr___5 "none (Word Elements)"

label variable sms_subtotal_dwr "Delayed Word Recall Total (0-4)"

label variable sms_total "Short Test of Mental Status (SMS) Total (0-38)"

