clear
import delimited "../data-csv/BLSA_Lateral_Dominance.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_latdom "CRF Version"

label variable obsdate_lhddate "Date Completed"

// Generate 'date version' of the 'obsdate_lhddate' variable
gen _obsdate_lhddate = date(obsdate_lhddate, "YMD")
format _obsdate_lhddate %td

label variable blank_latdom "Blank Form"

label variable lhdtid "Tester ID"

label variable lhd01 "Describe your handedness"
label define _pSQ7UligQG 1 "Right" 2 "Left" 3 "Ambidextrous"
label values lhd01 _pSQ7UligQG

label variable lhd02 "Did you ever change your writing hand"
label define _Jg1x64OoSb 0 "No" 1 "Yes"
label values lhd02 _Jg1x64OoSb

label variable lhd02age "If yes at what change writing hand"

label variable lhd04com "Why did you change"

label variable lhd04a "Hand dominance writing"
label define _TGT20C6vNY 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04a _TGT20C6vNY

label variable lhd04b "Hand dominance drawing"
label define _SHLZtKRjaS 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04b _SHLZtKRjaS

label variable lhd04c "Hand dominance throwing"
label define _TMlvL1lWWn 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04c _TMlvL1lWWn

label variable lhd04d "Hand dominance hammer"
label define _yGaCHMq4Rh 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04d _yGaCHMq4Rh

label variable lhd04e "Hand dominance Scissors"
label define _Ww8lprFwES 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04e _Ww8lprFwES

label variable lhd04f "Hand dominance toothbrush"
label define _GqHkk4JDnf 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04f _GqHkk4JDnf

label variable lhd04g "Hand dominance knife without fork"
label define _FFIkk8ZSf9 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04g _FFIkk8ZSf9

label variable lhd04h "Hand dominance spoon"
label define _CDq0dGs8ZB 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04h _CDq0dGs8ZB

label variable lhd04i "Hand dominance screwdriver"
label define _GxuDOetAdd 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04i _GxuDOetAdd

label variable lhd04j "Hand dominance broom upper hand"
label define _CqYXOTRR7r 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04j _CqYXOTRR7r

label variable lhd04k "Hand dominance striking match"
label define _ijw7e0MLcK 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04k _ijw7e0MLcK

label variable lhd04l "Hand dominance opening box lid"
label define _D8BQrKFNnA 1 "Left Always" 2 "Left Usually" 3 "Equally" 4 "Right Usually" 5 "Right Always"
label values lhd04l _D8BQrKFNnA

label variable auto_id_latdom "Unique Teleform Number"

label variable crf_parent_name_latdom "CRF Parent Name"

label variable study_name_latdom "Study Name"

