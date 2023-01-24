clear
import delimited "../data-csv/BLSA_Treadmill.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_tre "CRF Version"

label variable obsdate_trmdate "Date Completed"

// Generate 'date version' of the 'obsdate_trmdate' variable
gen _obsdate_trmdate = date(obsdate_trmdate, "YMD")
format _obsdate_trmdate %td

label variable trmttid "Tester ID"

label variable blank_tre "Blank Form"

label variable trm01 "Treadmill done"
label define _jHOJTW259R 0 "No" 1 "Yes"
label values trm01 _jHOJTW259R

label variable trm01a "Treadmill reason not done"
label define _BWtxZqhNrt 000 "Other" 1 "Contraindication" 555 "Physical problems" 666 "Cognitive" 777 "Physical and cognitive" 888 "Refused" 999 "Technical problems"
label values trm01a _BWtxZqhNrt

label variable trm01b "Treadmill contraindications"
label define _k3AvqTXeRV 0 "Other medical" 1 "Aortic stenosis of at least moderate severity" 10 "Poor health status" 2 "Symptoms suspicious for unstable angina" 3 "Recent (<6 months) myocardial infaction or revascularization" 4 "Uncontrolled hypertension (SBP >180 or DBP >110)" 5 "Factors that would preclude subject from being able to walk on a treadmill (unsteady gait difficulty with ambulation etc)" 6 "High grade AV block on resting EKG (Mobitz Type II 2nd or 3rd degree heart block)" 7 "Ate full meal within the past 2 hours" 8 "LBBB with Hx of previous MI or coronary revascularization" 9 "Resting heart rate >120"
label values trm01b _k3AvqTXeRV

label variable trm01c "Treadmill Contraindication other"

label variable trm02 "Oxygen consumption measured"
label define _zdFCXd9R5J 0 "No" 1 "Yes"
label values trm02 _zdFCXd9R5J

label variable trm02a "Oxygen consumption Reason not done"
label define _yDVlm2FA6i 1 "Other (please specify)" 555 "Physical problems" 666 "Cognitive" 777 "Physical and cognitive" 888 "Refused mouthpiece (or could not tolerate)" 999 "Technical problems"
label values trm02a _yDVlm2FA6i

label variable trm02b "Oxygen consumption RND other"

label variable trm03 "Reason exercise was stopped"
label define _zXhYy47l1f 00 "Other" 1 "Tester request" 10 "Claudication" 11 "Mouthpiece discomfort" 2 "Musculoskeletal pain" 3 "Dyspena" 4 "Chest pain" 5 "Ischemia" 6 "Fatigue" 7 "Nausea" 8 "Dizziness" 9 "Arrhythmia"
label values trm03 _zXhYy47l1f

label variable trm03a "Reason exercise was stopped Other"

label variable trm04 "Participant complained of chest pain"
label define _SrrGuCMrNM 0 "No" 1 "Yes"
label values trm04 _SrrGuCMrNM

label variable trmborg "Borg score"

label variable trmf1 "Fatigability performed"
label define _k0lC5tdiv5 1 "Yes" 4 "Refused" 5 "Unable" 6 "Technical" 7 "No Tester" 8 "Not Eligible" 9 "Not Scheduled"
label values trmf1 _k0lC5tdiv5

label variable trmf2 "Was oxygen consumption measured during SS"
label define _Mra31TgaCJ 0 "No" 1 "Yes"
label values trmf2 _Mra31TgaCJ

label variable trmf3 "Which Fatigability speed setting was used"
label define _BikwUsitXI 1 "Max Treadmill speed 1.5 mph" 2 "Max Treadmill speed 2.0 mph" 3 "Max Treadmill speed 2.5 mph" 4 "Max Treadmill speed 3.0 mph"
label values trmf3 _BikwUsitXI

label variable tssborg5 "Borg score Fatigability 5 min"

label variable tssborg10 "Borg score Fatigability 10 min"

label variable tssborg15 "Borg score Fatigability 15 min"

label variable trmf7 "Did participant complete Fatigability test"
label define _KPAKwSqDYt 0 "No" 1 "Yes"
label values trmf7 _KPAKwSqDYt

label variable trmf7a "Reason exercise was stopped"
label define _smWWb3niGj 00 "Other" 1 "Tester request" 10 "Claudication" 11 "Mouthpiece discomfort" 2 "Musculoskeletal pain" 3 "Dyspena" 4 "Chest pain" 5 "Ischemia" 6 "Fatigue" 7 "Nausea" 8 "Dizziness" 9 "Arrhythmia"
label values trmf7a _smWWb3niGj

label variable trmf7oth "Reason exercise was stopped Other"

label variable trmss1 "Steady Stage performed"
label define _WHQHqrDg4L 1 "Yes" 4 "Refused" 5 "Unable" 6 "Technical" 7 "No Tester" 8 "Not Eligible" 9 "Not Scheduled"
label values trmss1 _WHQHqrDg4L

label variable trmss2 "Was oxygen consumption measured during SS"
label define _yq46MXDWhF 0 "No" 1 "Yes"
label values trmss2 _yq46MXDWhF

label variable tssborg "Borg score for Steady Stage"

label variable auto_id_tre "Unique Teleform Number"

label variable crf_parent_name_tre "CRF Parent Name"

label variable study_name_tre "Study Name"

