%let path_to_file = '../data-csv/BLSA_EMG.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE emg02_
		0 = 'Right'
		1 = 'Left'
	;

	VALUE emg02a_
		1 = 'Amputation'
		2 = 'Ulcer'
		3 = 'Trauma or surgery (including knee replacement)'
		4 = 'Other - explain'
	;

	VALUE emg03a_
		0 = 'Other'
		1 = 'Yes'
		4 = 'No response'
		5 = 'Physical problems'
		6 = 'Mental problems'
		7 = 'Physical and mental problems'
		8 = ' Refused'
		9 = 'Technical problems (no time)'
	;

	VALUE emg04a_
		0 = 'Other'
		1 = 'Yes'
		4 = 'No response'
		5 = 'Physical problems'
		6 = 'Mental problems'
		7 = 'Physical and mental problems'
		8 = ' Refused'
		9 = 'Technical problems (no time)'
	;

	VALUE emg05a_
		0 = 'Other'
		1 = 'Yes'
		4 = 'No response'
		5 = 'Physical problems'
		6 = 'Mental problems'
		7 = 'Physical and mental problems'
		8 = ' Refused'
		9 = 'Technical problems (no time)'
	;

	VALUE emg06a_
		0 = 'Other'
		1 = 'Yes'
		4 = 'No response'
		5 = 'Physical problems'
		6 = 'Mental problems'
		7 = 'Physical and mental problems'
		8 = ' Refused'
		9 = 'Technical problems (no time)'
	;

	VALUE emg08_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE emg07_
		1 = 'A1'
		2 = 'A2'
		3 = 'A3'
		4 = 'A4'
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

	INFORMAT crf_version_EMG $8.;
	FORMAT crf_version_EMG $8.;

	INFORMAT obsdate_emgdate YYMMDD10.;
	FORMAT obsdate_emgdate YYMMDD10.;

	INFORMAT blank_EMG $1.;
	FORMAT blank_EMG $1.;

	INFORMAT emgttrid BEST32.;
	FORMAT emgttrid BEST12.;

	INFORMAT emg01 BEST32.;
	FORMAT emg01 BEST12.;

	INFORMAT emg01a BEST32.;
	FORMAT emg01a BEST12.;

	INFORMAT emg02 BEST32.;
	FORMAT emg02 BEST12.;

	INFORMAT emg02a BEST32.;
	FORMAT emg02a BEST12.;

	INFORMAT emg02b $30.;
	FORMAT emg02b $30.;

	INFORMAT emg01a1 BEST32.;
	FORMAT emg01a1 BEST12.;

	INFORMAT emg01a2 BEST32.;
	FORMAT emg01a2 BEST12.;

	INFORMAT emg01b BEST32.;
	FORMAT emg01b BEST12.;

	INFORMAT emg03a BEST32.;
	FORMAT emg03a BEST12.;

	INFORMAT emg04a BEST32.;
	FORMAT emg04a BEST12.;

	INFORMAT emg05a BEST32.;
	FORMAT emg05a BEST12.;

	INFORMAT emg06a BEST32.;
	FORMAT emg06a BEST12.;

	INFORMAT emg08 BEST32.;
	FORMAT emg08 BEST12.;

	INFORMAT emg03b BEST32.;
	FORMAT emg03b BEST12.;

	INFORMAT emg03c BEST32.;
	FORMAT emg03c BEST12.;

	INFORMAT emg04b BEST32.;
	FORMAT emg04b BEST12.;

	INFORMAT emg04c BEST32.;
	FORMAT emg04c BEST12.;

	INFORMAT emg04d BEST32.;
	FORMAT emg04d BEST12.;

	INFORMAT emg05b BEST32.;
	FORMAT emg05b BEST12.;

	INFORMAT emg05c BEST32.;
	FORMAT emg05c BEST12.;

	INFORMAT emg05d BEST32.;
	FORMAT emg05d BEST12.;

	INFORMAT emg06b BEST32.;
	FORMAT emg06b BEST12.;

	INFORMAT emg06c BEST32.;
	FORMAT emg06c BEST12.;

	INFORMAT emg06c1 BEST32.;
	FORMAT emg06c1 BEST12.;

	INFORMAT emg06d BEST32.;
	FORMAT emg06d BEST12.;

	INFORMAT emg07 BEST32.;
	FORMAT emg07 BEST12.;

	INFORMAT auto_id_EMG BEST32.;
	FORMAT auto_id_EMG BEST12.;

	INFORMAT crf_parent_name_EMG $8.;
	FORMAT crf_parent_name_EMG $8.;

	INFORMAT study_name_EMG $4.;
	FORMAT study_name_EMG $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_EMG
		obsdate_emgdate
		blank_EMG
		emgttrid
		emg01
		emg01a
		emg02
		emg02a
		emg02b
		emg01a1
		emg01a2
		emg01b
		emg03a
		emg04a
		emg05a
		emg06a
		emg08
		emg03b
		emg03c
		emg04b
		emg04c
		emg04d
		emg05b
		emg05c
		emg05d
		emg06b
		emg06c
		emg06c1
		emg06d
		emg07
		auto_id_EMG
		crf_parent_name_EMG
		study_name_EMG
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
		crf_version_EMG = "CRF Version"
		obsdate_emgdate = "Date Completed"
		blank_EMG = "Blank Form"
		emgttrid = "Tester ID"
		emg01 = "Foot temperature for peroneal"
		emg01a = "Foot temperature for peroneal following heating"
		emg02 = "Which leg was tested"
		emg02a = "Why wasn’t right leg tested"
		emg02b = "Why wasn’t right leg tested other"
		emg01a1 = "Foot temperature for sural"
		emg01a2 = "Foot temperature for sural following heating"
		emg01b = "Foot temperature at end of tests"
		emg03a = "Peroneal Test Completed Distal"
		emg04a = "Peroneal Test Completed Fibular Head"
		emg05a = "Peroneal Test Completed Popliteal Fossa"
		emg06a = "Sural TestCompleted LowerLeg"
		emg08 = "Were files exported"
		emg03b = "Distal Amplitude"
		emg03c = "Distal Latency"
		emg04b = "Fibula head Amplitude"
		emg04c = "Fibula head Latency"
		emg04d = "Fibula head Conduction Velocity"
		emg05b = "Popliteal Fossa Amplitude"
		emg05c = "Popliteal Fossa Latency"
		emg05d = "Popliteal Fossa Conduction Velocity"
		emg06b = "Lower Leg Amplitude"
		emg06c = "Lower Leg Latency"
		emg06c1 = "Lower Leg Latency"
		emg06d = "Lower Leg Conduction Velocity"
		emg07 = "Which stimulus site was chosen for lower leg Sural"
		auto_id_EMG = "Unique Teleform Number"
		crf_parent_name_EMG = "CRF Parent Name"
		study_name_EMG = "Study Name"
	;
	FORMAT
		emg02 emg02_.
		emg02a emg02a_.
		emg03a emg03a_.
		emg04a emg04a_.
		emg05a emg05a_.
		emg06a emg06a_.
		emg08 emg08_.
		emg07 emg07_.
	;
RUN;


DATA blsa_emg;
    SET WORK.IMPORT;
RUN;
