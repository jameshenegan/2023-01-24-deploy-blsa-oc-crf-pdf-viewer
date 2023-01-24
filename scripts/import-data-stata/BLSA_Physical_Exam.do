clear
import delimited "../data-csv/BLSA_Physical_Exam.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_phyexa "CRF Version"

label variable obsdate_pedate "Date Completed"

// Generate 'date version' of the 'obsdate_pedate' variable
gen _obsdate_pedate = date(obsdate_pedate, "YMD")
format _obsdate_pedate %td

label variable blank_phyexa "Blank Form"

label variable petrid "Tester ID"

label variable penotdone "Physical Exam not done"
label define _lASwSCXX6A 1 "Exam done" 3 "Exam incomplete" 4 "Exam not done leave form blank"
label values penotdone _lASwSCXX6A

label variable pe03 "Oral prosthesis"
label define _fubOooBjKv 0 "No prosthesis" 1 "Partial prosthesis" 3 "Complete prosthesis" 8 "Unknown"
label values pe03 _fubOooBjKv

label variable pe03m "Oral prosthesis unknown"
label define _q3kpWFQWE4 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe03m _q3kpWFQWE4

label variable pe06 "Hearing aid"
label define _oSlfRQ7TfO 0 "Absent" 1 "Present" 8 "Unknown"
label values pe06 _oSlfRQ7TfO

label variable pe06m "Hearing aid unknown"
label define _E7w2JNHBek 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe06m _E7w2JNHBek

label variable pe07 "PE_Oropharynx"
label define _kH7JjBsl9b 0 "Symmetrical" 1 "Asymmetrical" 8 "Unknown"
label values pe07 _kH7JjBsl9b

label variable pe07m "PE_Oropharynx unknown"
label define _AZvSU2Kouj 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe07m _AZvSU2Kouj

label variable pe08 "PE_Vertical Ocular Movement"
label define _ACWz1vy0ba 0 "Full" 1 "Assymmetrical" 2 "Bilateral abnormal" 8 "Unknown"
label values pe08 _ACWz1vy0ba

label variable pe08m "PE_VerticalOcularMovement unknown"
label define _nlK73JItDc 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe08m _nlK73JItDc

label variable pe09 "PE_Horizontal Ocular Movement"
label define _VNyVebIusP 0 "Full" 1 "Assymmetrical" 2 "Bilateral abnormal" 8 "Unknown"
label values pe09 _VNyVebIusP

label variable pe09m "PE_Horizontal Ocular Movement unknown"
label define _WwrK6u65UT 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe09m _WwrK6u65UT

label variable pe10 "PE_Wavy ocular tracking"
label define _HHnREqpVjx 0 "Normal" 1 "Abnormal" 8 "Unknown"
label values pe10 _HHnREqpVjx

label variable pe10m "PE_HorizontalOcularMovement unknown"
label define _uZVbvvTA1L 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe10m _uZVbvvTA1L

label variable pe11 "PE_Nystagmus"
label define _FMfYh0V5qK 0 "No nystagmus" 1 "Nystagmus present" 8 "Unknown"
label values pe11 _FMfYh0V5qK

label variable pe11m "PE_Nystagmus unknown"
label define _Z1YfovYqmU 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe11m _Z1YfovYqmU

label variable pe12 "PE_Convergence"
label define _XAcxL9OiXQ 0 "Normal convergence" 1 "Unable to converge" 8 "Unknown"
label values pe12 _XAcxL9OiXQ

label variable pe12m "PE_Convergence unknown"
label define _oLEyvl1iUc 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe12m _oLEyvl1iUc

label variable pe13 "PE_Cranial nerve VII Facial Asymmetry"
label define _j2jzonvTfP 0 "Symmetrical" 1 "Asymmetrical" 8 "Unknown"
label values pe13 _j2jzonvTfP

label variable pe13m "PE_Cranial nerve VII Facial Asymmetry unknown"
label define _Of8G1DQoEu 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe13m _Of8G1DQoEu

label variable pe14 "Heart murmurs"
label define _aDGyTfn1F5 0 "No murmurs" 1 "Murmur present" 8 "Unknown"
label values pe14 _aDGyTfn1F5

label variable pe14m "Heart murmurs unknown"
label define _vCQfJtIfSj 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe14m _vCQfJtIfSj

label variable pe15 "Heart rhythm"
label define _wraoUBwZEw 0 "Normal (regular)" 1 "Abnormal (irregular)" 8 "Unknown"
label values pe15 _wraoUBwZEw

label variable pe15m "Heart rhythm unknown"
label define _ILUUQZtbMP 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe15m _ILUUQZtbMP

label variable pe16 "Carotid bruit"
label define _bjjMKjw1P2 0 "Absent" 1 "Right side only" 2 "Left side only" 3 "Bilateral" 8 "Unknown"
label values pe16 _bjjMKjw1P2

label variable pe16m "Carotid bruit unknown"
label define _EVFUdoIwIY 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe16m _EVFUdoIwIY

label variable pe18 "Rales"
label define _wsL8tNqsvY 0 "No rales" 1 "Rales at bases" 2 "Rales more than at bases" 8 "Unknown"
label values pe18 _wsL8tNqsvY

label variable pe18m "Rales unknown"
label define _imf3Q8xkTZ 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe18m _imf3Q8xkTZ

label variable pe19 "Wheezing"
label define _fA1nxbPKSq 0 "No wheezing" 1 "Wheezing" 8 "Unknown"
label values pe19 _fA1nxbPKSq

label variable pe19m "Wheezing unknown"
label define _mBcjmDJZaP 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe19m _mBcjmDJZaP

label variable pe23 "PE_Hand rhythm"
label define _MQPsfEYiBK 0 "Rhythmic" 1 "Dysrhythmic" 8 "Unknown"
label values pe23 _MQPsfEYiBK

label variable pe23m "PE_Hand rhythm unknown"
label define _jzeDudGt1j 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe23m _jzeDudGt1j

label variable pe24 "PE_Number of hand strikes in 20 seconds"

label variable pe24dk "PE_Number of hand strikes unknown"

label variable pe24m "PE_Number of hand strikes reason Unknown"
label define _aDsd7IPtYG 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe24m _aDsd7IPtYG

label variable pe28 "PE_Palmomental sign"
label define _CZKPcq1KXE 0 "No contraction" 1 "Contraction" 8 "Unknown"
label values pe28 _CZKPcq1KXE

label variable pe28m "PE_Palmomental sign unknown"
label define _wHCX6YEIol 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe28m _wHCX6YEIol

label variable pe29 "PE_Glabellar sign"
label define _ilpxh0pa93 0 "Stops in < = 5 blinks" 1 "Stops in 6 - 15 blinks" 2 "Persists > 15 blinks" 8 "Unknown"
label values pe29 _ilpxh0pa93

label variable pe29m "PE_Glabellar Sign unknown"
label define _h3T8d3j3zc 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe29m _h3T8d3j3zc

label variable pe31 "PE_Patellar Reflex Right"
label define _pAykvm8hsf 0 "Normal" 1 "Absent" 2 "Slightly brisk" 3 "Hyperreflexia" 8 "Unknown"
label values pe31 _pAykvm8hsf

label variable pe31m "PE_Patellar Reflex Right unknown"
label define _K5K4eM4qon 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe31m _K5K4eM4qon

label variable pe32 "PE_Patellar Reflex Left"
label define _jpDu15JtIJ 0 "Normal" 1 "Absent" 2 "Slightly brisk" 3 "Hyperreflexia" 8 "Unknown"
label values pe32 _jpDu15JtIJ

