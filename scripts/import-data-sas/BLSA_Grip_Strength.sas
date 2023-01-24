%let path_to_file = '../data-csv/BLSA_Grip_Strength.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE grip1_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE grip1a_
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE grip1b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE grip1c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE grip2_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE grip2a_
		1 = 'Right (Test left side only)'
		2 = 'Left (Test right side only)'
		3 = 'Both (Do not test)'
		8 = "Don't know (Do not test)"
	;

	VALUE grip3r4_
		0 = 'Excluded'
		1 = 'Did 3 trials'
		2 = 'Did 2 trials'
		3 = 'Did 1 trial'
		4 = 'Unable to do'
		7 = 'Refused'
	;

	VALUE grip3l4_
		0 = 'Excluded'
		1 = 'Did 3 trials'
		2 = 'Did 2 trials'
		3 = 'Did 1 trial'
		4 = 'Unable to do'
		7 = 'Refused'
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

	INFORMAT crf_version_GriStr $8.;
	FORMAT crf_version_GriStr $8.;

	INFORMAT obsdate_gripdate YYMMDD10.;
	FORMAT obsdate_gripdate YYMMDD10.;

	INFORMAT blank_GriStr $1.;
	FORMAT blank_GriStr $1.;

	INFORMAT griptid BEST32.;
	FORMAT griptid BEST12.;

	INFORMAT grip1 BEST32.;
	FORMAT grip1 BEST12.;

	INFORMAT grip1a BEST32.;
	FORMAT grip1a BEST12.;

	INFORMAT grip1b BEST32.;
	FORMAT grip1b BEST12.;

	INFORMAT grip1c BEST32.;
	FORMAT grip1c BEST12.;

	INFORMAT grip2 BEST32.;
	FORMAT grip2 BEST12.;

	INFORMAT grip2a BEST32.;
	FORMAT grip2a BEST12.;

	INFORMAT grip3r1 BEST32.;
	FORMAT grip3r1 BEST12.;

	INFORMAT grip3r2 BEST32.;
	FORMAT grip3r2 BEST12.;

	INFORMAT grip3r3 BEST32.;
	FORMAT grip3r3 BEST12.;

	INFORMAT grip3r4 BEST32.;
	FORMAT grip3r4 BEST12.;

	INFORMAT grip3l1 BEST32.;
	FORMAT grip3l1 BEST12.;

	INFORMAT grip3l2 BEST32.;
	FORMAT grip3l2 BEST12.;

	INFORMAT grip3l3 BEST32.;
	FORMAT grip3l3 BEST12.;

	INFORMAT grip3l4 BEST32.;
	FORMAT grip3l4 BEST12.;

	INFORMAT auto_id_GriStr BEST32.;
	FORMAT auto_id_GriStr BEST12.;

	INFORMAT crf_parent_name_GriStr $18.;
	FORMAT crf_parent_name_GriStr $18.;

	INFORMAT study_name_GriStr $4.;
	FORMAT study_name_GriStr $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_GriStr
		obsdate_gripdate
		blank_GriStr
		griptid
		grip1
		grip1a
		grip1b
		grip1c
		grip2
		grip2a
		grip3r1
		grip3r2
		grip3r3
		grip3r4
		grip3l1
		grip3l2
		grip3l3
		grip3l4
		auto_id_GriStr
		crf_parent_name_GriStr
		study_name_GriStr
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
		crf_version_GriStr = "CRF Version"
		obsdate_gripdate = "Date Completed"
		blank_GriStr = "Blank Form"
		griptid = "Tester ID"
		grip1 = "Do you have arthritis in either hand or wrist"
		grip1a = "Is the pain or arthritis in your right left or both hands or wrists"
		grip1b = "Has the pain or arthritis gotten worse recently"
		grip1c = "Will the pain or arthritis keep you from squeezing as hard as you can"
		grip2 = "Have you had surgery on either hand or wrist in the past 3 months"
		grip2a = "Was the surgery on your right left or both hands or wrists"
		grip3r1 = "Trial 1 right hand"
		grip3r2 = "Trial 2 right hand"
		grip3r3 = "Trial 3 right hand"
		grip3r4 = "Right hand completion status"
		grip3l1 = "Trial 1 left hand"
		grip3l2 = "Trial 2 left hand"
		grip3l3 = "Trial 3 left hand"
		grip3l4 = "Left hand completion status"
		auto_id_GriStr = "Unique Teleform Number"
		crf_parent_name_GriStr = "CRF Parent Name"
		study_name_GriStr = "Study Name"
	;
	FORMAT
		grip1 grip1_.
		grip1a grip1a_.
		grip1b grip1b_.
		grip1c grip1c_.
		grip2 grip2_.
		grip2a grip2a_.
		grip3r4 grip3r4_.
		grip3l4 grip3l4_.
	;
RUN;


DATA blsa_grip_strength;
    SET WORK.IMPORT;
RUN;
