clear
import delimited "../data-csv/BLSA_Visit_Procedure_Checklist.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_visproche "CRF Version"

label variable obsdate_data_in_study_manager "Data_in_PAS"
label define _poNhxLz7ZT 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values obsdate_data_in_study_manager _poNhxLz7ZT

label variable vttype "Visit type"
label define _sWMlhZFbgm 0 "(0) Normal" 1 "(1) Continuation of previous visit"
label values vttype _sWMlhZFbgm

label variable blank_visproche "Blank Form"

label variable vtdate2 "Date Completed"

// Generate 'date version' of the 'vtdate2' variable
gen _vtdate2 = date(vtdate2, "YMD")
format _vtdate2 %td

label variable vt01 "BLSA Consent done"

label variable vt04 "Vital signs done"

label variable vt05 "Height and Weight done"

label variable vt06a "Blood and lab work done"
label define _QsyoTKXtpW 0 "Not done" 1 "Done"
label values vt06a _QsyoTKXtpW

label variable vt06aa "Blood and lab work RND"
label define _CwZSThXMT7 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt06aa _CwZSThXMT7

label variable vt06ab "Blood and lab work to be resch"
label define _xCUsHYfHmj 1 "To be rescheduled"
label values vt06ab _xCUsHYfHmj

label variable vt52 "Activity Monitor done"
label define _pPuxTcC7zi 0 "Not done" 1 "Done"
label values vt52 _pPuxTcC7zi

label variable vt52a "Activity Monitor RND"
label define _TtOZcq6I00 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt52a _TtOZcq6I00

label variable vt52b "Activity Monitor to be resch"
label define _xcZ7MOjkxc 1 "To be rescheduled"
label values vt52b _xcZ7MOjkxc

label variable vt14 "Grip Strength done"
label define _t9LIKRW8Hr 0 "Not done" 1 "Done"
label values vt14 _t9LIKRW8Hr

label variable vt14a "Grip Strength RND"
label define _wr8O0aJ28V 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt14a _wr8O0aJ28V

label variable vt14b "Grip Strength to be resch"
label define _qV2gUBwVRJ 1 "To be rescheduled"
label values vt14b _qV2gUBwVRJ

label variable vt16 "LE Physical Perf done"
label define _IEZkm1CnHU 0 "Not done" 1 "Done"
label values vt16 _IEZkm1CnHU

label variable vt16a "LE Physical Perf RND"
label define _eo9o26uHH5 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt16a _eo9o26uHH5

label variable vt16b "LE Physical Perf to be resch"
label define _dGnW1Qjdkh 1 "To be rescheduled"
label values vt16b _dGnW1Qjdkh

label variable vt19 "Core Cognitive Testing done"
label define _GPhjdmgwtI 0 "Not done" 1 "Done"
label values vt19 _GPhjdmgwtI

label variable vt19a "Core Cognitive Testing RND"
label define _SfE0AZeTu2 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt19a _SfE0AZeTu2

label variable vt19b "Core Cognitive Testing to be resch"
label define _RDZVepFbZ8 1 "To be rescheduled"
label values vt19b _RDZVepFbZ8

label variable vt32 "Medical Interview done"
label define _bmBT6wdxXx 0 "Not done" 1 "Done"
label values vt32 _bmBT6wdxXx

label variable vt32a "Medical Interview RND"
label define _lnWeAh1f38 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt32a _lnWeAh1f38

label variable vt32b "Medical Interview to be resch"
label define _bU40QffQtZ 1 "To be rescheduled"
label values vt32b _bU40QffQtZ

label variable vt33 "General Interview done"
label define _fzPRxAxaPs 0 "Not done" 1 "Done"
label values vt33 _fzPRxAxaPs

label variable vt33a "General Interview RND"
label define _sQbDcRpRGr 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt33a _sQbDcRpRGr

label variable vt33b "General Interview to be resch"
label define _XRjo2NERmS 1 "To be rescheduled"
label values vt33b _XRjo2NERmS

label variable vt42 "Medication List done"
label define _zfiRsWTJng 0 "Not done" 1 "Done"
label values vt42 _zfiRsWTJng

label variable vt46 "Best list"
label define _mTSV0MSnNw 1 "Yes" 4 "<70" 5 "Cancer" 6 "Diabetes" 7 "Other Chronic" 8 "Frail" 9 "Other"
label values vt46 _mTSV0MSnNw

label variable vt46a "Best list comment"

label variable cdr "CDR"

label variable neuroimaging "Neuro Imaging participant"

label variable autopsystudy "Autopsy Study Participant"

label variable reactiontime "Computer reaction time testing"

label variable reacttimernd "Computer reaction time testing RND"

label variable reacttimeres "Computer reaction time testing to be rescheduled"

label variable activityscaleq "Activity Related Fatigue Scale"

label variable epworthss "Epworth Sleep Scale"

label variable lateraldom "Lateral Dominance"

label variable swallowingq "Swallowing Questionnaire"

label variable vtdate1 "Initial date"

// Generate 'date version' of the 'vtdate1' variable
gen _vtdate1 = date(vtdate1, "YMD")
format _vtdate1 %td

label variable vt06b "Fasting Urine done"
label define _f0gJyuGpoM 0 "Not done" 1 "Done"
label values vt06b _f0gJyuGpoM

label variable vt06ba "Fasting Urine RND"
label define _qxWPWORxny 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt06ba _qxWPWORxny

label variable vt06bb "Fasting Urine to be resch"
label define _D73ioLSQiV 1 "To be rescheduled"
label values vt06bb _D73ioLSQiV

label variable vt06d "Nan Ping tbs done"
label define _hU1VEDTaN9 0 "Not done" 1 "Done"
label values vt06d _hU1VEDTaN9

label variable vt06da "Nan Ping tbs RND"
label define _xjewhqhuFO 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt06da _xjewhqhuFO

label variable vt06db "Nan Ping tbs to be resch"
label define _TabWhEi0ez 1 "To be rescheduled"
label values vt06db _TabWhEi0ez

label variable vt06e "BHCG done"
label define _uMsZ4IHE3m 0 "Not done" 1 "Done"
label values vt06e _uMsZ4IHE3m

label variable vt06ea "BHCG RND"
label define _YoftJEcuT4 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt06ea _YoftJEcuT4

label variable vt06eb "BHCG to be resch"
label define _Qqdb19oUiH 1 "To be rescheduled"
label values vt06eb _Qqdb19oUiH

label variable vt06g "HIV Serology done"
label define _DvyXg1xlUN 0 "Not done" 1 "Done"
label values vt06g _DvyXg1xlUN

label variable vt06ga "HIV Serology RND"
label define _qQdRG2joi3 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt06ga _qQdRG2joi3

label variable vt06gb "HIV Serology to be resch"
label define _qWxPpnFJej 1 "To be rescheduled"
label values vt06gb _qWxPpnFJej

label variable vt06gc "HIV Serology consent signed"
label define _wpmm8mGx1r 0 "nan" 1 "Yes"
label values vt06gc _wpmm8mGx1r

label variable vt06h "Urine 24Hr done"
label define _MUA7xlQNaN 0 "Not done" 1 "Done"
label values vt06h _MUA7xlQNaN

label variable vt06ha "Urine 24Hr RND"
label define _eFDbuk5cjd 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt06ha _eFDbuk5cjd

label variable vt06hb "Urine 24Hr to be resch"
label define _PLnM3PrIqA 1 "To be rescheduled"
label values vt06hb _PLnM3PrIqA

label variable vt07 "OGTT_ done"
label define _zKLTGqAx45 0 "Not done" 1 "Done"
label values vt07 _zKLTGqAx45

label variable vt07a "OGTT RND"
label define _kTxsfB3njZ 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt07a _kTxsfB3njZ

label variable vt07b "OGTT to be resch"
label define _DvL5rPT8VJ 1 "To be rescheduled"
label values vt07b _DvL5rPT8VJ

label variable vt08ac "Cardiovascular Assessment Contraindication"
label define _hp8vFdCxIL 1 "TIA or CVA within past 6 mo" 2 "Bilateral carotid bruits" 3 "Neck access problem"
label values vt08ac _hp8vFdCxIL

label variable vt08a "PWV done"
label define _Bf13cACAoG 0 "Not done" 1 "Done"
label values vt08a _Bf13cACAoG

