clear
import delimited "../data-csv/BLSA_VEMP_and_VOG.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_vemandvog "CRF Version"

label variable obsdate_vemdate "Date Completed"

// Generate 'date version' of the 'obsdate_vemdate' variable
gen _obsdate_vemdate = date(obsdate_vemdate, "YMD")
format _obsdate_vemdate %td

label variable blank_vemandvog "Blank Form"

label variable vemtid "Tester ID"

label variable vem0a "WEBER sound the same in both ears"
label define _XZQpm5JaJi 0 "No" 1 "Yes"
label values vem0a _XZQpm5JaJi

label variable vem0b "WEBER sound heard louder"
label define _g4epHAvMmi 0 " Unable to discern" 1 "Right Ear" 2 "Left Ear"
label values vem0b _g4epHAvMmi

label variable vem0cr "Mastoid process positive conduction Right"
label define _IzA42lgY9M 0 "No" 1 "Yes"
label values vem0cr _IzA42lgY9M

label variable vem0cl "Mastoid process positive conduction Left"
label define _j7H8LMlNkr 0 "No" 1 "Yes"
label values vem0cl _j7H8LMlNkr

label variable vem0dr "External auditory meatus positive perception Right"
label define _Eq3T9cFwH4 0 "No" 1 "Yes"
label values vem0dr _Eq3T9cFwH4

label variable vem0dl "External auditory meatus positive perception Left"
label define _ozrAUP5tlS 0 "No" 1 "Yes"
label values vem0dl _ozrAUP5tlS

label variable vog0r "Impacted Cerumen Right"
label define _frQfsiKxcy 0 "No" 1 "Yes"
label values vog0r _frQfsiKxcy

label variable vog0l "Impacted Cerumen Left"
label define _XYp4Vi9fkR 0 "No" 1 "Yes"
label values vog0l _XYp4Vi9fkR

label variable vem01a "OVEMP able to see target"
label define _aVvI9vIHWp 0 "No" 1 "Yes"
label values vem01a _aVvI9vIHWp

label variable vem1la "OVEMP Left Eye trace on top Ln1"

label variable vem1lb "OVEMP Left Eye trace on top Lp1"

label variable vem1le "OVEMP Left Eye trace on top Lamp"

label variable vem1lg "OVEMP Left Eye Calibration LpA"

label variable vem1lh "OVEMP Left Eye Calibration LnA"

label variable vem1ra "OVEMP Right Eye trace on top Ln1"

label variable vem1rb "OVEMP Right Eye trace on top Lp1"

label variable vem1re "OVEMP Right Eye trace on top Lamp"

label variable vem1rg "OVEMP Right Eye Calibration LpA"

label variable vem1rh "OVEMP Right Eye Calibration LnA"

label variable vem2a "CVEMP No conductive hearing loss"
label define _WUi2aUyGa1 0 "False" 1 "True"
label values vem2a _WUi2aUyGa1

label variable vem2b "CVEMP Can move the neck with no restriction or pain"
label define _TR5DWWLwYk 0 "No" 1 "Yes"
label values vem2b _TR5DWWLwYk

label variable vem2ra "CVEMP Right SCM Rp1"

label variable vem2rb "CVEMP Right SCM Rn1"

label variable vem2rc "CVEMP Right SCM Ramp"

label variable vem2rd "CVEMP Right SCM Rrec"

label variable vem2la "CVEMP Left SCM Lp1"

label variable vem2lb "CVEMP Left SCM Ln1"

label variable vem2lc "CVEMP Left SCM Lamp"

label variable vem2ld "CVEMP Left SCM Lrec"

label variable vog31a "VOG able to see target"
label define _sCERd7qbMc 0 "No" 1 "Yes"
label values vog31a _sCERd7qbMc

label variable vog31b "VOG can move neck without restriction or pain"
label define _rPgWvwAxin 0 "No" 1 "Yes"
label values vog31b _rPgWvwAxin

label variable vog31c "VOG No history of surgery in the blood vessels of the neck"
label define _CRiqPJUbcE 0 "False" 1 "True"
label values vog31c _CRiqPJUbcE

label variable vog31d "VOG Had had cervical spine surgery and can move the head from side to side without restriction or pain"
label define _jCuJJi8hA9 0 "False" 1 "True"
label values vog31d _jCuJJi8hA9

