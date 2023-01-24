%let path_to_file = '../data-csv/BLSA_EPPS_Sleep_Scale.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE epss01_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
	;

	VALUE epss02_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
	;

	VALUE epss03_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
	;

	VALUE epss04_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
	;

	VALUE epss05_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
	;

	VALUE epss06_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
	;

	VALUE epss07_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
	;

	VALUE epss08_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
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

	INFORMAT crf_version_EPPSleSca $7.;
	FORMAT crf_version_EPPSleSca $7.;

	INFORMAT obsdate_epssdate YYMMDD10.;
	FORMAT obsdate_epssdate YYMMDD10.;

	INFORMAT blank_EPPSleSca $1.;
	FORMAT blank_EPPSleSca $1.;

	INFORMAT epsstid BEST32.;
	FORMAT epsstid BEST12.;

	INFORMAT epss01 BEST32.;
	FORMAT epss01 BEST12.;

	INFORMAT epss02 BEST32.;
	FORMAT epss02 BEST12.;

	INFORMAT epss03 BEST32.;
	FORMAT epss03 BEST12.;

	INFORMAT epss04 BEST32.;
	FORMAT epss04 BEST12.;

	INFORMAT epss05 BEST32.;
	FORMAT epss05 BEST12.;

	INFORMAT epss06 BEST32.;
	FORMAT epss06 BEST12.;

	INFORMAT epss07 BEST32.;
	FORMAT epss07 BEST12.;

	INFORMAT epss08 BEST32.;
	FORMAT epss08 BEST12.;

	INFORMAT auto_id_EPPSleSca BEST32.;
	FORMAT auto_id_EPPSleSca BEST12.;

	INFORMAT crf_parent_name_EPPSleSca $21.;
	FORMAT crf_parent_name_EPPSleSca $21.;

	INFORMAT study_name_EPPSleSca $4.;
	FORMAT study_name_EPPSleSca $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_EPPSleSca
		obsdate_epssdate
		blank_EPPSleSca
		epsstid
		epss01
		epss02
		epss03
		epss04
		epss05
		epss06
		epss07
		epss08
		auto_id_EPPSleSca
		crf_parent_name_EPPSleSca
		study_name_EPPSleSca
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
		crf_version_EPPSleSca = "CRF Version"
		obsdate_epssdate = "Date completed"
		blank_EPPSleSca = "Blank Form"
		epsstid = "Tester ID"
		epss01 = "Sitting and reading"
		epss02 = "Watching tv"
		epss03 = "Sitting, inactive in a public place"
		epss04 = "Passenger in a car for an hr without a break"
		epss05 = "Lying down to rest in the afternoon"
		epss06 = "Sitting and talking to someone"
		epss07 = "Sitting quitely after a lunch without alcohol"
		epss08 = "In a car while stopped for a few minutes in traffic"
		auto_id_EPPSleSca = "Unique Teleform Number"
		crf_parent_name_EPPSleSca = "CRF Parent Name"
		study_name_EPPSleSca = "Study Name"
	;
	FORMAT
		epss01 epss01_.
		epss02 epss02_.
		epss03 epss03_.
		epss04 epss04_.
		epss05 epss05_.
		epss06 epss06_.
		epss07 epss07_.
		epss08 epss08_.
	;
RUN;


DATA blsa_epps_sleep_scale;
    SET WORK.IMPORT;
RUN;