label variable vt08aa "PWV RND"
label define _QNLfGpAD7a 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt08aa _QNLfGpAD7a

label variable vt08ab "PWV to be resch"
label define _FajdaMcS4V 1 "To be rescheduled"
label values vt08ab _FajdaMcS4V

label variable vt08ba "AGI done"
label define _hlCFc2tEsv 0 "Not done" 1 "Done"
label values vt08ba _hlCFc2tEsv

label variable vt08bb "AGI RND"
label define _hggjqQijht 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt08bb _hggjqQijht

label variable vt08b "AGI to be resch"
label define _Zm6lwee0O4 1 "To be rescheduled"
label values vt08b _Zm6lwee0O4

label variable vt08c "ABI done"
label define _HjyeZJ7cOo 0 "None" 1 "Both sides" 2 "Only Right" 3 "Only Left"
label values vt08c _HjyeZJ7cOo

label variable vt08ca "ABI RND"
label define _Kk3Mv5aNtk 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt08ca _Kk3Mv5aNtk

label variable vt08cb "ABI to be resch"
label define _OehLDnnT8m 1 "To be rescheduled"
label values vt08cb _OehLDnnT8m

label variable vt09a "Treadmill done"
label define _b2ivxrLYNe 0 "Not done" 1 "Done"
label values vt09a _b2ivxrLYNe

label variable vt09aa "Treadmill RND"
label define _G0ZbUWiCuf 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt09aa _G0ZbUWiCuf

label variable vt09ab "Treadmill to be resch"
label define _wVxbsf5A2U 1 "To be rescheduled"
label values vt09ab _wVxbsf5A2U

label variable vt09b "O2 Consumption done"
label define _JW17z1JHgv 0 "Not done" 1 "Done"
label values vt09b _JW17z1JHgv

label variable vt09ba "O2 Consumption RND"
label define _Lmln7ynXxN 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt09ba _Lmln7ynXxN

label variable vt10 "Pulmonary Function done"
label define _upCD47EOxI 0 "Not done" 1 "Done"
label values vt10 _upCD47EOxI

label variable vt10a "Pulmonary Function RND"
label define _zTXskSWYeR 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt10a _zTXskSWYeR

label variable vt10b "Pulmonary Function to be resch"
label define _UcqOPMIJCf 1 "To be rescheduled"
label values vt10b _UcqOPMIJCf

label variable vt11a "Echo done"
label define _jDABcsw8ls 0 "Not done" 1 "Done"
label values vt11a _jDABcsw8ls

label variable vt11aa "Echo RND"
label define _XemfzcgJkT 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt11aa _XemfzcgJkT

label variable vt11ab "Echo to be resch"
label define _A0v6iPuEtH 1 "To be rescheduled"
label values vt11ab _A0v6iPuEtH

label variable vt11b "Carotid done"
label define _oZPtcWDvuU 0 "Not done" 1 "Done"
label values vt11b _oZPtcWDvuU

label variable vt11ba "Carotid RND"
label define _VeaHofJ8hC 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt11ba _VeaHofJ8hC

label variable vt11bb "Carotid to be resch"
label define _oX1NtcOpCD 1 "To be rescheduled"
label values vt11bb _oX1NtcOpCD

label variable vt12 "EKG done"
label define _D0Vmd3sVi1 0 "Not done" 1 "Done"
label values vt12 _D0Vmd3sVi1

label variable vt12a "EKG RND"
label define _naV5zGveAJ 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt12a _naV5zGveAJ

label variable vt12b "EKG to be resch"
label define _ITqkViVkEC 1 "To be rescheduled"
label values vt12b _ITqkViVkEC

label variable vt52ad1c "Activity Monitor Note"

label variable vt15 "Knee Strength done"
label define _eabLHvgRkg 0 "None" 1 "Both sides" 2 "Only Right" 3 "Only Left"
label values vt15 _eabLHvgRkg

label variable vt15a "Knee Strength RND"
label define _Q0P5sbz5yw 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt15a _Q0P5sbz5yw

label variable vt15b "Knee Strength to be resch"
label define _cQ18QvrEzZ 1 "To be rescheduled"
label values vt15b _cQ18QvrEzZ

label variable vt17 "LDCW done"
label define _KN4dJ3f11A 0 "Not done" 1 "Done"
label values vt17 _KN4dJ3f11A

label variable vt17a "LDCW RND"
label define _xMyPV3oMpo 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt17a _xMyPV3oMpo

label variable vt17b "LDCW to be resch"
label define _OC6EpsLcRr 1 "To be rescheduled"
label values vt17b _OC6EpsLcRr

label variable vt18 "Gait Lab done"
label define _I3rB2oWYkC 0 "Not done" 1 "Done"
label values vt18 _I3rB2oWYkC

label variable vt18a "Gait Lab RND"
label define _d1iIgR7kub 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt18a _d1iIgR7kub

label variable vt18b "Gait Lab to be resch"
label define _SjpFNAD9il 1 "To be rescheduled"
label values vt18b _SjpFNAD9il

label variable vt20 "Early Markers Testing done"
label define _TMVeSdHvEy 0 "Not done" 1 "Done"
label values vt20 _TMVeSdHvEy

label variable vt20a "Early Markers RND"
label define _o1CAg9REOZ 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt20a _o1CAg9REOZ

label variable vt20b "Early Markers to be resch"
label define _TmsjaG1DYs 1 "To be rescheduled"
label values vt20b _TmsjaG1DYs

label variable vt34 "Blessed Mental done"
label define _MXdkuZszHI 0 "Not done" 1 "Done"
label values vt34 _MXdkuZszHI

label variable vt34a "Blessed Mental RND"
label define _WWJ5LIHDzI 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt34a _WWJ5LIHDzI

label variable vt34b "Blessed Mental to be resch"
label define _pv4HJpZiVP 1 "To be rescheduled"
label values vt34b _pv4HJpZiVP

label variable vt21 "Personal Computer Testing done"
label define _paVqPLLfa1 0 "Not done" 1 "Done"
label values vt21 _paVqPLLfa1

label variable vt21a "Personal ComputerPersonal Computer RND"
label define _TWsJqr0qjQ 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt21a _TWsJqr0qjQ

label variable vt21b "Personal Computer Testing to be resch"
label define _vB7QmM5vFi 1 "To be rescheduled"
label values vt21b _vB7QmM5vFi

label variable vt22 "EMG done"
label define _OyHEk9ueAY 0 "Not done" 1 "Done"
label values vt22 _OyHEk9ueAY

label variable vt22a "EMG RND"
label define _gAuS90RoZ3 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt22a _gAuS90RoZ3

label variable vt22b "EMG to be resch"
label define _d3TVDWr2Vg 1 "To be rescheduled"
label values vt22b _d3TVDWr2Vg

label variable vt24 "Proproiception done"
label define _AfpIe1HhRC 0 "Not done" 1 "Done"
label values vt24 _AfpIe1HhRC

label variable vt24a "Proproiception RND"
label define _bevyKzHhYS 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt24a _bevyKzHhYS

label variable vt24b "Proproiception to be resch"
label define _tMl6VQnxBS 1 "To be rescheduled"
label values vt24b _tMl6VQnxBS

label variable vt25 "Resting Metabolic Rate done"
label define _GsFLiSW4ap 0 "Not done" 1 "Done"
label values vt25 _GsFLiSW4ap

label variable vt25a "Resting Metabolic Rate RND"
label define _qwhyEQhMis 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt25a _qwhyEQhMis

label variable vt25b "Resting Metabolic Rate to be resch"
label define _Fj4vOR7j6y 1 "To be rescheduled"
label values vt25b _Fj4vOR7j6y

label variable vt26 "Anthropometry done"
label define _RnQTzJEYFi 0 "Not done" 1 "Done"
label values vt26 _RnQTzJEYFi

label variable vt26a "Anthropometry RND"
label define _xpjXoN3mmb 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt26a _xpjXoN3mmb

label variable vt26b "Anthropometry to be resch"
label define _Xlk1f1BHxl 1 "To be rescheduled"
label values vt26b _Xlk1f1BHxl

label variable vt27 "Contrast Sens Vis Acuity done"
label define _DQamZ3l01n 0 "Not done" 1 "Done"
label values vt27 _DQamZ3l01n