label variable pe32m "PE_Patellar Reflex Left unknown"
label define _Pgvwq3qfB6 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe32m _Pgvwq3qfB6

label variable pe41k "Right straight leg raise painful"
label define _CPRud1Uf2o 0 "No Pain" 1 "Pain localized to groin or hip" 2 "Pain localized to thigh" 3 "Pain localized to back or shoots down lower extremity" 8 "Unkown"
label values pe41k _CPRud1Uf2o

label variable pe41km "Right straight leg raise painful unknown"
label define _fHavKb3vok 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe41km _fHavKb3vok

label variable pe42k "Left straight leg raise painful"
label define _bD5yuQOW8L 0 "No Pain" 1 "Pain localized to groin or hip" 2 "Pain localized to thigh" 3 "Pain localized to back or shoots down lower extremity" 8 "Unkown"
label values pe42k _bD5yuQOW8L

label variable pe42km "Left straight leg raise painful unknown"
label define _GWezPeiAv8 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe42km _GWezPeiAv8

label variable pe46 "PE_Identifies line"
label define _weaKxbB1k0 0 "Yes" 1 "No" 8 "Unknown"
label values pe46 _weaKxbB1k0

label variable pe46m "PE_Identifies line unknown"
label define _ouc6UrC0UT 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe46m _ouc6UrC0UT

label variable pe47 "PE_Identifies circle"
label define _ZGwBne4SKW 0 "Yes" 1 "No" 8 "Unknown"
label values pe47 _ZGwBne4SKW

label variable pe47m "PE_Identifies circle unknown"
label define _xBhOvYMSVi 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe47m _xBhOvYMSVi

label variable pe48 "PE_Identifies plus sign"
label define _cg8Zr30Gw7 0 "Yes" 1 "No" 8 "Unknown"
label values pe48 _cg8Zr30Gw7

label variable pe48m "PE_Identifies plus sign unknown"
label define _jIJiDpBDZa 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe48m _jIJiDpBDZa

label variable pe49 "PE_Babinski sign"
label define _fuLAwjcDKx 0 "Flexion or nothing" 1 "Dorsiflexion of great toe fanning of toes or both" 8 "Unknown"
label values pe49 _fuLAwjcDKx

label variable pe49m "PE_Babinski Sign unknown"
label define _dnfRF8HTjZ 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe49m _dnfRF8HTjZ

label variable pe50 "PE_Identifies quarter"
label define _en9OMQ8ZFs 0 "Yes" 1 "No" 8 "Unknown"
label values pe50 _en9OMQ8ZFs

label variable pe50m "PE_Identifies quarter unknown"
label define _dmS7J0wVWO 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe50m _dmS7J0wVWO

label variable pe51 "PE_Identifies safety pin"
label define _OhWduG2d4n 0 "Yes" 1 "No" 8 "Unknown"
label values pe51 _OhWduG2d4n

label variable pe51m "PE_Identifies safety pin unknown"
label define _xm7WO3PFNE 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe51m _xm7WO3PFNE

label variable pe52 "PE_Identifies Dime"
label define _cu6jBkWpZ9 0 "Yes" 1 "No" 8 "Unknown"
label values pe52 _cu6jBkWpZ9

label variable pe52m "PE_Identifies dime unknown"
label define _DGnGTHClfC 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe52m _DGnGTHClfC

label variable pe53 "PE_Identifies key"
label define _suBtCkWZyc 0 "Yes" 1 "No" 8 "Unknown"
label values pe53 _suBtCkWZyc

label variable pe53m "PE_Identifies Key unknown"
label define _ToYAzWz33u 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe53m _ToYAzWz33u

label variable pe61 "PE_Posterior tibial right"
label define _f8yaasoncy 0 "Present" 1 "Absent" 8 "Unknown"
label values pe61 _f8yaasoncy

label variable pe61m "PE_Posterior tibial right unknown"
label define _dJaAEFTqLB 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe61m _dJaAEFTqLB

label variable pe62 "PE_Dorsalis pedis right"
label define _VgqKTZ2IDT 0 "Present" 1 "Absent" 8 "Unknown"
label values pe62 _VgqKTZ2IDT

label variable pe62m "PE_Dorsalis pedis right unknown"
label define _IeBsnywgrk 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe62m _IeBsnywgrk

label variable pe63 "PE_Posterior tibial left"
label define _SK4HOIUFia 0 "Present" 1 "Absent" 8 "Unknown"
label values pe63 _SK4HOIUFia

label variable pe63m "PE_Posterior tibial left unknown"
label define _UpAhX3olSQ 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe63m _UpAhX3olSQ

label variable pe64 "PE_Dorsalis pedis left"
label define _a0Amjqj89m 0 "Present" 1 "Absent" 8 "Unknown"
label values pe64 _a0Amjqj89m

label variable pe64m "PE_Dorsalis pedis left unknown"
label define _wqXjJ8xC9P 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe64m _wqXjJ8xC9P

label variable pe65 "PE_Telangiectasis or reticular veins"
label define _zeRsfwqi5m 0 "Absent" 1 "Present" 8 "Unknown"
label values pe65 _zeRsfwqi5m

label variable pe65m "PE_Telangiectasis or reticular veins unknown"
label define _uePNydvsly 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe65m _uePNydvsly

label variable pe66 "PE_Varicose veins"
label define _dynK1o9TWP 0 "Absent" 1 "Present" 8 "Unknown"
label values pe66 _dynK1o9TWP

label variable pe66m "PE_Varicose veins unknown"
label define _p3eZHf6V8m 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe66m _p3eZHf6V8m

label variable pe67a "Arm cuff size"
label define _wBF2udS5D1 1 "Small" 2 "Regular" 3 "Large" 4 "Thigh" 8 "Unknown"
label values pe67a _wBF2udS5D1

label variable pe67b "Pulse obliteration level"

label variable pe67c1 "Aortic regurgitation"

label variable pe67c2 "Hyperthyroidism"

label variable pe67c3 "AV shunt left arm"

label variable pe67c4 "AV shunt right arm"

label variable pe67c5 "Previous surgery right side"

label variable pe67c6 "Previous surgery left side"

label variable pe67sr1 "BP right systolic measurement 1"

label variable pe67dr1 "BP right diastolic measurement 1"

label variable pe67sl1 "BP left systolic measurement 1"

label variable pe67dl1 "BP left diastolic measurement 1"

label variable pe67sr2 "BP right systolic measurement 2"

label variable pe67dr2 "BP right diastolic measurement 2"

label variable pe67sl2 "BP left systolic measurement 2"

label variable pe67dl2 "BP left diastolic measurement 2"

label variable pe67sr3 "BP right systolic measurement 3"

label variable pe67dr3 "BP right diastolic measurement 3"

label variable pe67sl3 "BP left systolic measurement 3"

label variable pe67dl3 "BP left diastolic measurement 3"

label variable pe67hrt "Heart rate"

label variable pe67f "Supine blood pressure completed"
label define _aI51n9OvsF 0 "No" 1 "Yes"
label values pe67f _aI51n9OvsF

label variable pe67fm "Supine blood pressure reason not done"
label define _K9CnennOU7 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe67fm _K9CnennOU7

label variable pe69 "Romberg sign"
label define _GHMp99NdfV 0 "Absent" 1 "Present" 8 "Unknown"
label values pe69 _GHMp99NdfV

