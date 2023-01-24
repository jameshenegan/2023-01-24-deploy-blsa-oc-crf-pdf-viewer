clear
import delimited "../data-csv/BLSA_Hearing_and_Noise_Exposure.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_heaandnoiexp "CRF Version"

label variable obsdate_hneqdate "Date Completed"

// Generate 'date version' of the 'obsdate_hneqdate' variable
gen _obsdate_hneqdate = date(obsdate_hneqdate, "YMD")
format _obsdate_hneqdate %td

label variable blank_heaandnoiexp "Blank Form"

label variable hneqtid "Tester ID"

label variable hneq01 "Describe hearing without hearing aid"
label define _pIsB5Z2Fst 1 "Good" 2 "Little trouble" 3 "Lot of trouble" 4 "Deaf" 7 "Refused" 8 "Don't know"
label values hneq01 _pIsB5Z2Fst

label variable hneq02 "Ever used firearms"
label define _uTfYtzAGkJ 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hneq02 _uTfYtzAGkJ

label variable hneq03 "Had a job where you were exposed to loud nose for 5 or more hours a week"
label define _IjrFTcDCuZ 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hneq03 _IjrFTcDCuZ

label variable hneq04 "Outside of a job have you been exposed to steady loud noise or music for 5 or more hours a week"
label define _FdbljLVJpF 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hneq04 _FdbljLVJpF

label variable hneq05 "Do you currently use a hearing aid in your right ear"
label define _hZnWMomgAy 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hneq05 _hZnWMomgAy

label variable hneq06 "How many years have you been using a hearing aid in your right ear"

label variable hneq07 "How many hours per day have you worn hearing aid in your right ear over the past month"

label variable hneq08 "Ever had surgery in yor right ear"
label define _irZGJqGz3C 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hneq08 _irZGJqGz3C

label variable hneq09 "Do you currently use a hearing aid in your left ear"
label define _G8ZfydYdR3 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hneq09 _G8ZfydYdR3

label variable hneq10 "How many years have you been using a hearing aid in your left ear"

label variable hneq11 "How many hours per day have you worn hearing aid in your Left ear over the past month"

label variable hneq12 "Ever had surgery in yor Left ear"
label define _LWtEBzmOmG 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hneq12 _LWtEBzmOmG

label variable hneq13r "Otoscopic Examination outcome right ear"
label define _E9enLXKlC6 0 "No" 1 "Yes"
label values hneq13r _E9enLXKlC6

label variable hneq13l "Otoscopic Examination outcome left ear"
label define _FuGCH44ng5 0 "No" 1 "Yes"
label values hneq13l _FuGCH44ng5

label variable hneq14tid "Tester ID Hearing Tests"

label variable hneq14r "Audiometric Thresholds Right Ear"
label define _QWYxPKh8M0 1 "Auto" 2 "Manual" 3 "Both"
label values hneq14r _QWYxPKh8M0

label variable hneq14r0 "Audiometric Thresholds Right Ear 05 KHz"

label variable hneq14r1 "Audiometric Thresholds Right Ear 1 KHz"

label variable hneq14rt1 "Audiometric Thresholds Right Ear 1 KHz Retest"

label variable hneq14r2 "Audiometric Thresholds Right Ear 2 KHz"

label variable hneq14r4 "Audiometric Thresholds Right Ear 4 KHz"

label variable hneq14r8 "Audiometric Thresholds Right Ear 8 KHz"

label variable hneq14l "Audiometric Thresholds Left Ear"
label define _l4rozthTVN 1 "Auto" 2 "Manual" 3 "Both"
label values hneq14l _l4rozthTVN

label variable hneq14l0 "Audiometric Thresholds Left Ear 05 KHz"

label variable hneq14l1 "Audiometric Thresholds Left Ear 1 KHz"

label variable hneq14lt1 "Audiometric Thresholds Left Ear 1 KHz Retest"

label variable hneq14l2 "Audiometric Thresholds Left Ear 2 KHz"

label variable hneq14l4 "Audiometric Thresholds Left Ear 4 KHz"

label variable hneq14l8 "Audiometric Thresholds Left Ear 8 KHz"

label variable hneq15r "Speech Discrimination Score Right Ear"

label variable hneq15l "Speech Discrimination Score Left Ear"

label variable hneq16s1 "QuickSIN List 1 Track 3"

label variable hneq16s2 "QuickSIN List 2 Track 4"

label variable hneq17 "Patient reliability with Audiometric Testing"
label define _QefkUm8LUF 1 "Good" 2 "Fair" 3 "Poor"
label values hneq17 _QefkUm8LUF

label variable hneq18 "Manual Audiometric Test performed"
label define _o3ZOj0vyvr 0 "No" 1 "Yes"
label values hneq18 _o3ZOj0vyvr

label variable hneq19 "Was hearing test completed"
label define _tWG0dFOxPu 0 "No" 1 "Yes"
label values hneq19 _tWG0dFOxPu

label variable hneq19a "Hearing test RND"
label define _QbRlcNHpml 1 "Impacted cerumen" 2 "No time" 4 "Refused" 5 "Unable" 6 "Equipment problem" 7 "No tester" 8 "Not eligible" 9 "Not scheduled/Not applicable"
label values hneq19a _QbRlcNHpml

label variable auto_id_heaandnoiexp "Unique Teleform Number"

label variable crf_parent_name_heaandnoiexp "CRF Parent Name"

label variable study_name_heaandnoiexp "Study Name"