label variable vt27a "Contrast Sens Vis Acuity RND"
label define _n1DMD9qc54 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt27a _n1DMD9qc54

label variable vt27b "Contrast Sens Vis Acuity to be resch"
label define _RvVvkl1l3B 1 "To be rescheduled"
label values vt27b _RvVvkl1l3B

label variable vt28 "Vision Stereopsis done"
label define _Cz5lIroZey 0 "Not done" 1 "Done"
label values vt28 _Cz5lIroZey

label variable vt28a "Vision Stereopsis RND"
label define _xKwwtPIosz 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt28a _xKwwtPIosz

label variable vt28b "Vision Stereopsis to be resch"
label define _vlwS72e1r4 1 "To be rescheduled"
label values vt28b _vlwS72e1r4

label variable vt29 "Visual Fields done"
label define _UuPdRzHGeV 0 "Not done" 1 "Done"
label values vt29 _UuPdRzHGeV

label variable vt29a "Visual Fields RND"
label define _DJ4tjGE92i 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt29a _DJ4tjGE92i

label variable vt29b "Visual Fields to be resch"
label define _oyAVeO0EGH 1 "To be rescheduled"
label values vt29b _oyAVeO0EGH

label variable vt55 "Taste Bud Photo done"
label define _XyAxrbT8WM 0 "Not done" 1 "Done"
label values vt55 _XyAxrbT8WM

label variable vt55a "Taste Bud Photo RND"
label define _k69SQMYLmX 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt55a _k69SQMYLmX

label variable vt55b "Taste Bud Photo to be resch"
label define _gN5nnCMe7T 1 "To be rescheduled"
label values vt55b _gN5nnCMe7T

label variable vt56 "Hearing Test done"
label define _nRmRoRekn3 0 "Not done" 1 "Done"
label values vt56 _nRmRoRekn3

label variable vt56a "Hearing Test RND"
label define _enMbVRnlu8 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt56a _enMbVRnlu8

label variable vt56b "Hearing Test to be resch"
label define _k5i8JMnKFd 1 "To be rescheduled"
label values vt56b _k5i8JMnKFd

label variable vt66 "Smell test done"
label define _Ya40SqDJIF 0 "Not done" 1 "Done"
label values vt66 _Ya40SqDJIF

label variable vt66a "Smell test RND"
label define _YD9wnOKbX6 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt66a _YD9wnOKbX6

label variable vt66b "Smell test to be resch"
label define _PaIbxlEKjT 1 "To be rescheduled"
label values vt66b _PaIbxlEKjT

label variable vt30 "Physical Exam done"
label define _Cg4UmuDLBE 0 "Not done" 1 "Done"
label values vt30 _Cg4UmuDLBE

label variable vt30a "Physical Exam RND"
label define _qTb1GQUodj 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt30a _qTb1GQUodj

label variable vt30b "Physical Exam to be resch"
label define _pUDgMOuvnZ 1 "To be rescheduled"
label values vt30b _pUDgMOuvnZ

label variable vt31 "Finger Tapping done"
label define _oaujE30scJ 0 "Not done" 1 "Done"
label values vt31 _oaujE30scJ

label variable vt31a "Finger Tapping RND"
label define _EHvIElLxPD 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt31a _EHvIElLxPD

label variable vt35 "Radiation Exposure done"
label define _PzPxMyPsMT 0 "Not done" 1 "Done"
label values vt35 _PzPxMyPsMT

label variable vt35a "Radiation Exposure RND"
label define _d2JjoK8mis 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt35a _d2JjoK8mis

label variable vt35b "Radiation Exposure to be resch"
label define _CfgETqyOdT 1 "To be rescheduled"
label values vt35b _CfgETqyOdT

label variable vt38 "DEXA done"
label define _wPTtmXC2Q2 0 "Not done" 1 "Done"
label values vt38 _wPTtmXC2Q2

label variable vt38a "DEXA RND"
label define _dLOGiSow1F 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt38a _dLOGiSow1F

label variable vt38b "DEXA to be resch"
label define _WET8h7DJ8D 1 "To be rescheduled"
label values vt38b _WET8h7DJ8D

label variable vt40 "CT Scan done"
label define _HgQNOhog7j 0 "Not done" 1 "Done"
label values vt40 _HgQNOhog7j

label variable vt40a "CT Scan RND"
label define _SWm5Ec7slV 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt40a _SWm5Ec7slV

label variable vt40b "CT Scan to be resch"
label define _qlD3IMzzPw 1 "To be rescheduled"
label values vt40b _qlD3IMzzPw

label variable vt53 "MRI done"
label define _e8nZ7RFixK 0 "Not done" 1 "Done"
label values vt53 _e8nZ7RFixK

label variable vt53a "MRI RND"
label define _pRXj3pdFnm 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt53a _pRXj3pdFnm

label variable vt53b "MRI to be resch"
label define _Go2SfEiOYh 1 "To be rescheduled"
label values vt53b _Go2SfEiOYh

label variable vt54 "MRI Screening done"
label define _mdhAX9dzVg 0 "Not done" 1 "Done"
label values vt54 _mdhAX9dzVg

label variable vt54a "MRI Screening RND"
label define _DuWU1rGYNW 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt54a _DuWU1rGYNW

label variable vt54b "MRI Screening to be resch"
label define _POLeqmxaE4 1 "To be rescheduled"
label values vt54b _POLeqmxaE4

label variable vt67a "Sleep Study Done"
label define _PRivLLUVIX 0 "Not done" 1 "Done"
label values vt67a _PRivLLUVIX

label variable vt67b "Sleep Study RND"
label define _nGmzDNVq2w 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt67b _nGmzDNVq2w

label variable vt70 "RLS Done"
label define _vyEfVb11Yu 0 "Not done" 1 "Done"
label values vt70 _vyEfVb11Yu

label variable vt70a "RLS RND"
label define _LbDo51T21E 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt70a _LbDo51T21E

label variable vt41 "Falls Risk done"
label define _dLQKXOt5dT 0 "Not done" 1 "Done"
label values vt41 _dLQKXOt5dT

label variable vt44 "Food Freq Quest done"
label define _nrPhyalXBO 0 "Not done" 1 "Done"
label values vt44 _nrPhyalXBO

label variable vt49 "Autopsy Interview done"
label define _XQyRhMmo6z 0 "N/E" 1 "Scheduled" 2 "Info given"
label values vt49 _XQyRhMmo6z

label variable vt63 "Muscle Bx done"
label define _JZqIkIEcQb 0 "Not done" 1 "Done"
label values vt63 _JZqIkIEcQb

label variable vt71 "Skin Biopsy Done"
label define _g9ylXzG6Np 0 "Not done" 1 "Done"
label values vt71 _g9ylXzG6Np

label variable vt72 "Core Body Temp Done"
label define _v6w7KbW9GK 0 "Not done" 1 "Done"
label values vt72 _v6w7KbW9GK

label variable vt48b "Cytapheresis to be resch"
label define _Hm1XOJPRwI 1 "To be rescheduled"
label values vt48b _Hm1XOJPRwI

label variable vt04dat2 "Vital signs date"

// Generate 'date version' of the 'vt04dat2' variable
gen _vt04dat2 = date(vt04dat2, "YMD")
format _vt04dat2 %td

label variable vt05dat2 "Height and Weight date"

// Generate 'date version' of the 'vt05dat2' variable
gen _vt05dat2 = date(vt05dat2, "YMD")
format _vt05dat2 %td

label variable vt06dat2 "Blood and lab work date"

// Generate 'date version' of the 'vt06dat2' variable
gen _vt06dat2 = date(vt06dat2, "YMD")
format _vt06dat2 %td

label variable vt6hdat2 "Urine 24Hr date"

// Generate 'date version' of the 'vt6hdat2' variable
gen _vt6hdat2 = date(vt6hdat2, "YMD")
format _vt6hdat2 %td

label variable vt07dat2 "OGTT date"

// Generate 'date version' of the 'vt07dat2' variable
gen _vt07dat2 = date(vt07dat2, "YMD")
format _vt07dat2 %td

label variable vt08dat2 "Cardiovascular Assessment date"

// Generate 'date version' of the 'vt08dat2' variable
gen _vt08dat2 = date(vt08dat2, "YMD")
format _vt08dat2 %td

