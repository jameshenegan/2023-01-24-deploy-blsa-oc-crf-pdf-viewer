%let path_to_file = '../data-csv/BLSA_Cog_State.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE handprob_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE done_CogSta_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rnd_
		1 = 'Other (please specify)'
		555 = 'Physical problems'
		666 = 'Mental problems'
		777 = 'Physical and mental problems'
		888 = 'Refused'
		999 = 'Technical problems (includes no time or no tester)'
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

	INFORMAT crf_version_CogSta $7.;
	FORMAT crf_version_CogSta $7.;

	INFORMAT date_CogSta YYMMDD10.;
	FORMAT date_CogSta YYMMDD10.;

	INFORMAT blank_CogSta $1.;
	FORMAT blank_CogSta $1.;

	INFORMAT tid_CogSta BEST32.;
	FORMAT tid_CogSta BEST12.;

	INFORMAT randomizationid BEST32.;
	FORMAT randomizationid BEST12.;

	INFORMAT handprob BEST32.;
	FORMAT handprob BEST12.;

	INFORMAT done_CogSta BEST32.;
	FORMAT done_CogSta BEST12.;

	INFORMAT rnd BEST32.;
	FORMAT rnd BEST12.;

	INFORMAT rndother $48.;
	FORMAT rndother $48.;

	INFORMAT crf_parent_name_CogSta $14.;
	FORMAT crf_parent_name_CogSta $14.;

	INFORMAT study_name_CogSta $4.;
	FORMAT study_name_CogSta $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_CogSta
		date_CogSta
		blank_CogSta
		tid_CogSta
		randomizationid
		handprob
		done_CogSta
		rnd
		rndother
		crf_parent_name_CogSta
		study_name_CogSta
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
		crf_version_CogSta = "CRF Version"
		date_CogSta = "Date Completed"
		blank_CogSta = "Blank Form"
		tid_CogSta = "Tester ID"
		randomizationid = "Randomization number"
		handprob = "Does the participant have physical hand problems"
		done_CogSta = "Was Cog State protocol completed"
		rnd = "Reason test not performed or unsatisfactory"
		rndother = "Other Reason test not done"
		crf_parent_name_CogSta = "CRF Parent Name"
		study_name_CogSta = "Study Name"
	;
	FORMAT
		handprob handprob_.
		done_CogSta done_CogSta_.
		rnd rnd_.
	;
RUN;


DATA blsa_cog_state;
    SET WORK.IMPORT;
RUN;
