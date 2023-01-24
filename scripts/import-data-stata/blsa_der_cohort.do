clear
import delimited "../data-csv/blsa_der_cohort.csv", bindquote(strict)

label variable idno "BLSA ID"

label variable visit "Visit Number"

label variable v1visitdate "Visit Date"

label variable visitdate "Visit Date"

// Generate 'date version' of the 'visitdate' variable
gen _visitdate = date(visitdate, "YMD")
format _visitdate %td

label variable visitmonth "Month of Visit"
label define _fYVgTuhvNcwt 1 "January" 2 "February" 3 "March" 4 "April" 5 "May" 6 "June" 7 "July" 8 "August" 9 "September" 10 "October" 11 "November" 12 "December"
label values visitmonth _fYVgTuhvNcwt

label variable visityear "Year of Visit"

label variable daysfromv1 "Days Since Visit 1 Baseline"

label variable yearsfromv1 "Years Since Visit 1 Baseline"

label variable yearsfromprevvisit "Years Since Previous Visit"

label variable visitseq "Sequential Visit Number"

label variable numvisits "Number of Visits"

label variable deathdate "Date of Death"

label variable v1todeathdays "Days from Visit 1 to Death (if known death)"

label define _vXrr71oD3dx5 1 "Open" 0 "Embargoed"
label values v1todeathdays _vXrr71oD3dx5

label define _dOTTl4sY8D87 1 "Open" 0 "Permissioned"
label values v1todeathdays _dOTTl4sY8D87