label variable vt09dat2 "Stress testing date"

// Generate 'date version' of the 'vt09dat2' variable
gen _vt09dat2 = date(vt09dat2, "YMD")
format _vt09dat2 %td

label variable vt10dat2 "Pulmonary function testing date"

// Generate 'date version' of the 'vt10dat2' variable
gen _vt10dat2 = date(vt10dat2, "YMD")
format _vt10dat2 %td

label variable vt11dat2 "Echo carotid date"

// Generate 'date version' of the 'vt11dat2' variable
gen _vt11dat2 = date(vt11dat2, "YMD")
format _vt11dat2 %td

label variable vt12dat2 "EKG date"

// Generate 'date version' of the 'vt12dat2' variable
gen _vt12dat2 = date(vt12dat2, "YMD")
format _vt12dat2 %td

label variable vt52dat2 "Activity Monitor date"

// Generate 'date version' of the 'vt52dat2' variable
gen _vt52dat2 = date(vt52dat2, "YMD")
format _vt52dat2 %td

label variable vt52ad1_2 "Activity Monitor which devide"
label define _B1wkILodFe 2 "Actigraph" 3 "Both" 4 "Actiwatch"
label values vt52ad1_2 _B1wkILodFe

label variable vt14dat2 "Grip Strength date"

// Generate 'date version' of the 'vt14dat2' variable
gen _vt14dat2 = date(vt14dat2, "YMD")
format _vt14dat2 %td

label variable vt15dat2 "Knee Strength date"

// Generate 'date version' of the 'vt15dat2' variable
gen _vt15dat2 = date(vt15dat2, "YMD")
format _vt15dat2 %td

label variable vt16dat2 "LE Physical Perf date"

// Generate 'date version' of the 'vt16dat2' variable
gen _vt16dat2 = date(vt16dat2, "YMD")
format _vt16dat2 %td

label variable vt17dat2 "LDCW date"

// Generate 'date version' of the 'vt17dat2' variable
gen _vt17dat2 = date(vt17dat2, "YMD")
format _vt17dat2 %td

label variable vt18dat2 "Gait Lab date"

// Generate 'date version' of the 'vt18dat2' variable
gen _vt18dat2 = date(vt18dat2, "YMD")
format _vt18dat2 %td

label variable vt19dat2 "Core Cognitive Testing date"

// Generate 'date version' of the 'vt19dat2' variable
gen _vt19dat2 = date(vt19dat2, "YMD")
format _vt19dat2 %td

label variable vt20dat2 "Early Markers Testing date"

// Generate 'date version' of the 'vt20dat2' variable
gen _vt20dat2 = date(vt20dat2, "YMD")
format _vt20dat2 %td

label variable vt34dat2 "Blessed Mental Testing date"

// Generate 'date version' of the 'vt34dat2' variable
gen _vt34dat2 = date(vt34dat2, "YMD")
format _vt34dat2 %td

label variable vt21dat2 "Personal Computer Testing date"

// Generate 'date version' of the 'vt21dat2' variable
gen _vt21dat2 = date(vt21dat2, "YMD")
format _vt21dat2 %td

label variable vt22dat2 "EMG date"

// Generate 'date version' of the 'vt22dat2' variable
gen _vt22dat2 = date(vt22dat2, "YMD")
format _vt22dat2 %td

label variable vt24dat2 "Proproiception date"

// Generate 'date version' of the 'vt24dat2' variable
gen _vt24dat2 = date(vt24dat2, "YMD")
format _vt24dat2 %td

label variable vt25dat2 "Resting Metabolic Rate date"

// Generate 'date version' of the 'vt25dat2' variable
gen _vt25dat2 = date(vt25dat2, "YMD")
format _vt25dat2 %td

label variable vt26dat2 "Anthropometry date"

// Generate 'date version' of the 'vt26dat2' variable
gen _vt26dat2 = date(vt26dat2, "YMD")
format _vt26dat2 %td

label variable vt28dat2 "Vision testing date"

// Generate 'date version' of the 'vt28dat2' variable
gen _vt28dat2 = date(vt28dat2, "YMD")
format _vt28dat2 %td

label variable vt29dat2 "Visual Fields date"

// Generate 'date version' of the 'vt29dat2' variable
gen _vt29dat2 = date(vt29dat2, "YMD")
format _vt29dat2 %td

label variable vt55dat2 "Taste Bud Photo date"

// Generate 'date version' of the 'vt55dat2' variable
gen _vt55dat2 = date(vt55dat2, "YMD")
format _vt55dat2 %td

label variable vt56dat2 "Hearing Test date"

// Generate 'date version' of the 'vt56dat2' variable
gen _vt56dat2 = date(vt56dat2, "YMD")
format _vt56dat2 %td

label variable vt66dat2 "Smell test date"

// Generate 'date version' of the 'vt66dat2' variable
gen _vt66dat2 = date(vt66dat2, "YMD")
format _vt66dat2 %td

label variable vt30dat2 "Physical Exam date"

// Generate 'date version' of the 'vt30dat2' variable
gen _vt30dat2 = date(vt30dat2, "YMD")
format _vt30dat2 %td

label variable vt32dat2 "Medical Interview date"

// Generate 'date version' of the 'vt32dat2' variable
gen _vt32dat2 = date(vt32dat2, "YMD")
format _vt32dat2 %td

label variable vt33dat2 "General Interview date"

// Generate 'date version' of the 'vt33dat2' variable
gen _vt33dat2 = date(vt33dat2, "YMD")
format _vt33dat2 %td

label variable vt35dat2 "Radiation Exposure date"

// Generate 'date version' of the 'vt35dat2' variable
gen _vt35dat2 = date(vt35dat2, "YMD")
format _vt35dat2 %td

label variable vt38dat2 "DEXA date"

// Generate 'date version' of the 'vt38dat2' variable
gen _vt38dat2 = date(vt38dat2, "YMD")
format _vt38dat2 %td

label variable vt40dat2 "CT Scan date"

// Generate 'date version' of the 'vt40dat2' variable
gen _vt40dat2 = date(vt40dat2, "YMD")
format _vt40dat2 %td

label variable vt53dat2 "MRI date"

// Generate 'date version' of the 'vt53dat2' variable
gen _vt53dat2 = date(vt53dat2, "YMD")
format _vt53dat2 %td

label variable vt54dat2 "MRI Screening date"

// Generate 'date version' of the 'vt54dat2' variable
gen _vt54dat2 = date(vt54dat2, "YMD")
format _vt54dat2 %td

label variable vt67dat2 "Sleep Study Date"

// Generate 'date version' of the 'vt67dat2' variable
gen _vt67dat2 = date(vt67dat2, "YMD")
format _vt67dat2 %td

label variable vt70dat2 "RLS date"

// Generate 'date version' of the 'vt70dat2' variable
gen _vt70dat2 = date(vt70dat2, "YMD")
format _vt70dat2 %td

label variable vt01dat3 "BLSA Consent"

// Generate 'date version' of the 'vt01dat3' variable
gen _vt01dat3 = date(vt01dat3, "YMD")
format _vt01dat3 %td

label variable vt44rnd "FFQ RND"
label define _ih30OCf2Nb 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt44rnd _ih30OCf2Nb

label variable vt63rnd "Muscle Biopsy RND"
label define _MrpjkgT4S4 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt63rnd _MrpjkgT4S4

label variable vt71rnd "Skin Biopsy RND"
label define _V1rR9ip2nR 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt71rnd _V1rR9ip2nR

label variable vt72rnd "CBT RND"
label define _hXsG3EMzyp 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt72rnd _hXsG3EMzyp

label variable vt48_2 "Cytapheresis done"
label define _qL2Bx3EX41 1 "Done" 2 "Consented" 3 "N/Done"
label values vt48_2 _qL2Bx3EX41

label variable vt48rnd "Cytapheresis RND"
label define _SlolKWz2aY 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt48rnd _SlolKWz2aY

label variable epidermalaging "Epidermal Aging"
label define _jVDFdD3aaj 0 "Not done" 1 "Done"
label values epidermalaging _jVDFdD3aaj

label variable epidermalagrnd "Epidermal AgingRND"
label define _V2plTdZcq5 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values epidermalagrnd _V2plTdZcq5

