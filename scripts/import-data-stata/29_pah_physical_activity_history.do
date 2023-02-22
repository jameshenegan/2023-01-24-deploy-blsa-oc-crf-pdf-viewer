clear
import delimited "../data-csv/29_pah_physical_activity_history.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable pah_lightactivities "Light activities when you were 30 to 45 years old (laundry, vacuuming, making beds, dusting, light yard-work, repairs, or home maintenance)"
label define _pah_lightactivities 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pah_lightactivities _pah_lightactivities

label variable pah_lightexercise "Light exercise when you were 30 to 45 years old (bowling, walking leisurely, stretching, golfing with a golf cart, slow dancing)"
label define _pah_lightexercise 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pah_lightexercise _pah_lightexercise

label variable pah_modactivities "Moderate activities when you were 30 to 45 years old (scrubbing floors, washing windows, digging, gardening, moving boxes, furniture, or garbage cans, raking leaves, painting, shoveling or blowing light snow)"
label define _pah_modactivities 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pah_modactivities _pah_modactivities

label variable pah_modexercise "Moderate exercise when you were 30 to 45 years old (brisk walking, hiking, aerobics, strength training, golfing without a cart, yoga, martial arts, weight lifting, tennis doubles)"
label define _pah_modexercise 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pah_modexercise _pah_modexercise

label variable pah_heavyactivities "Heavy activities when you were 30 to 45 years old (carrying heavy objects/masonry, farm work, heavy digging, pushing a mower, hard manual labor, shoveling or blowing heavy snow)"
label define _pah_heavyactivities 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pah_heavyactivities _pah_heavyactivities

label variable pah_vigexercise "Vigorous exercise when you were 30 to 45 years old (jogging, backpacking, bicycling uphill, tennis singles, racquetball, intense/extended use of exercise machines, skiing)"
label define _pah_vigexercise 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pah_vigexercise _pah_vigexercise

label variable pah_anyactivity "Any regular physical activity program when you were 30 to 45 years old (on your own or a formal class to improve your physical fitness)"
label define _pah_anyactivity 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pah_anyactivity _pah_anyactivity

label variable pah_sitting "How many hours per day did you spend sitting in a chair or other seat when you were 30 to 45 years old?"
label define _pah_sitting 0 "< 1 hour" 1 "1-2 hours" 2 "3-4 hours" 3 "5-6 hours" 4 "7-8 hours" 5 ">8 hours" 888 "Don't know" 999 "Refused"
label values pah_sitting _pah_sitting

