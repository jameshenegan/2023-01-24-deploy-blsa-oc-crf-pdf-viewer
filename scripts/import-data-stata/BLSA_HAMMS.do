clear
import delimited "../data-csv/BLSA_HAMMS.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_ham "CRF Version"

label variable obsdate_hamdate "Date Completed"

// Generate 'date version' of the 'obsdate_hamdate' variable
gen _obsdate_hamdate = date(obsdate_hamdate, "YMD")
format _obsdate_hamdate %td

label variable blank_ham "Blank Form"

label variable hamtid "Tester ID"

label variable ham01 "Have known injuries or conditions that may affect their arm hand movement"
label define _peXBuUiXbe 0 "No" 1 "Yes"
label values ham01 _peXBuUiXbe

label variable ham02 "What is the participant's dominant hand"
label define _yQ4MwC1wY2 0 "Left" 1 "Right"
label values ham02 _yQ4MwC1wY2

label variable ham03 "Trial 1 was HAMMS protocol completed"
label define _qeso5WmIkZ 0 "No" 1 "Yes"
label values ham03 _qeso5WmIkZ

label variable ham03a "Trial 1 reason not performed"
label define _bHupMF5st4 1 "Physical/sensory impairment" 2 "Emotional problems stress physical illness medications or lack of sleep" 3 "Cognitive problems" 4 "Refused" 5 "Technical problems (includes no time or no tester)" 6 "Other - Please specify"
label values ham03a _bHupMF5st4

label variable ham03acom "Trial 1 RND Other"

label variable ham04a "Trial 1 feedback test difficulty"
label define _U4amZSAHn1 1 "Very easy" 2 "Somewhat easy" 3 "Somewhat difficult" 4 "Very difficult"
label values ham04a _U4amZSAHn1

label variable ham04b "Trial 1 instructions difficulty"
label define _ajYsObBziH 1 "Very clear" 2 "Somewhat clear" 3 "Somewhat confusing" 4 "Very confusing"
label values ham04b _ajYsObBziH

label variable ham04c "Trial 1 enjoyed test"
label define _nKWxTZJ0EU 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree"
label values ham04c _nKWxTZJ0EU

label variable ham05 "Trial 1 tester feedback"
label define _IeWx5Q6qkB 1 "Very easily" 2 "Somewhat easily" 3 "With some difficulty" 4 "With great difficulty" 5 "Other - Please specify"
label values ham05 _IeWx5Q6qkB

label variable ham05com "Trial 1 tester feedback Other"

label variable auto_id_ham "Unique Teleform Number"

label variable ham06 "was HAMMS protocol completed"
label define _rvgD5H3c5D 0 "No" 1 "Yes"
label values ham06 _rvgD5H3c5D

label variable ham06a "reason not performed"
label define _yM8QHPKesy 1 "Physical/sensory impairment" 2 "Emotional problems stress physical illness medications or lack of sleep" 3 "Cognitive problems" 4 "Refused" 5 "Technical problems (includes no time or no tester)" 6 "Other - Please specify"
label values ham06a _yM8QHPKesy

label variable ham06com "RND Other"

label variable ham07a "feedback test difficulty"
label define _eeYR7sCxmX 1 "Very easy" 2 "Somewhat easy" 3 "Somewhat difficult" 4 "Very difficult"
label values ham07a _eeYR7sCxmX

label variable ham07b "instructions difficulty"
label define _eDiOGpaDeH 1 "Very clear" 2 "Somewhat clear" 3 "Somewhat confusing" 4 "Very confusing"
label values ham07b _eDiOGpaDeH

label variable ham07c "enjoyed test"
label define _IHDRK60FGl 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree"
label values ham07c _IHDRK60FGl

label variable ham08 "tester feedback"
label define _nZB9wXLms5 1 "Very easily" 2 "Somewhat easily" 3 "With some difficulty" 4 "With great difficulty" 5 "Other - Please specify"
label values ham08 _nZB9wXLms5

label variable ham08com "RND Other"

label variable ham08a "able to maintain constant steady speed"
label define _tcvR6lLzsU 1 "Very easily" 2 "Somewhat easily" 3 "With some difficulty" 4 "With great difficulty"
label values ham08a _tcvR6lLzsU

label variable ham08b "during hand motion the participant was able to keep their hand within a plane that is greater than 1 inch but no more than 2 inches above the black surface"
label define _LvyCAy6H3V 1 "Very easily" 2 "Somewhat easily" 3 "With some difficulty" 4 "With great difficulty"
label values ham08b _LvyCAy6H3V

