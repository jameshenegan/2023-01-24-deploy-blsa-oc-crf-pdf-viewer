%let path_to_file = '../data-csv/BLSA_Capacity_Assessment.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE q1rating_
		1 = '1. Able to give informed consent at this time'
		2 = '2. Unable to give informed consent at this time'
		3 = '3. Questionable (unsure) ability to give informed consent at this time'
	;

	VALUE q2rating_
		1 = '1. Able to give informed consent at this time'
		2 = '2. Unable to give informed consent at this time'
		3 = '3. Questionable (unsure) ability to give informed consent at this time'
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

	INFORMAT crf_version_CapAss $7.;
	FORMAT crf_version_CapAss $7.;

	INFORMAT date_CapAss YYMMDD10.;
	FORMAT date_CapAss YYMMDD10.;

	INFORMAT testerid_CapAss BEST32.;
	FORMAT testerid_CapAss BEST12.;

	INFORMAT q1purpose $87.;
	FORMAT q1purpose $87.;

	INFORMAT q1comments $92.;
	FORMAT q1comments $92.;

	INFORMAT q1rating BEST32.;
	FORMAT q1rating BEST12.;

	INFORMAT q2nametests $113.;
	FORMAT q2nametests $113.;

	INFORMAT q2comments $99.;
	FORMAT q2comments $99.;

	INFORMAT q2rating BEST32.;
	FORMAT q2rating BEST12.;

	INFORMAT q3riskfactors $88.;
	FORMAT q3riskfactors $88.;

	INFORMAT q3comments $268.;
	FORMAT q3comments $268.;

	INFORMAT crf_parent_name_CapAss $24.;
	FORMAT crf_parent_name_CapAss $24.;

	INFORMAT study_name_CapAss $4.;
	FORMAT study_name_CapAss $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_CapAss
		date_CapAss
		testerid_CapAss
		q1purpose
		q1comments
		q1rating
		q2nametests
		q2comments
		q2rating
		q3riskfactors
		q3comments
		crf_parent_name_CapAss
		study_name_CapAss
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
		crf_version_CapAss = "CRF Version"
		date_CapAss = "Date"
		testerid_CapAss = "Tester ID"
		q1purpose = "What is the purpose of this research"
		q1comments = "Purpose Raters comments"
		q1rating = "Purpose Raters Rating"
		q2nametests = "Can you name 3 tests that you performed at your last visit"
		q2comments = "Name tests comment"
		q2rating = "Name tests Raters Rating"
		q3riskfactors = "Based on your answer above can you name a risk factor for one of those tests"
		q3comments = "Risk factor comment"
		crf_parent_name_CapAss = "CRF Parent Name"
		study_name_CapAss = "Study Name"
	;
	FORMAT
		q1rating q1rating_.
		q2rating q2rating_.
	;
RUN;


DATA blsa_capacity_assessment;
    SET WORK.IMPORT;
RUN;