label variable vog32almn "VOG Left Horizontal neutral head position with 10 degree pitch MEAN"

label variable vog32alsd "VOG Left Horizontal neutral head position with 10 degree pitch Standard Deviation"

label variable vog32armn "VOG Right Horizontal neutral head position with 10 degree pitch MEAN"

label variable vog32arsd "VOG Right Horizontal neutral head position with 10 degree pitch Standard Deviation"

label variable auto_id_vemandvog "Unique Teleform Number"

label variable vem1lf2 "OVEMP Left Eye trace on top Unknown"
label define _vqnJpazfI9 1 "Not Eligible" 2 "Physical Problems" 3 "Mental Problems" 4 "Technical Difficulties" 5 "Refused but theoretically could do" 6 "Time constraints" 7 "Not Scheduled"
label values vem1lf2 _vqnJpazfI9

label variable vem1rf2 "OVEMP Right trace on top Unknown"
label define _IwievH9PBf 1 "Not Eligible" 2 "Physical Problems" 3 "Mental Problems" 4 "Technical Difficulties" 5 "Refused but theoretically could do" 6 "Time constraints" 7 "Not Scheduled"
label values vem1rf2 _IwievH9PBf

label variable vem2re2 "CVEMP Right SCM Unknown"
label define _AW9eUWtf4p 1 "Not Eligible" 2 "Physical Problems" 3 "Mental Problems" 4 "Technical Difficulties" 5 "Refused but theoretically could do" 6 "Time constraints" 7 "Not Scheduled"
label values vem2re2 _AW9eUWtf4p

label variable vem2le2 "CVEMP Left SCM Unknown"
label define _zYhkP0KvBB 1 "Not Eligible" 2 "Physical Problems" 3 "Mental Problems" 4 "Technical Difficulties" 5 "Refused but theoretically could do" 6 "Time constraints" 7 "Not Scheduled"
label values vem2le2 _zYhkP0KvBB

label variable vog32auk2 "VOG Unknown"
label define _FwGuDm59Iq 1 "Not Eligible" 2 "Physical Problems" 3 "Mental Problems" 4 "Technical Difficulties" 5 "Refused but theoretically could do" 6 "Time constraints" 7 "Not Scheduled"
label values vog32auk2 _FwGuDm59Iq

label variable vem1lc "OVEMP Left Eye trace on top Ln1"

label variable vem1ld "OVEMP Left Eye trace on top Lp1"

label variable vem1lf "OVEMP Left Eye trace on top Unknown"
label define _hFveJqjmYK 1 "Not Eligible" 2 "Physical Problems" 3 "Mental Problems" 4 "Technical Difficulties" 5 "Refused but theoretically could do" 6 "Time constraints"
label values vem1lf _hFveJqjmYK

label variable vem1rc "OVEMP Right Eye trace on top Ln1"

label variable vem1rd "OVEMP Right Eye trace on top Lp1"

label variable vem1rf "OVEMP Right trace on top Unknown"
label define _HSoCeQDT6l 1 "Not Eligible" 2 "Physical Problems" 3 "Mental Problems" 4 "Technical Difficulties" 5 "Refused but theoretically could do" 6 "Time constraints"
label values vem1rf _HSoCeQDT6l

label variable vem2re "CVEMP Right SCM Unknown"
label define _TRn9TpuoVN 1 "Not Eligible" 2 "Physical Problems" 3 "Mental Problems" 4 "Technical Difficulties" 5 "Refused but theoretically could do" 6 "Time constraints"
label values vem2re _TRn9TpuoVN

label variable vem2le "CVEMP Left SCM Unknown"
label define _U1WKycrvco 1 "Not Eligible" 2 "Physical Problems" 3 "Mental Problems" 4 "Technical Difficulties" 5 "Refused but theoretically could do" 6 "Time constraints"
label values vem2le _U1WKycrvco

label variable vog32auk "VOG Unknown"
label define _PxJuXS1KLy 1 "Not Eligible" 2 "Physical Problems" 3 "Mental Problems" 4 "Technical Difficulties" 5 "Refused but theoretically could do" 6 "Time constraints"
label values vog32auk _PxJuXS1KLy

label variable crf_parent_name_vemandvog "CRF Parent Name"

label variable study_name_vemandvog "Study Name"

