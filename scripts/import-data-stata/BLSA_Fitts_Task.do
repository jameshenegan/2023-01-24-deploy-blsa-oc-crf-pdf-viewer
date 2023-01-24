clear
import delimited "../data-csv/BLSA_Fitts_Task.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_fittas "CRF Version"

label variable obsdate_fittsdate "Date Completed"

// Generate 'date version' of the 'obsdate_fittsdate' variable
gen _obsdate_fittsdate = date(obsdate_fittsdate, "YMD")
format _obsdate_fittsdate %td

label variable blank_fittas "Blank Form"

label variable fittstid "Tester ID"

label variable fittsa01 "Dominant Hand"
label define _UxRlHFch7f 1 "Left" 2 "Right"
label values fittsa01 _UxRlHFch7f

label variable fittsa02 "Dominant Hand issues"
label define _NOJFM0bag0 0 "No" 1 "Yes"
label values fittsa02 _NOJFM0bag0

label variable fittsacom "Explain hand issues"

label variable fittst01 "Test 1 complete"
label define _raSqkTJ8Lo 0 "No" 1 "Yes"
label values fittst01 _raSqkTJ8Lo

label variable fittst03 "Tester How easy did the participant perform this test"
label define _DqCj1YWaLJ 1 "Very Easy" 2 "Somewhat Easy" 3 "Neutral" 4 "Somewhat Difficult" 5 "Very Difficult"
label values fittst03 _DqCj1YWaLJ

label variable fittst04 "Tester Did the participant have trouble understanding the instructions"
label define _zqLzDa6bhw 0 "No" 1 "Yes" 2 "Unsure"
label values fittst04 _zqLzDa6bhw

label variable fittst05 "Tester Do you think the instructions help the participant perform the test"
label define _YdyNW2YX5N 0 "No" 1 "Yes" 2 "Unsure"
label values fittst05 _YdyNW2YX5N

label variable fitts0p6 "Participant How easy was this test"
label define _IzKwHXQO1K 1 "Very Easy" 2 "Somewhat Easy" 3 "Neutral" 4 "Somewhat Difficult" 5 "Very Difficult"
label values fitts0p6 _IzKwHXQO1K

label variable auto_id_fittas "Unique Teleform Number"

label variable fittst01rnd2 "Test 1 reason not done"
label define _HCzKLOIbgv 1 "Physical/sensory impairment" 2 "Emotional problems" 3 "Cognitive problems" 4 "Refused" 5 "Technical problems" 6 "Other" 7 "Joint or movement issues" 8 "Vision problems" 9 "Not Scheduled"
label values fittst01rnd2 _HCzKLOIbgv

label variable lines "Tester Did the participant have a very difficult time hitting the little rectangles"
label define _x15XRyygbV 0 "No" 1 "Yes" 2 "Unsure"
label values lines _x15XRyygbV

label variable stylus "Participant Stylus movement"
label define _JF5e7GN30m 1 "Very Natural" 2 "Somewhat Natural" 3 "Neutral" 4 "Somewhat Unnatural" 5 "Very Unnatural"
label values stylus _JF5e7GN30m

label variable linesparticipant "Participant How difficult to touch the lines"
label define _dsTihZ2H1Z 1 "Very Easy" 2 "Somewhat Easy" 3 "Neutral" 4 "Somewhat Difficult" 5 "Very Difficult"
label values linesparticipant _dsTihZ2H1Z

label variable armofftablet "How hard was it to hold your arm off the tablet"
label define _L0W2Um2zkf 1 "Not hard at all" 2 "Somewhat hard" 3 "Very hard"
label values armofftablet _L0W2Um2zkf

label variable cursonspeed "Did you feel the cursor on screen moved at a comparable speed to your movement on the tablet?"
label define _sWBNJnTEyZ 0 "No" 1 "Yes"
label values cursonspeed _sWBNJnTEyZ

label variable fittst01rnd "Test 1 reason not done"
label define _soEQBDyOPc 1 "Physical/sensory impairment" 2 "Emotional problems" 3 "Cognitive problems" 4 "Refused" 5 "Technical problems" 6 "Other"
label values fittst01rnd _soEQBDyOPc

label variable fittst02 "Tester Did the participant have a very difficult time hitting the little rectangles"
label define _dUxFOwJADl 0 "No" 1 "Yes" 2 "Unsure"
label values fittst02 _dUxFOwJADl

label variable fitts0p7 "Participant Finger movement"
label define _tgXv2bSsxR 1 "Very Natural" 2 "Somewhat Natural" 3 "Neutral" 4 "Somewhat Unnatural" 5 "Very Unnatural"
label values fitts0p7 _tgXv2bSsxR

label variable fitts0p8 "Participant How difficult to touch triangles"
label define _AaWPcIOoEf 1 "Very Easy" 2 "Somewhat Easy" 3 "Neutral" 4 "Somewhat Difficult" 5 "Very Difficult"
label values fitts0p8 _AaWPcIOoEf

label variable fittst09 "Tester Compare how easy Test 1 Test 2"
label define _r0SSxT1GQy 1 "Much Easier" 2 "Somewhat Easier" 3 "About the Same" 4 "With More Difficulty" 5 "With Much More Difficulty"
label values fittst09 _r0SSxT1GQy

label variable fittsp10 "Participant Compare how easy Test 1 Test 2"
label define _EnOb37sESm 1 "Much Easier" 2 "Somewhat Easier" 3 "About the Same" 4 "With More Difficulty" 5 "With Much More Difficulty"
label values fittsp10 _EnOb37sESm

label variable crf_parent_name_fittas "CRF Parent Name"

label variable study_name_fittas "Study Name"