label variable cogstate "Cog State done"
label define _JHaPXD3Ei4 0 "Not done" 1 "Done"
label values cogstate _JHaPXD3Ei4

label variable cogstaternd "Cog State RND"
label define _gMvuJD7ZEm 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values cogstaternd _gMvuJD7ZEm

label variable maskworn_visproche "COVID-19 Pandemic Mask worn"
label define _i0KP4j7CIO 0 "No" 1 "Yes"
label values maskworn_visproche _i0KP4j7CIO

label variable vteyetrdt "Eye Tracking date"

// Generate 'date version' of the 'vteyetrdt' variable
gen _vteyetrdt = date(vteyetrdt, "YMD")
format _vteyetrdt %td

label variable vteyetrdone "Eye Tracking done"
label define _LGBOMf18g8 0 "Not done" 1 "Done"
label values vteyetrdone _LGBOMf18g8

label variable vteyetrrnd "Eye Tracking RND"
label define _mEy5017EDs 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vteyetrrnd _mEy5017EDs

label variable vteyetrresch "Eye Tracking to be resch"
label define _OLiWcAirBE 1 "To be rescheduled"
label values vteyetrresch _OLiWcAirBE

label variable intestinalperm "Intestinal Permeability"
label define _zapCEtFJoU 0 "Not done" 1 "Done"
label values intestinalperm _zapCEtFJoU

label variable intestinalpermrnd "Intestinal Permeability RND"
label define _QAqjRkQuC5 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values intestinalpermrnd _QAqjRkQuC5

label variable vt73b "Vestibular Testing resch"
label define _jEDUyNFHRA 1 "To be rescheduled"
label values vt73b _jEDUyNFHRA

label variable vt59 "VEMP done"
label define _JnRUcwo2X0 0 "Not done" 1 "Done"
label values vt59 _JnRUcwo2X0

label variable vt59a "VEMP RND"
label define _zIeXerSfNv 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt59a _zIeXerSfNv

label variable vt60 "VOG done"
label define _mBEa4e2Hlp 0 "Not done" 1 "Done"
label values vt60 _mBEa4e2Hlp

label variable vt60a "VOG RND"
label define _JT5ejaISif 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt60a _JT5ejaISif

label variable vt68 "Orientation Done"
label define _KMxX7QJPaw 0 "Not done" 1 "Done"
label values vt68 _KMxX7QJPaw

label variable vt68a "Orientation RND"
label define _x1g93veOHJ 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt68a _x1g93veOHJ

label variable vt74 "Triangle Test Done"
label define _pY1cM3Cxk3 0 "Not done" 1 "Done"
label values vt74 _pY1cM3Cxk3

label variable vt74a "Triangle Test RND"
label define _G8Ow1yPYsA 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt74a _G8Ow1yPYsA

label variable vt73dat2 "Vestibular Testing Date"

// Generate 'date version' of the 'vt73dat2' variable
gen _vt73dat2 = date(vt73dat2, "YMD")
format _vt73dat2 %td

label variable followup "Additional Follow-up contact as needed between scheduled visit"
label define _QQxxUE4Zi7 0 "No" 1 "Yes"
label values followup _QQxxUE4Zi7

label variable vt69 "HAMMS done"
label define _zBg1h9DMRR 0 "Not done" 1 "Done"
label values vt69 _zBg1h9DMRR

label variable vt69a "HAMMS RND"
label define _LocvmcICtK 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt69a _LocvmcICtK

label variable vt69b "HAMMS to be resch"
label define _lMDlnFk0RH 1 "To be rescheduled"
label values vt69b _lMDlnFk0RH

label variable vt69dat2 "HAMMS Date"

// Generate 'date version' of the 'vt69dat2' variable
gen _vt69dat2 = date(vt69dat2, "YMD")
format _vt69dat2 %td

label variable vt75 "Fitts Task Done"
label define _a2FsDyWofY 0 "Not done" 1 "Done"
label values vt75 _a2FsDyWofY

label variable vt75a "Fitts Task RND"
label define _Bx9NUCbhi3 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt75a _Bx9NUCbhi3

label variable vt48_3 "Cytapheresis done"
label define _S2ptYLAg5R 1 "Done" 2 "Consented" 3 "N/Done"
label values vt48_3 _S2ptYLAg5R

label variable auto_id_visproche "Unique Teleform Number"

label variable vt58 "Activity Related Fatigue Scale"
label define _TcbbbjVbNX 0 "Not done" 1 "Done"
label values vt58 _TcbbbjVbNX

label variable vt48 "Cytapheresis done"

label variable vt09sb "TM Stress Blood done"
label define _NChUJChtHk 0 "Not done" 1 "Done"
label values vt09sb _NChUJChtHk

label variable vt09srnd "TM Stress Blood RND"
label define _v1GxhVcLMp 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt09srnd _v1GxhVcLMp

label variable vt06hid "Urine 24Hr TID"

label variable lab07a_visproche "Urine 24 Hr Begin time"

label variable lab07b_visproche "Urine 24 Hr End time"

label variable vt01dat2 "BLSA Consent"

label variable vttime1 "Initial time"

label variable vttimea "Initial time am pm"
label define _S2lKez9s2a 1 "am" 2 "pm"
label values vttimea _S2lKez9s2a

label variable vttime2 "Sign out time"

label variable vttimeb "Sign out time am pm"
label define _Xw0JhgU7dt 1 "am" 2 "pm"
label values vttimeb _Xw0JhgU7dt

label variable date_completed "Date_Completed"

// Generate 'date version' of the 'date_completed' variable
gen _date_completed = date(date_completed, "YMD")
format _date_completed %td

label variable vt01dat "BLSA Consent"

label variable vt01id "BLSA Consent TID"

label variable vt02dat "HIPAA Date"

label variable vt02id "HIPAA TID"

label variable vt02 "HIPAA Consent done"

label variable vt03dat "Pneumococcal Screen date"

label variable vt03id "Pneumococcal Screen TID"

label variable vt03 "Pneumococcal Screen done"
label define _KDTqGs8N24 0 "Not done" 1 "Done"
label values vt03 _KDTqGs8N24

label variable vt03a "Pneumococcal Screen RND"
label define _FtwMPjsNfJ 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt03a _FtwMPjsNfJ

label variable vt03b "Pneumococcal Screen to be resch"

label variable vt04dat "Vital signs date"

label variable vt04id "Vital signs TID"

label variable vt04a "Vital signs RND"
label define _Wc1gUOjB95 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt04a _Wc1gUOjB95

label variable vt04b "Vital signs to be resch"
label define _xgGOKMg0L9 1 "To be rescheduled"
label values vt04b _xgGOKMg0L9

label variable vt05dat "Height and Weight date"

label variable vt05id "Height and Weight TID"

label variable vt05a "Height and weight RND"
label define _TrGtfWHgLs 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt05a _TrGtfWHgLs

label variable vt05b "Height and weight to be resch"
label define _ExyOaKkvhb 1 "To be rescheduled"
label values vt05b _ExyOaKkvhb

label variable vt06dat "Blood and lab work date"

label variable vt06id "Blood and lab work TID"

label variable vt06c "BDNF done"
label define _YlvXA6TVHh 0 "Not done" 1 "Done"
label values vt06c _YlvXA6TVHh

label variable vt06ca "BDNF RND"
label define _sCTOjXCFSA 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt06ca _sCTOjXCFSA

label variable vt06cb "BDNF to be resch"
label define _APd57m8Zx7 1 "To be rescheduled"
label values vt06cb _APd57m8Zx7

label variable vt06f "Strength blood done"
label define _FjGIzwEQcs 0 "Not done" 1 "Done"
label values vt06f _FjGIzwEQcs

label variable vt06fa "Strength blood RND"
label define _s3Wc2rfxoX 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt06fa _s3Wc2rfxoX

label variable vt06fb "Strength blood to be resch"
label define _q7aZWjPRbz 1 "To be rescheduled"
label values vt06fb _q7aZWjPRbz

label variable vt6hdat "Urine 24Hr date"

label variable vt07dat "OGTT date"

label variable vt07id "OGTT TID"

label variable vt08dat "Cardiovascular Assessment date"

label variable vt08id "Cardiovascular Assessment TID"

label variable vt09dat "Stress testing date"

label variable vt09id "StressTesting TID"

