clear
import delimited "../data-csv/BLSA_LE_Physical_Performance.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_lephyper "CRF Version"

label variable obsdate_lepdt1 "Date Completed"

// Generate 'date version' of the 'obsdate_lepdt1' variable
gen _obsdate_lepdt1 = date(obsdate_lepdt1, "YMD")
format _obsdate_lepdt1 %td

label variable leptid1 "Tester ID"

label variable blank_lephyper "Blank Form"

label variable lep1 "Single chair stand"
label define _tjJofCvuU2 0 "Not attempted unable Go to standing balance" 1 "Stands without using arms Go to repeated chair stands" 2 "Attempted unable to stand Go to standing balance" 3 "Rises using arms Go to standing balance" 7 "Participant refused (includes no time/no tester) Go to standing balance"
label values lep1 _tjJofCvuU2

label variable lep2 "Repeated chair stand"
label define _vT8XEWqjjR 0 "Not attempted unable Go to standing balance" 1 "Completes 10 stands without using arms Record time" 2 "Attempted unable to complete 5 stands Go to Number completed" 3 "Completed 5 but not 10 stands Go to Number Completed and Enter time for 5 stands" 7 "Participant refused (includes no time/no tester) Go to standing balance"
label values lep2 _vT8XEWqjjR

label variable lep2a "Unable to complete 5 stands number completed"

label variable lep2b "Completes 5 but not 10 stands number completed"

label variable lep2b1 "Time for 5 stands"

label variable lep2c1 "Time for 10 stands min"

label variable lep2c2 "Time for 10 stands sec hund"

label variable lep3 "Side by side stand"
label define _dylBut9jML 0 "Not attempted unable Go to 6 meter walks" 1 "Holds for 10 seconds Go to semi-tandem stand" 2 "Unable to attain position or hold for one second Go to 6 meter walks" 3 "Holds for less than 10 seconds Go to 6 meter walks" 7 "Participant refused (includes no time/no tester) Go to 6 meter walks"
label values lep3 _dylBut9jML

label variable lep4 "Semi tandem stand"
label define _t0fmLfAdNb 0 "Not attempted unable Go to 6 meter walks" 1 "Holds position for 30 seconds Go to tandem stand" 2 "Unable to attain position or hold for one second Go to 6 meter walks" 3 "Holds position for less than 10 seconds Record time Go to 6 meter walks" 4 "Holds position for 10 but less than 30 seconds Record time Go to tandem stand" 7 "Participant refused (includes no time/no tester) Go to 6 meter walks"
label values lep4 _t0fmLfAdNb

label variable lep4b "Semi tandem stand hold position for less than 10 seconds time"

label variable lep4a "Semi tandem stand hold position for 10 but less than 30 seconds time"

label variable lep5a "Tandem stand trial 1"
label define _af21T6DbmL 0 "Not attempted unable Go to 6 meter walks" 1 "Holds position for 30 seconds Go to one-leg stand" 2 "Unable to attain position or hold for one second Go to 6 meter walks" 3 "Holds position for less than 10 seconds Record time Go to Trial 2" 4 "Holds position for 10 but less than 30 seconds Record time Go to Trial 2" 7 "Participant refused (includes no time/no tester) Go to 6 meter walks"
label values lep5a _af21T6DbmL

label variable lep5a2 "Tandem stand hold position for less than 10 seconds time trial 1"

label variable lep5a1 "Tandem stand hold position for 10 but less than 30 seconds time trial 1"

label variable lep5b "Tandem stand trial 2"
label define _KuD0mWqaOO 0 "Not attempted unable Go to 6 meter walks" 1 "Holds position for 30 seconds Go to one-leg stand" 2 "Unable to attain position or hold for one second Go to 6 meter walks" 3 "Hold position for less than 10 seconds Record time Go to 6 meter walks Mark unable One Leg Stand " 4 "Holds position for 10 but less than 30 seconds Record time Go to 6 meter walks Mark unable One Leg Stand" 7 "Participant refused (includes no time/no tester) Go to 6 meter walks"
label values lep5b _KuD0mWqaOO

label variable lep5b1 "Tandem stand hold position for less than 10 seconds time trial 2"

label variable lep5b2 "Tandem stand hold position for 10 but less than 30 seconds time trial 2"

label variable lep6a "One leg stand Trial 1"
label define _T5XJ1lfBa6 0 "Not attempted unable Go to 6 meter walks" 1 "Holds position for 30 seconds Go to 6 meter walks" 2 "Unable to attain position or hold for one second Go to 6 meter walks" 3 "Holds position for one but less than 30 seconds Record time Go to Trial 2" 7 "Participant refused (includes no time/no tester) Go to 6 meter walks"
label values lep6a _T5XJ1lfBa6

label variable lep6a1 "One leg stand 1 but less than 30 seconds time trial 1"

label variable lep6b "One leg stand Trial 2"
label define _At9rHd12rE 0 "Not attempted unable Go to 6 meter walks" 1 "Holds position for 30 seconds Go to 6 meter walks" 2 "Unable to attain position or hold for one second Go to 6 meter walks" 3 "Holds position for one but less than 30 seconds Record time Go to Trial 2" 7 "Participant refused (includes no time/no tester) Go to 6 meter walks"
label values lep6b _At9rHd12rE