label variable pe69m "Romberg sign unknown"
label define _fQUBgNpfya 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe69m _fQUBgNpfya

label variable pe70sbp "Standing BP systolic"

label variable pe70dbp "Standing BP diastolic"

label variable pe70hrt "Standing Heart rate"

label variable pe70b "Dizziness or light headed with standing"
label define _aIGxrYG6ol 0 "No" 1 "Yes"
label values pe70b _aIGxrYG6ol

label variable pe70c "Standing blood pressure completed"
label define _yp2ii9V0Kt 0 "No" 1 "Yes"
label values pe70c _yp2ii9V0Kt

label variable pe70cm "Standing blood pressure reason not done"
label define _kqCsAixUIP 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe70cm _kqCsAixUIP

label variable pe72 "Pronator Drift"
label define _RZgwWReeL1 0 "Absent" 1 "Present" 8 "Unknown"
label values pe72 _RZgwWReeL1

label variable pe72m "Pronator Drift unknown"
label define _xA9iPYphty 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe72m _xA9iPYphty

label variable pe73a "Natural occipital to wall distance"
label define _EbZGA16YkL 0 "Yes (record 0 cm)" 1 "No (record distance from wall)" 8 "Unknown"
label values pe73a _EbZGA16YkL

label variable pe73m "Natural occipital distance from wall unknown"
label define _IWlVi0glyE 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe73m _IWlVi0glyE

label variable pe73 "Natural occipital distance from wall"

label variable pe74b "Spinal flexion motion painful"
label define _He0p0HyskB 0 "No" 1 "Yes" 8 "Unknown"
label values pe74b _He0p0HyskB

label variable pe74bm "Spinal flexion motion painful unknown"
label define _ZKcsJ8jVqw 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe74bm _ZKcsJ8jVqw

label variable pe81b "Achilles reflex right"
label define _Fifzcr8OP1 0 "Normal" 1 "Absent" 2 "Slightly brisk" 3 "Hyperreflexia" 8 "Unknown"
label values pe81b _Fifzcr8OP1

label variable pe81bm "Achilles reflex right unknown"
label define _a2bHhQTiCN 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe81bm _a2bHhQTiCN

label variable pe81a "Achilles reflex left"
label define _a63343XARz 0 "Normal" 1 "Absent" 2 "Slightly brisk" 3 "Hyperreflexia" 8 "Unknown"
label values pe81a _a63343XARz

label variable pe81am "Achilles reflex left unknown"
label define _AUkfsvXo9q 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe81am _AUkfsvXo9q

label variable pe83 "Edema score"
label define _LOAY5oFt5z 0 "None" 1 "Trace pitting" 2 "Very obvious pitting" 8 "Unknown"
label values pe83 _LOAY5oFt5z

label variable pe83m "Edema score unknown"
label define _Uy9szqInAR 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe83m _Uy9szqInAR

label variable pe90 "Extremities inspection"

label variable pe90m "Extremities Inspection Reason Unknown"
label define _EvRgiuwyYH 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe90m _EvRgiuwyYH

label variable pe91a "Amputation right upper extremity"
label define _KxOgcWS6tp 1 "Above elbow" 2 "Below elbow" 3 "Metacarpal" 4 "Digits"
label values pe91a _KxOgcWS6tp

label variable pe91a1 "Missing 1st finger right"

label variable pe91a2 "Missing 2nd finger right"

label variable pe91a3 "Missing 3rd finger right"

label variable pe91a4 "Missing 4th finger right"

label variable pe91a5 "Missing 5th finger right"

label variable pe91b "Amputation Left upper extremity"
label define _hEDbGB1LZg 1 "Above elbow" 2 "Below elbow" 3 "Metacarpal" 4 "Digits"
label values pe91b _hEDbGB1LZg

label variable pe91b1 "Missing 1st finger left"

label variable pe91b2 "Missing 2nd finger left"

label variable pe91b3 "Missing 3rd finger left"

label variable pe91b4 "Missing 4th finger left"

label variable pe91b5 "Missing 5th finger left"

label variable pe91c "Amputation Right Lower extremity"
label define _ZEmFVw9CZO 1 "Above knee" 2 "Below knee" 3 "Metatarsal" 4 "Digits"
label values pe91c _ZEmFVw9CZO

label variable pe91c1 "Missing 1st toe right"

label variable pe91c2 "Missing 2nd toe right"

label variable pe91c3 "Missing 3rd toe right"

label variable pe91c4 "Missing 4th toe right"

label variable pe91c5 "Missing 5th toe right"

label variable pe91d "Amputation Left Lower extremity"
label define _iL7Cr1C1lt 1 "Above knee" 2 "Below knee" 3 "Metatarsal" 4 "Digits"
label values pe91d _iL7Cr1C1lt

label variable pe91d1 "Missing 1st toe left"

label variable pe91d2 "Missing 2nd toe left"

label variable pe91d3 "Missing 3rd toe left"

label variable pe91d4 "Missing 4th toe left"

label variable pe91d5 "Missing 5th toe left"

label variable pe92a "Paralysis upper Right extremity"

label variable pe92b "Paralysis upper Left extremity"

label variable pe92c "Paralysis lower Right extremity"

label variable pe92d "Paralysis lower Left extremity"

label variable pe93a "Paresis upper Right extremity"

label variable pe93b "Paresis upper Left extremity"

label variable pe93c "Paresis lower Right extremity"

label variable pe93d "Paresis lower Left extremity"

label variable auto_id_phyexa "Unique Teleform Number"

label variable pe01 "Total number of teeth"

label variable pe01m "Number of teeth unknown"
label define _wRfGhdSaEd 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe01m _wRfGhdSaEd

label variable pe02 "Number of teeth in contact"

label variable pe02m "Teeth in contact unknown"
label define _V8olrAbPaS 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe02m _V8olrAbPaS

label variable pe04_phyexa "Mucosa Score inflammation"
label define _l4980SWHGi 0 "0=Unknown" 1 "1=Normal appearance of gingival and oral mucosa" 2 "2=Mild inflammation" 3 "3=Moderate inflammation" 4 "4=Severe inflammation"
label values pe04_phyexa _l4980SWHGi

label variable pe04m "Mucosa Score unknown"
label define _nEG0emtXpp 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe04m _nEG0emtXpp

label variable pe05 "Plaque score for teeth and dentures"
label define _HEd8kZ6gGi 0 "0=unknown" 1 "1=No easily visible plaque" 2 "2=Small amounts of hardly visible plaque" 3 "3=Moderate amounts of plaque" 4 "4=Abundant amounts of confluent plaque"
label values pe05 _HEd8kZ6gGi

label variable pe05m "Plaque score unknown"
label define _Kp1Oy0ls1r 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe05m _Kp1Oy0ls1r

label variable pe17 "Pacemaker or ICD observed"
label define _MopbHhaBPa 0 "No pacemaker or ICD" 1 "Pacemaker or ICD present" 8 "Unknown"
label values pe17 _MopbHhaBPa

label variable pd17m "Pacemaker unknown"

label variable pe20 "Prolonged expiratory phase"
label define _ugXBfB0KfE 0 "Phase < 6 seconds" 1 "Phase > 6 seconds" 8 "Unknown"
label values pe20 _ugXBfB0KfE

label variable pe20m "Unknown Prolonged expiratory phase"
label define _inEOzpYlc1 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe20m _inEOzpYlc1

