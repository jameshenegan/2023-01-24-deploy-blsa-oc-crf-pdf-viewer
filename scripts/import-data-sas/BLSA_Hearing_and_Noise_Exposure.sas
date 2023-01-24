%let path_to_file = '../data-csv/BLSA_Hearing_and_Noise_Exposure.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE hneq01_
		1 = 'Good'
		2 = 'Little trouble'
		3 = 'Lot of trouble'
		4 = 'Deaf'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hneq02_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hneq03_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hneq04_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hneq05_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hneq08_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hneq09_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hneq12_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hneq13r_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hneq13l_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hneq14r_
		1 = 'Auto'
		2 = 'Manual'
		3 = 'Both'
	;

	VALUE hneq14l_
		1 = 'Auto'
		2 = 'Manual'
		3 = 'Both'
	;

	VALUE hneq17_
		1 = 'Good'
		2 = 'Fair'
		3 = 'Poor'
	;

	VALUE hneq18_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hneq19_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hneq19a_
		1 = 'Impacted cerumen'
		2 = 'No time'
		4 = 'Refused'
		5 = 'Unable'
		6 = 'Equipment problem'
		7 = 'No tester'
		8 = 'Not eligible'
		9 = 'Not scheduled/Not applicable'
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

	INFORMAT crf_version_HeaandNoiExp $8.;
	FORMAT crf_version_HeaandNoiExp $8.;

	INFORMAT obsdate_hneqdate YYMMDD10.;
	FORMAT obsdate_hneqdate YYMMDD10.;

	INFORMAT blank_HeaandNoiExp $1.;
	FORMAT blank_HeaandNoiExp $1.;

	INFORMAT hneqtid BEST32.;
	FORMAT hneqtid BEST12.;

	INFORMAT hneq01 BEST32.;
	FORMAT hneq01 BEST12.;

	INFORMAT hneq02 BEST32.;
	FORMAT hneq02 BEST12.;

	INFORMAT hneq03 BEST32.;
	FORMAT hneq03 BEST12.;

	INFORMAT hneq04 BEST32.;
	FORMAT hneq04 BEST12.;

	INFORMAT hneq05 BEST32.;
	FORMAT hneq05 BEST12.;

	INFORMAT hneq06 $6.;
	FORMAT hneq06 $6.;

	INFORMAT hneq07 BEST32.;
	FORMAT hneq07 BEST12.;

	INFORMAT hneq08 BEST32.;
	FORMAT hneq08 BEST12.;

	INFORMAT hneq09 BEST32.;
	FORMAT hneq09 BEST12.;

	INFORMAT hneq10 $5.;
	FORMAT hneq10 $5.;

	INFORMAT hneq11 BEST32.;
	FORMAT hneq11 BEST12.;

	INFORMAT hneq12 BEST32.;
	FORMAT hneq12 BEST12.;

	INFORMAT hneq13r BEST32.;
	FORMAT hneq13r BEST12.;

	INFORMAT hneq13l BEST32.;
	FORMAT hneq13l BEST12.;

	INFORMAT hneq14tid $5.;
	FORMAT hneq14tid $5.;

	INFORMAT hneq14r BEST32.;
	FORMAT hneq14r BEST12.;

	INFORMAT hneq14r0 BEST32.;
	FORMAT hneq14r0 BEST12.;

	INFORMAT hneq14r1 BEST32.;
	FORMAT hneq14r1 BEST12.;

	INFORMAT hneq14rt1 BEST32.;
	FORMAT hneq14rt1 BEST12.;

	INFORMAT hneq14r2 BEST32.;
	FORMAT hneq14r2 BEST12.;

	INFORMAT hneq14r4 BEST32.;
	FORMAT hneq14r4 BEST12.;

	INFORMAT hneq14r8 BEST32.;
	FORMAT hneq14r8 BEST12.;

	INFORMAT hneq14l BEST32.;
	FORMAT hneq14l BEST12.;

	INFORMAT hneq14l0 BEST32.;
	FORMAT hneq14l0 BEST12.;

	INFORMAT hneq14l1 BEST32.;
	FORMAT hneq14l1 BEST12.;

	INFORMAT hneq14lt1 BEST32.;
	FORMAT hneq14lt1 BEST12.;

	INFORMAT hneq14l2 BEST32.;
	FORMAT hneq14l2 BEST12.;

	INFORMAT hneq14l4 NLNUM32.;
	FORMAT hneq14l4 NLNUM12.;

	INFORMAT hneq14l8 BEST32.;
	FORMAT hneq14l8 BEST12.;

	INFORMAT hneq15r BEST32.;
	FORMAT hneq15r BEST12.;

	INFORMAT hneq15l BEST32.;
	FORMAT hneq15l BEST12.;

	INFORMAT hneq16s1 BEST32.;
	FORMAT hneq16s1 BEST12.;

	INFORMAT hneq16s2 NLNUM32.;
	FORMAT hneq16s2 NLNUM12.;

	INFORMAT hneq17 BEST32.;
	FORMAT hneq17 BEST12.;

	INFORMAT hneq18 BEST32.;
	FORMAT hneq18 BEST12.;

	INFORMAT hneq19 BEST32.;
	FORMAT hneq19 BEST12.;

	INFORMAT hneq19a BEST32.;
	FORMAT hneq19a BEST12.;

	INFORMAT auto_id_HeaandNoiExp BEST32.;
	FORMAT auto_id_HeaandNoiExp BEST12.;

	INFORMAT crf_parent_name_HeaandNoiExp $31.;
	FORMAT crf_parent_name_HeaandNoiExp $31.;

	INFORMAT study_name_HeaandNoiExp $4.;
	FORMAT study_name_HeaandNoiExp $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_HeaandNoiExp
		obsdate_hneqdate
		blank_HeaandNoiExp
		hneqtid
		hneq01
		hneq02
		hneq03
		hneq04
		hneq05
		hneq06
		hneq07
		hneq08
		hneq09
		hneq10
		hneq11
		hneq12
		hneq13r
		hneq13l
		hneq14tid
		hneq14r
		hneq14r0
		hneq14r1
		hneq14rt1
		hneq14r2
		hneq14r4
		hneq14r8
		hneq14l
		hneq14l0
		hneq14l1
		hneq14lt1
		hneq14l2
		hneq14l4
		hneq14l8
		hneq15r
		hneq15l
		hneq16s1
		hneq16s2
		hneq17
		hneq18
		hneq19
		hneq19a
		auto_id_HeaandNoiExp
		crf_parent_name_HeaandNoiExp
		study_name_HeaandNoiExp
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
		crf_version_HeaandNoiExp = "CRF Version"
		obsdate_hneqdate = "Date Completed"
		blank_HeaandNoiExp = "Blank Form"
		hneqtid = "Tester ID"
		hneq01 = "Describe hearing without hearing aid"
		hneq02 = "Ever used firearms"
		hneq03 = "Had a job where you were exposed to loud nose for 5 or more hours a week"
		hneq04 = "Outside of a job have you been exposed to steady loud noise or music for 5 or more hours a week"
		hneq05 = "Do you currently use a hearing aid in your right ear"
		hneq06 = "How many years have you been using a hearing aid in your right ear"
		hneq07 = "How many hours per day have you worn hearing aid in your right ear over the past month"
		hneq08 = "Ever had surgery in yor right ear"
		hneq09 = "Do you currently use a hearing aid in your left ear"
		hneq10 = "How many years have you been using a hearing aid in your left ear"
		hneq11 = "How many hours per day have you worn hearing aid in your Left ear over the past month"
		hneq12 = "Ever had surgery in yor Left ear"
		hneq13r = "Otoscopic Examination outcome right ear"
		hneq13l = "Otoscopic Examination outcome left ear"
		hneq14tid = "Tester ID Hearing Tests"
		hneq14r = "Audiometric Thresholds Right Ear"
		hneq14r0 = "Audiometric Thresholds Right Ear 05 KHz"
		hneq14r1 = "Audiometric Thresholds Right Ear 1 KHz"
		hneq14rt1 = "Audiometric Thresholds Right Ear 1 KHz Retest"
		hneq14r2 = "Audiometric Thresholds Right Ear 2 KHz"
		hneq14r4 = "Audiometric Thresholds Right Ear 4 KHz"
		hneq14r8 = "Audiometric Thresholds Right Ear 8 KHz"
		hneq14l = "Audiometric Thresholds Left Ear"
		hneq14l0 = "Audiometric Thresholds Left Ear 05 KHz"
		hneq14l1 = "Audiometric Thresholds Left Ear 1 KHz"
		hneq14lt1 = "Audiometric Thresholds Left Ear 1 KHz Retest"
		hneq14l2 = "Audiometric Thresholds Left Ear 2 KHz"
		hneq14l4 = "Audiometric Thresholds Left Ear 4 KHz"
		hneq14l8 = "Audiometric Thresholds Left Ear 8 KHz"
		hneq15r = "Speech Discrimination Score Right Ear"
		hneq15l = "Speech Discrimination Score Left Ear"
		hneq16s1 = "QuickSIN List 1 Track 3"
		hneq16s2 = "QuickSIN List 2 Track 4"
		hneq17 = "Patient reliability with Audiometric Testing"
		hneq18 = "Manual Audiometric Test performed"
		hneq19 = "Was hearing test completed"
		hneq19a = "Hearing test RND"
		auto_id_HeaandNoiExp = "Unique Teleform Number"
		crf_parent_name_HeaandNoiExp = "CRF Parent Name"
		study_name_HeaandNoiExp = "Study Name"
	;
	FORMAT
		hneq01 hneq01_.
		hneq02 hneq02_.
		hneq03 hneq03_.
		hneq04 hneq04_.
		hneq05 hneq05_.
		hneq08 hneq08_.
		hneq09 hneq09_.
		hneq12 hneq12_.
		hneq13r hneq13r_.
		hneq13l hneq13l_.
		hneq14r hneq14r_.
		hneq14l hneq14l_.
		hneq17 hneq17_.
		hneq18 hneq18_.
		hneq19 hneq19_.
		hneq19a hneq19a_.
	;
RUN;


DATA blsa_hearing_and_noise_exposure;
    SET WORK.IMPORT;
RUN;
