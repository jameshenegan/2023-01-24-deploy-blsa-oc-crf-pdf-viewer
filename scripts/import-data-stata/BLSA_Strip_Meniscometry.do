clear
import delimited "../data-csv/BLSA_Strip_Meniscometry.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_strmen "CRF Version"

label variable obsdate_smdate1 "Date Completed"

// Generate 'date version' of the 'obsdate_smdate1' variable
gen _obsdate_smdate1 = date(obsdate_smdate1, "YMD")
format _obsdate_smdate1 %td

label variable blank_strmen "Blank Form"

label variable smtid1 "Tester ID"

label variable sm01 "Use eye drops"
label define _boqo2JSD7i 0 "No" 1 "Yes"
label values sm01 _boqo2JSD7i

label variable sm01a "If yes which eye"
label define _trWLxMxmkM 1 "Both eyes" 2 "Right eye only" 3 "Left eye only" 8 "Unknown"
label values sm01a _trWLxMxmkM

label variable sm02 "If yes how long ago were drops administered"
label define _nCH5xpLrir 0 "Do not use eye drops" 1 "Less than 1 hour ago" 2 "More than 1 hour ago but less than 12 hours ago" 3 "More than 12 hours ago but less than 24 hours ago" 4 "More than 24 hours ago" 8 "Unknown"
label values sm02 _nCH5xpLrir

label variable sm03 "Why do you use eye drops"
label define _RKzRM73IQb 1 "Chronic eye condition eg Glaucoma" 2 "Pre/Post Operative" 3 "Dry eye (prescription)" 4 "Comfort (non prescription" 5 "Other please specify"
label values sm03 _RKzRM73IQb

label variable sm03a "Other reason why use eye drops"

label variable sm04 "Do you use makeup routinely"
label define _dJp27f4SIg 0 "No" 1 "Yes" 8 "Unknown"
label values sm04 _dJp27f4SIg

label variable sm05 "Was strip meniscometry test performed"
label define _XDMhZDr1Fe 0 "No" 1 "Yes"
label values sm05 _XDMhZDr1Fe

label variable sm05a "If yes which eye"
label define _pnpifeL4H6 1 "Both eyes" 2 "Right eye only" 3 "Left eye only" 8 "Unknown"
label values sm05a _pnpifeL4H6

label variable sm05b "Reson not done"
label define _dzE1lHMDKo 555 "555 = Could not do due to physical problems" 666 "666 = Could not do due to mental problems" 777 "777 = Could not do due to both physical and mental problems" 888 "888 = Refused but theoretically could do" 999 "999 = Did not do due to technical problems"
label values sm05b _dzE1lHMDKo

label variable sm06a "R eye strip meniscometry blue dye distance"

label variable sm06b "L eye strip meniscometry blue dye distance"

label variable sm06c "Room temperature"

label variable sm06d "Room humidity"

label variable sm06e "Test time"

label variable smdate2 "Date Completed"

// Generate 'date version' of the 'smdate2' variable
gen _smdate2 = date(smdate2, "YMD")
format _smdate2 %td

label variable smtid2 "Tester ID"

label variable sm07a "T2 If yes how long ago were drops administered"
label define _gnpLK2HFnV 0 "Do not use eye drops" 1 "Less than 1 hour ago" 2 "More than 1 hour ago but less than 12 hours ago" 3 "More than 12 hours ago but less than 24 hours ago" 4 "More than 24 hours ago" 8 "Unknown"
label values sm07a _gnpLK2HFnV

label variable sm07b "Was strip meniscometry test 2 performed"
label define _jsLoauclb2 0 "No" 1 "Yes"
label values sm07b _jsLoauclb2

label variable sm07c "If yes which eye T2"
label define _UiWSZaLI6L 1 "Both eyes" 2 "Right eye only" 3 "Left eye only" 8 "Unknown"
label values sm07c _UiWSZaLI6L

label variable sm07d "T2 Reson not done"
label define _F2XePfJ0nk 555 "555 = Could not do due to physical problems" 666 "666 = Could not do due to mental problems" 777 "777 = Could not do due to both physical and mental problems" 888 "888 = Refused but theoretically could do" 999 "999 = Did not do due to technical problems"
label values sm07d _F2XePfJ0nk

label variable sm08a "T2 R eye strip meniscometry blue dye distance"

label variable sm08b "T2 L eye strip meniscometry blue dye distance"

label variable sm08c "T2 Room temperature"

label variable sm08d "T2 Room humidity"

label variable sm08e "T2 Test time"

label variable auto_id_strmen "Unique Teleform Number"

label variable crf_parent_name_strmen "CRF Parent Name"

label variable study_name_strmen "Study Name"

