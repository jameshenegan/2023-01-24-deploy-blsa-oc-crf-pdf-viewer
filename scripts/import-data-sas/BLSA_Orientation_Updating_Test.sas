%let path_to_file = '../data-csv/BLSA_Orientation_Updating_Test.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE outt1a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt1d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outt2a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt2d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outt3a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt3d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outt4a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt4d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outt5a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt5d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outt6a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt6d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outt7a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt7d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outt8a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt8d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outt9a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt9d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outt10a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt10d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outt11a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt11d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outt12a_
		1 = 'Left turn'
		2 = 'Right turn'
	;

	VALUE outt12d_
		0 = 'I am sure'
		1 = 'I am somewhat sure'
		2 = 'I am randomly guessing/very unsure'
	;

	VALUE outdone_
		0 = 'Yes'
		1 = 'No'
	;

	VALUE outpilot_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE outrnd2_
		1 = 'Do not understand test instructions'
		2 = 'Got too disoriented or dizzy during the test'
		3 = 'Refused participation during the test'
		4 = 'Refused the entire test'
		5 = 'Time constraints'
		6 = 'Not Scheduled'
	;

	VALUE outrnd_
		1 = 'Do not understand test instructions'
		2 = 'Got too disoriented or dizzy during the test'
		3 = 'Refused participation during the test'
		4 = 'Refused the entire test'
		5 = 'Time constraints'
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

	INFORMAT crf_version_OriUpdTes $7.;
	FORMAT crf_version_OriUpdTes $7.;

	INFORMAT obsdate_outdate YYMMDD10.;
	FORMAT obsdate_outdate YYMMDD10.;

	INFORMAT blank_OriUpdTes $1.;
	FORMAT blank_OriUpdTes $1.;

	INFORMAT outtid BEST32.;
	FORMAT outtid BEST12.;

	INFORMAT outt1a BEST32.;
	FORMAT outt1a BEST12.;

	INFORMAT outt1b BEST32.;
	FORMAT outt1b BEST12.;

	INFORMAT outt1c $4.;
	FORMAT outt1c $4.;

	INFORMAT outt1d BEST32.;
	FORMAT outt1d BEST12.;

	INFORMAT outt2a BEST32.;
	FORMAT outt2a BEST12.;

	INFORMAT outt2b BEST32.;
	FORMAT outt2b BEST12.;

	INFORMAT outt2c $4.;
	FORMAT outt2c $4.;

	INFORMAT outt2d BEST32.;
	FORMAT outt2d BEST12.;

	INFORMAT outt3a BEST32.;
	FORMAT outt3a BEST12.;

	INFORMAT outt3b BEST32.;
	FORMAT outt3b BEST12.;

	INFORMAT outt3c $4.;
	FORMAT outt3c $4.;

	INFORMAT outt3d BEST32.;
	FORMAT outt3d BEST12.;

	INFORMAT outt4a BEST32.;
	FORMAT outt4a BEST12.;

	INFORMAT outt4b BEST32.;
	FORMAT outt4b BEST12.;

	INFORMAT outt4c $4.;
	FORMAT outt4c $4.;

	INFORMAT outt4d BEST32.;
	FORMAT outt4d BEST12.;

	INFORMAT outt5a BEST32.;
	FORMAT outt5a BEST12.;

	INFORMAT outt5b BEST32.;
	FORMAT outt5b BEST12.;

	INFORMAT outt5c $4.;
	FORMAT outt5c $4.;

	INFORMAT outt5d BEST32.;
	FORMAT outt5d BEST12.;

	INFORMAT outt6a BEST32.;
	FORMAT outt6a BEST12.;

	INFORMAT outt6b BEST32.;
	FORMAT outt6b BEST12.;

	INFORMAT outt6c $4.;
	FORMAT outt6c $4.;

	INFORMAT outt6d BEST32.;
	FORMAT outt6d BEST12.;

	INFORMAT outt7a BEST32.;
	FORMAT outt7a BEST12.;

	INFORMAT outt7b BEST32.;
	FORMAT outt7b BEST12.;

	INFORMAT outt7c BEST32.;
	FORMAT outt7c BEST12.;

	INFORMAT outt7d BEST32.;
	FORMAT outt7d BEST12.;

	INFORMAT outt8a BEST32.;
	FORMAT outt8a BEST12.;

	INFORMAT outt8b BEST32.;
	FORMAT outt8b BEST12.;

	INFORMAT outt8c BEST32.;
	FORMAT outt8c BEST12.;

	INFORMAT outt8d BEST32.;
	FORMAT outt8d BEST12.;

	INFORMAT outt9a BEST32.;
	FORMAT outt9a BEST12.;

	INFORMAT outt9b BEST32.;
	FORMAT outt9b BEST12.;

	INFORMAT outt9c $6.;
	FORMAT outt9c $6.;

	INFORMAT outt9d BEST32.;
	FORMAT outt9d BEST12.;

	INFORMAT outt10a BEST32.;
	FORMAT outt10a BEST12.;

	INFORMAT outt10b BEST32.;
	FORMAT outt10b BEST12.;

	INFORMAT outt10c BEST32.;
	FORMAT outt10c BEST12.;

	INFORMAT outt10d BEST32.;
	FORMAT outt10d BEST12.;

	INFORMAT outt11a BEST32.;
	FORMAT outt11a BEST12.;

	INFORMAT outt11b BEST32.;
	FORMAT outt11b BEST12.;

	INFORMAT outt11c $4.;
	FORMAT outt11c $4.;

	INFORMAT outt11d BEST32.;
	FORMAT outt11d BEST12.;

	INFORMAT outt12a BEST32.;
	FORMAT outt12a BEST12.;

	INFORMAT outt12b BEST32.;
	FORMAT outt12b BEST12.;

	INFORMAT outt12c BEST32.;
	FORMAT outt12c BEST12.;

	INFORMAT outt12d BEST32.;
	FORMAT outt12d BEST12.;

	INFORMAT outdone BEST32.;
	FORMAT outdone BEST12.;

	INFORMAT outpilot BEST32.;
	FORMAT outpilot BEST12.;

	INFORMAT auto_id_OriUpdTes BEST32.;
	FORMAT auto_id_OriUpdTes BEST12.;

	INFORMAT outrnd2 BEST32.;
	FORMAT outrnd2 BEST12.;

	INFORMAT outrnd BEST32.;
	FORMAT outrnd BEST12.;

	INFORMAT crf_parent_name_OriUpdTes $30.;
	FORMAT crf_parent_name_OriUpdTes $30.;

	INFORMAT study_name_OriUpdTes $4.;
	FORMAT study_name_OriUpdTes $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_OriUpdTes
		obsdate_outdate
		blank_OriUpdTes
		outtid
		outt1a
		outt1b
		outt1c
		outt1d
		outt2a
		outt2b
		outt2c
		outt2d
		outt3a
		outt3b
		outt3c
		outt3d
		outt4a
		outt4b
		outt4c
		outt4d
		outt5a
		outt5b
		outt5c
		outt5d
		outt6a
		outt6b
		outt6c
		outt6d
		outt7a
		outt7b
		outt7c
		outt7d
		outt8a
		outt8b
		outt8c
		outt8d
		outt9a
		outt9b
		outt9c
		outt9d
		outt10a
		outt10b
		outt10c
		outt10d
		outt11a
		outt11b
		outt11c
		outt11d
		outt12a
		outt12b
		outt12c
		outt12d
		outdone
		outpilot
		auto_id_OriUpdTes
		outrnd2
		outrnd
		crf_parent_name_OriUpdTes
		study_name_OriUpdTes
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
		crf_version_OriUpdTes = "CRF Version"
		obsdate_outdate = "Date Completed"
		blank_OriUpdTes = "Blank Form"
		outtid = "Tester ID"
		outt1a = "Trial 1 direction of rotation"
		outt1b = "Trial 1 angle or rotation"
		outt1c = "Trial 1 error of angle estimation"
		outt1d = "Trial 1 how confident is the subject"
		outt2a = "Trial 2 direction of rotation"
		outt2b = "Trial 2 angle or rotation"
		outt2c = "Trial 2 error of angle estimation"
		outt2d = "Trial 2 how confident is the subject"
		outt3a = "Trial 3 direction of rotation"
		outt3b = "Trial 3 angle or rotation"
		outt3c = "Trial 3 error of angle estimation"
		outt3d = "Trial 3 how confident is the subject"
		outt4a = "Trial 4 direction of rotation"
		outt4b = "Trial 4 angle or rotation"
		outt4c = "Trial 4 error of angle estimation"
		outt4d = "Trial 4 how confident is the subject"
		outt5a = "Trial 5 direction of rotation"
		outt5b = "Trial 5 angle or rotation"
		outt5c = "Trial 5 error of angle estimation"
		outt5d = "Trial 5 how confident is the subject"
		outt6a = "Trial 6 direction of rotation"
		outt6b = "Trial 6 angle or rotation"
		outt6c = "Trial 6 error of angle estimation"
		outt6d = "Trial 6 how confident is the subject"
		outt7a = "Trial 7 direction of rotation"
		outt7b = "Trial 7 angle or rotation"
		outt7c = "Trial 7 error of angle estimation"
		outt7d = "Trial 7 how confident is the subject"
		outt8a = "Trial 8 direction of rotation"
		outt8b = "Trial 8 angle or rotation"
		outt8c = "Trial 8 error of angle estimation"
		outt8d = "Trial 8 how confident is the subject"
		outt9a = "Trial 9 direction of rotation"
		outt9b = "Trial 9 angle or rotation"
		outt9c = "Trial 9 error of angle estimation"
		outt9d = "Trial 9 how confident is the subject"
		outt10a = "Trial 10 direction of rotation"
		outt10b = "Trial 10 angle or rotation"
		outt10c = "Trial 10 error of angle estimation"
		outt10d = "Trial 10 how confident is the subject"
		outt11a = "Trial 11 direction of rotation"
		outt11b = "Trial 11 angle or rotation"
		outt11c = "Trial 11 error of angle estimation"
		outt11d = "Trial 11 how confident is the subject"
		outt12a = "Trial 12 direction of rotation"
		outt12b = "Trial 12 angle or rotation"
		outt12c = "Trial 12 error of angle estimation"
		outt12d = "Trial 12 how confident is the subject"
		outdone = "Did participant complete testing"
		outpilot = "Pilot"
		auto_id_OriUpdTes = "Unique Teleform Number"
		outrnd2 = "Reason not done"
		outrnd = "Reason not done"
		crf_parent_name_OriUpdTes = "CRF Parent Name"
		study_name_OriUpdTes = "Study Name"
	;
	FORMAT
		outt1a outt1a_.
		outt1d outt1d_.
		outt2a outt2a_.
		outt2d outt2d_.
		outt3a outt3a_.
		outt3d outt3d_.
		outt4a outt4a_.
		outt4d outt4d_.
		outt5a outt5a_.
		outt5d outt5d_.
		outt6a outt6a_.
		outt6d outt6d_.
		outt7a outt7a_.
		outt7d outt7d_.
		outt8a outt8a_.
		outt8d outt8d_.
		outt9a outt9a_.
		outt9d outt9d_.
		outt10a outt10a_.
		outt10d outt10d_.
		outt11a outt11a_.
		outt11d outt11d_.
		outt12a outt12a_.
		outt12d outt12d_.
		outdone outdone_.
		outpilot outpilot_.
		outrnd2 outrnd2_.
		outrnd outrnd_.
	;
RUN;


DATA blsa_orientation_updating_test;
    SET WORK.IMPORT;
RUN;