label variable pe21 "Dysmetria and freange R hand"
label define _sLzZhnMVxG 0 "Rapid and precise" 1 "Slows down" 2 "Misses target" 8 "Unknown"
label values pe21 _sLzZhnMVxG

label variable pe21m "Dysmetria and freange R hand unknown"
label define _BWzEXvcJFs 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe21m _BWzEXvcJFs

label variable pe22 "Dysmetria and freange L hand"
label define _rvE8ujqJaw 0 "Rapid and precise" 1 "Slows down" 2 "Misses target" 8 "Unknown"
label values pe22 _rvE8ujqJaw

label variable pe22m "Dysmetria and freange L hand unknown"
label define _b0SlSXdg7e 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe22m _b0SlSXdg7e

label variable pe25 "Muscle tone resistance"
label define _zO7TEJdFuN 0 "None" 1 "One direction" 2 "Throughout" 8 "Unknown"
label values pe25 _zO7TEJdFuN

label variable pe25m "Muscle tone resistance unknown"
label define _gv7NvX1CIb 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe25m _gv7NvX1CIb

label variable pe26 "Tinel's sign"
label define _AMPiYTTd3e 0 "None" 1 "Present on right" 2 "Present on left" 3 "Present bilaterally" 8 "Unknown"
label values pe26 _AMPiYTTd3e

label variable pe26m "Tinel's sign unknown"
label define _GobENpVUy1 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe26m _GobENpVUy1

label variable pe27 "Hoffman sign"
label define _jBJZ07y7uk 0 "No flexion or adduction" 1 "Reflexive flexion or adduction" 8 "Unknown"
label values pe27 _jBJZ07y7uk

label variable pe27m "Hoffman sign unknown"
label define _KLpG387xCq 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe27m _KLpG387xCq

label variable pe30 "Snout sign"
label define _kQrk4mTRTm 0 "No reflexive sucking or puckering" 1 "Reflexive sucking or puckering" 8 "Unknown"
label values pe30 _kQrk4mTRTm

label variable pe30m "Snout sign unknown"
label define _LrkPTb0azx 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe30m _LrkPTb0azx

label variable pe33 "Quadriceps tendonitis R"
label define _uDTM8wboCI 0 "No pain" 1 "Pain in any one area" 8 "Unknown"
label values pe33 _uDTM8wboCI

label variable pe33m "Quadriceps tendonitis R unknown"
label define _frD0e6udGS 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe33m _frD0e6udGS

label variable pe34 "Quadriceps tendonitis L"
label define _hIKNzSGAx8 0 "No pain" 1 "Pain in any one area" 8 "Unknown"
label values pe34 _hIKNzSGAx8

label variable pe34m "Quadriceps tendonitis L unknown"
label define _jYRMC8FFQT 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe34m _jYRMC8FFQT

label variable pe35 "R Hip passive internal range of motion"

label variable pe35a "R Hip painful range of motion"
label define _P72u9rpiVj 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe35a _P72u9rpiVj

label variable pe35m "R Hip painful range of motion unknown"
label define _QljxqcTuln 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe35m _QljxqcTuln

label variable pe36 "L Hip passive internal range of motion"

label variable pe36a "L Hip painful range of motion"
label define _rpVidZDoPv 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe36a _rpVidZDoPv

label variable pe36m "L Hip painful range of motion unknown"
label define _hh8CSzXgBw 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe36m _hh8CSzXgBw

label variable pe37 "JVD present at 45 degrees"
label define _eDzV74GlA7 0 "JVD absent" 1 "JVD present" 8 " Unknown"
label values pe37 _eDzV74GlA7

label variable pe37m "JVD present at 45 degrees unknown"
label define _t4WMltDTV1 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe37m _t4WMltDTV1

label variable pe38 "Abdominojugular reflux"
label define _DHqFOjUlBo 0 "Absent" 1 "Obvious venous distension to jaw" 2 "Could not evaluate/Valsalva" 8 "Unknown"
label values pe38 _DHqFOjUlBo

label variable pe38m "Abdominojugular reflux unknown"
label define _ifTF4VEthi 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe38m _ifTF4VEthi

label variable pe39a "R ankle dorsiflexion max motion"

label variable pe39b "R Painful dorsiflexion max motion"
label define _fvILZAfWJN 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe39b _fvILZAfWJN

label variable pe39bm "R painful dorsiflexion max motion unknown"
label define _ailGbKP3A9 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe39bm _ailGbKP3A9

label variable pe39c "R plantarflexion max motion"

label variable pe39d "R painful plantarflexion max motion"
label define _VStfDQ6NFL 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe39d _VStfDQ6NFL

label variable pe39dm "R painful plantarflexion max motion unknown"
label define _uxe39MAitR 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe39dm _uxe39MAitR

label variable pe40a "L ankle dorsiflexion max motion"

label variable pe40b "L Painful dorsiflexion max motion"
label define _L7HnmoePT7 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe40b _L7HnmoePT7

label variable pe40bm "L painful dorsiflexion max motion unknown"
label define _l4zkt2Ph1T 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe40bm _l4zkt2Ph1T

label variable pe40c "L plantarflexion max motion"

label variable pe40d "L painful plantarflexion max motion"
label define _cRZFRVB5TO 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe40d _cRZFRVB5TO

label variable pe40dm "L painful plantarflexion max motion unknown"
label define _hBu2V4159R 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe40dm _hBu2V4159R

label variable pe41a "R knee crepitus"
label define _GWEYzqNzVN 0 "No crepitus detected" 1 "Crepitus present" 8 "Unknown"
label values pe41a _GWEYzqNzVN

label variable pe41am "R knee crepitus unknown"
label define _x9pZa7XJsT 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe41am _x9pZa7XJsT

label variable pe41b "R knee painful passive motion"
label define _vP4nUzGsqD 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe41b _vP4nUzGsqD

label variable pe41bm "R knee painful passive motion unknown"
label define _rUJ738kToo 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe41bm _rUJ738kToo

label variable pe41c "R knee maximal flexion range of motion"

label variable pe41d "R knee painful max flexion"
label define _LSCAX41Lkx 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe41d _LSCAX41Lkx

label variable pe41dm "R knee painful max flexion unknown"
label define _OWO8IV6gS9 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe41dm _OWO8IV6gS9

label variable pe41e "R knee maximal extension 9 degrees"
label define _yWIEOcdPob 0 "0 degrees" 1 "Contracture" 2 "Hypertension" 8 "Unknown"
label values pe41e _yWIEOcdPob

label variable pe41e1 "R knee Contracture"

label variable pe41e2 "R knee Hyperextension"

label variable pe41em "R knee max extension unknown"
label define _vxf0pRIjQc 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe41em _vxf0pRIjQc

label variable pe41f "R knee effusion"
label define _SAuNVihBtp 0 "No effusion detected" 1 "Effusion present" 8 "Unknown"
label values pe41f _SAuNVihBtp

label variable pe41fm "R knee effusion unknown"
label define _y9xzKdZyPk 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe41fm _y9xzKdZyPk

label variable pe41g "R knee tibiofemoral tenderness"
label define _V34Iqn3Ykt 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe41g _V34Iqn3Ykt

label variable pe41gm "R knee tibiofemoral tenderness unknown"
label define _UmvE3YpHvF 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe41gm _UmvE3YpHvF

label variable pe41h "R knee patellar grind sign"
label define _DDONOgdkeQ 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe41h _DDONOgdkeQ

label variable pe41hm "R knee patellar grind sign unknown"
label define _Dno0ZLZxy6 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe41hm _Dno0ZLZxy6

