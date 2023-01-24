clear
import delimited "../data-csv/BLSA_EMG.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_emg "CRF Version"

label variable obsdate_emgdate "Date Completed"

// Generate 'date version' of the 'obsdate_emgdate' variable
gen _obsdate_emgdate = date(obsdate_emgdate, "YMD")
format _obsdate_emgdate %td

label variable blank_emg "Blank Form"

label variable emgttrid "Tester ID"

label variable emg01 "Foot temperature for peroneal"

label variable emg01a "Foot temperature for peroneal following heating"

label variable emg02 "Which leg was tested"
label define _Ab3IqQE4MU 0 "Right" 1 "Left"
label values emg02 _Ab3IqQE4MU

label variable emg02a "Why wasnâ€™t right leg tested"
label define _tK0lAuzIR7 1 "Amputation" 2 "Ulcer" 3 "Trauma or surgery (including knee replacement)" 4 "Other - explain"
label values emg02a _tK0lAuzIR7

label variable emg02b "Why wasnâ€™t right leg tested other"

label variable emg01a1 "Foot temperature for sural"

label variable emg01a2 "Foot temperature for sural following heating"

label variable emg01b "Foot temperature at end of tests"

label variable emg03a "Peroneal Test Completed Distal"
label define _N4PqsMV3lk 0 "Other" 1 "Yes" 4 "No response" 5 "Physical problems" 6 "Mental problems" 7 "Physical and mental problems" 8 " Refused" 9 "Technical problems (no time)"
label values emg03a _N4PqsMV3lk

label variable emg04a "Peroneal Test Completed Fibular Head"
label define _wvl03lEUbW 0 "Other" 1 "Yes" 4 "No response" 5 "Physical problems" 6 "Mental problems" 7 "Physical and mental problems" 8 " Refused" 9 "Technical problems (no time)"
label values emg04a _wvl03lEUbW

label variable emg05a "Peroneal Test Completed Popliteal Fossa"
label define _QaKPcfuTxP 0 "Other" 1 "Yes" 4 "No response" 5 "Physical problems" 6 "Mental problems" 7 "Physical and mental problems" 8 " Refused" 9 "Technical problems (no time)"
label values emg05a _QaKPcfuTxP

label variable emg06a "Sural TestCompleted LowerLeg"
label define _bR7qjwo3Wd 0 "Other" 1 "Yes" 4 "No response" 5 "Physical problems" 6 "Mental problems" 7 "Physical and mental problems" 8 " Refused" 9 "Technical problems (no time)"
label values emg06a _bR7qjwo3Wd

label variable emg08 "Were files exported"
label define _aTR8RTXeHD 0 "No" 1 "Yes"
label values emg08 _aTR8RTXeHD

label variable emg03b "Distal Amplitude"

label variable emg03c "Distal Latency"

label variable emg04b "Fibula head Amplitude"

label variable emg04c "Fibula head Latency"

label variable emg04d "Fibula head Conduction Velocity"

label variable emg05b "Popliteal Fossa Amplitude"

label variable emg05c "Popliteal Fossa Latency"

label variable emg05d "Popliteal Fossa Conduction Velocity"

label variable emg06b "Lower Leg Amplitude"

label variable emg06c "Lower Leg Latency"

label variable emg06c1 "Lower Leg Latency"

label variable emg06d "Lower Leg Conduction Velocity"

label variable emg07 "Which stimulus site was chosen for lower leg Sural"
label define _TzbuN6a0xo 1 "A1" 2 "A2" 3 "A3" 4 "A4"
label values emg07 _TzbuN6a0xo

label variable auto_id_emg "Unique Teleform Number"

label variable crf_parent_name_emg "CRF Parent Name"

label variable study_name_emg "Study Name"

