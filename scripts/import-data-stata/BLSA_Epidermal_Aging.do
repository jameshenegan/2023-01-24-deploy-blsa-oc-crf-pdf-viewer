clear
import delimited "../data-csv/BLSA_Epidermal_Aging.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_epiagi "CRF Version"

label variable obsdate_d1date "D1 Date"

// Generate 'date version' of the 'obsdate_d1date' variable
gen _obsdate_d1date = date(obsdate_d1date, "YMD")
format _obsdate_d1date %td

label variable blank_epiagi "Blank"

label variable testerid_epiagi "Tester ID"

label variable informedconsent "Able to provide informed consent"
label define _IAIAH9rEKp 0 "No" 1 "Yes"
label values informedconsent _IAIAH9rEKp

label variable adhesiveallergy "Does not have a known allergy to adhesive tape"
label define _v0p8QRXGiq 0 "No" 1 "Yes"
label values adhesiveallergy _v0p8QRXGiq

label variable fragileskin "Does not have fragile skin"
label define _SAZ73ydXgp 0 "No" 1 "Yes"
label values fragileskin _SAZ73ydXgp

label variable skincondition "Does not have a wound or skin condition prone to excessive scarring"
label define _tkjs9GjATb 0 "No" 1 "Yes"
label values skincondition _tkjs9GjATb

label variable smoked "Has not smoked 3 hours prior to the procedure"
label define _iC2oH4IhYg 0 "No" 1 "Yes"
label values smoked _iC2oH4IhYg

label variable nocaffeine "Has not drank any caffeinated beverages 3 hours prior to the procedure"
label define _FLuce1mFbc 0 "No" 1 "Yes"
label values nocaffeine _FLuce1mFbc

label variable notopicalprod "Has not used any topical products 6 to 8 hrs before procedure"
label define _n0QXheRG6f 0 "No" 1 "Yes"
label values notopicalprod _n0QXheRG6f

label variable notpregnant_epiagi "Is not pregnant"
label define _AnxLSJn78I 0 "No" 1 "Yes" 2 "nan"
label values notpregnant_epiagi _AnxLSJn78I

label variable eligibilityyn "Eligibility"
label define _i65SnTG8Ho 0 "No" 1 "Yes"
label values eligibilityyn _i65SnTG8Ho

label variable tester_epiagi "Tester"

label variable d1testerid "D1 Tester ID"

label variable consent_epiagi "Consent reviewed"
label define _zzzGjwYiTh 0 "No" 1 "Yes"
label values consent_epiagi _zzzGjwYiTh

label variable reveligibility "Eligibility criteria reviewed"
label define _OROZVmlHJP 0 "No" 1 "Yes"
label values reveligibility _OROZVmlHJP

label variable day1photo "Day 1 Forearm photographed"
label define _yahBsq7Od2 1 "Left" 2 "Right"
label values day1photo _yahBsq7Od2

label variable d2date "D2 Date"

// Generate 'date version' of the 'd2date' variable
gen _d2date = date(d2date, "YMD")
format _d2date %td

label variable d2time "D2 Time"

label variable d2ampm "D2 am pm"
label define _PgVfbdLFwM 1 "Am" 2 "Pm"
label values d2ampm _PgVfbdLFwM

label variable d2testerid "D2 Tester ID"

label variable d2topicalprod "Has the participant used topical products on the forearm in the last 6-8 hours"
label define _vgwhf6Z2Kw 0 "No" 1 "Yes"
label values d2topicalprod _vgwhf6Z2Kw

label variable d2caffeine "Has the participant drank any caffeine or smoked in the past 3 hours"
label define _A2kyQeCU9K 0 "No" 1 "Yes"
label values d2caffeine _A2kyQeCU9K

label variable acclimate "Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
label define _DFfIJhJYhI 0 "No" 1 "Yes"
label values acclimate _DFfIJhJYhI

label variable temproom "Room temperature"

label variable humidityrm "Room Humidity"

label variable baselinetewl "Baseline TEWL measurement"

label variable d3date "D3 Date"

// Generate 'date version' of the 'd3date' variable
gen _d3date = date(d3date, "YMD")
format _d3date %td

label variable d3time "D3 Time"

label variable d3ampm "D3 am pm"
label define _LS2mSJwXMK 1 "Am" 2 "Pm"
label values d3ampm _LS2mSJwXMK

label variable d3testerid "D3 Tester ID"

label variable d3topicalprod "D3 Has the participant used topical products on the forearm in the last 6-8 hours"
label define _LvdeMNZezy 0 "No" 1 "Yes"
label values d3topicalprod _LvdeMNZezy

label variable d3caffeine "D3 Has the participant drank any caffeine or smoked in the past 3 hours"
label define _HN8OVbU3B5 0 "No" 1 "Yes"
label values d3caffeine _HN8OVbU3B5

label variable d3acclimate "D3 Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
label define _hHYTeMjfQJ 0 "No" 1 "Yes"
label values d3acclimate _hHYTeMjfQJ

label variable d3rmtemp "D3 Room temperature"

label variable d3rmhumidity "D3 Room Humidity"

label variable d3tewl "D3 TEWL measurement"

label variable day3photo "D3 Forearm photographed"
label define _QxsS5J8HvT 0 "No" 1 "Yes"
label values day3photo _QxsS5J8HvT

label variable d3tewlm2 "D3 TEWL measurement 2"

label variable d3tewlm3 "D3 TEWL measurement 3"

label variable d2tewlm2 "D2 TEWL measurement 2"

label variable d2tewlm3 "D2 TEWL measurement 3"

label variable discsize "Stripping disc size"
label define _YViKaEUK45 1 "D-Squame size 1.1875â€_x009d_ (D102 Large)" 2 "D-Squame size 0.875â€_x009d_ (D100 Standard)"
label values discsize _YViKaEUK45

label variable tewlavg "TEWL average"

label variable crf_parent_name_epiagi "CRF Parent Name"

label variable crf_status_epiagi "CRF Status"

label variable study_name_epiagi "Study Name"