label variable lep6b1 "One leg stand 1 but less than 30 seconds time trial 2"

label variable lep7a "Uaual pace trial 1"
label define _j2Y5fhTvzz 0 "Not attempted unable to walk End performance testing" 1 "Completes without walking aid Record Time Go to trial 2" 2 "Completes with walking aid Record Time Go to Trial 2" 7 "Participant refused (Includes no time/no tester) End performance testing"
label values lep7a _j2Y5fhTvzz

label variable lep7a1 "Usual pace complete with walking aid trial 1 time"

label variable lep7a2 "Usual pace complete without walking aid trial 1 time"

label variable lep7b "Uaual pace trial 2"
label define _aVPqExXWPJ 0 "Not attempted unable to walk End performance testing" 1 "Completes without walking aid Record Time Go to Fast Walk" 2 "Completes with walking aid Record Time Go to Fast Walk" 7 "Participant refused (Includes no time/no tester) End performance testing"
label values lep7b _aVPqExXWPJ

label variable lep7b1 "Usual pace complete with walking aid trial 2 time"

label variable lep7b2 "Usual pace complete without walking aid trial 2 time"

label variable lep8a "Fast pace trial 1"
label define _hEC99bi4kt 0 "Not attempted unable to walk End performance testing" 1 "Completes without walking aid Record Time Go to trial 2" 2 "Completes with walking aid Record Time Go to Trial 2" 7 "Participant refused (Includes no time/no tester) End performance testing"
label values lep8a _hEC99bi4kt

label variable lep8a1 "Fast pace complete with walking aid trial 1 time"

label variable lep8a2 "Fast pace complete without walking aid trial 1 time"

label variable lep8b "Fast pace trial 2"
label define _fQNEo1I915 0 "Not attempted unable to walk End performance testing" 1 "Completes without walking aid Record Time Go to Narrow Walk" 2 "Completes with walking aid Record Time Go to Narrow Walk" 7 "Participant refused (Includes no time/no tester) End performance testing"
label values lep8b _fQNEo1I915

label variable lep8b1 "Fast pace complete with walking aid trial 2 time"

label variable lep8b2 "Fast pace complete without walking aid trial 2 time"

label variable lep9a "Narrow walk trial 1"
label define _EAgMUBfWz8 0 "Not attempted unable to walk unaided End performance testing" 1 "Valid test Record Time Go to trial 2" 2 "Invalid test stepped on line 3 times Go to Trial 2" 7 "Participant refused (Includes no time/no tester) End performance testing"
label values lep9a _EAgMUBfWz8

label variable lep9a1 "Narrow walk valid test trial 1 time"

label variable lep9b "Narrow walk trial 2"
label define _DW8DvljkCL 0 "Not attempted unable to walk unaided End performance testing" 1 "Valid test Record Time Go to trial 3 or end" 2 "Invalid test stepped on line 3 times Go to Trial 3" 7 "Participant refused (Includes no time/no tester) End performance testing"
label values lep9b _DW8DvljkCL

label variable lep9b1 "Narrow walk valid test trial 2 time"

label variable lep9c "Narrow walk trial 3"
label define _kfgHynclY9 0 "Not attempted unable to walk unaided End performance testing" 1 "Valid test Record Time End" 2 "Invalid test stepped on line 3 times End testing" 7 "Participant refused (Includes no time/no tester) End performance testing"
label values lep9c _kfgHynclY9

label variable lep9c1 "Narrow walk valid test trial 3 time"

label variable auto_id_lephyper "Unique Teleform Number"

label variable lepdt2 "Standing Balance Date Completed"

// Generate 'date version' of the 'lepdt2' variable
gen _lepdt2 = date(lepdt2, "YMD")
format _lepdt2 %td

label variable leptid2 "Standing Balance Tester ID"

label variable lepdt3 "6 meter walks Date Completed"

// Generate 'date version' of the 'lepdt3' variable
gen _lepdt3 = date(lepdt3, "YMD")
format _lepdt3 %td

label variable leptid3 "6 meter walks Tester ID"

label variable lep7 "HV measured meters"
label define _quzedhb9jO 0 "No three meter space available" 1 "Four meters" 2 "Three meters"
label values lep7 _quzedhb9jO

label variable crf_parent_name_lephyper "CRF Parent Name"

label variable item_group_repeat_lephyper "Item Group Repeate"

label variable lep2a_0 "Unable to complete 5 stands number completed : 0 (Checkbox Indicator)"

label variable lep2a_1 "Unable to complete 5 stands number completed : 1 (Checkbox Indicator)"

label variable lep2a_2 "Unable to complete 5 stands number completed : 2 (Checkbox Indicator)"

label variable lep2a_3 "Unable to complete 5 stands number completed : 3 (Checkbox Indicator)"

label variable lep2a_4 "Unable to complete 5 stands number completed : 4 (Checkbox Indicator)"

label variable lep2b_5 "Completes 5 but not 10 stands number completed : 5* (Checkbox Indicator)"

label variable lep2b_6 "Completes 5 but not 10 stands number completed : 6 (Checkbox Indicator)"

label variable lep2b_7 "Completes 5 but not 10 stands number completed : 7 (Checkbox Indicator)"

label variable lep2b_8 "Completes 5 but not 10 stands number completed : 8 (Checkbox Indicator)"

label variable study_name_lephyper "Study Name"