label variable pe41j "R straight leg raise range of motion"

label variable pe42a "L knee crepitus"
label define _w3Zp83z17O 0 "No crepitus detected" 1 "Crepitus present" 8 "Unknown"
label values pe42a _w3Zp83z17O

label variable pe42am "L knee crepitus unknown"
label define _ntLPIMQB1I 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe42am _ntLPIMQB1I

label variable pe42b "L knee painful passive motion"
label define _p5q80nZcxi 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe42b _p5q80nZcxi

label variable pe42bm "L knee painful passive motion unknown"
label define _vdK5Q1mdkj 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe42bm _vdK5Q1mdkj

label variable pe42c "L knee maximal flexion range of motion"

label variable pe42d "L knee painful max flexion"
label define _z6k9nLPRXl 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe42d _z6k9nLPRXl

label variable pe42dm "L knee painful max flexion unknown"
label define _HuSAnFXn8v 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe42dm _HuSAnFXn8v

label variable pe42e "L knee maximal extension 9 degrees"
label define _my3XgKCQrU 0 "0 degrees" 1 "Contracture" 2 "Hypertension" 8 "Unknown"
label values pe42e _my3XgKCQrU

label variable pe42e1 "L knee Contracture"

label variable pe42e2 "L knee Hyperextension"

label variable pe42em "L knee max extension unknown"
label define _BfvMnm8W6G 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe42em _BfvMnm8W6G

label variable pe42f "L knee effusion"
label define _YI3Lz9sfDx 0 "No effusion detected" 1 "Effusion present" 8 "Unknown"
label values pe42f _YI3Lz9sfDx

label variable pe42fm "L knee effusion unknown"
label define _C8hYO8KP2i 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe42fm _C8hYO8KP2i

label variable pe42g "L knee tibiofemoral tenderness"
label define _VslKTPXcrl 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe42g _VslKTPXcrl

label variable pe42gm "L knee tibiofemoral tenderness unknown"
label define _t2jo7fRT3I 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe42gm _t2jo7fRT3I

label variable pe42h "L knee patellar grind sign"
label define _IfeNhDAIcq 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe42h _IfeNhDAIcq

label variable pe42hm "L knee patellar grind sign unknown"
label define _uzhJDUEPoh 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe42hm _uzhJDUEPoh

label variable pe42j "L straight leg raise range of motion"

label variable pe43 "Bridging"
label define _A25LQv2NiE 0 "Able" 1 "Unable" 8 "Unknown"
label values pe43 _A25LQv2NiE

label variable pe43m "Bridging unknown"
label define _Yu7uuGdoPQ 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe43m _Yu7uuGdoPQ

label variable pe44 "Biceps reflex Left"
label define _IMZizAqiqZ 0 "Normal" 1 "Absent" 2 "Slightly brisk" 3 "Hyperreflexia" 8 "Unknown"
label values pe44 _IMZizAqiqZ

label variable pe44m "Biceps reflex Left unknown"
label define _nSD0eik8ce 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe44m _nSD0eik8ce

label variable pe45 "Biceps reflex Right"
label define _upJ7RnFmlK 0 "Normal" 1 "Absent" 2 "Slightly brisk" 3 "Hyperreflexia" 8 "Unknown"
label values pe45 _upJ7RnFmlK

label variable pe45m "Biceps reflex Right unknown"
label define _dhwBI9kmDv 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe45m _dhwBI9kmDv

label variable pe54 "Heel to shin time right"

label variable pe55 "Rhythm Right"
label define _yMX0ihAQmA 0 "Movements rhythmic" 1 "Movements not rhythmic" 8 "Unknown"
label values pe55 _yMX0ihAQmA

label variable pe55m "Rhythm Right unknown"
label define _Lx9U0vfbwc 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe55m _Lx9U0vfbwc

label variable pe56 "Heel to shin time left"

label variable pe57 "Rhythm Left"
label define _fAsCzcEM6Q 0 "Movements rhythmic" 1 "Movements not rhythmic" 8 "Unknown"
label values pe57 _fAsCzcEM6Q

label variable pe57m "Rhythm Left unknown"
label define _eUdyJ2y6B3 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe57m _eUdyJ2y6B3

label variable pe58 "Grasp thumb above head"
label define _usH0AQkuCs 0 "Grasps thumb" 1 "Unable to grasp thumb" 8 "Unknown"
label values pe58 _usH0AQkuCs

label variable pe58m "Grasp thumb above head unknown"
label define _Rs9CHhmtrd 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe58m _Rs9CHhmtrd

label variable pe59 "Grasp thumb at 90 degrees"
label define _m3laANSx7p 0 "Grasps thumb" 1 "Unable to grasp thumb" 8 "Unknown"
label values pe59 _m3laANSx7p

label variable pe59m "Grasp thumb at 90 degrees unknown"
label define _FE4cnem57c 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe59m _FE4cnem57c

label variable pe60 "Grasp thumb next to hips"
label define _CV4Ahzc4HE 0 "Grasps thumb" 1 "Unable to grasp thumb" 8 "Unknown"
label values pe60 _CV4Ahzc4HE

label variable pe60m "Grasp thumb next to hips unknown"
label define _evsJWwYisa 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe60m _evsJWwYisa

label variable pe67c "Conditions"

label variable pe68a "R femur to tibia standing alignment"
label define _UCbx35ce6o 0 "0 degrees" 8 "Unknown"
label values pe68a _UCbx35ce6o

label variable pe68a1 "R femur knees pointing out degrees"

label variable pe68a2 "R femur knees pointing in degrees"

label variable pe68am "R femur to tibia standing alignment unknown"
label define _atcaxXCGGK 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe68am _atcaxXCGGK

label variable pe68b "L femur to tibia standing alignment"
label define _Q0f0HgjXZ0 0 "0 degrees" 8 "Unknown"
label values pe68b _Q0f0HgjXZ0

label variable pe68b1 "L femur knees pointing out degrees"

label variable pe68b2 "L femur knees pointing in degrees"

label variable pe68bm "L femur to tibia standing alignment unknown"
label define _LfyUZeNHam 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe68bm _LfyUZeNHam

label variable pe74a "Spinal flexion range of motion"

label variable pe74c "Spinal extension range of motion"

label variable pe74d "Spinal extension motion painful"
label define _Bm16k9LbFN 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe74d _Bm16k9LbFN

label variable pe74dm "Spinal extension motion painful unknown"
label define _w3c3QHxOlp 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe74dm _w3c3QHxOlp

label variable pe75a "R shoulder elevation"
label define _lXmrjOYmQj 0 "Fully able" 1 "Partially able" 2 "Unable" 8 "Unknown"
label values pe75a _lXmrjOYmQj

label variable pe75am "R shoulder elevation unknown"
label define _XNkVn4yomy 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe75am _XNkVn4yomy

label variable pe75b "L shoulder elevation"
label define _y6BXrbV7yb 0 "Fully able" 1 "Partially able" 2 "Unable" 8 "Unknown"
label values pe75b _y6BXrbV7yb

label variable pe75bm "L shoulder elevation unknown"
label define _dYqEyzrHca 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe75bm _dYqEyzrHca

label variable pe76a "R shoulder functional external range"
label define _s1ZzJb5tMY 0 "Fully able" 1 "Partially able" 2 "Unable" 8 "Unknown"
label values pe76a _s1ZzJb5tMY

