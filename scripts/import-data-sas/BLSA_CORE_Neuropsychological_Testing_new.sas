%let path_to_file = '../data-csv/BLSA_CORE_Neuropsychological_Testing_new.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE cogall_
		0 = 'Not Administered'
		1 = 'Complete'
		2 = 'Incomplete'
	;

	VALUE cogallm_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog01_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog01m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog02_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog02m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog03_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog03m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog04_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog04m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog05_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog05m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog06_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog06m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog07_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog07m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog08_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog08m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog09_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog09m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog10_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog10m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog11_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog11m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog12_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog12m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog13_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog13m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog14_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog14m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog15_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog15m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog16_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog16m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog17_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog17m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog18_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog18m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE cog19_
		0 = 'Not Administered'
		1 = 'Complete'
	;

	VALUE cog19m_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Other technical problem'
		4 = '4-Cognitively impared'
		5 = '5-Sensory/physical problem'
		6 = '6-Non-native English speaker'
		7 = '7-Participant refused'
		8 = '8-Low literacy'
		9 = '9-Other'
	;

	VALUE maskworn_CORNeuTesnew_
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

	INFORMAT crf_version_CORNeuTesnew $9.;
	FORMAT crf_version_CORNeuTesnew $9.;

	INFORMAT obsdate_cogdate YYMMDD10.;
	FORMAT obsdate_cogdate YYMMDD10.;

	INFORMAT cogttid BEST32.;
	FORMAT cogttid BEST12.;

	INFORMAT blank_CORNeuTesnew $1.;
	FORMAT blank_CORNeuTesnew $1.;

	INFORMAT cogall BEST32.;
	FORMAT cogall BEST12.;

	INFORMAT cogallm BEST32.;
	FORMAT cogallm BEST12.;

	INFORMAT cog01 BEST32.;
	FORMAT cog01 BEST12.;

	INFORMAT cog01m BEST32.;
	FORMAT cog01m BEST12.;

	INFORMAT cog02 BEST32.;
	FORMAT cog02 BEST12.;

	INFORMAT cog02m BEST32.;
	FORMAT cog02m BEST12.;

	INFORMAT cog03 BEST32.;
	FORMAT cog03 BEST12.;

	INFORMAT cog03m BEST32.;
	FORMAT cog03m BEST12.;

	INFORMAT cog04 BEST32.;
	FORMAT cog04 BEST12.;

	INFORMAT cog04m BEST32.;
	FORMAT cog04m BEST12.;

	INFORMAT cog05 BEST32.;
	FORMAT cog05 BEST12.;

	INFORMAT cog05m BEST32.;
	FORMAT cog05m BEST12.;

	INFORMAT cog06 BEST32.;
	FORMAT cog06 BEST12.;

	INFORMAT cog06m BEST32.;
	FORMAT cog06m BEST12.;

	INFORMAT cog07 BEST32.;
	FORMAT cog07 BEST12.;

	INFORMAT cog07m BEST32.;
	FORMAT cog07m BEST12.;

	INFORMAT cog08 BEST32.;
	FORMAT cog08 BEST12.;

	INFORMAT cog08m BEST32.;
	FORMAT cog08m BEST12.;

	INFORMAT cog09 BEST32.;
	FORMAT cog09 BEST12.;

	INFORMAT cog09m BEST32.;
	FORMAT cog09m BEST12.;

	INFORMAT cog10 BEST32.;
	FORMAT cog10 BEST12.;

	INFORMAT cog10m BEST32.;
	FORMAT cog10m BEST12.;

	INFORMAT cog11 BEST32.;
	FORMAT cog11 BEST12.;

	INFORMAT cog11m BEST32.;
	FORMAT cog11m BEST12.;

	INFORMAT cog12 BEST32.;
	FORMAT cog12 BEST12.;

	INFORMAT cog12m BEST32.;
	FORMAT cog12m BEST12.;

	INFORMAT cog13 BEST32.;
	FORMAT cog13 BEST12.;

	INFORMAT cog13m BEST32.;
	FORMAT cog13m BEST12.;

	INFORMAT cog14 BEST32.;
	FORMAT cog14 BEST12.;

	INFORMAT cog14m BEST32.;
	FORMAT cog14m BEST12.;

	INFORMAT cog15 BEST32.;
	FORMAT cog15 BEST12.;

	INFORMAT cog15m BEST32.;
	FORMAT cog15m BEST12.;

	INFORMAT cog16 BEST32.;
	FORMAT cog16 BEST12.;

	INFORMAT cog16m BEST32.;
	FORMAT cog16m BEST12.;

	INFORMAT cog17 BEST32.;
	FORMAT cog17 BEST12.;

	INFORMAT cog17m BEST32.;
	FORMAT cog17m BEST12.;

	INFORMAT cog18 BEST32.;
	FORMAT cog18 BEST12.;

	INFORMAT cog18m BEST32.;
	FORMAT cog18m BEST12.;

	INFORMAT cog19 BEST32.;
	FORMAT cog19 BEST12.;

	INFORMAT cog19m BEST32.;
	FORMAT cog19m BEST12.;

	INFORMAT borgscore BEST32.;
	FORMAT borgscore BEST12.;

	INFORMAT maskworn_CORNeuTesnew BEST32.;
	FORMAT maskworn_CORNeuTesnew BEST12.;

	INFORMAT auto_id_CORNeuTesnew BEST32.;
	FORMAT auto_id_CORNeuTesnew BEST12.;

	INFORMAT crf_parent_name_CORNeuTesnew $40.;
	FORMAT crf_parent_name_CORNeuTesnew $40.;

	INFORMAT study_name_CORNeuTesnew $4.;
	FORMAT study_name_CORNeuTesnew $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_CORNeuTesnew
		obsdate_cogdate
		cogttid
		blank_CORNeuTesnew
		cogall
		cogallm
		cog01
		cog01m
		cog02
		cog02m
		cog03
		cog03m
		cog04
		cog04m
		cog05
		cog05m
		cog06
		cog06m
		cog07
		cog07m
		cog08
		cog08m
		cog09
		cog09m
		cog10
		cog10m
		cog11
		cog11m
		cog12
		cog12m
		cog13
		cog13m
		cog14
		cog14m
		cog15
		cog15m
		cog16
		cog16m
		cog17
		cog17m
		cog18
		cog18m
		cog19
		cog19m
		borgscore
		maskworn_CORNeuTesnew
		auto_id_CORNeuTesnew
		crf_parent_name_CORNeuTesnew
		study_name_CORNeuTesnew
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
		crf_version_CORNeuTesnew = "CRF Version"
		obsdate_cogdate = "Date Completed"
		cogttid = "Tester ID"
		blank_CORNeuTesnew = "Blank Form"
		cogall = "Core Neuropsychological Battery"
		cogallm = "Core Neuropsychological Battery Reason not done"
		cog01 = "Benton Visual Retention Test"
		cog01m = "Benton Visual Retention Test Reason not done"
		cog02 = "PMA Vocabulary"
		cog02m = "PMA_Vocabulary Reason not done"
		cog03 = "WAIS_R Digit Span"
		cog03m = "WAIS_R Digit Span Reason not done"
		cog04 = "California Verbal Learning Part 1"
		cog04m = "California Verbal Learning Part 1 Reason not done"
		cog05 = "Trail making Part A"
		cog05m = "Trail making Part A reason not done"
		cog06 = "Trail making Part B"
		cog06m = "Trail making Part B reason not done"
		cog07 = "Purdue Pegboard"
		cog07m = "Purdue Pegboard reason not done"
		cog08 = "Card Rotations"
		cog08m = "Card Rotations reason not done"
		cog09 = "California Verbal Learning Part 2"
		cog09m = "California Verbal Learning Part 2 Reason not done"
		cog10 = "Verbal Fluency Letter F"
		cog10m = "Verbal Fluency Letter F Reason not done"
		cog11 = "Verbal Fluency Letter A"
		cog11m = "Verbal Fluency Letter A Reason not done"
		cog12 = "Verbal Fluency Letter S"
		cog12m = "Verbal Fluency Letter S Reason not done"
		cog13 = "Verbal Fluency Fruit"
		cog13m = "Verbal Fluency Fruit Reason not done"
		cog14 = "Verbal Fluency Animals"
		cog14m = "Verbal Fluency Animals Reason not done"
		cog15 = "Verbal Fluency Vegtables"
		cog15m = "Verbal Fluency Vegtables Reason not done"
		cog16 = "WAIS Digit Symbol Substitution"
		cog16m = "WAIS Digit Symbol Substitution Reason not done"
		cog17 = "WRAT"
		cog17m = "WRAT reason not done"
		cog18 = "WAIS R Similarities"
		cog18m = "WAIS R Similarities Reason not done"
		cog19 = "CESD"
		cog19m = "CESD reson not done"
		borgscore = "Borg Score"
		maskworn_CORNeuTesnew = "COVID-19 Pandemic Mask worn"
		auto_id_CORNeuTesnew = "Unique Teleform Number"
		crf_parent_name_CORNeuTesnew = "CRF Parent Name"
		study_name_CORNeuTesnew = "Study Name"
	;
	FORMAT
		cogall cogall_.
		cogallm cogallm_.
		cog01 cog01_.
		cog01m cog01m_.
		cog02 cog02_.
		cog02m cog02m_.
		cog03 cog03_.
		cog03m cog03m_.
		cog04 cog04_.
		cog04m cog04m_.
		cog05 cog05_.
		cog05m cog05m_.
		cog06 cog06_.
		cog06m cog06m_.
		cog07 cog07_.
		cog07m cog07m_.
		cog08 cog08_.
		cog08m cog08m_.
		cog09 cog09_.
		cog09m cog09m_.
		cog10 cog10_.
		cog10m cog10m_.
		cog11 cog11_.
		cog11m cog11m_.
		cog12 cog12_.
		cog12m cog12m_.
		cog13 cog13_.
		cog13m cog13m_.
		cog14 cog14_.
		cog14m cog14m_.
		cog15 cog15_.
		cog15m cog15m_.
		cog16 cog16_.
		cog16m cog16m_.
		cog17 cog17_.
		cog17m cog17m_.
		cog18 cog18_.
		cog18m cog18m_.
		cog19 cog19_.
		cog19m cog19m_.
		maskworn_CORNeuTesnew maskworn_CORNeuTesnew_.
	;
RUN;


DATA blsa_core_neuropsychological_tes;
    SET WORK.IMPORT;
RUN;
