clear
import delimited "../data-csv/BLSA_Sense_of_Direction.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_senofdir "CRF Version"

label variable date_senofdir "Date"

// Generate 'date version' of the 'date_senofdir' variable
gen _date_senofdir = date(date_senofdir, "YMD")
format _date_senofdir %td

label variable blank_senofdir "Blank"

label variable judgedistance "I am very good at judging distances"
label define _iIuEKiCwli 1 "(1) strongly agree" 2 "(2)" 3 "(3)" 4 "(4)" 5 "(5)" 6 "(6)" 7 "(7) strongly disagree"
label values judgedistance _iIuEKiCwli

label variable senseofdirection "My sense of direction is very good"
label define _WD2OYYlLQ3 1 "(1) strongly agree" 2 "(2)" 3 "(3)" 4 "(4)" 5 "(5)" 6 "(6)" 7 "(7) strongly disagree"
label values senseofdirection _WD2OYYlLQ3

label variable losteasily "I very easily get lost in a new city"
label define _pIzZVT2fF4 1 "(1) strongly agree" 2 "(2)" 3 "(3)" 4 "(4)" 5 "(5)" 6 "(6)" 7 "(7) strongly disagree"
label values losteasily _pIzZVT2fF4

label variable troubledirections "I have trouble understanding directions"
label define _pfsg8zk39B 1 "(1) strongly agree" 2 "(2)" 3 "(3)" 4 "(4)" 5 "(5)" 6 "(6)" 7 "(7) strongly disagree"
label values troubledirections _pfsg8zk39B

label variable routeswhenriding "I don't remember routes very well while riding as a passenger in a car"
label define _eVW0NKUcb8 1 "(1) strongly agree" 2 "(2)" 3 "(3)" 4 "(4)" 5 "(5)" 6 "(6)" 7 "(7) strongly disagree"
label values routeswhenriding _eVW0NKUcb8

label variable rememberroutes "I can usually remember a new route after I have traveled it only once"
label define _J8ReIuFpAE 1 "(1) strongly agree" 2 "(2)" 3 "(3)" 4 "(4)" 5 "(5)" 6 "(6)" 7 "(7) strongly disagree"
label values rememberroutes _J8ReIuFpAE

label variable mentalmap "I don't have a very good mental map of my environment"
label define _AmXASo4bEZ 1 "(1) strongly agree" 2 "(2)" 3 "(3)" 4 "(4)" 5 "(5)" 6 "(6)" 7 "(7) strongly disagree"
label values mentalmap _AmXASo4bEZ

label variable crf_parent_name_senofdir "CRF Parent Name"

label variable study_name_senofdir "Study Name"

