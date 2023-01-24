%let path_to_file = '../data-csv/BLSA_Long_Distance_Corridor_Walk.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ldcw01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw02_
		0 = 'No'
		1 = 'Yes'
		2 = 'ECG not done or not available'
	;

	VALUE ldcw03_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw04_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw05_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw06_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw06a_
		1 = 'Small'
		2 = 'Medium'
		3 = 'Large'
	;

	VALUE ldcw11_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw12_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw13_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw14_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw15_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw16_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE mdcw22_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdcw23_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdcw27_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdcw27a_
		1 = 'Exclusion criteria'
		2 = 'Chest pain'
		3 = 'Short of Breath'
		4 = 'Felt faint'
		5 = 'Knee pain'
		6 = 'Hip pain'
		7 = 'Calf pain'
		77 = 'Refused'
		8 = 'Back pain'
		9 = 'Other'
		99 = 'No time or tester'
	;

	VALUE mdcw27b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw45_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw47_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw47a_
		1 = 'Exclusion criteria'
		10 = 'Did not finish 2:30 walk'
		11 = 'Elevated HR during 2:30 walk'
		13 = ' Had symptoms during 2:30 walk'
		14 = 'Fatigue/Exhaustion/Tiredness'
		2 = 'Chest pain'
		3 = 'Short of Breath'
		4 = 'Felt faint'
		5 = 'Knee pain'
		6 = 'Hip pain'
		7 = 'Calf pain'
		77 = 'Refused'
		8 = 'Back pain'
		9 = 'Other'
		99 = 'No time or tester'
	;

	VALUE ldcw47b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw48a_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw48b_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw48c_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw48d_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw48e_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw48f_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw48g_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw48h_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw48i_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE mdcw51_
		0 = 'Not attempted unable to walk unaided'
		1 = 'Normal'
		2 = 'Abnormal (diminished in contrast of the other arm)'
		3 = 'Absent'
	;

	VALUE mdcw52_
		0 = 'Not attempted unable to walk unaided'
		1 = 'Normal'
		2 = 'Abnormal (diminished in contrast of the other arm)'
		3 = 'Absent'
	;

	VALUE mdcw53_
		0 = 'Not attempted unable to walk unaided'
		1 = 'Never'
		2 = 'Intermittent (rare < 10% of the walking time - 30 sec for a 5km/h gait)'
		3 = 'Intermittent (moderate < 50% of the walking time)'
		4 = 'Intermittent (frequent >/= 50% of the walking time)'
		5 = 'Persistent'
	;

	VALUE mdcw54_
		0 = 'Not attempted unable to walk unaided'
		1 = 'Never'
		2 = 'Intermittent (rare < 10% of the walking time - 30 sec for a 5km/h gait)'
		3 = 'Intermittent (moderate < 50% of the walking time)'
		4 = 'Intermittent (frequent >/= 50% of the walking time)'
		5 = 'Persistent'
	;

	VALUE amstartampm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE amstopampm_
		1 = 'Am'
		2 = 'Pm'
	;

