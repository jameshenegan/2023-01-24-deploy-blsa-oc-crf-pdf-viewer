%let path_to_file = '../data-csv/BLSA_Nerve_Sensitivity.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE nrvs02_
		0 = 'Right'
		1 = 'Left'
	;

	VALUE nrvs02a_
		1 = 'Amputation'
		2 = 'Ulcer'
		3 = 'Trauma or surgery (including knee replacement)'
		9 = 'Other please specify'
	;

	VALUE nrvsdon_
		1 = 'Yes'
		5 = 'Physical problems'
		6 = 'Cognitive problems'
		7 = 'Refused'
		9 = 'Technical problems'
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

	INFORMAT crf_version_NerSen $7.;
	FORMAT crf_version_NerSen $7.;

	INFORMAT obsdate_nrvsdat YYMMDD10.;
	FORMAT obsdate_nrvsdat YYMMDD10.;

	INFORMAT blank_NerSen $1.;
	FORMAT blank_NerSen $1.;

	INFORMAT nrvstid BEST32.;
	FORMAT nrvstid BEST12.;

	INFORMAT nrvs01a BEST32.;
	FORMAT nrvs01a BEST12.;

	INFORMAT nrvs01b BEST32.;
	FORMAT nrvs01b BEST12.;

	INFORMAT nrvs01c BEST32.;
	FORMAT nrvs01c BEST12.;

	INFORMAT nrvs02 BEST32.;
	FORMAT nrvs02 BEST12.;

	INFORMAT nrvs02a BEST32.;
	FORMAT nrvs02a BEST12.;

	INFORMAT nrvs02b $30.;
	FORMAT nrvs02b $30.;

	INFORMAT nrvsdon BEST32.;
	FORMAT nrvsdon BEST12.;

	INFORMAT crf_parent_name_NerSen $22.;
	FORMAT crf_parent_name_NerSen $22.;

	INFORMAT study_name_NerSen $4.;
	FORMAT study_name_NerSen $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_NerSen
		obsdate_nrvsdat
		blank_NerSen
		nrvstid
		nrvs01a
		nrvs01b
		nrvs01c
		nrvs02
		nrvs02a
		nrvs02b
		nrvsdon
		crf_parent_name_NerSen
		study_name_NerSen
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
		crf_version_NerSen = "CRF Version"
		obsdate_nrvsdat = "Date Completed"
		blank_NerSen = "Blank Form"
		nrvstid = "Tester ID"
		nrvs01a = "Foot temperature at start of study"
		nrvs01b = "Foot temperature following heating:"
		nrvs01c = "Foot temperature at end of tests:"
		nrvs02 = "Which leg was tested"
		nrvs02a = "Why wasn't right let tested"
		nrvs02b = "Other reason R leg not tested"
		nrvsdon = "Was test done"
		crf_parent_name_NerSen = "CRF Parent Name"
		study_name_NerSen = "Study Name"
	;
	FORMAT
		nrvs02 nrvs02_.
		nrvs02a nrvs02a_.
		nrvsdon nrvsdon_.
	;
RUN;


DATA blsa_nerve_sensitivity;
    SET WORK.IMPORT;
RUN;
