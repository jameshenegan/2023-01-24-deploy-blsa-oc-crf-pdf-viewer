clear
import delimited "../data-csv/31_pan_physical_activity_now.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable pan_lightactivities "Light activities in the last 12 months (laundry, vacuuming, making beds, dusting, light yard-work, repairs, or home maintenance)"
label define _pan_lightactivities 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pan_lightactivities _pan_lightactivities

label variable pan_lightexercise "Light exercise in the last 12 months (bowling, walking leisurely, stretching, golfing with a golf cart, slow dancing)"
label define _pan_lightexercise 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pan_lightexercise _pan_lightexercise

label variable pan_modactivities "Moderate activities in the last 12 months (scrubbing floors, washing windows, digging, gardening, moving boxes, furniture, or garbage cans, raking leaves, painting, shoveling or blowing light snow)"
label define _pan_modactivities 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pan_modactivities _pan_modactivities

label variable pan_modexercise "Moderate exercise in the last 12 months (brisk walking, hiking, aerobics, strength training, golfing without a cart, yoga, martial arts, weight lifting, tennis doubles)"
label define _pan_modexercise 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pan_modexercise _pan_modexercise

label variable pan_heavyactivities "Heavy activities in the last 12 months (carrying heavy objects/masonry, farm work, heavy digging, pushing a mower, hard manual labor, shoveling or blowing heavy snow)"
label define _pan_heavyactivities 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pan_heavyactivities _pan_heavyactivities

label variable pan_vigexercise "Vigorous exercise in the last 12 months (jogging, backpacking, bicycling uphill, tennis singles, racquetball, intense/extended use of exercise machines, skiing)"
label define _pan_vigexercise 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pan_vigexercise _pan_vigexercise

label variable pan_anyactivity "Any regular physical activity program in the last 12 months (on your own or a formal class to improve your physical fitness)"
label define _pan_anyactivity 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values pan_anyactivity _pan_anyactivity

label variable pan_sitting "How many hours per day did you spend sitting in a chair or other seat in the last 12 months?"
label define _pan_sitting 0 "< 1 hour" 1 "1-2 hours" 2 "3-4 hours" 3 "5-6 hours" 4 "7-8 hours" 5 ">8 hours" 888 "Don't know" 999 "Refused"
label values pan_sitting _pan_sitting