label variable vt10dat "Pulmonary function testing date"

label variable vt10id "Pulmonary Function TID"

label variable vt11dat "Echo carotid date"

label variable vt11id "Echo carotid TID"

label variable vt12dat "EKG date"

label variable vt12id "EKG TID"

label variable vt13dat "Holter date"

label variable vt13id "Holter TID"

label variable vt13 "Holter done"
label define _b3fNVArhbD 0 "Not done" 1 "Done"
label values vt13 _b3fNVArhbD

label variable vt13a "Holter RND"
label define _R7ziqaaofd 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt13a _R7ziqaaofd

label variable vt13b "Holter to be resch"
label define _okenPhUALM 1 "To be rescheduled"
label values vt13b _okenPhUALM

label variable vt52dat "Activity Monitor date"

label variable vt52id "Activity Monitor TID"

label variable vt52ad1 "Activity Monitor which devide"
label define _ZsxFV1SwBV 1 "Actiheart" 2 "Actigraph" 3 "Both" 4 "Actiwatch"
label values vt52ad1 _ZsxFV1SwBV

label variable vt14dat "Grip Strength date"

label variable vt14id "Grip Strength TID"

label variable vt15dat "Knee Strength date"

label variable vt15id "Knee Strength TID"

label variable vt16dat "LE Physical Perf date"

label variable vt16id "LE Physical Perf TID"

label variable vt17dat "LDCW date"

label variable vt17id "LDCW TID"

label variable vt18dat "Gait Lab date"

label variable vt18id "Gait Lab TID"

label variable vt19dat "Core Cognitive Testing date"

label variable vt19id "Core Cognitive Testing TID"

label variable vt20dat "Early Markers Testing date"

label variable vt20id "Early Markers Testing TID"

label variable vt34dat "Blessed Mental Testing date"

label variable vt34id "Blessed Mental TID"

label variable vt21dat "Personal Computer Testing date"

label variable vt21id "Personal Computer Testing TID"

label variable vt22dat "EMG date"

label variable vt22id "EMG TID"

label variable vt23dat "Vibration Sensitivity date"

label variable vt23id "Vibration Sensitivity TID"

label variable vt23 "Vibration Sensitivity done"
label define _RAfssR2iLf 0 "Not done" 1 "Done"
label values vt23 _RAfssR2iLf

label variable vt23a "Vibration Sensitivity RND"
label define _QEDzJf3aLo 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt23a _QEDzJf3aLo

label variable vt23b "Vibration Sensitivity to be resch"
label define _m6mOwJpMDG 1 "To be rescheduled"
label values vt23b _m6mOwJpMDG

label variable vt24dat "Proproiception date"

label variable vt24id "Proproiception TID"

label variable vt25dat "Resting Metabolic Rate date"

label variable vt25id "Resting Metabolic Rate TID"

label variable vt26dat "Anthropometry date"

label variable vt26id "Anthropometry TID"

label variable vt28dat "Vision testing date"

label variable vt27id "Vision Testing TID"

label variable vt29dat "Visual Fields date"

label variable vt29id "Visual Fields TID"

label variable vt55dat "Taste Bud Photo date"

label variable vt55id "Taste Bud Photo TID"

label variable vt56dat "Hearing Test date"

label variable vt56id "Hearing Test TID"

label variable vt66dat "Smell test date"

label variable vt66id "Smell test TID"

label variable vt73dat "Vestibular Testing Date"

label variable vt73id "Vestibular Testing TID"

label variable vt59dat "VEMP date"

label variable vt59id "VEMP TID"

label variable vt59b "VEMP to be resch"
label define _SzYDaVnRkC 1 "To be rescheduled"
label values vt59b _SzYDaVnRkC

label variable vt60dat "VOG date"

label variable vt60id "VOG TID"

label variable vt60b "VOG to be resch"
label define _eFFmcZVeF0 1 "To be rescheduled"
label values vt60b _eFFmcZVeF0

label variable vt64dat "Balance Test date"

label variable vt64id "Balance Test TID"

label variable vt64 "Balance Test done"
label define _i8dTa4QI2F 0 "Not done" 1 "Done"
label values vt64 _i8dTa4QI2F

label variable vt64a "Balance Test RND"
label define _JvXgD58IiE 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt64a _JvXgD58IiE

label variable vt64b "Balance Test to be resch"
label define _hHMg8Xkd4D 1 "To be rescheduled"
label values vt64b _hHMg8Xkd4D

label variable vt68dat "Orientation Date"

label variable vt68id "Orientation TID"

label variable vt68b "Orientation to be resch"
label define _Leu5x8XP31 1 "To be rescheduled"
label values vt68b _Leu5x8XP31

label variable vt30dat "Physical Exam date"

label variable vt30id "Physical Exam TID"

label variable vt32dat "Medical Interview date"

label variable vt32id "Medical Interview TID"

label variable vt33dat "General Interview date"

label variable vt33id "General Interview TID"

label variable sensorydt "Sensory Testing Date"

label variable sensorytid "Sensory Testing TID"

label variable sensoryresch "Sensory Testing to be resch"
label define _QfTEsGw67k 1 "To be rescheduled"
label values sensoryresch _QfTEsGw67k

label variable vt31dat "Finger Tapping date"

label variable vt31id "Finger Tapping TID"

label variable vt31b "Finger Tapping to be resch"
label define _xZDw4wmA6q 1 "To be rescheduled"
label values vt31b _xZDw4wmA6q

label variable fittsdone "Fitts Task Done"
label define _i8O7Sj0SMD 0 "Not done" 1 "Done"
label values fittsdone _i8O7Sj0SMD

label variable fittsrnd "Fitts Task RND"

label variable vt69dat "HAMMS Date"

label variable vt69id "HAMMS TID"

label variable vt35dat "Radiation Exposure date"

label variable vt35id "Radiation Exposure TID"

label variable vt38dat "DEXA date"

label variable vt38id "DEXA TID"

label variable vt40dat "CT Scan date"

label variable vt40id "CT Scan TID"

label variable vt53dat "MRI date"

label variable vt53id "MRI TID"

label variable vt54dat "MRI Screening date"

label variable vt54id "MRI Screening TID"

label variable vt67dat "Sleep Study Date"

label variable vt70dat "RLS date"

label variable vt47 "Validate done"
label define _MnUpQCMwOa 0 "N/E" 1 "Done" 2 "Consented"
label values vt47 _MnUpQCMwOa

label variable vt61 "Creatine done"
label define _Ysy3wtZls3 0 "Not done" 1 "Done"
label values vt61 _Ysy3wtZls3

label variable vt62 "DLW done"
label define _PLUe8XshgQ 0 "Not done" 1 "Done"
label values vt62 _PLUe8XshgQ

label variable vt57 "Regional Adiposity done"

label variable vt36dat "Knee x-ray date"

label variable vt36id "Knee x-ray TID"

label variable vt36 "Knee x-ray done"
label define _fT6glsDJeG 0 "Not done" 1 "Done"
label values vt36 _fT6glsDJeG

label variable vt36a "Knee x-ray RND"
label define _vAp7zSKV7i 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt36a _vAp7zSKV7i

label variable vt36b "Knee x-ray to be resch"
label define _VP4IMPgD6x 1 "To be rescheduled"
label values vt36b _VP4IMPgD6x

label variable vt37dat "Hand x-ray date"

label variable vt37id "Hand x-ray TID"

label variable vt37 "Hand x-ray done"
label define _fEThguaymt 0 "Not done" 1 "Done"
label values vt37 _fEThguaymt

label variable vt37a "Hand x-ray RND"
label define _EK7PeNr7Jv 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt37a _EK7PeNr7Jv

label variable vt37b "Hand x-ray to be resch"
label define _jU8QrFtZji 1 "To be rescheduled"
label values vt37b _jU8QrFtZji

label variable vt39dat "Hand photo date"

label variable vt39id "Hand photo TID"

label variable vt39 "Hand photo done"
label define _e9kuZY3PLK 0 "Not done" 1 "Done"
label values vt39 _e9kuZY3PLK

label variable vt39a "Hand photo RND"
label define _pXqOzvg2Kk 3 "(3) No Time" 4 "(4) Refused" 5 "(5) Unable" 6 "(6) Equipment problem" 7 "(7) No Tester" 8 "(8) Not Eligible" 9 "(9) Not Scheduled N/A"
label values vt39a _pXqOzvg2Kk

