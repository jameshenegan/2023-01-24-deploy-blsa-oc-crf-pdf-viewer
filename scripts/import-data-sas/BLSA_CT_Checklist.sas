%let path_to_file = '../data-csv/BLSA_CT_Checklist.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ctckdne_
		1 = 'Yes'
		555 = 'Physical problems'
		666 = 'Cognitive problems'
		888 = 'Refused'
		999 = 'Technical problems'
	;

	VALUE ctchk1a_
		1 = 'am'
		2 = 'pm'
	;

	VALUE ctchk14a_
		1 = 'am'
		2 = 'pm'
	;

	VALUE ctchk_lr_
		1 = 'Right'
		2 = 'Left'
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

	INFORMAT crf_version_CTChe $8.;
	FORMAT crf_version_CTChe $8.;

	INFORMAT obsdate_ctckdte YYMMDD10.;
	FORMAT obsdate_ctckdte YYMMDD10.;

	INFORMAT ctcktid BEST32.;
	FORMAT ctcktid BEST12.;

	INFORMAT blank_CTChe $1.;
	FORMAT blank_CTChe $1.;

	INFORMAT ct_er_scan $1.;
	FORMAT ct_er_scan $1.;

	INFORMAT ctckdne BEST32.;
	FORMAT ctckdne BEST12.;

	INFORMAT ctchk1 $5.;
	FORMAT ctchk1 $5.;

	INFORMAT ctchk1a BEST32.;
	FORMAT ctchk1a BEST12.;

	INFORMAT ctchk8a BEST32.;
	FORMAT ctchk8a BEST12.;

	INFORMAT ctchk8b BEST32.;
	FORMAT ctchk8b BEST12.;

	INFORMAT ctchk8c BEST32.;
	FORMAT ctchk8c BEST12.;

	INFORMAT ctchk8d BEST32.;
	FORMAT ctchk8d BEST12.;

	INFORMAT ctchk8e BEST32.;
	FORMAT ctchk8e BEST12.;

	INFORMAT ctchk8f BEST32.;
	FORMAT ctchk8f BEST12.;

	INFORMAT ctchk8g BEST32.;
	FORMAT ctchk8g BEST12.;

	INFORMAT ctchk8h BEST32.;
	FORMAT ctchk8h BEST12.;

	INFORMAT ctchk14 $5.;
	FORMAT ctchk14 $5.;

	INFORMAT ctchk14a BEST32.;
	FORMAT ctchk14a BEST12.;

	INFORMAT comments_CTChe $88.;
	FORMAT comments_CTChe $88.;

	INFORMAT ctchk_lr BEST32.;
	FORMAT ctchk_lr BEST12.;

	INFORMAT auto_id_CTChe BEST32.;
	FORMAT auto_id_CTChe BEST12.;

	INFORMAT crf_parent_name_CTChe $17.;
	FORMAT crf_parent_name_CTChe $17.;

	INFORMAT crf_status_CTChe $19.;
	FORMAT crf_status_CTChe $19.;

	INFORMAT study_name_CTChe $4.;
	FORMAT study_name_CTChe $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_CTChe
		obsdate_ctckdte
		ctcktid
		blank_CTChe
		ct_er_scan
		ctckdne
		ctchk1
		ctchk1a
		ctchk8a
		ctchk8b
		ctchk8c
		ctchk8d
		ctchk8e
		ctchk8f
		ctchk8g
		ctchk8h
		ctchk14
		ctchk14a
		comments_CTChe
		ctchk_lr
		auto_id_CTChe
		crf_parent_name_CTChe
		crf_status_CTChe
		study_name_CTChe
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
		crf_version_CTChe = "CRF Version"
		obsdate_ctckdte = "Date Completed"
		ctcktid = "Tester ID"
		blank_CTChe = "Blank Form"
		ct_er_scan = "ER Scanner"
		ctckdne = "CT scan done"
		ctchk1 = "Initial time"
		ctchk1a = "Initial time am pm"
		ctchk8a = "Measurement A"
		ctchk8b = "Measurement B"
		ctchk8c = "Measurement C"
		ctchk8d = "Measurement D"
		ctchk8e = "Calculate E"
		ctchk8f = "Calculate F"
		ctchk8g = "Calculate G"
		ctchk8h = "Calculate H"
		ctchk14 = "Completion of questioner final time"
		ctchk14a = "Completion Of Questioner Final Time am pm"
		comments_CTChe = "Comments"
		ctchk_lr = "Which leg scanned"
		auto_id_CTChe = "Unique Teleform Number"
		crf_parent_name_CTChe = "CRF Parent Name"
		crf_status_CTChe = "CRF Status"
		study_name_CTChe = "Study Name"
	;
	FORMAT
		ctckdne ctckdne_.
		ctchk1a ctchk1a_.
		ctchk14a ctchk14a_.
		ctchk_lr ctchk_lr_.
	;
RUN;


DATA blsa_ct_checklist;
    SET WORK.IMPORT;
RUN;
