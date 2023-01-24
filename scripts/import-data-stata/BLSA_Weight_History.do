clear
import delimited "../data-csv/BLSA_Weight_History.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_weihis "CRF Version"

label variable obsdate_whxdate "Date Completed"

// Generate 'date version' of the 'obsdate_whxdate' variable
gen _obsdate_whxdate = date(obsdate_whxdate, "YMD")
format _obsdate_whxdate %td

label variable blank_weihis "Blank Form"

label variable whxttid "Tester ID"

label variable whxdone "Was weight history collected"
label define _AA3PVTi6of 1 "Yes" 5 "(5) Physical (communication problem)" 6 "(6) Cannot understand the questions" 7 "(7) Refused to answer" 8 "(8) Don't remember any weight" 9 "(9) Technical problems (no time/not scheduled)"
label values whxdone _AA3PVTi6of

label variable whx1 "Weight 1 year ago"

label variable whx1nd "Reason Q1 not answered"
label define _EtWTlTSS4P 7 "(7) Refused" 8 "(8) DK/DR"
label values whx1nd _EtWTlTSS4P

label variable whx2 "Weight 10 years ago"

label variable whx2nd "Reason Q2 not answered"
label define _e6aMz7wXKB 7 "(7) Refused" 8 "(8) DK/DR"
label values whx2nd _e6aMz7wXKB

label variable whx3 "Weight at age 25"

label variable whx3nd "Reason Q3 not answered"
label define _P9E5VL1NtD 7 "(7) Refused" 8 "(8) DK/DR"
label values whx3nd _P9E5VL1NtD

label variable whx4 "Weight at age 50"

label variable whx4nd "Reqson Q4 not answered"
label define _vZsXMTNgLM 7 "(7) Refused" 8 "(8) DK/DR" 9 "(9) NA"
label values whx4nd _vZsXMTNgLM

label variable whx5a "What is the most you have ever weighed"

label variable whx5and "Reason Q5a not answered"
label define _xNPedtjcBN 7 "(7) Refused" 8 "(8) DK/DR"
label values whx5and _xNPedtjcBN

label variable whx5b "How old were you then"

label variable whx5bnd "Reason Q5b not answered"
label define _pNjV6RPsM7 7 "(7) Refused" 8 "(8) DK/DR"
label values whx5bnd _pNjV6RPsM7

label variable whx6a "What is the least you have ever weighed"

label variable whx6and "Reason Q6a not answered"
label define _B7m3HeCO2v 7 "(7) Refused" 8 "(8) DK/DR"
label values whx6and _B7m3HeCO2v

label variable whx6b "How old were you then"

label variable whx6bnd "Reason Q6b not answered"
label define _tpJhQDsdZv 7 "(7) Refused" 8 "(8) DK/DR"
label values whx6bnd _tpJhQDsdZv

label variable whx7 "What would you say about your weight during adult life"
label define _meLXV3Ufvd 1 "(1) Your weight has stayed about the same +/- 10 lbs" 2 "(2) You have had a gradual gain in weight (>10 lbs)" 3 "(3) You have had a gradual loss in weight" 4 "(4) You have had a marked loss in weight and then kept it off" 5 "(5) Your weight has repeatedly gone up and down again" 7 "(7) Refused" 8 "(8) DK/DR"
label values whx7 _meLXV3Ufvd

label variable auto_id_weihis "Unique Teleform Number"

label variable crf_parent_name_weihis "CRF Parent Name"

label variable study_name_weihis "Study Name"

