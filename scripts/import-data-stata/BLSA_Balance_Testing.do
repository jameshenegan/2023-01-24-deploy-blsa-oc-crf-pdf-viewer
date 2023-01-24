clear
import delimited "../data-csv/BLSA_Balance_Testing.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_baltes "CRF Version"

label variable obsdate_baltdate "Date Completed"

// Generate 'date version' of the 'obsdate_baltdate' variable
gen _obsdate_baltdate = date(obsdate_baltdate, "YMD")
format _obsdate_baltdate %td

label variable balttid "Tester ID"

label variable blank_baltes "Blank Form"

label variable balt01a "Is the participant able to stand unassisted?"
label define _cgK01GkM62 0 "No" 1 "Yes"
label values balt01a _cgK01GkM62

label variable balt01b "Does the participant need to use an assistive devide for standing or walking"
label define _UCk0Xp7diA 0 "No" 1 "Yes"
label values balt01b _UCk0Xp7diA

label variable baltmls1 "Floor eyes open ML sway"

label variable baltaps1 "Floor eyes open AP sway"

label variable baltcoms1 "Floor eyes open COM sway"

label variable balthq1 "Floor eyes open how stable"

label variable balttrial1 "Floor eyes open trial successful stance achieved"
label define _ovzPXvQD2m 1 "1" 2 "2" 3 "3"
label values balttrial1 _ovzPXvQD2m

label variable baltrnd1 "Floor eyes open RND"
label define _M2n5qO8RMd 1 "1-Loss of balance/fall before reaching 30 seconds" 2 "2-Equipment malfunction" 3 "3-Could not do due to physical problems" 4 "4-Cound not do due to mental problems" 5 "5-Could not do due to both physical and mental problems" 8 "8-Refused but theoretically could do" 9 "9-Did not do due to technical problems"
label values baltrnd1 _M2n5qO8RMd

label variable baltmls2 "Floor eyes closed ML sway"

label variable baltaps2 "Floor eyes closed AP sway"

label variable baltcoms2 "Floor eyes closed COM sway"

label variable balthq2 "Floor eyes closed how stable"

label variable balttrial2 "Floor eyes closed trial successful stance achieved"
label define _xNjzDO88eX 1 "1" 2 "2" 3 "3"
label values balttrial2 _xNjzDO88eX

label variable baltrnd2 "Floor eyes closed RND"
label define _wZAA0cIDgn 1 "1-Loss of balance/fall before reaching 30 seconds" 2 "2-Equipment malfunction" 3 "3-Could not do due to physical problems" 4 "4-Cound not do due to mental problems" 5 "5-Could not do due to both physical and mental problems" 8 "8-Refused but theoretically could do" 9 "9-Did not do due to technical problems"
label values baltrnd2 _wZAA0cIDgn

label variable baltmls3 "Floor dynamic vision ML sway"

label variable baltaps3 "Floor dynamic vision AP sway"

label variable baltcoms3 "Floor dynamic vision COM sway"

label variable balthq3 "Floor dynamic vision how stable"

label variable balttrial3 "Floor dynamic vision trial successful stance achieved"
label define _lEH03cxWuK 1 "1" 2 "2" 3 "3"
label values balttrial3 _lEH03cxWuK

label variable baltrnd3 "Floor dynamic vision RND"
label define _SzQcqSmHjC 1 "1-Loss of balance/fall before reaching 30 seconds" 2 "2-Equipment malfunction" 3 "3-Could not do due to physical problems" 4 "4-Cound not do due to mental problems" 5 "5-Could not do due to both physical and mental problems" 8 "8-Refused but theoretically could do" 9 "9-Did not do due to technical problems"
label values baltrnd3 _SzQcqSmHjC

label variable baltmls4 "Foam eyes open ML sway"

label variable baltaps4 "Foam eyes open AP sway"

label variable baltcoms4 "Foam eyes open COM sway"

label variable balthq4 "Foam eyes open how stable"

label variable balttrial4 "Foam eyes open trial successful stance achieved"
label define _WU2xkTZriS 1 "1" 2 "2" 3 "3"
label values balttrial4 _WU2xkTZriS

label variable baltrnd4 "Foam eyes open RND"
label define _o9muAkKy6N 1 "1-Loss of balance/fall before reaching 30 seconds" 2 "2-Equipment malfunction" 3 "3-Could not do due to physical problems" 4 "4-Cound not do due to mental problems" 5 "5-Could not do due to both physical and mental problems" 8 "8-Refused but theoretically could do" 9 "9-Did not do due to technical problems"
label values baltrnd4 _o9muAkKy6N

label variable baltmls5 "Foam eyes closed ML sway"

label variable baltaps5 "Foam eyes closed AP sway"

label variable baltcoms5 "Foam eyes closed COM sway"

label variable balthq5 "Foam eyes closed how stable"

label variable balttrial5 "Foam eyes closed trial successful stance achieved"
label define _CJzHQWZULi 1 "1" 2 "2" 3 "3"
label values balttrial5 _CJzHQWZULi

label variable baltrnd5 "Foam eyes closed RND"
label define _tbcHn99CuC 1 "1-Loss of balance/fall before reaching 30 seconds" 2 "2-Equipment malfunction" 3 "3-Could not do due to physical problems" 4 "4-Cound not do due to mental problems" 5 "5-Could not do due to both physical and mental problems" 8 "8-Refused but theoretically could do" 9 "9-Did not do due to technical problems"
label values baltrnd5 _tbcHn99CuC

label variable baltmls6 "Foam dynamic vision ML sway"

label variable baltaps6 "Foam dynamic vision AP sway"

label variable baltcoms6 "Foam dynamic vision COM sway"

label variable balthq6 "Foam dynamic vision how stable"

label variable balttrial6 "Foam dynamic vision trial successful stance achieved"

label variable baltrnd6 "Foam dynamic vision RND"
label define _eqBf6vzevX 1 "1-Loss of balance/fall before reaching 30 seconds" 2 "2-Equipment malfunction" 3 "3-Could not do due to physical problems" 4 "4-Cound not do due to mental problems" 5 "5-Could not do due to both physical and mental problems" 8 "8-Refused but theoretically could do" 9 "9-Did not do due to technical problems"
label values baltrnd6 _eqBf6vzevX

label variable auto_id_baltes "Unique Teleform Number"

label variable crf_parent_name_baltes "CRF Parent Name"

label variable study_name_baltes "Study Name"

