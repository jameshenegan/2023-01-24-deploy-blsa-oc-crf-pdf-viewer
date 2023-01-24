%let path_to_file = '../data-csv/BLSA_Swallowing_Questionnaire.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE swaq01_
		0 = 'Never'
		1 = 'Sometimes'
		2 = 'Always'
	;

	VALUE swaq02_
		0 = 'Never'
		1 = 'Sometimes'
		2 = 'Always'
	;

	VALUE swaq03_
		0 = 'Never'
		1 = 'Sometimes'
		2 = 'Always'
	;

	VALUE swaq04_
		0 = 'Never'
		1 = 'Sometimes'
		2 = 'Always'
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

	INFORMAT crf_version_SwaQue $7.;
	FORMAT crf_version_SwaQue $7.;

	INFORMAT obsdate_swadate YYMMDD10.;
	FORMAT obsdate_swadate YYMMDD10.;

	INFORMAT blank_SwaQue $1.;
	FORMAT blank_SwaQue $1.;

	INFORMAT swatid BEST32.;
	FORMAT swatid BEST12.;

	INFORMAT swaq01 BEST32.;
	FORMAT swaq01 BEST12.;

	INFORMAT swaq02 BEST32.;
	FORMAT swaq02 BEST12.;

	INFORMAT swaq03 BEST32.;
	FORMAT swaq03 BEST12.;

	INFORMAT swaq04 BEST32.;
	FORMAT swaq04 BEST12.;

	INFORMAT auto_id_SwaQue BEST32.;
	FORMAT auto_id_SwaQue BEST12.;

	INFORMAT crf_parent_name_SwaQue $29.;
	FORMAT crf_parent_name_SwaQue $29.;

	INFORMAT study_name_SwaQue $4.;
	FORMAT study_name_SwaQue $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_SwaQue
		obsdate_swadate
		blank_SwaQue
		swatid
		swaq01
		swaq02
		swaq03
		swaq04
		auto_id_SwaQue
		crf_parent_name_SwaQue
		study_name_SwaQue
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
		crf_version_SwaQue = "CRF Version"
		obsdate_swadate = "Date Completed"
		blank_SwaQue = "Blank Form"
		swatid = "Tester ID"
		swaq01 = "Cough when drink liquids"
		swaq02 = "Cough when eat solild food"
		swaq03 = "Need to drink fluids to wash food down"
		swaq04 = "I choke when I take my medication"
		auto_id_SwaQue = "Unique Teleform Number"
		crf_parent_name_SwaQue = "CRF Parent Name"
		study_name_SwaQue = "Study Name"
	;
	FORMAT
		swaq01 swaq01_.
		swaq02 swaq02_.
		swaq03 swaq03_.
		swaq04 swaq04_.
	;
RUN;


DATA blsa_swallowing_questionnaire;
    SET WORK.IMPORT;
RUN;
