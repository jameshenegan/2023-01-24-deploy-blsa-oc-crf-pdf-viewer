%let path_to_file = '../data-csv/BLSA_Activity_Monitor.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE achq01_
		0 = 'Other reason not done'
		1 = 'Yes'
		3 = 'Technical Problem (Bad Data)'
		4 = 'Not Completed (Less than 2 days)'
		5 = 'Physical Problems'
		6 = 'Cognitive Problems'
		7 = 'Physical and Cognitive Problems'
		8 = 'Refused (but could do)'
		9 = 'Technical problems (no time or equipment problems)'
	;

	VALUE achq02ap_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE achq02cp_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE achq03_
		0 = 'Other please specify'
		1 = 'Yes'
		2 = 'Participant refused'
		3 = 'Participant forgot'
		4 = 'Severe skin irritation occurred'
		5 = 'Mechanical problems with the monitor'
		6 = 'Improper attachment of monitor and/or electrodes'
	;

	VALUE achq04_
		0 = 'Other please specify'
		1 = 'Yes'
		2 = 'Participant refused'
		3 = 'Participant forgot'
	;

	VALUE achq05_
		0 = 'Other please specify'
		1 = 'Yes'
		2 = 'Participant refused'
		3 = 'Participant forgot'
	;

	VALUE achq11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE achq11a_
		0 = 'Less'
		1 = 'More'
	;

	VALUE achq12_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE achq13_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE achq13c_
		0 = 'Light'
		1 = 'Moderate'
		2 = 'Vigorous'
	;

	VALUE achq14_
		0 = 'None'
		1 = 'A little'
		2 = 'Some'
		3 = 'A good bit'
		4 = 'Most'
		5 = 'All'
	;

	VALUE achq15_
		0 = 'None'
		1 = 'Some'
		2 = 'Most'
		3 = 'All'
	;

	VALUE achq16_
		0 = '0'
		1 = '1'
		10 = '10'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
		9 = '9'
	;

	VALUE achq17_
		0 = '0'
		1 = '1'
		10 = '10'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
		9 = '9'
	;

	VALUE achq18_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE achq18bp_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE achq18cp_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE achq18ep_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE achq18fp_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE achq18hp_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE achq18ip_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE achq01a1a_2_
		2 = 'Actigraph '
		3 = 'Both'
		4 = 'Actiwatch'
	;

	VALUE achq01a1a_
		1 = 'Actiheart'
		2 = 'Actigraph '
		3 = 'Both'
		4 = 'Actiwatch'
	;

	VALUE achq01a1b_
		0 = 'No'
		1 = 'Yes'
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

	INFORMAT crf_version_ActMon $8.;
	FORMAT crf_version_ActMon $8.;

	INFORMAT obsdate_achqdat YYMMDD10.;
	FORMAT obsdate_achqdat YYMMDD10.;

	INFORMAT blank_ActMon $1.;
	FORMAT blank_ActMon $1.;

	INFORMAT achqtid BEST32.;
	FORMAT achqtid BEST12.;

	INFORMAT achq01 BEST32.;
	FORMAT achq01 BEST12.;

	INFORMAT achq01a $55.;
	FORMAT achq01a $55.;

	INFORMAT comment_ActMon $434.;
	FORMAT comment_ActMon $434.;

	INFORMAT achq02a $6.;
	FORMAT achq02a $6.;

	INFORMAT achq02ap BEST32.;
	FORMAT achq02ap BEST12.;

	INFORMAT achq02b YYMMDD10.;
	FORMAT achq02b YYMMDD10.;

	INFORMAT achq02c $7.;
	FORMAT achq02c $7.;

	INFORMAT achq02cp BEST32.;
	FORMAT achq02cp BEST12.;

	INFORMAT achq02d YYMMDD10.;
	FORMAT achq02d YYMMDD10.;

	INFORMAT achq03 BEST32.;
	FORMAT achq03 BEST12.;

	INFORMAT achq03a $42.;
	FORMAT achq03a $42.;

	INFORMAT achq04 BEST32.;
	FORMAT achq04 BEST12.;

	INFORMAT achq04a $64.;
	FORMAT achq04a $64.;

	INFORMAT achq05 BEST32.;
	FORMAT achq05 BEST12.;

	INFORMAT achq05a $51.;
	FORMAT achq05a $51.;

	INFORMAT achq11 BEST32.;
	FORMAT achq11 BEST12.;

	INFORMAT achq11a BEST32.;
	FORMAT achq11a BEST12.;

	INFORMAT achq12 BEST32.;
	FORMAT achq12 BEST12.;

	INFORMAT achq13 BEST32.;
	FORMAT achq13 BEST12.;

	INFORMAT achq13a BEST32.;
	FORMAT achq13a BEST12.;

	INFORMAT achq13b BEST32.;
	FORMAT achq13b BEST12.;

	INFORMAT achq13c BEST32.;
	FORMAT achq13c BEST12.;

	INFORMAT achq14 BEST32.;
	FORMAT achq14 BEST12.;

	INFORMAT achq15 BEST32.;
	FORMAT achq15 BEST12.;

	INFORMAT achq16 BEST32.;
	FORMAT achq16 BEST12.;

	INFORMAT achq17 BEST32.;
	FORMAT achq17 BEST12.;

	INFORMAT achq18 BEST32.;
	FORMAT achq18 BEST12.;

	INFORMAT achq18a YYMMDD10.;
	FORMAT achq18a YYMMDD10.;

	INFORMAT achq18b $7.;
	FORMAT achq18b $7.;

	INFORMAT achq18bp BEST32.;
	FORMAT achq18bp BEST12.;

	INFORMAT achq18c $6.;
	FORMAT achq18c $6.;

	INFORMAT achq18cp BEST32.;
	FORMAT achq18cp BEST12.;

	INFORMAT achq18d YYMMDD10.;
	FORMAT achq18d YYMMDD10.;

	INFORMAT achq18e $6.;
	FORMAT achq18e $6.;

	INFORMAT achq18ep BEST32.;
	FORMAT achq18ep BEST12.;

	INFORMAT achq18f $7.;
	FORMAT achq18f $7.;

	INFORMAT achq18fp BEST32.;
	FORMAT achq18fp BEST12.;

	INFORMAT achq18g YYMMDD10.;
	FORMAT achq18g YYMMDD10.;

	INFORMAT achq18h $7.;
	FORMAT achq18h $7.;

	INFORMAT achq18hp BEST32.;
	FORMAT achq18hp BEST12.;

	INFORMAT achq18i $7.;
	FORMAT achq18i $7.;

	INFORMAT achq18ip BEST32.;
	FORMAT achq18ip BEST12.;

	INFORMAT achq01a1a_2 BEST32.;
	FORMAT achq01a1a_2 BEST12.;

	INFORMAT achq01a1a BEST32.;
	FORMAT achq01a1a BEST12.;

	INFORMAT achq01a1b BEST32.;
	FORMAT achq01a1b BEST12.;

	INFORMAT auto_id_ActMon BEST32.;
	FORMAT auto_id_ActMon BEST12.;

	INFORMAT crf_parent_name_ActMon $21.;
	FORMAT crf_parent_name_ActMon $21.;

	INFORMAT study_name_ActMon $4.;
	FORMAT study_name_ActMon $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_ActMon
		obsdate_achqdat
		blank_ActMon
		achqtid
		achq01
		achq01a
		comment_ActMon
		achq02a
		achq02ap
		achq02b
		achq02c
		achq02cp
		achq02d
		achq03
		achq03a
		achq04
		achq04a
		achq05
		achq05a
		achq11
		achq11a
		achq12
		achq13
		achq13a
		achq13b
		achq13c
		achq14
		achq15
		achq16
		achq17
		achq18
		achq18a
		achq18b
		achq18bp
		achq18c
		achq18cp
		achq18d
		achq18e
		achq18ep
		achq18f
		achq18fp
		achq18g
		achq18h
		achq18hp
		achq18i
		achq18ip
		achq01a1a_2
		achq01a1a
		achq01a1b
		auto_id_ActMon
		crf_parent_name_ActMon
		study_name_ActMon
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
		crf_version_ActMon = "CRF Version"
		obsdate_achqdat = "Date Completed"
		blank_ActMon = "Blank Form"
		achqtid = "Tester ID"
		achq01 = "Actiwatch or Actigraph done"
		achq01a = "Other RND specify"
		comment_ActMon = "Comment"
		achq02a = "Hook up begin time"
		achq02ap = "Hook up begin time am pm"
		achq02b = "Hook up begin date"
		achq02c = "Hook up end time"
		achq02cp = "Hook up end time am pm"
		achq02d = "Hook up end date"
		achq03 = "Was Actiheart data completed upon return of the monitor"
		achq03a = "Data Other RND"
		achq04 = "Diary completed upon return"
		achq04a = "Diary Other RND"
		achq05 = "Post Questionnaire completed upon return"
		achq05a = "Post Questionnaire Other RND"
		achq11 = "Was the amount and intensity of your physical activity in the past seven days typical"
		achq11a = "If not were you more or less active than usual"
		achq12 = "Was your physical activity limited by any temporary illness or injury?"
		achq13 = "Did you swim or engage in any other physical exercise without wearing the Activity"
		achq13a = "Number of times without device"
		achq13b = "Hours without device"
		achq13c = "Intensity of activity without device"
		achq14 = "How much of the time during the past seven days did you feel you had a lot of energy"
		achq15 = "Past seven days how often have you felt unusually tired during the day"
		achq16 = "Rate how weak did you feel during the past seven days"
		achq17 = "Rate energy level during past seven days"
		achq18 = "In the past seven days did you ever exercise to the point of exhaustion"
		achq18a = "Activity 1 date"
		achq18b = "Activity 1 begin time"
		achq18bp = "Activity 1 begin time am pm"
		achq18c = "Activity 1 end time"
		achq18cp = "Activity 1 end time am pm"
		achq18d = "Activity 2 date"
		achq18e = "Activity 2 begin time"
		achq18ep = "Activity 2 begin time am pm"
		achq18f = "Activity 2 end time"
		achq18fp = "Activity 2 end time am pm"
		achq18g = "Activity 3 date"
		achq18h = "Activity 3 begin time"
		achq18hp = "Activity 3 begin time am pm"
		achq18i = "Activity 3 end time"
		achq18ip = "Activity 3 end time am pm"
		achq01a1a_2 = "Which device"
		achq01a1a = "Which device"
		achq01a1b = "DLW Done"
		auto_id_ActMon = "Unique Teleform Number"
		crf_parent_name_ActMon = "CRF Parent Name"
		study_name_ActMon = "Study Name"
	;
	FORMAT
		achq01 achq01_.
		achq02ap achq02ap_.
		achq02cp achq02cp_.
		achq03 achq03_.
		achq04 achq04_.
		achq05 achq05_.
		achq11 achq11_.
		achq11a achq11a_.
		achq12 achq12_.
		achq13 achq13_.
		achq13c achq13c_.
		achq14 achq14_.
		achq15 achq15_.
		achq16 achq16_.
		achq17 achq17_.
		achq18 achq18_.
		achq18bp achq18bp_.
		achq18cp achq18cp_.
		achq18ep achq18ep_.
		achq18fp achq18fp_.
		achq18hp achq18hp_.
		achq18ip achq18ip_.
		achq01a1a_2 achq01a1a_2_.
		achq01a1a achq01a1a_.
		achq01a1b achq01a1b_.
	;
RUN;


DATA blsa_activity_monitor;
    SET WORK.IMPORT;
RUN;