label variable pe76am "R shoulder functional external range unknown"
label define _nGqev7SJr2 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe76am _nGqev7SJr2

label variable pe76b "L shoulder functional external range"
label define _Kb6bY48jFY 0 "Fully able" 1 "Partially able" 2 "Unable" 8 "Unknown"
label values pe76b _Kb6bY48jFY

label variable pe76bm "L shoulder functional external range unknown"
label define _bgy9OXJK0u 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe76bm _bgy9OXJK0u

label variable pe77a "R shoulder painful motion"
label define _xVl4yuFvT4 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe77a _xVl4yuFvT4

label variable pe77am "R shoulder painful motion unknown"
label define _Wy35LzKTGr 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe77am _Wy35LzKTGr

label variable pe77b "L shoulder painful motion"
label define _D16gDNg7k1 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe77b _D16gDNg7k1

label variable pe77bm "L shoulder painful motion unknown"
label define _GR50CKlKhi 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe77bm _GR50CKlKhi

label variable pe7801 "PE7801"

label variable pe7802 "PE7802"

label variable pe7803 "PE7803"

label variable pe7804 "PE7804"

label variable pe7805 "PE7805"

label variable pe7806 "PE7806"

label variable pe7807 "PE7807"

label variable pe7808 "PE7808"

label variable pe7809 "PE7809"

label variable pe7810 "PE7810"

label variable pe7811 "PE7811"

label variable pe7812 "PE7812"

label variable pe7813 "PE7813"

label variable pe7814 "PE7814"

label variable pe7815 "PE7815"

label variable pe7816 "PE7816"

label variable pe7817 "PE7817"

label variable pe7818 "PE7818"

label variable pe78a "PE78A"
label define _GICStXq80e 0 "All points > 3 lbs" 8 "Unknown"
label values pe78a _GICStXq80e

label variable pe78am "PE78Am"
label define _WvOK2QHYOO 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe78am _WvOK2QHYOO

label variable pe79a "Neck extension range of motion"

label variable pe79b "Neck extension painful motion"
label define _OHZPqzV9BZ 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe79b _OHZPqzV9BZ

label variable pe79bm "Neck extension painful motion unknown"
label define _ZNX9MbSWD3 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe79bm _ZNX9MbSWD3

label variable pe79c "R neck active rotation"

label variable pe79d "R neck rotation painful"
label define _Sb7tdYA8dV 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe79d _Sb7tdYA8dV

label variable pe79dm "R neck rotation painful unknown"
label define _mexGMsefmC 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe79dm _mexGMsefmC

label variable pe80a "L neck active rotation"

label variable pe80b "L neck rotation painful"
label define _oSU9ssdtKX 0 "No pain" 1 "Pain present" 8 "Unknown"
label values pe80b _oSU9ssdtKX

label variable pe80bm "L neck rotation painful unknown"
label define _zvq1dscOM4 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe80bm _zvq1dscOM4

label variable pe82 "Pain in lower legs worse when standing"
label define _P6lxdU3FAg 0 "No" 1 "Yes"
label values pe82 _P6lxdU3FAg

label variable pe82a "Is Pain from arthritis or joint problems"
label define _cPMzW7Dr8F 0 "No" 1 "Yes"
label values pe82a _cPMzW7Dr8F

label variable pe82b "Is the pain worse while walking?"
label define _k62AV0isQm 0 "No" 1 "Yes"
label values pe82b _k62AV0isQm

label variable pe82c "Need over the counter or prescription medications to relieve the pain"
label define _RNCPSzo6MN 0 "NO" 1 "YES Severe requiring analgesics" 8 "Unknown"
label values pe82c _RNCPSzo6MN

label variable pe82cm "Need analgesics unknown"
label define _soh4XFWuRQ 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe82cm _soh4XFWuRQ

label variable pe82d "Pain scale 1 to 10"
label define _qymE51ZCnb 0 "0" 1 "1" 10 "10" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 77 "Refused" 8 "8" 88 "Unknown" 9 "9"
label values pe82d _qymE51ZCnb

label variable pe84 "Clinical score for pigmentation"
label define _sFB520VKpc 0 "None" 1 "Ankle only" 2 "More than ankle" 8 "Unknown"
label values pe84 _sFB520VKpc

label variable pe84m "Clinical score for pigmentation unknown"
label define _dKnt4ulsAy 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe84m _dKnt4ulsAy

label variable pe85 "Clinical score for lipodermatosclerosis"
label define _iyh5NTlrW6 0 "None" 1 "Ankle only" 2 "More than ankle" 8 "Unknown"
label values pe85 _iyh5NTlrW6

label variable pe85m "Clinical score for lipodermatosclerosis unknown"
label define _jvjIQLSL3b 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe85m _jvjIQLSL3b

label variable pe86 "Lower extremity ulcer"
label define _fLc83nbgaS 0 "No ulcers or only ulcers from trauma" 1 "Single ulcer" 2 "Multiple ulcers" 8 "Unknown"
label values pe86 _fLc83nbgaS

label variable pe86m "Lower extremity ulcer unknown"
label define _wiUcivSBus 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe86m _wiUcivSBus

label variable pe87 "Clinical score for ulcer size"
label define _W7S73N4QK9 0 "No ulcers no healed ulceration go to inspection" 1 "No ative ulcer but healed ulceration present go to inspection" 2 "Open ulcer(s) largest ulcer is < 2 cm diameter" 3 "Open ulcer(s) largest ulcer is = > 2 cm diameter" 8 "Unknown"
label values pe87 _W7S73N4QK9

label variable pe87m "Clinical score for ulcer size unknown"
label define _AlS09EBuvK 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe87m _AlS09EBuvK

label variable pe88 "Clinical score for ulcer duration"
label define _hsjuyKFyzK 0 "Ulcer(s) for < 3 mo" 1 "Ulcer(s) for = > 3 mo" 8 "Unknown"
label values pe88 _hsjuyKFyzK

label variable pe88m "Clinical score for ulcer duration unknown"
label define _W7UbZNmhWZ 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe88m _W7UbZNmhWZ

label variable pe89 "Clinical score for ulcer recurrence"
label define _DzReP2w3Vt 1 "Has first ulcer not recurrent" 2 "Has ulcer first recurrence" 3 "Has ulcer more than once" 8 "Unknown"
label values pe89 _DzReP2w3Vt

label variable pe89m "Clinical score for ulcer recurrence unknown"
label define _AkYCIbGWPm 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe89m _AkYCIbGWPm

label variable pe71at "WRIST_R_T"

label variable pe71ae "WRIST_L_E"

label variable pe71ad "WRIST_R_D"

label variable pe71a0t "CMC_R_T"

label variable pe71a0e "CMC_R_E"

label variable pe71a0d "CMC_R_D"

label variable pe71a1t "MCP5_R_T"

label variable pe71a1e "MCP5_R_E"

label variable pe71a1d "MCP5_R_D"

label variable pe71a2t "MCP4_R_T"

label variable pe71a2e "MCP4_R_E"

label variable pe71a2d "MCP4_R_D"

label variable pe71a3t "MCP3_R_T"

label variable pe71a3e "MCP3_R_E"

label variable pe71a3d "MCP3_R_D"

label variable pe71a4t "MCP2_R_T"

label variable pe71a4e "MCP2_R_E"

label variable pe71a4d "MCP2_R_D"

label variable pe71a7t "PIP2_R_T"

label variable pe71a7e "PIP2_R_E"

label variable pe71a7d "PIP2_R_D"

