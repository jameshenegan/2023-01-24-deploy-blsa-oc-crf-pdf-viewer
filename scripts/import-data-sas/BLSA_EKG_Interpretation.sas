%let path_to_file = '../data-csv/BLSA_EKG_Interpretation.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ekg01_
		0 = 'Other'
		1 = 'Yes'
		5 = 'Physical'
		6 = 'Cognitive'
		7 = 'Physical and cognitive'
		8 = 'Refused'
		9 = 'Technical problems'
	;

	VALUE ekg02_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
	;

	VALUE ekg03_
		1 = '1'
		2 = '2'
		3 = '3'
	;

	VALUE ekg04_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
	;

	VALUE ekg05_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
	;

	VALUE ekg06_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
	;

	VALUE ekg07_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
	;

	VALUE ekg08_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
		9 = '9'
	;

	VALUE ekg30_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
	;

	VALUE ekg09_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
	;

	VALUE ekg26_
		1 = '1'
		2 = '2'
		3 = '3'
	;

	VALUE ekg27_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
	;

	VALUE ekg28_
		1 = '1'
		2 = '2'
		3 = '3'
	;

	VALUE ekg29_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
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

	INFORMAT crf_version_EKGInt $7.;
	FORMAT crf_version_EKGInt $7.;

	INFORMAT obsdate_ekgdate YYMMDD10.;
	FORMAT obsdate_ekgdate YYMMDD10.;

	INFORMAT ekgttrid BEST32.;
	FORMAT ekgttrid BEST12.;

	INFORMAT ekgcdrid BEST32.;
	FORMAT ekgcdrid BEST12.;

	INFORMAT ekg01 BEST32.;
	FORMAT ekg01 BEST12.;

	INFORMAT ekg01b $25.;
	FORMAT ekg01b $25.;

	INFORMAT ekg02 BEST32.;
	FORMAT ekg02 BEST12.;

	INFORMAT ekg03 BEST32.;
	FORMAT ekg03 BEST12.;

	INFORMAT ekg04 BEST32.;
	FORMAT ekg04 BEST12.;

	INFORMAT ekg05 BEST32.;
	FORMAT ekg05 BEST12.;

	INFORMAT ekg06 BEST32.;
	FORMAT ekg06 BEST12.;

	INFORMAT ekg07 BEST32.;
	FORMAT ekg07 BEST12.;

	INFORMAT ekg08 BEST32.;
	FORMAT ekg08 BEST12.;

	INFORMAT ekg30 BEST32.;
	FORMAT ekg30 BEST12.;

	INFORMAT ekg09 BEST32.;
	FORMAT ekg09 BEST12.;

	INFORMAT ekg26 BEST32.;
	FORMAT ekg26 BEST12.;

	INFORMAT ekg27 BEST32.;
	FORMAT ekg27 BEST12.;

	INFORMAT ekg28 BEST32.;
	FORMAT ekg28 BEST12.;

	INFORMAT ekg29 BEST32.;
	FORMAT ekg29 BEST12.;

	INFORMAT crf_parent_name_EKGInt $23.;
	FORMAT crf_parent_name_EKGInt $23.;

	INFORMAT study_name_EKGInt $4.;
	FORMAT study_name_EKGInt $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_EKGInt
		obsdate_ekgdate
		ekgttrid
		ekgcdrid
		ekg01
		ekg01b
		ekg02
		ekg03
		ekg04
		ekg05
		ekg06
		ekg07
		ekg08
		ekg30
		ekg09
		ekg26
		ekg27
		ekg28
		ekg29
		crf_parent_name_EKGInt
		study_name_EKGInt
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
		crf_version_EKGInt = "CRF Version"
		obsdate_ekgdate = "Date Completed"
		ekgttrid = "Tester ID"
		ekgcdrid = "Coder ID"
		ekg01 = "EKG done"
		ekg01b = "EKG other RND"
		ekg02 = "EKG02"
		ekg03 = "EKG03"
		ekg04 = "EKG04"
		ekg05 = "EKG05"
		ekg06 = "EKG06"
		ekg07 = "EKG07"
		ekg08 = "EKG08"
		ekg30 = "EKG30"
		ekg09 = "EKG09"
		ekg26 = "EKG26"
		ekg27 = "EKG27"
		ekg28 = "EKG28"
		ekg29 = "EKG29"
		crf_parent_name_EKGInt = "CRF Parent Name"
		study_name_EKGInt = "Study Name"
	;
	FORMAT
		ekg01 ekg01_.
		ekg02 ekg02_.
		ekg03 ekg03_.
		ekg04 ekg04_.
		ekg05 ekg05_.
		ekg06 ekg06_.
		ekg07 ekg07_.
		ekg08 ekg08_.
		ekg30 ekg30_.
		ekg09 ekg09_.
		ekg26 ekg26_.
		ekg27 ekg27_.
		ekg28 ekg28_.
		ekg29 ekg29_.
	;
RUN;


DATA blsa_ekg_interpretation;
    SET WORK.IMPORT;
RUN;
