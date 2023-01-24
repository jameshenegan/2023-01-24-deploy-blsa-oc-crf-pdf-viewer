%let path_to_file = '../data-csv/BLSA_Parental_Longevity.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE pl1_
		0 = 'No'
		1 = 'Yes'
		7 = 'Prefer not to answer'
		8 = "Don't know"
	;

	VALUE pl2_
		0 = 'No'
		1 = 'Yes'
		7 = 'Prefer not to answer'
		8 = "Don't know"
	;

	VALUE pl2c_
		1 = 'Myocardial infarction'
		10 = 'Complications of fracture'
		11 = 'Accident/trauma'
		12 = 'Intentional self-harm (suicide)'
		13 = 'Other (please specify)'
		14 = 'Undetermined/unknown'
		2 = 'Stroke'
		3 = 'Other CVD'
		4 = 'Cancer'
		5 = 'COPD (emphysema chronic bronchitis)'
		6 = "Alzheimer's disease/other dementia"
		7 = 'Diabetes'
		8 = 'Influenze or pneumonia'
		9 = 'Kidney disease'
	;

	VALUE pl3_
		0 = 'No'
		1 = 'Yes'
		7 = 'Prefer not to answer'
		8 = "Don't know"
	;

	VALUE pl3c_
		1 = 'Myocardial infarction'
		10 = 'Complications of fracture'
		11 = 'Accident/trauma'
		12 = 'Intentional self-harm (suicide)'
		13 = 'Other (please specify)'
		14 = 'Undetermined/unknown'
		2 = 'Stroke'
		3 = 'Other CVD'
		4 = 'Cancer'
		5 = 'COPD (emphysema chronic bronchitis)'
		6 = "Alzheimer's disease/other dementia"
		7 = 'Diabetes'
		8 = 'Influenze or pneumonia'
		9 = 'Kidney disease'
	;

	VALUE pl4_
		0 = 'No'
		1 = 'Yes'
		7 = 'Prefer not to answer'
		8 = "Don't know"
	;

	VALUE pl4c_
		1 = 'Myocardial infarction'
		10 = 'Complications of fracture'
		11 = 'Accident/trauma'
		12 = 'Intentional self-harm (suicide)'
		13 = 'Other (please specify)'
		14 = 'Undetermined/unknown'
		2 = 'Stroke'
		3 = 'Other CVD'
		4 = 'Cancer'
		5 = 'COPD (emphysema chronic bronchitis)'
		6 = "Alzheimer's disease/other dementia"
		7 = 'Diabetes'
		8 = 'Influenze or pneumonia'
		9 = 'Kidney disease'
	;

	VALUE pl5_
		0 = 'No'
		1 = 'Yes'
		7 = 'Prefer not to answer'
		8 = "Don't know"
	;

	VALUE pl5c_
		1 = 'Myocardial infarction'
		10 = 'Complications of fracture'
		11 = 'Accident/trauma'
		12 = 'Intentional self-harm (suicide)'
		13 = 'Other (please specify)'
		14 = 'Undetermined/unknown'
		2 = 'Stroke'
		3 = 'Other CVD'
		4 = 'Cancer'
		5 = 'COPD (emphysema chronic bronchitis)'
		6 = "Alzheimer's disease/other dementia"
		7 = 'Diabetes'
		8 = 'Influenze or pneumonia'
		9 = 'Kidney disease'
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

	INFORMAT crf_version_ParLon $7.;
	FORMAT crf_version_ParLon $7.;

	INFORMAT date_ParLon YYMMDD10.;
	FORMAT date_ParLon YYMMDD10.;

	INFORMAT blank_ParLon $1.;
	FORMAT blank_ParLon $1.;

	INFORMAT tid_ParLon BEST32.;
	FORMAT tid_ParLon BEST12.;

	INFORMAT pl1 BEST32.;
	FORMAT pl1 BEST12.;

	INFORMAT pl2 BEST32.;
	FORMAT pl2 BEST12.;

	INFORMAT pl2a BEST32.;
	FORMAT pl2a BEST12.;

	INFORMAT pl2b BEST32.;
	FORMAT pl2b BEST12.;

	INFORMAT pl2c BEST32.;
	FORMAT pl2c BEST12.;

	INFORMAT pl2cother $93.;
	FORMAT pl2cother $93.;

	INFORMAT pl3 BEST32.;
	FORMAT pl3 BEST12.;

	INFORMAT pl3a BEST32.;
	FORMAT pl3a BEST12.;

	INFORMAT pl3b BEST32.;
	FORMAT pl3b BEST12.;

	INFORMAT pl3c BEST32.;
	FORMAT pl3c BEST12.;

	INFORMAT pl3cother $205.;
	FORMAT pl3cother $205.;

	INFORMAT pl4 BEST32.;
	FORMAT pl4 BEST12.;

	INFORMAT pl4a $1.;
	FORMAT pl4a $1.;

	INFORMAT pl4b BEST32.;
	FORMAT pl4b BEST12.;

	INFORMAT pl4c BEST32.;
	FORMAT pl4c BEST12.;

	INFORMAT pl4cother $1.;
	FORMAT pl4cother $1.;

	INFORMAT pl5 BEST32.;
	FORMAT pl5 BEST12.;

	INFORMAT pl5a $1.;
	FORMAT pl5a $1.;

	INFORMAT pl5b BEST32.;
	FORMAT pl5b BEST12.;

	INFORMAT pl5c BEST32.;
	FORMAT pl5c BEST12.;

	INFORMAT pl5cother $184.;
	FORMAT pl5cother $184.;

	INFORMAT crf_parent_name_ParLon $23.;
	FORMAT crf_parent_name_ParLon $23.;

	INFORMAT study_name_ParLon $4.;
	FORMAT study_name_ParLon $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_ParLon
		date_ParLon
		blank_ParLon
		tid_ParLon
		pl1
		pl2
		pl2a
		pl2b
		pl2c
		pl2cother
		pl3
		pl3a
		pl3b
		pl3c
		pl3cother
		pl4
		pl4a
		pl4b
		pl4c
		pl4cother
		pl5
		pl5a
		pl5b
		pl5c
		pl5cother
		crf_parent_name_ParLon
		study_name_ParLon
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
		crf_version_ParLon = "CRF Version"
		date_ParLon = "Date Completed"
		blank_ParLon = "Blank Form"
		tid_ParLon = "Tester ID"
		pl1 = "Were you adopted"
		pl2 = "Is your biological mother alive"
		pl2a = "What is your mother's age now"
		pl2b = "How old was your mother when she died"
		pl2c = "Cause of death"
		pl2cother = "Cause of death Other"
		pl3 = "Is your biological father alive"
		pl3a = "What is your father's age now"
		pl3b = "How old was your father when he died"
		pl3c = "Cause of death"
		pl3cother = "Cause of death Other"
		pl4 = "Is your adoptivel mother alive"
		pl4a = "What is your mother's age now"
		pl4b = "How old was your mother when she died"
		pl4c = "Cause of death"
		pl4cother = "Cause of death Other"
		pl5 = "Is your adoptive father alive"
		pl5a = "What is your father's age now"
		pl5b = "How old was your father when he died"
		pl5c = "Cause of death"
		pl5cother = "Cause of death Other"
		crf_parent_name_ParLon = "CRF Parent Name"
		study_name_ParLon = "Study Name"
	;
	FORMAT
		pl1 pl1_.
		pl2 pl2_.
		pl2c pl2c_.
		pl3 pl3_.
		pl3c pl3c_.
		pl4 pl4_.
		pl4c pl4c_.
		pl5 pl5_.
		pl5c pl5c_.
	;
RUN;


DATA blsa_parental_longevity;
    SET WORK.IMPORT;
RUN;
