%let path_to_file = '../data-csv/BLSA_Echo_and_Carotid.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE echo01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE echo01a_
		0 = 'Other'
		555 = 'Physical problems'
		666 = 'Cognitive'
		777 = 'Physical and cognitive'
		888 = 'Refused'
		999 = 'Technical problems'
	;

	VALUE ct01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ct01a_
		1 = 'Other'
		555 = 'Physical problems'
		666 = 'Cognitive'
		777 = 'Physical and cognitive'
		888 = 'Refused'
		999 = 'Technical problems'
	;

	VALUE bp001_
		0 = 'No'
		1 = 'Yes'
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

	INFORMAT crf_version_EchandCar $8.;
	FORMAT crf_version_EchandCar $8.;

	INFORMAT obsdate_echodate YYMMDD10.;
	FORMAT obsdate_echodate YYMMDD10.;

	INFORMAT echotid BEST32.;
	FORMAT echotid BEST12.;

	INFORMAT blank_EchandCar $1.;
	FORMAT blank_EchandCar $1.;

	INFORMAT echo01 BEST32.;
	FORMAT echo01 BEST12.;

	INFORMAT echo01a BEST32.;
	FORMAT echo01a BEST12.;

	INFORMAT echo01b $88.;
	FORMAT echo01b $88.;

	INFORMAT ct01 BEST32.;
	FORMAT ct01 BEST12.;

	INFORMAT ct01a BEST32.;
	FORMAT ct01a BEST12.;

	INFORMAT ct01b $88.;
	FORMAT ct01b $88.;

	INFORMAT bp001 BEST32.;
	FORMAT bp001 BEST12.;

	INFORMAT bpsbp BEST32.;
	FORMAT bpsbp BEST12.;

	INFORMAT bpdbp BEST32.;
	FORMAT bpdbp BEST12.;

	INFORMAT bpmap BEST32.;
	FORMAT bpmap BEST12.;

	INFORMAT auto_id_EchandCar BEST32.;
	FORMAT auto_id_EchandCar BEST12.;

	INFORMAT crf_parent_name_EchandCar $21.;
	FORMAT crf_parent_name_EchandCar $21.;

	INFORMAT study_name_EchandCar $4.;
	FORMAT study_name_EchandCar $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_EchandCar
		obsdate_echodate
		echotid
		blank_EchandCar
		echo01
		echo01a
		echo01b
		ct01
		ct01a
		ct01b
		bp001
		bpsbp
		bpdbp
		bpmap
		auto_id_EchandCar
		crf_parent_name_EchandCar
		study_name_EchandCar
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
		crf_version_EchandCar = "CRF Version"
		obsdate_echodate = "Date Completed"
		echotid = "Tester ID"
		blank_EchandCar = "Blank Form"
		echo01 = "Echo done"
		echo01a = "Echo reason not done"
		echo01b = "Echo RND other"
		ct01 = "Carotid done"
		ct01a = "Carotid reason not done"
		ct01b = "Carotid RND other"
		bp001 = "Blood pressure measured"
		bpsbp = "Systolic"
		bpdbp = "Diastolic"
		bpmap = "MAP"
		auto_id_EchandCar = "Unique Teleform Number"
		crf_parent_name_EchandCar = "CRF Parent Name"
		study_name_EchandCar = "Study Name"
	;
	FORMAT
		echo01 echo01_.
		echo01a echo01a_.
		ct01 ct01_.
		ct01a ct01a_.
		bp001 bp001_.
	;
RUN;


DATA blsa_echo_and_carotid;
    SET WORK.IMPORT;
RUN;
