clear
import delimited "../data-csv/BLSA_Visual_Field.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_visfie "CRF Version"

label variable obsdate_vfdate "Date Completed"

// Generate 'date version' of the 'obsdate_vfdate' variable
gen _obsdate_vfdate = date(obsdate_vfdate, "YMD")
format _obsdate_vfdate %td

label variable blank_visfie "Blank Form"

label variable vftid "Tester ID"

label variable vissc1_visfie "Do you wear glasses or contact lenses"
label define _mVXqAR3D7J 0 "Never" 1 "Near only (eg reading)" 2 "Distance only (eg driving watching TV)" 3 "For both distance and near"
label values vissc1_visfie _mVXqAR3D7J

label variable vissc2_visfie "Did you bring your glasses"
label define _m7Knn3FLPU 0 "No" 1 "Yes"
label values vissc2_visfie _m7Knn3FLPU

label variable vissc2a_visfie "Type of glasses or contact lenses"
label define _aJ1yAy6lcg 1 "Glasses" 2 "Contact Lenses"
label values vissc2a_visfie _aJ1yAy6lcg

label variable vissc2a1_visfie "Glasses"
label define _Kpi1zSne2L 1 "Single vision" 2 "Bifocal" 3 "Trifocals" 4 "Progressives"
label values vissc2a1_visfie _Kpi1zSne2L

label variable vissc2b_visfie "Contact Lenses"
label define _HPsaQ3bUlD 1 "Soft" 2 "RGP (hard)" 8 "Unknown"
label values vissc2b_visfie _HPsaQ3bUlD

label variable vissc2b1_visfie "Contact lenses for distance bifocal or monovision"
label define _xXNsHciXjy 1 "Distance" 2 "Bifocal" 3 "Monovision"
label values vissc2b1_visfie _xXNsHciXjy

label variable vissc2b2_visfie "Which eye distance"
label define _JzZQYKJv9F 1 "Right" 2 "Left" 8 "Unknown"
label values vissc2b2_visfie _JzZQYKJv9F

label variable visvfdis_visfie "Does participant have marked discrepency of vision between eyes"
label define _yh9F93F7n0 0 "No" 1 "Yes"
label values visvfdis_visfie _yh9F93F7n0

label variable vissc3a1_visfie "Right eye sphere Rx"

label variable vissc3a2_visfie "Right eye cylinder Rx"

label variable vissc3a3_visfie "Right eye Axis Rx"

label variable vissc3a4_visfie "Right eye sphere Rx final"

label variable vissc3b1_visfie "Left eye sphere Rx"

label variable vissc3b2_visfie "Left eye cylinder Rx"

label variable vissc3b3_visfie "Left eye Axis Rx"

label variable vissc3b4_visfie "Left eye sphere Rx final"

label variable vissc3c_visfie "Near add"

label variable visvfdon_visfie "Was visual field assessment completed"
label define _NDGZlftzXP 0 "No" 1 "Yes"
label values visvfdon_visfie _NDGZlftzXP

label variable visvfrnd_visfie "Why visual field not done"
label define _GGT9UKHSz6 555 "Physical problems (*includes if participant has marked discrepancy of vision between eyes" 666 "Physical and cognitive" 777 "Cognitive problems" 888 "Refused" 999 "Technical problems"
label values visvfrnd_visfie _GGT9UKHSz6

label variable comments_visfie "Comments"

label variable auto_id_visfie "Unique Teleform Number"

label variable crf_parent_name_visfie "CRF Parent Name"

label variable study_name_visfie "Study Name"

