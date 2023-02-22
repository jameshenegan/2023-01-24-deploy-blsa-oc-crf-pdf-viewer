clear
import delimited "../data-csv/11_noi_neuro_open_interview.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable noi_memory "Have you noticed any changes in your memory or other thinking abilities?"
label define _noi_memory 1 "Yes" 0 "No"
label values noi_memory _noi_memory

label variable noi_memory_onset "Did the changes in your thinking begin suddenly? (versus more slowly and gradually)"
label define _noi_memory_onset 1 "Yes" 0 "No"
label values noi_memory_onset _noi_memory_onset

label variable noi_memor_decline "Over time, have the changes been slow and gradual? (versus stepwise)"
label define _noi_memor_decline 1 "Yes" 0 "No"
label values noi_memor_decline _noi_memor_decline

label variable noi_ui "Urinary incontinence that developed along with cognitive changes"
label define _noi_ui 1 "Yes" 0 "No"
label values noi_ui _noi_ui

label variable noi_working "Are you currently working? (probe for performance changes)"
label define _noi_working 1 "Yes" 0 "No"
label values noi_working _noi_working

label variable noi_reminders "Do you use calendars and reminders more than in the past?"
label define _noi_reminders 1 "Yes" 0 "No"
label values noi_reminders _noi_reminders

label variable noi_med "Do you use reminders, a medication organizer, or get other help taking medicines? (if yes, probe for changes)"
label define _noi_med 1 "Yes" 0 "No"
label values noi_med _noi_med

label variable noi_lose "Do you lose or misplace items more than in the past? (ex: keys, glasses)"
label define _noi_lose 1 "Yes" 0 "No"
label values noi_lose _noi_lose

label variable noi_bills "Do you forget to pay bills on time more than in the past?"
label define _noi_bills 1 "Yes" 0 "No"
label values noi_bills _noi_bills

label variable noi_fin "Do you think that keeping track of your bills or finances is more difficult than in the past?"
label define _noi_fin 1 "Yes" 0 "No"
label values noi_fin _noi_fin

label variable noi_names "Recalling names, words, people and/or places"
label define _noi_names 1 "Yes" 0 "No"
label values noi_names _noi_names

label variable noi_recent "Remembering recent events (ex: birthday parties, football games)"
label define _noi_recent 1 "Yes" 0 "No"
label values noi_recent _noi_recent

label variable noi_appt "Remembering appointments or phone numbers"
label define _noi_appt 1 "Yes" 0 "No"
label values noi_appt _noi_appt

label variable noi_distant "Remembering events in the distant past or your long-term memory"
label define _noi_distant 1 "Yes" 0 "No"
label values noi_distant _noi_distant

label variable noi_tools "Using tools, gadgets or appliances"
label define _noi_tools 1 "Yes" 0 "No"
label values noi_tools _noi_tools

label variable noi_strkrsk "Sudden vision loss, confusion, slurred speech, weakness or numbness on one side of the body"
label define _noi_strkrsk 1 "Yes" 0 "No"
label values noi_strkrsk _noi_strkrsk

label variable noi_legs "Uncontrollable urge to move legs, better with walking"
label define _noi_legs 1 "Yes" 0 "No"
label values noi_legs _noi_legs

label variable noi_gait "Slow or shuffling gait, or feel like your feet are stuck to the floor"
label define _noi_gait 1 "Yes" 0 "No"
label values noi_gait _noi_gait