label variable pe71a6t "PIP3_R_T"

label variable pe71a6e "PIP3_R_E"

label variable pe71a6d "PIP3_R_D"

label variable pe71a5t "PIP4_R_T"

label variable pe71a5e "PIP4_R_D"

label variable pe71a5d "PIP4_R_D"

label variable pe71a9t "DIP2_R_T"

label variable pe71a9e "DIP2_R_E"

label variable pe71a9d "DIP2_R_D"

label variable pe71a8t "DIP3_R_T"

label variable pe71a8e "DIP3_R_E"

label variable pe71a8d "DIP3_R_D"

label variable pe71aa "HAND_R_ALL_NORMAL"
label define _MCfzDDktmK 0 "All normal" 8 "Unknown"
label values pe71aa _MCfzDDktmK

label variable pe71am "Reason unknown"
label define _Ko6rrtUwdd 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe71am _Ko6rrtUwdd

label variable pe71bt "WRIST_L_T"

label variable pe71be "WRIST_L_E"

label variable pe71bd "WRIST_L_D"

label variable pe71b0t "CMC_L_T"

label variable pe71b0e "CMC_L_E"

label variable pe71b0d "CMC_L_D"

label variable pe71b1t "MCP5_L_T"

label variable pe71b1e "MCP5_L_E"

label variable pe71b1d "MCP5_L_D"

label variable pe71b2t "MCP4_l_T"

label variable pe71b2e "MCP4_L_E"

label variable pe71b2d "MCP4_L_D"

label variable pe71b3t "MCP3_L_T"

label variable pe71b3e "MCP3_L_E"

label variable pe71b3d "MCP3_L_D"

label variable pe71b4t "MCP2_L_T"

label variable pe71b4e "MCP2_L_E"

label variable pe71b4d "MCP2_L_D"

label variable pe71b7t "PIP2_L_T"

label variable pe71b7e "PIP2_L_E"

label variable pe71b7d "PIP2_L_D"

label variable pe71b6t "PIP3_L_T"

label variable pe71b6e "PIP3_L_E"

label variable pe71b6d "PIP3_L_D"

label variable pe71b5t "PIP4_L_T"

label variable pe71b5e "PIP4_L_D"

label variable pe71b5d "PIP4_L_D"

label variable pe71b9t "DIP2_L_T"

label variable pe71b9e "DIP2_L_E"

label variable pe71b9d "DIP2_L_D"

label variable pe71b8t "DIP3_L_T"

label variable pe71b8e "DIP3_L_E"

label variable pe71b8d "DIP3_L_D"

label variable pe71ba "HAND_L_ALL_NORMAL"
label define _skdz7Smvve 0 "All normal" 8 "Unknown"
label values pe71ba _skdz7Smvve

label variable pe71bm "Reason unknown"
label define _XyOk90ju9i 555 "555 - Physical problems" 666 "666 - Mental problems" 777 "777 - Both Physical and Mental problems" 888 "888 - Refused but could do" 999 "999 - Technical Problems"
label values pe71bm _XyOk90ju9i

label variable pe70d "Measurements done standing or sitting"
label define _YieqVQJfEu 0 "Standing" 1 "Sitting"
label values pe70d _YieqVQJfEu

label variable crf_parent_name_phyexa "CRF Parent Name"

label variable item_group_repeat_phyexa "Item Group Repeate"

label variable pe24dk_8 "PE_Number of hand strikes unknown : Unknown (Checkbox Indicator)"

label variable pe67c1_aortic_regurgitation "Aortic regurgitation : Aortic regurgitation (Checkbox Indicator)"

label variable pe67c2_hyperthyroidism "Hyperthyroidism : Hyperthyroidism (Checkbox Indicator)"

label variable pe67c3_av_shunt_left_arm "AV shunt left arm : AV shunt left arm (Checkbox Indicator)"

label variable pe67c4_av_shunt_right_arm "AV shunt right arm : AV shunt right arm (Checkbox Indicator)"

label variable pe67c5_previous_surgery_right_si "Previous surgery right side : Previous surgery right side (Checkbox Indicator)"

label variable pe67c6_previous_surgery_left_sid "Previous surgery left side : Previous surgery left side (Checkbox Indicator)"

label variable pe67c_aortic_regurgitation "Conditions : Aortic regurgitation (Checkbox Indicator)"

label variable pe67c_av_shunt_left_arm "Conditions : AV shunt right arm (Checkbox Indicator)"

label variable pe67c_av_shunt_right_arm "Conditions : AV shunt left arm (Checkbox Indicator)"

label variable pe67c_hyperthyroidism "Conditions : Hyperthyroidism (Checkbox Indicator)"

label variable pe67c_previous_surgery_left_side "Conditions : Previous surgery left side (Checkbox Indicator)"

label variable pe67c_previous_surgery_right_sid "Conditions : Previous surgery right side (Checkbox Indicator)"

label variable pe71a0d_1 "CMC_R_D : CMC_R_D (Checkbox Indicator)"

label variable pe71a0e_1 "CMC_R_E : CMC_R_E (Checkbox Indicator)"

label variable pe71a0t_1 "CMC_R_T : CMC_R_T (Checkbox Indicator)"

label variable pe71a1d_1 "MCP5_R_D : MCP5_R_D (Checkbox Indicator)"

label variable pe71a1e_1 "MCP5_R_E : MCP5_R_E (Checkbox Indicator)"

label variable pe71a1t_1 "MCP5_R_T : MCP5_R_T (Checkbox Indicator)"

label variable pe71a2d_1 "MCP4_R_D : MCP4_R_D (Checkbox Indicator)"

label variable pe71a2e_1 "MCP4_R_E : MCP4_R_E (Checkbox Indicator)"

label variable pe71a2t_1 "MCP4_R_T : MCP4_R_T (Checkbox Indicator)"

label variable pe71a3d_1 "MCP3_R_D : MCP3_R_D (Checkbox Indicator)"

label variable pe71a3e_1 "MCP3_R_E : MCP3_R_E (Checkbox Indicator)"

label variable pe71a3t_1 "MCP3_R_T : MCP3_R_T (Checkbox Indicator)"

label variable pe71a4d_1 "MCP2_R_D : MCP2_R_D (Checkbox Indicator)"

label variable pe71a4e_1 "MCP2_R_E : MCP2_R_E (Checkbox Indicator)"

label variable pe71a4t_1 "MCP2_R_T : MCP2_R_T (Checkbox Indicator)"

label variable pe71a5d_1 "PIP4_R_D : PIP4_R_D (Checkbox Indicator)"

label variable pe71a5e_1 "PIP4_R_D : PIP4_R_E (Checkbox Indicator)"

label variable pe71a5t_1 "PIP4_R_T : PIP4_R_T (Checkbox Indicator)"

label variable pe71a6d_1 "PIP3_R_D : PIP3_R_D (Checkbox Indicator)"

label variable pe71a6e_1 "PIP3_R_E : PIP3_R_E (Checkbox Indicator)"

label variable pe71a6t_1 "PIP3_R_T : PIP3_R_T (Checkbox Indicator)"

label variable pe71a7d_1 "PIP2_R_D : PIP2_R_D (Checkbox Indicator)"

label variable pe71a7e_1 "PIP2_R_E : PIP2_R_E (Checkbox Indicator)"

label variable pe71a7t_1 "PIP2_R_T : PIP2_R_T (Checkbox Indicator)"

label variable pe71a8d_1 "DIP3_R_D : DIP3_R_D (Checkbox Indicator)"