label variable vt39b "Hand photo to be resch"
label define _uLmYRU8ok5 1 "To be rescheduled"
label values vt39b _uLmYRU8ok5

label variable vt43 "Food Diary"
label define _NB6QzX7bRL 0 "Not done" 1 "Done"
label values vt43 _NB6QzX7bRL

label variable vt45 "On study card"
label define _ff7mnDZ6y1 0 "Not done" 1 "Done"
label values vt45 _ff7mnDZ6y1

label variable vt50 "MRI Neuro"

label variable vt51 "Progress Note"
label define _UQEfyXnodd 0 "Not done" 1 "Done"
label values vt51 _UQEfyXnodd

label variable tester_id "Tester_ID"

label variable acknowledgment_form "Acknowledgment_Form"
label define _lTauqKjUkx 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values acknowledgment_form _lTauqKjUkx

label variable acknowledgment_form_comment "Acknowledgment_Form_comment"

label variable copy_md_orders "Copy_MD_Orders"
label define _S7bAj6a43E 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values copy_md_orders _S7bAj6a43E

label variable copy_md_orders_comment "Copy_MD_Orders_comment"

label variable orders "Orders"
label define _DAfV6ONXvW 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values orders _DAfV6ONXvW

label variable orders_comment "Orders_comment"

label variable blsa_consent_hipaa "BLSA_Consent_HIPAA"
label define _XdQdvH8UYw 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values blsa_consent_hipaa _XdQdvH8UYw

label variable blsa_consent_hipaa_comment "BLSA_Consent_HIPAA_comment"

label variable validate_hipaa "VALIDATE_HIPAA"
label define _FEzEieD8Kr 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values validate_hipaa _FEzEieD8Kr

label variable validate_hipaa_comment "VALIDATE_HIPAA_comment"

label variable advanced_directives "Advanced_Directives"
label define _oqKxYgYEjo 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values advanced_directives _oqKxYgYEjo

label variable advanced_directives_comment "Advanced_Directives_comment"

label variable falls_risk "Falls_Risk"
label define _F4LTzCcUhi 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values falls_risk _F4LTzCcUhi

label variable falls_risk_comment "Falls_Risk_comment"

label variable pneumoccoccal_questionnaire "Pneumoccoccal_Questionnaire"
label define _NOSZ6DKPyF 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values pneumoccoccal_questionnaire _NOSZ6DKPyF

label variable pneumoccoccal_question_comment "Pneumoccoccal_Question_comment"

label variable pneumoccoccal_screen "Pneumoccoccal_Screen"
label define _cMD3fklcTY 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values pneumoccoccal_screen _cMD3fklcTY

label variable pneumoccoccal_screen_comment "Pneumoccoccal_Screen_comment"

label variable cytapheresis "Cytapheresis"
label define _ZDjWidAnYB 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values cytapheresis _ZDjWidAnYB

label variable cytapheresis_comment "Cytapheresis_comment"

label variable hiv_consent "HIV_Consent"
label define _P3ANnavafE 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values hiv_consent _P3ANnavafE

label variable hiv_consent_comment "HIV_Consent_comment"

label variable radiation_exposition "Radiation_Exposition"
label define _igxFE5uFs6 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values radiation_exposition _igxFE5uFs6

label variable radiation_exposition_comment "Radiation_Exposition_comment"

label variable ekg "EKG"
label define _ELgwJSRSBE 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values ekg _ELgwJSRSBE

label variable ekg_comment "EKG_comment"

label variable holter_monitor "Holter_Monitor"
label define _cTAY6WvK8e 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values holter_monitor _cTAY6WvK8e

label variable holter_monitor_comment "Holter_Monitor_comment"

label variable extra_comment_1 "Extra_comment_1"

label variable height_weight "Height_Weight"
label define _ItgbTbAFtj 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values height_weight _ItgbTbAFtj

label variable height_weight_comment "Height_Weight_comment"

label variable vital_signs "Vital_Signs"
label define _z7IUL3nYh5 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values vital_signs _z7IUL3nYh5

label variable vital_signs_comment "Vital_Signs_comment"

label variable fasting_urine "Fasting_Urine"
label define _TycMDc6Gkw 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values fasting_urine _TycMDc6Gkw

label variable fasting_urine_comment "Fasting_Urine_comment"

label variable urine_24_hours "Urine_24_hours"
label define _Ik7FGzFdYY 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values urine_24_hours _Ik7FGzFdYY

label variable urine_24_hours_comment "Urine_24_hours_comment"

label variable bdnf "BDNF"
label define _fwJeV95LHB 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values bdnf _fwJeV95LHB

label variable bdnf_comment "BDNF_comment"

label variable nan_ping_tubes "Nan_Ping_tubes"
label define _f3SUB1sTBE 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values nan_ping_tubes _f3SUB1sTBE

label variable nan_ping_tubes_comment "Nan_Ping_tubes_comment"

label variable bhcg "BHCG"
label define _fPhmhVv2Kj 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values bhcg _fPhmhVv2Kj

label variable bhcg_comment "BHCG_comment"

label variable hiv_serology "HIV_serology"
label define _LvLrCfkLgH 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values hiv_serology _LvLrCfkLgH

label variable hiv_serology_comment "HIV_serology_comment"

label variable blood_draw "Blood_Draw"
label define _Z9usx6AEGL 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values blood_draw _Z9usx6AEGL

label variable blood_draw_comment "Blood_Draw_comment"

label variable strength_test_blood "Strength_Test_Blood"
label define _eBDuCnQYsl 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values strength_test_blood _eBDuCnQYsl

label variable strength_test_blood_comment "Strength_Test_Blood_comment"

label variable ogtt "OGTT"
label define _f03p2pKMf9 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values ogtt _f03p2pKMf9

label variable ogtt_comment "OGTT_comment"

label variable extra_comment_2 "Extra_comment_2"

label variable physical_examination "Physical_Examination"
label define _AsilsTAAvg 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values physical_examination _AsilsTAAvg

label variable physical_examination_comment "Physical_Examination_comment"

label variable finger_tapping_test "Finger_Tapping_Test"
label define _b9gWXqGN3O 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values finger_tapping_test _b9gWXqGN3O

label variable finger_tapping_test_comment "Finger_Tapping_Test_comment"

label variable medical_interview "Medical_Interview"
label define _rlvpcGJV7n 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values medical_interview _rlvpcGJV7n

label variable medical_interview_comment "Medical_Interview_comment"

label variable socio_demographic_interview "Socio_Demographic_Interview"
label define _G3D8ZHz9sO 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values socio_demographic_interview _G3D8ZHz9sO

label variable socio_demographic_inte_comment "Socio_Demographic_Inte_comment"

label variable blessed_mental "Blessed_Mental"
label define _S1wNrupk03 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values blessed_mental _S1wNrupk03

label variable blessed_mental_comment "Blessed_Mental_comment"

label variable extra_comment_3 "Extra_comment_3"

label variable dexa_scan "DEXA_Scan"
label define _VARvb7Y3Pt 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values dexa_scan _VARvb7Y3Pt

label variable dexa_scan_comment "DEXA_Scan_comment"

label variable knee_xray "Knee_Xray"
label define _iWcgMyV4bM 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values knee_xray _iWcgMyV4bM

label variable knee_xray_comment "Knee_XRay_comment"

label variable hand_xray "Hand_Xray"
label define _jWLT2CRY6U 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values hand_xray _jWLT2CRY6U

label variable hand_xray_comment "Hand_XRay_comment"

label variable hand_photo "Hand_Photo"
label define _qLalwR2Msm 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values hand_photo _qLalwR2Msm

label variable hand_photo_comment "Hand_Photo_comment"

label variable ctscan "CTScan"
label define _SmmxQUPALq 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values ctscan _SmmxQUPALq

label variable ctscan_comment "CTScan_comment"

label variable mri_neuro_imaging "MRI_Neuro_Imaging"
label define _jjHISAXgCK 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values mri_neuro_imaging _jjHISAXgCK

label variable mri_neuro_imaging_comment "MRI_Neuro_Imaging_comment"

