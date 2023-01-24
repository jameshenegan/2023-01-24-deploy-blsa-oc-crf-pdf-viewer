%let path_to_file = '../data-csv/BLSA_Intestinal_Permeability.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE timeampm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE done_IntPer_
		0 = 'Not Done'
		1 = 'Done'
	;

	VALUE reasonnd_
		1 = 'Refused'
		2 = 'Not Eligible'
		3 = 'Technical'
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

	INFORMAT crf_version_IntPer $7.;
	FORMAT crf_version_IntPer $7.;

	INFORMAT obsdate_dategiven YYMMDD10.;
	FORMAT obsdate_dategiven YYMMDD10.;

	INFORMAT testerid_IntPer BEST32.;
	FORMAT testerid_IntPer BEST12.;

	INFORMAT blank_IntPer $1.;
	FORMAT blank_IntPer $1.;

	INFORMAT amount BEST32.;
	FORMAT amount BEST12.;

	INFORMAT timedispensed $5.;
	FORMAT timedispensed $5.;

	INFORMAT timeampm BEST32.;
	FORMAT timeampm BEST12.;

	INFORMAT done_IntPer BEST32.;
	FORMAT done_IntPer BEST12.;

	INFORMAT reasonnd BEST32.;
	FORMAT reasonnd BEST12.;

	INFORMAT ua_volume BEST32.;
	FORMAT ua_volume BEST12.;

	INFORMAT comment_IntPer $143.;
	FORMAT comment_IntPer $143.;

	INFORMAT crf_parent_name_IntPer $28.;
	FORMAT crf_parent_name_IntPer $28.;

	INFORMAT study_name_IntPer $4.;
	FORMAT study_name_IntPer $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_IntPer
		obsdate_dategiven
		testerid_IntPer
		blank_IntPer
		amount
		timedispensed
		timeampm
		done_IntPer
		reasonnd
		ua_volume
		comment_IntPer
		crf_parent_name_IntPer
		study_name_IntPer
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
		crf_version_IntPer = "CRF Version"
		obsdate_dategiven = "Date Given"
		testerid_IntPer = "Tester ID"
		blank_IntPer = "Blank Form"
		amount = "Amount of PEG given"
		timedispensed = "Time dispensed"
		timeampm = "Time ampm"
		done_IntPer = "Done not done"
		reasonnd = "Reason not done"
		ua_volume = "UA 24 hr Volume"
		comment_IntPer = "Comment"
		crf_parent_name_IntPer = "CRF Parent Name"
		study_name_IntPer = "Study Name"
	;
	FORMAT
		timeampm timeampm_.
		done_IntPer done_IntPer_.
		reasonnd reasonnd_.
	;
RUN;


DATA blsa_intestinal_permeability;
    SET WORK.IMPORT;
RUN;
