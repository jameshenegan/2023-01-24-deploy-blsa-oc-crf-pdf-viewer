%let path_to_file = '../data-csv/BLSA_TM_Stress_Blood.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE tmsb_done_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tmsb_rnd_
		1 = 'Refused'
		2 = 'Unable'
		3 = 'Not Scheduled'
		4 = 'Other'
	;

	VALUE tmsb_samples_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tmsb_rnc_
		1 = 'IV access'
		2 = 'Refused'
		3 = 'Other'
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

	INFORMAT crf_version_TMStrBlo $8.;
	FORMAT crf_version_TMStrBlo $8.;

	INFORMAT obsdate_tmsb YYMMDD10.;
	FORMAT obsdate_tmsb YYMMDD10.;

	INFORMAT tmsb_done BEST32.;
	FORMAT tmsb_done BEST12.;

	INFORMAT tmsb_rnd BEST32.;
	FORMAT tmsb_rnd BEST12.;

	INFORMAT tmsb_comment2 $18.;
	FORMAT tmsb_comment2 $18.;

	INFORMAT tmsb_samples BEST32.;
	FORMAT tmsb_samples BEST12.;

	INFORMAT tmsb_rnc BEST32.;
	FORMAT tmsb_rnc BEST12.;

	INFORMAT crf_parent_name_TMStrBlo $20.;
	FORMAT crf_parent_name_TMStrBlo $20.;

	INFORMAT study_name_TMStrBlo $4.;
	FORMAT study_name_TMStrBlo $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_TMStrBlo
		obsdate_tmsb
		tmsb_done
		tmsb_rnd
		tmsb_comment2
		tmsb_samples
		tmsb_rnc
		crf_parent_name_TMStrBlo
		study_name_TMStrBlo
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
		crf_version_TMStrBlo = "CRF Version"
		obsdate_tmsb = "Date Completed"
		tmsb_done = "Treadmill stress blood completed"
		tmsb_rnd = "TMSB reason not done"
		tmsb_comment2 = "Comment"
		tmsb_samples = "Were all blood draws completed"
		tmsb_rnc = "Reason not completed"
		crf_parent_name_TMStrBlo = "CRF Parent Name"
		study_name_TMStrBlo = "Study Name"
	;
	FORMAT
		tmsb_done tmsb_done_.
		tmsb_rnd tmsb_rnd_.
		tmsb_samples tmsb_samples_.
		tmsb_rnc tmsb_rnc_.
	;
RUN;


DATA blsa_tm_stress_blood;
    SET WORK.IMPORT;
RUN;