label variable ham08c "Was it difficult for the participant to move between the squares on screen"
label define _Oj3elkPHEF 0 "No" 1 "Yes"
label values ham08c _Oj3elkPHEF

label variable ham08ccom "If yes Why"

label variable ham08d "Was it difficult for the participant to start the test?"
label define _xhxpw915jM 0 "No" 1 "Yes"
label values ham08d _xhxpw915jM

label variable ham08dcom "If yes Why"

label variable ham08e "Was it difficult for the participant to get on screen to start the test?"
label define _mwpLVB8KIQ 0 "No" 1 "Yes"
label values ham08e _mwpLVB8KIQ

label variable ham08ecom "If yes Why"

label variable ham08f "Did the participant have trouble understanding the instructions"
label define _cjlrkicoiB 0 "No" 1 "Yes"
label values ham08f _cjlrkicoiB

label variable ham09 "Have any known injuries or conditions that affect the index finger"
label define _lHJxenj8VD 0 "No" 1 "Yes"
label values ham09 _lHJxenj8VD

label variable ham10 "Index Finger was HAMM protocol completed"
label define _H8kKJDpeRz 0 "No" 1 "Yes"
label values ham10 _H8kKJDpeRz

label variable ham10a "Index Finger reason not performed"
label define _Rq92AhHEdO 1 "Physical/sensory impairment" 2 "Emotional problems stress physical illness medications or lack of sleep" 3 "Cognitive problems" 4 "Refused" 5 "Technical problems (includes no time or no tester)" 6 "Other - Please specify"
label values ham10a _Rq92AhHEdO

label variable ham10acom "Index Finger RND Other"

label variable ham11a "Index Finger feedback test difficulty"
label define _Zn8SY2PMho 1 "Very easy" 2 "Somewhat easy" 3 "Somewhat difficult" 4 "Very difficult"
label values ham11a _Zn8SY2PMho

label variable ham11b "Test Comparison"
label define _FswPku5xRq 1 "Much easier" 2 "Somewhat easier" 3 "About the same" 4 "Somewhat harder" 5 " Much harder"
label values ham11b _FswPku5xRq

label variable ham12 "Tester feedback Index finger"
label define _ujBoIxd8GQ 1 "Very easily" 2 "Somewhat easily" 3 "With some difficulty" 4 "With great difficulty" 5 "Other - Please specify"
label values ham12 _ujBoIxd8GQ

label variable ham12com "Index finger tester feedback Other"

label variable ham12a "able to maintain constant steady speed"
label define _QPYhwYL64D 1 "Very easily" 2 "Somewhat easily" 3 "With some difficulty" 4 "With great difficulty"
label values ham12a _QPYhwYL64D

label variable ham12b "during hand motion the participant was able to keep their hand within a plane that is greater than 1 inch but no more than 2 inches above the black surface"
label define _GS5tEuI9S2 1 "Very easily" 2 "Somewhat easily" 3 "With some difficulty" 4 "With great difficulty"
label values ham12b _GS5tEuI9S2

label variable ham12c "Compare hand test to finger task"
label define _GdVuVNuiNu 1 "With much less difficulty" 2 "With slightly less difficulty" 3 "With slightly more difficulty" 4 "With much more difficulty"
label values ham12c _GdVuVNuiNu

label variable ham12d "Was it difficult for the participant to move between the squares on screen"
label define _WoYgFl3ArV 0 "No" 1 "Yes"
label values ham12d _WoYgFl3ArV

label variable ham12dcom "If yes Why"

label variable ham12e "Was it difficult for the participant to start the test?"
label define _nLtbAcdGwe 0 "No" 1 "Yes"
label values ham12e _nLtbAcdGwe

label variable ham12ecom "If yes Why"

label variable ham12f "Was it difficult for the participant to get on screen to start the test?"
label define _shZvsz9sLY 0 "No" 1 "Yes"
label values ham12f _shZvsz9sLY

label variable ham12fcom "If yes Why"

label variable ham12g "Did the participant have trouble understanding the instructions"
label define _fT6pcRlDwE 0 "No" 1 "Yes"
label values ham12g _fT6pcRlDwE

label variable crf_parent_name_ham "CRF Parent Name"

label variable study_name_ham "Study Name"

