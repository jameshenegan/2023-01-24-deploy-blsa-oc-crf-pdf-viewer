clear
import delimited "../data-csv/BLSA_HV_Neurological_Assessment.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_hvneuass "CRF Version"

label variable obsdate_neudate "Date Completed"

// Generate 'date version' of the 'obsdate_neudate' variable
gen _obsdate_neudate = date(obsdate_neudate, "YMD")
format _obsdate_neudate %td

label variable blank_hvneuass "Blank Form"

label variable neutid "Tester ID"

label variable neu01 "Recite days of the week"
label define _nw1HIpUvJh 0 "Not Completed" 1 "Completed"
label values neu01 _nw1HIpUvJh

label variable neu01a "days of week reason not done"
label define _Drw9eSx9Xd 555 "555 = physical problems" 666 "666 = mental problems" 777 "777 = physical and mental problems" 888 "888 = refused but theoretically could do" 999 "999 = technical problems"
label values neu01a _Drw9eSx9Xd

label variable neu02 "Smile"
label define _l57iCaPKIE 0 "Not Completed" 1 "Completed"
label values neu02 _l57iCaPKIE

label variable neu02a "Smile reason not done"
label define _T8d8HrnK1J 555 "555 = physical problems" 666 "666 = mental problems" 777 "777 = physical and mental problems" 888 "888 = refused but theoretically could do" 999 "999 = technical problems"
label values neu02a _T8d8HrnK1J

label variable neu03 "Finger to Nose"
label define _Onnk0Om03x 0 "Not Completed" 1 "Completed"
label values neu03 _Onnk0Om03x

label variable neu03a "Finger to nose reason not done"
label define _HXBB6fl1Ls 555 "555 = physical problems" 666 "666 = mental problems" 777 "777 = physical and mental problems" 888 "888 = refused but theoretically could do" 999 "999 = technical problems"
label values neu03a _HXBB6fl1Ls

label variable neu04 "Orbit Motion"
label define _HwlN0hUoSr 0 "Not Completed" 1 "Completed"
label values neu04 _HwlN0hUoSr

label variable neu04a "Orbit Motion reason not done"
label define _l5DWzorYEW 555 "555 = physical problems" 666 "666 = mental problems" 777 "777 = physical and mental problems" 888 "888 = refused but theoretically could do" 999 "999 = technical problems"
label values neu04a _l5DWzorYEW

label variable neu05 "Open and Close Motion"
label define _ZxtOoczg5I 0 "Not Completed" 1 "Completed"
label values neu05 _ZxtOoczg5I

label variable neu05a "Open and Close Motion reason not done"
label define _R0VEZGPE6r 555 "555 = physical problems" 666 "666 = mental problems" 777 "777 = physical and mental problems" 888 "888 = refused but theoretically could do" 999 "999 = technical problems"
label values neu05a _R0VEZGPE6r

label variable neu06 "Heel Taps"
label define _AbhCbwGflT 0 "Not Completed" 1 "Completed"
label values neu06 _AbhCbwGflT

label variable neu06a "Heel Taps reason not done"
label define _cTmXyqyu92 555 "555 = physical problems" 666 "666 = mental problems" 777 "777 = physical and mental problems" 888 "888 = refused but theoretically could do" 999 "999 = technical problems"
label values neu06a _cTmXyqyu92

label variable neu07 "Chair Stand and Walk"
label define _jZeJzvy1mS 0 "Not Completed" 1 "Completed"
label values neu07 _jZeJzvy1mS

label variable neu07a "Chair Stand and Walk reason not done"
label define _NupO4iN4fe 555 "555 = physical problems" 666 "666 = mental problems" 777 "777 = physical and mental problems" 888 "888 = refused but theoretically could do" 999 "999 = technical problems"
label values neu07a _NupO4iN4fe

label variable auto_id_hvneuass "Unique Teleform Number"

label variable crf_parent_name_hvneuass "CRF Parent Name"

label variable study_name_hvneuass "Study Name"