label variable pe71a8e_1 "DIP3_R_E : DIP3_R_E (Checkbox Indicator)"

label variable pe71a8t_1 "DIP3_R_T : DIP3_R_T (Checkbox Indicator)"

label variable pe71a9d_1 "DIP2_R_D : DIP2_R_D (Checkbox Indicator)"

label variable pe71a9e_1 "DIP2_R_E : DIP2_R_E (Checkbox Indicator)"

label variable pe71a9t_1 "DIP2_R_T : DIP2_R_T (Checkbox Indicator)"

label variable pe71ad_1 "WRIST_R_D : WRIST_R_D (Checkbox Indicator)"

label variable pe71ae_1 "WRIST_L_E : WRIST_R_E (Checkbox Indicator)"

label variable pe71at_1 "WRIST_R_T : WRIST_R_T (Checkbox Indicator)"

label variable pe71b0d_1 "CMC_L_D : CMC_L_D (Checkbox Indicator)"

label variable pe71b0e_1 "CMC_L_E : CMC_L_E (Checkbox Indicator)"

label variable pe71b0t_1 "CMC_L_T : CMC_L_T (Checkbox Indicator)"

label variable pe71b1d_1 "MCP5_L_D : MCP5_L_D (Checkbox Indicator)"

label variable pe71b1e_1 "MCP5_L_E : MCP5_L_E (Checkbox Indicator)"

label variable pe71b1t_1 "MCP5_L_T : MCP5_L_T (Checkbox Indicator)"

label variable pe71b2d_1 "MCP4_L_D : MCP4_L_D (Checkbox Indicator)"

label variable pe71b2e_1 "MCP4_L_E : MCP4_L_E (Checkbox Indicator)"

label variable pe71b2t_1 "MCP4_l_T : MCP4_L_T (Checkbox Indicator)"

label variable pe71b3d_1 "MCP3_L_D : MCP3_L_D (Checkbox Indicator)"

label variable pe71b3e_1 "MCP3_L_E : MCP3_L_E (Checkbox Indicator)"

label variable pe71b3t_1 "MCP3_L_T : MCP3_L_T (Checkbox Indicator)"

label variable pe71b4d_1 "MCP2_L_D : MCP2_L_D (Checkbox Indicator)"

label variable pe71b4e_1 "MCP2_L_E : MCP2_L_E (Checkbox Indicator)"

label variable pe71b4t_1 "MCP2_L_T : MCP2_L_T (Checkbox Indicator)"

label variable pe71b5d_1 "PIP4_L_D : PIP4_L_D (Checkbox Indicator)"

label variable pe71b5e_1 "PIP4_L_D : PIP4_L_E (Checkbox Indicator)"

label variable pe71b5t_1 "PIP4_L_T : PIP4_L_T (Checkbox Indicator)"

label variable pe71b6d_1 "PIP3_L_D : PIP3_L_D (Checkbox Indicator)"

label variable pe71b6e_1 "PIP3_L_E : PIP3_L_E (Checkbox Indicator)"

label variable pe71b6t_1 "PIP3_L_T : PIP3_L_T (Checkbox Indicator)"

label variable pe71b7d_1 "PIP2_L_D : PIP2_L_D (Checkbox Indicator)"

label variable pe71b7e_1 "PIP2_L_E : PIP2_L_E (Checkbox Indicator)"

label variable pe71b7t_1 "PIP2_L_T : PIP2_L_T (Checkbox Indicator)"

label variable pe71b8d_1 "DIP3_L_D : DIP3_L_D (Checkbox Indicator)"

label variable pe71b8e_1 "DIP3_L_E : DIP3_L_E (Checkbox Indicator)"

label variable pe71b8t_1 "DIP3_L_T : DIP3_L_T (Checkbox Indicator)"

label variable pe71b9d_1 "DIP2_L_D : DIP2_L_D (Checkbox Indicator)"

label variable pe71b9e_1 "DIP2_L_E : DIP2_L_E (Checkbox Indicator)"

label variable pe71b9t_1 "DIP2_L_T : DIP2_L_T (Checkbox Indicator)"

label variable pe71bd_1 "WRIST_L_D : WRIST_L_D (Checkbox Indicator)"

label variable pe71be_1 "WRIST_L_E : WRIST_L_E (Checkbox Indicator)"

label variable pe71bt_1 "WRIST_L_T : WRIST_L_T (Checkbox Indicator)"

label variable pe90_0 "Extremities inspection : None (Checkbox Indicator)"

label variable pe90_1 "Extremities inspection : Amputation (Checkbox Indicator)"

label variable pe90_2 "Extremities inspection : Paralysis (Checkbox Indicator)"

label variable pe90_3 "Extremities inspection : Paresis (Checkbox Indicator)"

label variable pe90_4 "Extremities inspection : Unknown (Checkbox Indicator)"

label variable pe91a1_1 "Missing 1st finger right : 1 (Checkbox Indicator)"

label variable pe91a2_1 "Missing 2nd finger right : 2 (Checkbox Indicator)"

label variable pe91a3_1 "Missing 3rd finger right : 3 (Checkbox Indicator)"

label variable pe91a4_1 "Missing 4th finger right : 4 (Checkbox Indicator)"

label variable pe91a5_1 "Missing 5th finger right : 5 (Checkbox Indicator)"

label variable pe91b1_1 "Missing 1st finger left : 1 (Checkbox Indicator)"

label variable pe91b2_1 "Missing 2nd finger left : 2 (Checkbox Indicator)"

label variable pe91b3_1 "Missing 3rd finger left : 3 (Checkbox Indicator)"

label variable pe91b4_1 "Missing 4th finger left : 4 (Checkbox Indicator)"

label variable pe91b5_1 "Missing 5th finger left : 5 (Checkbox Indicator)"

label variable pe91c1_1 "Missing 1st toe right : 1 (Checkbox Indicator)"

label variable pe91c2_1 "Missing 2nd toe right : 2 (Checkbox Indicator)"

label variable pe91c3_1 "Missing 3rd toe right : 3 (Checkbox Indicator)"

label variable pe91c4_1 "Missing 4th toe right : 4 (Checkbox Indicator)"

label variable pe91c5_1 "Missing 5th toe right : 5 (Checkbox Indicator)"

label variable pe91d1_1 "Missing 1st toe left : 1 (Checkbox Indicator)"

label variable pe91d2_1 "Missing 2nd toe left : 2 (Checkbox Indicator)"

label variable pe91d3_1 "Missing 3rd toe left : 3 (Checkbox Indicator)"

label variable pe91d4_1 "Missing 4th toe left : 4 (Checkbox Indicator)"

label variable pe91d5_1 "Missing 5th toe left : 5 (Checkbox Indicator)"

label variable pe92a_1 "Paralysis upper Right extremity : Right (Checkbox Indicator)"

label variable pe92b_1 "Paralysis upper Left extremity : Left (Checkbox Indicator)"

label variable pe92c_1 "Paralysis lower Right extremity : Right (Checkbox Indicator)"

label variable pe92d_1 "Paralysis lower Left extremity : Left (Checkbox Indicator)"

label variable pe93a_1 "Paresis upper Right extremity : Right (Checkbox Indicator)"

label variable pe93b_1 "Paresis upper Left extremity : Left (Checkbox Indicator)"

label variable pe93c_1 "Paresis lower Right extremity : Right (Checkbox Indicator)"

label variable study_name_phyexa "Study Name"