RUN;

    
DATA WORK.IMPORT;
	%let _EFIERR_ = 0;
	INFILE &path_to_file.
	DELIMITER = ','
	MISSOVER
	DSD
	FIRSTOBS = 2;                

	INFORMAT idno BEST32.;
	FORMAT idno BEST12.;

	INFORMAT subject_id BEST32.;
	FORMAT subject_id BEST12.;

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT event_name $8.;
	FORMAT event_name $8.;

	INFORMAT crf_version_LonDisCorWal $7.;
	FORMAT crf_version_LonDisCorWal $7.;

	INFORMAT obsdate_ldcwdate YYMMDD10.;
	FORMAT obsdate_ldcwdate YYMMDD10.;

	INFORMAT ldcwtid BEST32.;
	FORMAT ldcwtid BEST12.;

	INFORMAT blank_LonDisCorWal $1.;
	FORMAT blank_LonDisCorWal $1.;

	INFORMAT ldcw01 BEST32.;
	FORMAT ldcw01 BEST12.;

	INFORMAT ldcw02 BEST32.;
	FORMAT ldcw02 BEST12.;

	INFORMAT ldcw02a $1.;
	FORMAT ldcw02a $1.;

	INFORMAT ldcw02a1 $1.;
	FORMAT ldcw02a1 $1.;

	INFORMAT ldcw02a2 $1.;
	FORMAT ldcw02a2 $1.;

	INFORMAT ldcw02a3 $1.;
	FORMAT ldcw02a3 $1.;

	INFORMAT ldcw02a4 $1.;
	FORMAT ldcw02a4 $1.;

	INFORMAT ldcw03a BEST32.;
	FORMAT ldcw03a BEST12.;

	INFORMAT ldcw03b BEST32.;
	FORMAT ldcw03b BEST12.;

	INFORMAT ldcw03c BEST32.;
	FORMAT ldcw03c BEST12.;

	INFORMAT ldcw03 BEST32.;
	FORMAT ldcw03 BEST12.;

	INFORMAT ldcw04 BEST32.;
	FORMAT ldcw04 BEST12.;

	INFORMAT ldcw05 BEST32.;
	FORMAT ldcw05 BEST12.;

	INFORMAT ldcw06 BEST32.;
	FORMAT ldcw06 BEST12.;

	INFORMAT ldcw06a BEST32.;
	FORMAT ldcw06a BEST12.;

	INFORMAT ldcw11 BEST32.;
	FORMAT ldcw11 BEST12.;

	INFORMAT ldcw12 BEST32.;
	FORMAT ldcw12 BEST12.;

	INFORMAT ldcw13 BEST32.;
	FORMAT ldcw13 BEST12.;

	INFORMAT ldcw14 BEST32.;
	FORMAT ldcw14 BEST12.;

	INFORMAT ldcw15 BEST32.;
	FORMAT ldcw15 BEST12.;

	INFORMAT ldcw16 BEST32.;
	FORMAT ldcw16 BEST12.;

	INFORMAT mdcw21 BEST32.;
	FORMAT mdcw21 BEST12.;

	INFORMAT mdcw22 BEST32.;
	FORMAT mdcw22 BEST12.;

	INFORMAT mdcw22a $1.;
	FORMAT mdcw22a $1.;

	INFORMAT mdcw23 BEST32.;
	FORMAT mdcw23 BEST12.;

	INFORMAT mdcw24 BEST32.;
	FORMAT mdcw24 BEST12.;

	INFORMAT mdcw25 BEST32.;
	FORMAT mdcw25 BEST12.;

	INFORMAT mdcw26 BEST32.;
	FORMAT mdcw26 BEST12.;

	INFORMAT mdcw27 BEST32.;
	FORMAT mdcw27 BEST12.;

	INFORMAT mdcw27a BEST32.;
	FORMAT mdcw27a BEST12.;

	INFORMAT mdcw27b BEST32.;
	FORMAT mdcw27b BEST12.;

	INFORMAT ldcw41am BEST32.;
	FORMAT ldcw41am BEST12.;

	INFORMAT ldcw41as BEST32.;
	FORMAT ldcw41as BEST12.;

	INFORMAT ldcw41bm BEST32.;
	FORMAT ldcw41bm BEST12.;

	INFORMAT ldcw41bs BEST32.;
	FORMAT ldcw41bs BEST12.;

	INFORMAT ldcw41cm BEST32.;
	FORMAT ldcw41cm BEST12.;

	INFORMAT ldcw41cs BEST32.;
	FORMAT ldcw41cs BEST12.;

	INFORMAT ldcw41dm $1.;
	FORMAT ldcw41dm $1.;

	INFORMAT ldcw41ds BEST32.;
	FORMAT ldcw41ds BEST12.;

	INFORMAT ldcw41em BEST32.;
	FORMAT ldcw41em BEST12.;

	INFORMAT ldcw41es BEST32.;
	FORMAT ldcw41es BEST12.;

	INFORMAT ldcw41fm BEST32.;
	FORMAT ldcw41fm BEST12.;

	INFORMAT ldcw41fs BEST32.;
	FORMAT ldcw41fs BEST12.;

	INFORMAT ldcw41gm BEST32.;
	FORMAT ldcw41gm BEST12.;

	INFORMAT ldcw41gs BEST32.;
	FORMAT ldcw41gs BEST12.;

	INFORMAT ldcw41hm BEST32.;
	FORMAT ldcw41hm BEST12.;

	INFORMAT ldcw41hs BEST32.;
	FORMAT ldcw41hs BEST12.;

	INFORMAT ldcw41im BEST32.;
	FORMAT ldcw41im BEST12.;

	INFORMAT ldcw41is BEST32.;
	FORMAT ldcw41is BEST12.;

	INFORMAT ldcw41jm $2.;
	FORMAT ldcw41jm $2.;

	INFORMAT ldcw41js BEST32.;
	FORMAT ldcw41js BEST12.;

	INFORMAT ldcw42 BEST32.;
	FORMAT ldcw42 BEST12.;

	INFORMAT ldcw42a $7.;
	FORMAT ldcw42a $7.;

	INFORMAT ldcw43 BEST32.;
	FORMAT ldcw43 BEST12.;

	INFORMAT ldcw44a BEST32.;
	FORMAT ldcw44a BEST12.;

	INFORMAT ldcw44b BEST32.;
	FORMAT ldcw44b BEST12.;

	INFORMAT ldcw45 BEST32.;
	FORMAT ldcw45 BEST12.;

	INFORMAT ldcw45a BEST32.;
	FORMAT ldcw45a BEST12.;

	INFORMAT ldcw45b BEST32.;
	FORMAT ldcw45b BEST12.;

	INFORMAT ldcw46 BEST32.;
	FORMAT ldcw46 BEST12.;

	INFORMAT ldcw47 BEST32.;
	FORMAT ldcw47 BEST12.;

	INFORMAT ldcw47a BEST32.;
	FORMAT ldcw47a BEST12.;

	INFORMAT ldcw47c $33.;
	FORMAT ldcw47c $33.;

	INFORMAT ldcw47b BEST32.;
	FORMAT ldcw47b BEST12.;

	INFORMAT ldcw47bs BEST32.;
	FORMAT ldcw47bs BEST12.;

	INFORMAT ldcw48a BEST32.;
	FORMAT ldcw48a BEST12.;

	INFORMAT ldcw48b BEST32.;
	FORMAT ldcw48b BEST12.;

	INFORMAT ldcw48c BEST32.;
	FORMAT ldcw48c BEST12.;

	INFORMAT ldcw48d BEST32.;
	FORMAT ldcw48d BEST12.;

	INFORMAT ldcw48e BEST32.;
	FORMAT ldcw48e BEST12.;

	INFORMAT ldcw48f BEST32.;
	FORMAT ldcw48f BEST12.;

	INFORMAT ldcw48g BEST32.;
	FORMAT ldcw48g BEST12.;

	INFORMAT ldcw48h BEST32.;
	FORMAT ldcw48h BEST12.;

	INFORMAT ldcw48i BEST32.;
	FORMAT ldcw48i BEST12.;

	INFORMAT mdcw51 BEST32.;
	FORMAT mdcw51 BEST12.;

	INFORMAT mdcw52 BEST32.;
	FORMAT mdcw52 BEST12.;

	INFORMAT mdcw53 BEST32.;
	FORMAT mdcw53 BEST12.;

	INFORMAT mdcw54 BEST32.;
	FORMAT mdcw54 BEST12.;

	INFORMAT amstartampm BEST32.;
	FORMAT amstartampm BEST12.;

	INFORMAT amstopampm BEST32.;
	FORMAT amstopampm BEST12.;

	INFORMAT am_starttime $5.;
	FORMAT am_starttime $5.;

	INFORMAT am_stoptime TIME20.;
	FORMAT am_stoptime TIME20.;

	INFORMAT cosmed5k $1.;
	FORMAT cosmed5k $1.;

	INFORMAT ldcw44c BEST32.;
	FORMAT ldcw44c BEST12.;

	INFORMAT ldcw44d BEST32.;
	FORMAT ldcw44d BEST12.;

	INFORMAT ldcw44e BEST32.;
	FORMAT ldcw44e BEST12.;

	INFORMAT ldcw44f BEST32.;
	FORMAT ldcw44f BEST12.;

	INFORMAT amstarttime $1.;
	FORMAT amstarttime $1.;

	INFORMAT amstoptime $1.;
	FORMAT amstoptime $1.;

	INFORMAT auto_id_LonDisCorWal BEST32.;
	FORMAT auto_id_LonDisCorWal BEST12.;

	INFORMAT blank_1_LonDisCorWal BEST32.;
	FORMAT blank_1_LonDisCorWal BEST12.;

	INFORMAT crf_parent_name_LonDisCorWal $32.;
	FORMAT crf_parent_name_LonDisCorWal $32.;

	INFORMAT item_group_repeat_LonDisCorWal BEST32.;
	FORMAT item_group_repeat_LonDisCorWal BEST12.;

	INFORMAT ldcw02a1_ldcw02a1 $1.;
	FORMAT ldcw02a1_ldcw02a1 $1.;

	INFORMAT ldcw02a2_ldcw02a2 $1.;
	FORMAT ldcw02a2_ldcw02a2 $1.;

	INFORMAT ldcw02a3_ldcw02a3 $1.;
	FORMAT ldcw02a3_ldcw02a3 $1.;

	INFORMAT ldcw02a4_ldcw02a4 $1.;
	FORMAT ldcw02a4_ldcw02a4 $1.;

	INFORMAT ldcw02a_ldcw02a1 $8.;
	FORMAT ldcw02a_ldcw02a1 $8.;

	INFORMAT ldcw02a_ldcw02a2 $1.;
	FORMAT ldcw02a_ldcw02a2 $1.;

	INFORMAT ldcw02a_ldcw02a3 $8.;
	FORMAT ldcw02a_ldcw02a3 $8.;

	INFORMAT ldcw02a_ldcw02a4 $1.;
	FORMAT ldcw02a_ldcw02a4 $1.;

	INFORMAT mdcw22a_1 BEST32.;
	FORMAT mdcw22a_1 BEST12.;

	INFORMAT mdcw22a_2 BEST32.;
	FORMAT mdcw22a_2 BEST12.;

	INFORMAT mdcw22a_3 BEST32.;
	FORMAT mdcw22a_3 BEST12.;

	INFORMAT mdcw22a_4 BEST32.;
	FORMAT mdcw22a_4 BEST12.;

	INFORMAT mdcw22a_5 BEST32.;
	FORMAT mdcw22a_5 BEST12.;

	INFORMAT mdcw22a_6 BEST32.;
	FORMAT mdcw22a_6 BEST12.;

	INFORMAT mdcw22a_7 $1.;
	FORMAT mdcw22a_7 $1.;

	INFORMAT study_name_LonDisCorWal $4.;
	FORMAT study_name_LonDisCorWal $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_LonDisCorWal
		obsdate_ldcwdate
		ldcwtid
		blank_LonDisCorWal
		ldcw01
		ldcw02
		ldcw02a
		ldcw02a1
		ldcw02a2
		ldcw02a3
		ldcw02a4
		ldcw03a
		ldcw03b
		ldcw03c
		ldcw03
		ldcw04
		ldcw05
		ldcw06
		ldcw06a
		ldcw11
		ldcw12
		ldcw13
		ldcw14
		ldcw15
		ldcw16
		mdcw21
		mdcw22
		mdcw22a
		mdcw23
		mdcw24
		mdcw25
		mdcw26
		mdcw27
		mdcw27a
		mdcw27b
		ldcw41am
		ldcw41as
		ldcw41bm
		ldcw41bs
		ldcw41cm
		ldcw41cs
		ldcw41dm
		ldcw41ds
		ldcw41em
		ldcw41es
		ldcw41fm
		ldcw41fs
		ldcw41gm
		ldcw41gs
		ldcw41hm
		ldcw41hs
		ldcw41im
		ldcw41is
		ldcw41jm
		ldcw41js
		ldcw42
		ldcw42a
		ldcw43
		ldcw44a
		ldcw44b
		ldcw45
		ldcw45a
		ldcw45b
		ldcw46
		ldcw47
		ldcw47a
		ldcw47c
		ldcw47b
		ldcw47bs
		ldcw48a
		ldcw48b
		ldcw48c
		ldcw48d
		ldcw48e
		ldcw48f
		ldcw48g
		ldcw48h
		ldcw48i
		mdcw51
		mdcw52
		mdcw53
		mdcw54
		amstartampm
		amstopampm
		am_starttime
		am_stoptime
		cosmed5k
		ldcw44c
		ldcw44d
		ldcw44e
		ldcw44f
		amstarttime
		amstoptime
		auto_id_LonDisCorWal
		blank_1_LonDisCorWal
		crf_parent_name_LonDisCorWal
		item_group_repeat_LonDisCorWal
		ldcw02a1_ldcw02a1
		ldcw02a2_ldcw02a2
		ldcw02a3_ldcw02a3
		ldcw02a4_ldcw02a4
		ldcw02a_ldcw02a1
		ldcw02a_ldcw02a2
		ldcw02a_ldcw02a3
		ldcw02a_ldcw02a4
		mdcw22a_1
		mdcw22a_2
		mdcw22a_3
		mdcw22a_4
		mdcw22a_5
		mdcw22a_6
		mdcw22a_7
		study_name_LonDisCorWal
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		idno = "Participant ID"
		subject_id = "Participant ID"
		visit = "Visit Number"
		event_name = "Visit Number"
		crf_version_LonDisCorWal = "CRF Version"
		obsdate_ldcwdate = "Date Completed"
		ldcwtid = "Tester ID"
		blank_LonDisCorWal = "Blank Form"
		ldcw01 = "Was the participant able to complete the fast paced 6 meter walk with or without a walking aid"
		ldcw02 = "Are there abnormal ECG hardcopy references"
		ldcw02a = "Abnormal ECG"
		ldcw02a1 = "Mobitz Type II 2nd or 3rd degree heart block"
		ldcw02a2 = "Q-wave > 1mm in 2 continuous leads"
		ldcw02a3 = "ST depression > 2mm w/o LVH or LBBB"
		ldcw02a4 = "ST elevation > 2mm w/o LBBB and early repolarization"
		ldcw03a = "Sitting blood pressure systolic"
		ldcw03b = "Sitting blood pressure diastolic"
		ldcw03c = "Sitting heart rate"
		ldcw03 = "Was resting heart rate greater than 120 bpm"
		ldcw04 = "Was Systolic BP greater than 180 or diastolic pressure greater than 110"
		ldcw05 = "Need to use walking aid"
		ldcw06 = "Was Cosmed worn during test"
		ldcw06a = "Mask size"
		ldcw11 = "Had heart attack within past 3 mo"
		ldcw12 = "Had angioplasty within past 3 mo"
		ldcw13 = "Had heart surgery within past 3 mo"
		ldcw14 = "Had new or worsening within past 3 mo"
		ldcw15 = "Had new or worsening angina within past 3 mo"
		ldcw16 = "Had new or worsening shortness of breath within past 3 mo"
		mdcw21 = "Usual Pace heart rate"
		mdcw22 = "Did heart rate exceed predetermined max during first lap"
		mdcw22a = "Laps completed"
		mdcw23 = "Did heart rate exceed predetermined max anytime during the UP Walk"
		mdcw24 = "UP Number of laps completed"
		mdcw25 = "Number of additional meters"
		mdcw26 = "Heart rate at the end of 230 walk"
		mdcw27 = "Did participant complete 230 walk"
		mdcw27a = "Usual Pace reason not done"
		mdcw27b = "Did participant need to use walking aid"
		ldcw41am = "Lap 1 minutes"
		ldcw41as = "Lap 1 seconds"
		ldcw41bm = "Lap 2 minutes"
		ldcw41bs = "Lap 2 seconds"
		ldcw41cm = "Lap 3 minutes"
		ldcw41cs = "Lap 3 seconds"
		ldcw41dm = "Lap 4 minutes"
		ldcw41ds = "Lap 4 seconds"
		ldcw41em = "Lap 5 minutes"
		ldcw41es = "Lap 5 seconds"
		ldcw41fm = "Lap 6 minutes"
		ldcw41fs = "Lap 6 seconds"
		ldcw41gm = "Lap 7 minutes"
		ldcw41gs = "Lap 7 seconds"
		ldcw41hm = "Lap 8 minutes"
		ldcw41hs = "Lap 8 secods"
		ldcw41im = "Lap 9 minutes"
		ldcw41is = "Lap 9 seconds"
		ldcw41jm = "Lap 10 minutes"
		ldcw41js = "Lap 10 seconds"
		ldcw42 = "Time at end of 400 meters or STOP minutes"
		ldcw42a = "Time at end of 400 meters or STOP seconds"
		ldcw43 = "Heart rate at the end of 400m or Stop"
		ldcw44a = "BP systolic at the end of 400m"
		ldcw44b = "Sitting blood pressure diastolic"
		ldcw45 = "Did participant complete 10 laps"
		ldcw45a = "Number of laps completed"
		ldcw45b = "Number of additional meters"
		ldcw46 = "Heart rate after 2 min"
		ldcw47 = "Did participant complete 400 meter walk"
		ldcw47a = "400 meter reason not done"
		ldcw47c = "400 meter other reason not done"
		ldcw47b = "Did participant need to use walking aid"
		ldcw47bs = "Borg Score"
		ldcw48a = "400 meter Chest pain"
		ldcw48b = "400 meter Shortness of breath"
		ldcw48c = "400 meter knee pain"
		ldcw48d = "400 meter hip pain"
		ldcw48e = "400 meter calf pain"
		ldcw48f = "400 meter back pain"
		ldcw48g = "400 meter foot pain"
		ldcw48h = "400 meter leg cramps"
		ldcw48i = "400 meter numbness or tingling in legs or feet"
		mdcw51 = "Left arm swing when walking"
		mdcw52 = "Right arm swing when walking"
		mdcw53 = "Hand tremor LEFT arm"
		mdcw54 = "Hand tremor RIGHT arm"
		amstartampm = "Activity Monitor start time Ampm"
		amstopampm = "Activity Monitor stop time Ampm"
		am_starttime = "Activity Monitor start time"
		am_stoptime = "Activity Monitor stop time"
		cosmed5k = "Cosmed K5"
		ldcw44c = "BP systolic at 2 minutes of recovery"
		ldcw44d = "BP diastolic at 2 minutes of recovery"
		ldcw44e = "BP systolic at 5 minutes of recovery"
		ldcw44f = "BP diastolic at 5 minutes of recovery"
		amstarttime = "Activity Monitor start time"
		amstoptime = "Activity Monitor stop time"
		auto_id_LonDisCorWal = "Unique Form"
		blank_1_LonDisCorWal = "Blank"
		crf_parent_name_LonDisCorWal = "CRF Parent Name"
		item_group_repeat_LonDisCorWal = "Item Group Repeate"
		ldcw02a1_ldcw02a1 = "Mobitz Type II 2nd or 3rd degree heart block : Mobitz type II 2nd or 3rd degree heart block (Checkbox Indicator)"
		ldcw02a2_ldcw02a2 = "Q-wave > 1mm in 2 continuous leads : Q-wave > 1mm in 2 contiguous leads (Checkbox Indicator)"
		ldcw02a3_ldcw02a3 = "ST depression > 2mm w/o LVH or LBBB : ST depression > 2mm w/o LVH or LBBB (Checkbox Indicator)"
		ldcw02a4_ldcw02a4 = "ST elevation > 2mm w/o LBBB and early repolarization : ST elevation > 2mm w/o LBBB and early repolarization (Checkbox Indicator)"
		ldcw02a_ldcw02a1 = "Abnormal ECG : Mobitz type II 2nd or 3rd degree heart block (Checkbox Indicator)"
		ldcw02a_ldcw02a2 = "Abnormal ECG : Q-wave > 1mm in 2 contiguous leads (Checkbox Indicator)"
		ldcw02a_ldcw02a3 = "Abnormal ECG : ST depression > 2mm w/o LVH or LBBB (Checkbox Indicator)"
		ldcw02a_ldcw02a4 = "Abnormal ECG : ST elevation > 2mm w/o LBBB and early repolarization (Checkbox Indicator)"
		mdcw22a_1 = "Laps completed : 1 (Checkbox Indicator)"
		mdcw22a_2 = "Laps completed : 2 (Checkbox Indicator)"
		mdcw22a_3 = "Laps completed : 3 (Checkbox Indicator)"
		mdcw22a_4 = "Laps completed : 4 (Checkbox Indicator)"
		mdcw22a_5 = "Laps completed : 5 (Checkbox Indicator)"
		mdcw22a_6 = "Laps completed : 6 (Checkbox Indicator)"
		mdcw22a_7 = "Laps completed : 7 (Checkbox Indicator)"
		study_name_LonDisCorWal = "Study Name"
	;
	FORMAT
		ldcw01 ldcw01_.
		ldcw02 ldcw02_.
		ldcw03 ldcw03_.
		ldcw04 ldcw04_.
		ldcw05 ldcw05_.
		ldcw06 ldcw06_.
		ldcw06a ldcw06a_.
		ldcw11 ldcw11_.
		ldcw12 ldcw12_.
		ldcw13 ldcw13_.
		ldcw14 ldcw14_.
		ldcw15 ldcw15_.
		ldcw16 ldcw16_.
		mdcw22 mdcw22_.
		mdcw23 mdcw23_.
		mdcw27 mdcw27_.
		mdcw27a mdcw27a_.
		mdcw27b mdcw27b_.
		ldcw45 ldcw45_.
		ldcw47 ldcw47_.
		ldcw47a ldcw47a_.
		ldcw47b ldcw47b_.
		ldcw48a ldcw48a_.
		ldcw48b ldcw48b_.
		ldcw48c ldcw48c_.
		ldcw48d ldcw48d_.
		ldcw48e ldcw48e_.
		ldcw48f ldcw48f_.
		ldcw48g ldcw48g_.
		ldcw48h ldcw48h_.
		ldcw48i ldcw48i_.
		mdcw51 mdcw51_.
		mdcw52 mdcw52_.
		mdcw53 mdcw53_.
		mdcw54 mdcw54_.
		amstartampm amstartampm_.
		amstopampm amstopampm_.
	;
RUN;


DATA blsa_long_distance_corridor_walk;
    SET WORK.IMPORT;
RUN;
