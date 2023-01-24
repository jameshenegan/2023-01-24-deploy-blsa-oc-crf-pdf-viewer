clear
import delimited "../data-csv/BLSA_CORE_Neuropsychological_Testing_new.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_corneutesnew "CRF Version"

label variable obsdate_cogdate "Date Completed"

// Generate 'date version' of the 'obsdate_cogdate' variable
gen _obsdate_cogdate = date(obsdate_cogdate, "YMD")
format _obsdate_cogdate %td

label variable cogttid "Tester ID"

label variable blank_corneutesnew "Blank Form"

label variable cogall "Core Neuropsychological Battery"
label define _UKNZlij79W 0 "Not Administered" 1 "Complete" 2 "Incomplete"
label values cogall _UKNZlij79W

label variable cogallm "Core Neuropsychological Battery Reason not done"
label define _oiAQPPMbHD 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cogallm _oiAQPPMbHD

label variable cog01 "Benton Visual Retention Test"
label define _n3dtiVPmO7 0 "Not Administered" 1 "Complete"
label values cog01 _n3dtiVPmO7

label variable cog01m "Benton Visual Retention Test Reason not done"
label define _B3Lfe3lxn3 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog01m _B3Lfe3lxn3

label variable cog02 "PMA Vocabulary"
label define _LJ1zz45CSw 0 "Not Administered" 1 "Complete"
label values cog02 _LJ1zz45CSw

label variable cog02m "PMA_Vocabulary Reason not done"
label define _OF3oNe1bxG 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog02m _OF3oNe1bxG

label variable cog03 "WAIS_R Digit Span"
label define _W1YKygOQxi 0 "Not Administered" 1 "Complete"
label values cog03 _W1YKygOQxi

label variable cog03m "WAIS_R Digit Span Reason not done"
label define _eYS2E4qpWO 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog03m _eYS2E4qpWO

label variable cog04 "California Verbal Learning Part 1"
label define _UjGkAExtch 0 "Not Administered" 1 "Complete"
label values cog04 _UjGkAExtch

label variable cog04m "California Verbal Learning Part 1 Reason not done"
label define _el83XfE3tm 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog04m _el83XfE3tm

label variable cog05 "Trail making Part A"
label define _M4V5HYW7LU 0 "Not Administered" 1 "Complete"
label values cog05 _M4V5HYW7LU

label variable cog05m "Trail making Part A reason not done"
label define _f5k5Kd8RHZ 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog05m _f5k5Kd8RHZ

label variable cog06 "Trail making Part B"
label define _ZuXWj9JnjC 0 "Not Administered" 1 "Complete"
label values cog06 _ZuXWj9JnjC

label variable cog06m "Trail making Part B reason not done"
label define _AUaKQxT0OM 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog06m _AUaKQxT0OM

label variable cog07 "Purdue Pegboard"
label define _wPXVoQ9ELD 0 "Not Administered" 1 "Complete"
label values cog07 _wPXVoQ9ELD

label variable cog07m "Purdue Pegboard reason not done"
label define _HbgKFsgrcF 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog07m _HbgKFsgrcF

label variable cog08 "Card Rotations"
label define _sVlWBcGkXz 0 "Not Administered" 1 "Complete"
label values cog08 _sVlWBcGkXz

label variable cog08m "Card Rotations reason not done"
label define _cPpImYmAKL 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog08m _cPpImYmAKL

label variable cog09 "California Verbal Learning Part 2"
label define _V36gub2Yuw 0 "Not Administered" 1 "Complete"
label values cog09 _V36gub2Yuw

label variable cog09m "California Verbal Learning Part 2 Reason not done"
label define _OtYSJOPoMl 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog09m _OtYSJOPoMl

label variable cog10 "Verbal Fluency Letter F"
label define _k8VlLUSgp0 0 "Not Administered" 1 "Complete"
label values cog10 _k8VlLUSgp0

label variable cog10m "Verbal Fluency Letter F Reason not done"
label define _MYlIAYNFZn 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog10m _MYlIAYNFZn

label variable cog11 "Verbal Fluency Letter A"
label define _u9LjfFRnoj 0 "Not Administered" 1 "Complete"
label values cog11 _u9LjfFRnoj

label variable cog11m "Verbal Fluency Letter A Reason not done"
label define _fJEAsVLqmx 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog11m _fJEAsVLqmx

label variable cog12 "Verbal Fluency Letter S"
label define _DGziq5amX6 0 "Not Administered" 1 "Complete"
label values cog12 _DGziq5amX6

label variable cog12m "Verbal Fluency Letter S Reason not done"
label define _E0T9MouT3z 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog12m _E0T9MouT3z

label variable cog13 "Verbal Fluency Fruit"
label define _MOjlrDJ3mO 0 "Not Administered" 1 "Complete"
label values cog13 _MOjlrDJ3mO

label variable cog13m "Verbal Fluency Fruit Reason not done"
label define _PAdUcE0B4O 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog13m _PAdUcE0B4O

label variable cog14 "Verbal Fluency Animals"
label define _l22hySEP4y 0 "Not Administered" 1 "Complete"
label values cog14 _l22hySEP4y

label variable cog14m "Verbal Fluency Animals Reason not done"
label define _vvMIsIyaRZ 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog14m _vvMIsIyaRZ

label variable cog15 "Verbal Fluency Vegtables"
label define _rzQP4ofNjT 0 "Not Administered" 1 "Complete"
label values cog15 _rzQP4ofNjT

label variable cog15m "Verbal Fluency Vegtables Reason not done"
label define _fEjQ3cobu9 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog15m _fEjQ3cobu9

label variable cog16 "WAIS Digit Symbol Substitution"
label define _kSV3h9MVCR 0 "Not Administered" 1 "Complete"
label values cog16 _kSV3h9MVCR

label variable cog16m "WAIS Digit Symbol Substitution Reason not done"
label define _vvd7KKQTrO 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog16m _vvd7KKQTrO

label variable cog17 "WRAT"
label define _CnETXVvjQP 0 "Not Administered" 1 "Complete"
label values cog17 _CnETXVvjQP

label variable cog17m "WRAT reason not done"
label define _L942pzvEAH 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog17m _L942pzvEAH

label variable cog18 "WAIS R Similarities"
label define _kQKL3lacxa 0 "Not Administered" 1 "Complete"
label values cog18 _kQKL3lacxa

label variable cog18m "WAIS R Similarities Reason not done"
label define _e8mXDLAUqJ 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog18m _e8mXDLAUqJ

label variable cog19 "CESD"
label define _U8usQacdpC 0 "Not Administered" 1 "Complete"
label values cog19 _U8usQacdpC

label variable cog19m "CESD reson not done"
label define _WvKrPE3DG2 1 "1-Not enough time" 2 "2-No examiner/room available" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 7 "7-Participant refused" 8 "8-Low literacy" 9 "9-Other"
label values cog19m _WvKrPE3DG2

label variable borgscore "Borg Score"

label variable maskworn_corneutesnew "COVID-19 Pandemic Mask worn"
label define _zEu4Jy4Y3w 0 "No" 1 "Yes"
label values maskworn_corneutesnew _zEu4Jy4Y3w

label variable auto_id_corneutesnew "Unique Teleform Number"

label variable crf_parent_name_corneutesnew "CRF Parent Name"

label variable study_name_corneutesnew "Study Name"

