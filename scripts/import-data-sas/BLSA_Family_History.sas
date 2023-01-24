%let path_to_file = '../data-csv/BLSA_Family_History.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE fatheralive_
		1 = 'Alive'
		2 = 'Deceased'
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

	INFORMAT crf_version_FamHis $7.;
	FORMAT crf_version_FamHis $7.;

	INFORMAT paternalbirthage BEST32.;
	FORMAT paternalbirthage BEST12.;

	INFORMAT fatheralive BEST32.;
	FORMAT fatheralive BEST12.;

	INFORMAT paternalcurrentage BEST32.;
	FORMAT paternalcurrentage BEST12.;

	INFORMAT crf_parent_name_FamHis $19.;
	FORMAT crf_parent_name_FamHis $19.;

	INFORMAT study_name_FamHis $4.;
	FORMAT study_name_FamHis $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_FamHis
		paternalbirthage
		fatheralive
		paternalcurrentage
		crf_parent_name_FamHis
		study_name_FamHis
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
		crf_version_FamHis = "CRF Version"
		paternalbirthage = "Paternal age at birth"
		fatheralive = "Is Father still alive"
		paternalcurrentage = "Paternal current age"
		crf_parent_name_FamHis = "CRF Parent Name"
		study_name_FamHis = "Study Name"
	;
	FORMAT
		fatheralive fatheralive_.
	;
RUN;


DATA blsa_family_history;
    SET WORK.IMPORT;
RUN;
