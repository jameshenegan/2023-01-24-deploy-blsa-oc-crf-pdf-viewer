%let path_to_file = '../data-csv/BLSA_Walking_Speed.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE wsup10_
		0 = 'Not attempted unable to walk unaided'
		1 = 'Completes without walking aid'
		7 = 'Participant refused (includes not time/no tester'
	;

	VALUE wsup100_
		0 = 'Not attempted unable to walk unaided'
		1 = 'Completes without walking aid'
		7 = 'Participant refused (includes not time/no tester'
	;

	VALUE wsfp10_
		0 = 'Not attempted unable to walk unaided'
		1 = 'Completes without walking aid'
		7 = 'Participant refused (includes not time/no tester'
	;

	VALUE wsfp100_
		0 = 'Not attempted unable to walk unaided'
		1 = 'Completes without walking aid'
		7 = 'Participant refused (includes not time/no tester'
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

	INFORMAT crf_version_WalSpe $7.;
	FORMAT crf_version_WalSpe $7.;

	INFORMAT obsdate_wsdate YYMMDD10.;
	FORMAT obsdate_wsdate YYMMDD10.;

	INFORMAT blank_WalSpe $1.;
	FORMAT blank_WalSpe $1.;

	INFORMAT wstid BEST32.;
	FORMAT wstid BEST12.;

	INFORMAT wsup10 BEST32.;
	FORMAT wsup10 BEST12.;

	INFORMAT wsup10t BEST32.;
	FORMAT wsup10t BEST12.;

	INFORMAT wsup100 BEST32.;
	FORMAT wsup100 BEST12.;

	INFORMAT wsup100t BEST32.;
	FORMAT wsup100t BEST12.;

	INFORMAT wsfp10 BEST32.;
	FORMAT wsfp10 BEST12.;

	INFORMAT wsfp10t BEST32.;
	FORMAT wsfp10t BEST12.;

	INFORMAT wsfp100 BEST32.;
	FORMAT wsfp100 BEST12.;

	INFORMAT wsfp100t BEST32.;
	FORMAT wsfp100t BEST12.;

	INFORMAT auto_id_WalSpe BEST32.;
	FORMAT auto_id_WalSpe BEST12.;

	INFORMAT crf_parent_name_WalSpe $18.;
	FORMAT crf_parent_name_WalSpe $18.;

	INFORMAT study_name_WalSpe $4.;
	FORMAT study_name_WalSpe $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_WalSpe
		obsdate_wsdate
		blank_WalSpe
		wstid
		wsup10
		wsup10t
		wsup100
		wsup100t
		wsfp10
		wsfp10t
		wsfp100
		wsfp100t
		auto_id_WalSpe
		crf_parent_name_WalSpe
		study_name_WalSpe
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
		crf_version_WalSpe = "CRF Version"
		obsdate_wsdate = "Date Completed"
		blank_WalSpe = "Blank Form"
		wstid = "Tester ID"
		wsup10 = "Usual Pace 10ft"
		wsup10t = "Usual Pace 10ft time"
		wsup100 = "Usual Pace 100ft"
		wsup100t = "Usual Pace 100ft time"
		wsfp10 = "Fast Pace 10ft"
		wsfp10t = "Fast Pace 10ft time"
		wsfp100 = "Fast Pace 100ft"
		wsfp100t = "Fast Pace 100ft time"
		auto_id_WalSpe = "Unique Teleform Number"
		crf_parent_name_WalSpe = "CRF Parent Name"
		study_name_WalSpe = "Study Name"
	;
	FORMAT
		wsup10 wsup10_.
		wsup100 wsup100_.
		wsfp10 wsfp10_.
		wsfp100 wsfp100_.
	;
RUN;


DATA blsa_walking_speed;
    SET WORK.IMPORT;
RUN;
