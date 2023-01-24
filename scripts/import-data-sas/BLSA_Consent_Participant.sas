%let path_to_file = '../data-csv/BLSA_Consent_Participant.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE dna_
		0 = 'NO - I do NOT consent to the DNA collection.'
		1 = 'YES - I consent to the DNA collection.'
	;

	VALUE future_studies2_
		0 = 'NO - Specimens and data may NOT be stored and used for future research studies.'
		1 = 'YES - Specimens and data may be stored and used for future research studies.'
	;

	VALUE future_studies_shared_
		0 = 'NO - Specimens and data may NOT be shared with other researchers and used by these researchers for future research.'
		1 = 'YES - Specimens and data may be shared with other researchers and used by these researchers for future research.'
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

	INFORMAT crf_version_ConPar $7.;
	FORMAT crf_version_ConPar $7.;

	INFORMAT obsdate_consents YYMMDD10.;
	FORMAT obsdate_consents YYMMDD10.;

	INFORMAT entered_by BEST32.;
	FORMAT entered_by BEST12.;

	INFORMAT dna BEST32.;
	FORMAT dna BEST12.;

	INFORMAT systemrecordid BEST32.;
	FORMAT systemrecordid BEST12.;

	INFORMAT future_studies2 BEST32.;
	FORMAT future_studies2 BEST12.;

	INFORMAT future_studies_shared BEST32.;
	FORMAT future_studies_shared BEST12.;

	INFORMAT crf_parent_name_ConPar $25.;
	FORMAT crf_parent_name_ConPar $25.;

	INFORMAT study_name_ConPar $4.;
	FORMAT study_name_ConPar $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_ConPar
		obsdate_consents
		entered_by
		dna
		systemrecordid
		future_studies2
		future_studies_shared
		crf_parent_name_ConPar
		study_name_ConPar
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
		crf_version_ConPar = "CRF Version"
		obsdate_consents = "Date Completed"
		entered_by = "Staffmember entering this Consent"
		dna = "MAYBE, I wish to be re-contacted if further studies with my samples are considered. After the study has been explained, I will then decide if I want my samples to be included."
		systemrecordid = "ID from MySql Consents Table"
		future_studies2 = "YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
		future_studies_shared = "YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
		crf_parent_name_ConPar = "CRF Parent Name"
		study_name_ConPar = "Study Name"
	;
	FORMAT
		dna dna_.
		future_studies2 future_studies2_.
		future_studies_shared future_studies_shared_.
	;
RUN;


DATA blsa_consent_participant;
    SET WORK.IMPORT;
RUN;
