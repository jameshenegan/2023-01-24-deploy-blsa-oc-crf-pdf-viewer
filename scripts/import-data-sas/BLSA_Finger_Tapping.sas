%let path_to_file = '../data-csv/BLSA_Finger_Tapping.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ftt01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE fttdone_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ftt02a_
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

	INFORMAT crf_version_FinTap $7.;
	FORMAT crf_version_FinTap $7.;

	INFORMAT obsdate_fttdate YYMMDD10.;
	FORMAT obsdate_fttdate YYMMDD10.;

	INFORMAT blank_FinTap $1.;
	FORMAT blank_FinTap $1.;

	INFORMAT ftttid BEST32.;
	FORMAT ftttid BEST12.;

	INFORMAT ftt01 BEST32.;
	FORMAT ftt01 BEST12.;

	INFORMAT fttdone BEST32.;
	FORMAT fttdone BEST12.;

	INFORMAT ftt02a BEST32.;
	FORMAT ftt02a BEST12.;

	INFORMAT ftt02b $133.;
	FORMAT ftt02b $133.;

	INFORMAT auto_id_FinTap BEST32.;
	FORMAT auto_id_FinTap BEST12.;

	INFORMAT crf_parent_name_FinTap $19.;
	FORMAT crf_parent_name_FinTap $19.;

	INFORMAT study_name_FinTap $4.;
	FORMAT study_name_FinTap $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_FinTap
		obsdate_fttdate
		blank_FinTap
		ftttid
		ftt01
		fttdone
		ftt02a
		ftt02b
		auto_id_FinTap
		crf_parent_name_FinTap
		study_name_FinTap
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
		crf_version_FinTap = "CRF Version"
		obsdate_fttdate = "Date Completed"
		blank_FinTap = "Blank Form"
		ftttid = "Tester ID"
		ftt01 = "Does the participant have physical hand problems"
		fttdone = "Was finger tapping completed"
		ftt02a = "Reason test not performed or unsatisfactory"
		ftt02b = "Other Reason test not done"
		auto_id_FinTap = "Unique Teleform Number"
		crf_parent_name_FinTap = "CRF Parent Name"
		study_name_FinTap = "Study Name"
	;
	FORMAT
		ftt01 ftt01_.
		fttdone fttdone_.
		ftt02a ftt02a_.
	;
RUN;


DATA blsa_finger_tapping;
    SET WORK.IMPORT;
RUN;