label variable grip_strength "Grip_Strength"
label define _UiYjOAaqrr 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values grip_strength _UiYjOAaqrr

label variable grip_strength_comment "Grip_Strength_comment"

label variable knee_strength_right "Knee_Strength_Right"
label define _uRvN5X5qF7 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values knee_strength_right _uRvN5X5qF7

label variable knee_strength_right_comment "Knee_Strength_Right_comment"

label variable knee_strength_left "Knee_Strength_Left"
label define _bRAPbNS5w7 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values knee_strength_left _bRAPbNS5w7

label variable knee_strength_left_comment "Knee_Strength_Left_comment"

label variable le_physical_performance "LE_Physical_Performance"
label define _kpZs95SM20 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values le_physical_performance _kpZs95SM20

label variable le_physical_performanc_comment "LE_Physical_Performanc_comment"

label variable long_distance_corridor_walk "Long_Distance_Corridor_Walk"
label define _AuilsWbKjg 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values long_distance_corridor_walk _AuilsWbKjg

label variable long_distance_corridor_comment "Long_Distance_Corridor_comment"

label variable gait_lab "Gait_Lab"
label define _HfGOuUQock 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values gait_lab _HfGOuUQock

label variable gait_lab_comment "Gait_Lab_comment"

label variable extra_comment_4 "Extra_comment_4"

label variable early_markers_ad "Early_Markers_AD"
label define _Ey1UWdyF3Y 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values early_markers_ad _Ey1UWdyF3Y

label variable early_markers_ad_comment "Early_Markers_AD_comment"

label variable core_cognitive_testing "Core_Cognitive_Testing"
label define _n9iNqWXBwm 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values core_cognitive_testing _n9iNqWXBwm

label variable core_cognitive_testing_comment "Core_Cognitive_Testing_comment"

label variable personal_computer_testing "Personal_Computer_Testing"
label define _SrmPOjvOlu 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values personal_computer_testing _SrmPOjvOlu

label variable personal_computer_test_comment "Personal_Computer_Test_comment"

label variable extra_comment_5 "Extra_comment_5"

label variable emg "EMG"
label define _blSqVYKqn1 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values emg _blSqVYKqn1

label variable emg_comment "EMG_comment"

label variable vibration_sensitivity_nrsv "Vibration_Sensitivity_NRSV"
label define _OTMuBA18Uy 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values vibration_sensitivity_nrsv _OTMuBA18Uy

label variable vibration_sensitivity_comment "Vibration_Sensitivity_comment"

label variable proprioception_test "Proprioception_Test"
label define _iGhRStnZon 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values proprioception_test _iGhRStnZon

label variable proprioception_test_comment "Proprioception_Test_comment"

label variable extra_comment_6 "Extra_comment_6"

label variable resting_metabolic_rate "Resting_Metabolic_Rate"
label define _gmu5oCTNUq 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values resting_metabolic_rate _gmu5oCTNUq

label variable resting_metabolic_rate_comment "Resting_Metabolic_Rate_comment"

label variable treadmill_stress_test "Treadmill_Stress_test"
label define _KGdbLE3nXN 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values treadmill_stress_test _KGdbLE3nXN

label variable treadmill_stress_test_comment "Treadmill_Stress_test_comment"

label variable oxygen_consumption "Oxygen_Consumption"
label define _hOC5dwE7YM 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values oxygen_consumption _hOC5dwE7YM

label variable oxygen_consumption_comment "Oxygen_Consumption_comment"

label variable pulmonary_function_test "Pulmonary_Function_Test"
label define _HcCqOUrNau 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values pulmonary_function_test _HcCqOUrNau

label variable pulmonary_function_tes_comment "Pulmonary_Function_Tes_comment"

label variable echocardiogram "Echocardiogram"
label define _tTCugVESzY 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values echocardiogram _tTCugVESzY

label variable echocardiogram_comment "Echocardiogram_comment"

label variable carotid_ultrasound "Carotid_Ultrasound"
label define _DJ9groYwAd 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values carotid_ultrasound _DJ9groYwAd

label variable carotid_ultrasound_comment "Carotid_Ultrasound_comment"

label variable pulse_wave_velocity "Pulse_Wave_Velocity"
label define _uZHPgEzmqz 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values pulse_wave_velocity _uZHPgEzmqz

label variable pulse_wave_velocity_comment "Pulse_Wave_Velocity_comment"

label variable abi "ABI"
label define _HsC0uZTlZe 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values abi _HsC0uZTlZe

label variable abi_comment "ABI_comment"

label variable extra_comment_7 "Extra_comment_7"

label variable autopsy "Autopsy"
label define _i4i6AjZzEg 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values autopsy _i4i6AjZzEg

label variable autopsy_comment "Autopsy_comment"

label variable body_measurements "Body_Measurements"
label define _JaA7BUBomv 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values body_measurements _JaA7BUBomv

label variable body_measurements_comment "Body_Measurements_comment"

label variable extra_comment_8 "Extra_comment_8"

label variable vision_testing "Vision_Testing"
label define _ihUVrzip40 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values vision_testing _ihUVrzip40

label variable vision_testing_comment "Vision_Testing_comment"

label variable vision_stereopsis "Vision_Stereopsis"
label define _MbyJ1pnzcn 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values vision_stereopsis _MbyJ1pnzcn

label variable vision_stereopsis_comment "Vision_Stereopsis_comment"

label variable visual_fields "Visual_Fields"
label define _YqAQQuUjZd 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values visual_fields _YqAQQuUjZd

label variable visual_fields_comment "Visual_Fields_comment"

label variable extra_comment_9 "Extra_comment_9"

label variable food_frequency_questionnaire "Food_Frequency_Questionnaire"
label define _q0nbxoOZe2 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values food_frequency_questionnaire _q0nbxoOZe2

label variable food_frequency_questio_comment "Food_Frequency_Questio_comment"

label variable food_intake_record "Food_Intake_Record"
label define _mzposlV8NX 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values food_intake_record _mzposlV8NX

label variable food_intake_record_comment "Food_Intake_Record_comment"

label variable progress_note "Progress_Note"
label define _Puerc7nUVL 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values progress_note _Puerc7nUVL

label variable progress_note_comment "Progress_Note_comment"

label variable on_study_card "On_Study_Card"
label define _qBSFG5ZcI8 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values on_study_card _qBSFG5ZcI8

label variable on_study_card_comment "On_Study_Card_comment"

label variable extra_comment_10 "Extra_comment_10"

label variable best_list "Best_List"
label define _BZJkOAekxp 0 "Other" 1 "Fully completed" 2 "Partially completed" 7 "Refused"
label values best_list _BZJkOAekxp

label variable best_list_comment "Best_List_comment"

label variable data_in_study_manager_comment "Data_in_Study_Manager_comment"

label variable crf_parent_name_visproche "CRF Parent Name"

label variable study_name_visproche "Study Name"

label variable vt01_1 "BLSA Consent done : Done (Checkbox Indicator)"

label variable vt02_1 "HIPAA Consent done : Done (Checkbox Indicator)"

label variable vt04_1 "Vital signs done : Done (Checkbox Indicator)"

label variable vt05_1 "Height and Weight done : Done (Checkbox Indicator)"

label variable vt48_0 "Cytapheresis done : N/E (Checkbox Indicator)"

label variable vt48_1 "Cytapheresis done : Done (Checkbox Indicator)"

label variable vt48_2_1 "Cytapheresis done : Done (Checkbox Indicator)"

label variable vt48_2_2 "Cytapheresis done : Consented (Checkbox Indicator)"

label variable vt48_2_3 "Cytapheresis done : N/Done (Checkbox Indicator)"

label variable vt50_0 "MRI Neuro : N/E (Checkbox Indicator)"

label variable vt50_1 "MRI Neuro : Done (Checkbox Indicator)"

label variable vt50_2 "MRI Neuro : Consented (Checkbox Indicator)"

label variable vt50_3 "MRI Neuro : N/Done (Checkbox Indicator)"

label variable vt57_0 "Regional Adiposity done : N/E (Checkbox Indicator)"

label variable vt57_1 "Regional Adiposity done : Done (Checkbox Indicator)"

label variable vt57_2 "Regional Adiposity done : Consented (Checkbox Indicator)"

label variable vt57_3 "Regional Adiposity done : N/Done (Checkbox Indicator)"

