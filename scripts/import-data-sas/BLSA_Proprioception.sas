%let path_to_file = '../data-csv/BLSA_Proprioception.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE pro01_
		0 = 'Not attempted'
		1 = 'Attempted'
	;

	VALUE pro01a_
		1 = 'Not enough time/not scheduled'
		10 = 'Lower limb braces ambulatory'
		11 = 'Severely limited ankle range of motion (<10 degree dorsiflexion or plantar flexion)'
		12 = 'Unable to follow directions'
		2 = 'No examiner available'
		3 = 'Technical/equipment problem'
		4 = 'Cognitively impaired'
		5 = 'Unable to stand/walk'
		6 = 'Examiner felt unsafe'
		7 = 'Participant refused'
		8 = 'Other Physical problems'
		9 = 'Lower limb amputations'
	;

	VALUE pro02_
		1 = 'All Correct'
		2 = 'Partially Correct'
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

	INFORMAT crf_version_Pro $8.;
	FORMAT crf_version_Pro $8.;

	INFORMAT obsdate_prodate YYMMDD10.;
	FORMAT obsdate_prodate YYMMDD10.;

	INFORMAT blank_Pro $1.;
	FORMAT blank_Pro $1.;

	INFORMAT protid BEST32.;
	FORMAT protid BEST12.;

	INFORMAT pro01 BEST32.;
	FORMAT pro01 BEST12.;

	INFORMAT pro01a BEST32.;
	FORMAT pro01a BEST12.;

	INFORMAT pro02 BEST32.;
	FORMAT pro02 BEST12.;

	INFORMAT pro02a $1.;
	FORMAT pro02a $1.;

	INFORMAT pro03 $153.;
	FORMAT pro03 $153.;

	INFORMAT auto_id_Pro BEST32.;
	FORMAT auto_id_Pro BEST12.;

	INFORMAT crf_parent_name_Pro $19.;
	FORMAT crf_parent_name_Pro $19.;

	INFORMAT item_group_repeat_Pro BEST32.;
	FORMAT item_group_repeat_Pro BEST12.;

	INFORMAT pro02a_1 BEST32.;
	FORMAT pro02a_1 BEST12.;

	INFORMAT pro02a_2 BEST32.;
	FORMAT pro02a_2 BEST12.;

	INFORMAT pro02a_3 BEST32.;
	FORMAT pro02a_3 BEST12.;

	INFORMAT study_name_Pro $4.;
	FORMAT study_name_Pro $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_Pro
		obsdate_prodate
		blank_Pro
		protid
		pro01
		pro01a
		pro02
		pro02a
		pro03
		auto_id_Pro
		crf_parent_name_Pro
		item_group_repeat_Pro
		pro02a_1
		pro02a_2
		pro02a_3
		study_name_Pro
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
		crf_version_Pro = "CRF Version"
		obsdate_prodate = "Date Completed"
		blank_Pro = "Blank Form"
		protid = "Tester ID"
		pro01 = "Status of Proprioception test"
		pro01a = "Reason test not performed"
		pro02 = "Accuracy in threshold test"
		pro02a = "Partially correct threshold"
		pro03 = "Comments"
		auto_id_Pro = "Unique Teleform Number"
		crf_parent_name_Pro = "CRF Parent Name"
		item_group_repeat_Pro = "Item Group Repeate"
		pro02a_1 = "Partially correct threshold : Threshold 1 (Checkbox Indicator)"
		pro02a_2 = "Partially correct threshold : Threshold 2 (Checkbox Indicator)"
		pro02a_3 = "Partially correct threshold : Threshold 3 (Checkbox Indicator)"
		study_name_Pro = "Study Name"
	;
	FORMAT
		pro01 pro01_.
		pro01a pro01a_.
		pro02 pro02_.
	;
RUN;


DATA blsa_proprioception;
    SET WORK.IMPORT;
RUN;
