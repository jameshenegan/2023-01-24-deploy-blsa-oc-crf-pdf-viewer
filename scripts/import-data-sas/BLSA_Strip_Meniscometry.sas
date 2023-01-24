%let path_to_file = '../data-csv/BLSA_Strip_Meniscometry.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE sm01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sm01a_
		1 = 'Both eyes'
		2 = 'Right eye only'
		3 = 'Left eye only'
		8 = 'Unknown'
	;

	VALUE sm02_
		0 = 'Do not use eye drops'
		1 = 'Less than 1 hour ago'
		2 = 'More than 1 hour ago but less than 12 hours ago'
		3 = 'More than 12 hours ago but less than 24 hours ago'
		4 = 'More than 24 hours ago'
		8 = 'Unknown'
	;

	VALUE sm03_
		1 = 'Chronic eye condition eg Glaucoma'
		2 = 'Pre/Post Operative'
		3 = 'Dry eye (prescription)'
		4 = 'Comfort (non prescription'
		5 = 'Other please specify'
	;

	VALUE sm04_
		0 = 'No'
		1 = 'Yes'
		8 = 'Unknown'
	;

	VALUE sm05_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sm05a_
		1 = 'Both eyes'
		2 = 'Right eye only'
		3 = 'Left eye only'
		8 = 'Unknown'
	;

	VALUE sm05b_
		555 = '555 = Could not do due to physical problems'
		666 = '666 = Could not do due to mental problems'
		777 = '777 = Could not do due to both physical and mental problems'
		888 = '888 = Refused but theoretically could do'
		999 = '999 = Did not do due to technical problems'
	;

	VALUE sm07a_
		0 = 'Do not use eye drops'
		1 = 'Less than 1 hour ago'
		2 = 'More than 1 hour ago but less than 12 hours ago'
		3 = 'More than 12 hours ago but less than 24 hours ago'
		4 = 'More than 24 hours ago'
		8 = 'Unknown'
	;

	VALUE sm07b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sm07c_
		1 = 'Both eyes'
		2 = 'Right eye only'
		3 = 'Left eye only'
		8 = 'Unknown'
	;

	VALUE sm07d_
		555 = '555 = Could not do due to physical problems'
		666 = '666 = Could not do due to mental problems'
		777 = '777 = Could not do due to both physical and mental problems'
		888 = '888 = Refused but theoretically could do'
		999 = '999 = Did not do due to technical problems'
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

	INFORMAT crf_version_StrMen $7.;
	FORMAT crf_version_StrMen $7.;

	INFORMAT obsdate_smdate1 YYMMDD10.;
	FORMAT obsdate_smdate1 YYMMDD10.;

	INFORMAT blank_StrMen $1.;
	FORMAT blank_StrMen $1.;

	INFORMAT smtid1 BEST32.;
	FORMAT smtid1 BEST12.;

	INFORMAT sm01 BEST32.;
	FORMAT sm01 BEST12.;

	INFORMAT sm01a BEST32.;
	FORMAT sm01a BEST12.;

	INFORMAT sm02 BEST32.;
	FORMAT sm02 BEST12.;

	INFORMAT sm03 BEST32.;
	FORMAT sm03 BEST12.;

	INFORMAT sm03a $25.;
	FORMAT sm03a $25.;

	INFORMAT sm04 BEST32.;
	FORMAT sm04 BEST12.;

	INFORMAT sm05 BEST32.;
	FORMAT sm05 BEST12.;

	INFORMAT sm05a BEST32.;
	FORMAT sm05a BEST12.;

	INFORMAT sm05b BEST32.;
	FORMAT sm05b BEST12.;

	INFORMAT sm06a BEST32.;
	FORMAT sm06a BEST12.;

	INFORMAT sm06b BEST32.;
	FORMAT sm06b BEST12.;

	INFORMAT sm06c BEST32.;
	FORMAT sm06c BEST12.;

	INFORMAT sm06d BEST32.;
	FORMAT sm06d BEST12.;

	INFORMAT sm06e $4.;
	FORMAT sm06e $4.;

	INFORMAT smdate2 YYMMDD10.;
	FORMAT smdate2 YYMMDD10.;

	INFORMAT smtid2 BEST32.;
	FORMAT smtid2 BEST12.;

	INFORMAT sm07a BEST32.;
	FORMAT sm07a BEST12.;

	INFORMAT sm07b BEST32.;
	FORMAT sm07b BEST12.;

	INFORMAT sm07c BEST32.;
	FORMAT sm07c BEST12.;

	INFORMAT sm07d BEST32.;
	FORMAT sm07d BEST12.;

	INFORMAT sm08a BEST32.;
	FORMAT sm08a BEST12.;

	INFORMAT sm08b BEST32.;
	FORMAT sm08b BEST12.;

	INFORMAT sm08c BEST32.;
	FORMAT sm08c BEST12.;

	INFORMAT sm08d BEST32.;
	FORMAT sm08d BEST12.;

	INFORMAT sm08e $4.;
	FORMAT sm08e $4.;

	INFORMAT auto_id_StrMen BEST32.;
	FORMAT auto_id_StrMen BEST12.;

	INFORMAT crf_parent_name_StrMen $23.;
	FORMAT crf_parent_name_StrMen $23.;

	INFORMAT study_name_StrMen $4.;
	FORMAT study_name_StrMen $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_StrMen
		obsdate_smdate1
		blank_StrMen
		smtid1
		sm01
		sm01a
		sm02
		sm03
		sm03a
		sm04
		sm05
		sm05a
		sm05b
		sm06a
		sm06b
		sm06c
		sm06d
		sm06e
		smdate2
		smtid2
		sm07a
		sm07b
		sm07c
		sm07d
		sm08a
		sm08b
		sm08c
		sm08d
		sm08e
		auto_id_StrMen
		crf_parent_name_StrMen
		study_name_StrMen
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
		crf_version_StrMen = "CRF Version"
		obsdate_smdate1 = "Date Completed"
		blank_StrMen = "Blank Form"
		smtid1 = "Tester ID"
		sm01 = "Use eye drops"
		sm01a = "If yes which eye"
		sm02 = "If yes how long ago were drops administered"
		sm03 = "Why do you use eye drops"
		sm03a = "Other reason why use eye drops"
		sm04 = "Do you use makeup routinely"
		sm05 = "Was strip meniscometry test performed"
		sm05a = "If yes which eye"
		sm05b = "Reson not done"
		sm06a = "R eye strip meniscometry blue dye distance"
		sm06b = "L eye strip meniscometry blue dye distance"
		sm06c = "Room temperature"
		sm06d = "Room humidity"
		sm06e = "Test time"
		smdate2 = "Date Completed"
		smtid2 = "Tester ID"
		sm07a = "T2 If yes how long ago were drops administered"
		sm07b = "Was strip meniscometry test 2 performed"
		sm07c = "If yes which eye T2"
		sm07d = "T2 Reson not done"
		sm08a = "T2 R eye strip meniscometry blue dye distance"
		sm08b = "T2 L eye strip meniscometry blue dye distance"
		sm08c = "T2 Room temperature"
		sm08d = "T2 Room humidity"
		sm08e = "T2 Test time"
		auto_id_StrMen = "Unique Teleform Number"
		crf_parent_name_StrMen = "CRF Parent Name"
		study_name_StrMen = "Study Name"
	;
	FORMAT
		sm01 sm01_.
		sm01a sm01a_.
		sm02 sm02_.
		sm03 sm03_.
		sm04 sm04_.
		sm05 sm05_.
		sm05a sm05a_.
		sm05b sm05b_.
		sm07a sm07a_.
		sm07b sm07b_.
		sm07c sm07c_.
		sm07d sm07d_.
	;
RUN;


DATA blsa_strip_meniscometry;
    SET WORK.IMPORT;
RUN;
