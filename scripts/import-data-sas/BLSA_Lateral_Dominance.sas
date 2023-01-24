%let path_to_file = '../data-csv/BLSA_Lateral_Dominance.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE lhd01_
		1 = 'Right'
		2 = 'Left'
		3 = 'Ambidextrous'
	;

	VALUE lhd02_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lhd04a_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
	;

	VALUE lhd04b_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
	;

	VALUE lhd04c_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
	;

	VALUE lhd04d_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
	;

	VALUE lhd04e_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
	;

	VALUE lhd04f_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
	;

	VALUE lhd04g_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
	;

	VALUE lhd04h_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
	;

	VALUE lhd04i_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
	;

	VALUE lhd04j_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
	;

	VALUE lhd04k_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
	;

	VALUE lhd04l_
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
		4 = 'Right Usually'
		5 = 'Right Always'
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

	INFORMAT crf_version_LatDom $8.;
	FORMAT crf_version_LatDom $8.;

	INFORMAT obsdate_lhddate YYMMDD10.;
	FORMAT obsdate_lhddate YYMMDD10.;

	INFORMAT blank_LatDom $1.;
	FORMAT blank_LatDom $1.;

	INFORMAT lhdtid BEST32.;
	FORMAT lhdtid BEST12.;

	INFORMAT lhd01 BEST32.;
	FORMAT lhd01 BEST12.;

	INFORMAT lhd02 BEST32.;
	FORMAT lhd02 BEST12.;

	INFORMAT lhd02age BEST32.;
	FORMAT lhd02age BEST12.;

	INFORMAT lhd04com $176.;
	FORMAT lhd04com $176.;

	INFORMAT lhd04a BEST32.;
	FORMAT lhd04a BEST12.;

	INFORMAT lhd04b BEST32.;
	FORMAT lhd04b BEST12.;

	INFORMAT lhd04c BEST32.;
	FORMAT lhd04c BEST12.;

	INFORMAT lhd04d BEST32.;
	FORMAT lhd04d BEST12.;

	INFORMAT lhd04e BEST32.;
	FORMAT lhd04e BEST12.;

	INFORMAT lhd04f BEST32.;
	FORMAT lhd04f BEST12.;

	INFORMAT lhd04g BEST32.;
	FORMAT lhd04g BEST12.;

	INFORMAT lhd04h BEST32.;
	FORMAT lhd04h BEST12.;

	INFORMAT lhd04i BEST32.;
	FORMAT lhd04i BEST12.;

	INFORMAT lhd04j BEST32.;
	FORMAT lhd04j BEST12.;

	INFORMAT lhd04k BEST32.;
	FORMAT lhd04k BEST12.;

	INFORMAT lhd04l BEST32.;
	FORMAT lhd04l BEST12.;

	INFORMAT auto_id_LatDom BEST32.;
	FORMAT auto_id_LatDom BEST12.;

	INFORMAT crf_parent_name_LatDom $22.;
	FORMAT crf_parent_name_LatDom $22.;

	INFORMAT study_name_LatDom $4.;
	FORMAT study_name_LatDom $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_LatDom
		obsdate_lhddate
		blank_LatDom
		lhdtid
		lhd01
		lhd02
		lhd02age
		lhd04com
		lhd04a
		lhd04b
		lhd04c
		lhd04d
		lhd04e
		lhd04f
		lhd04g
		lhd04h
		lhd04i
		lhd04j
		lhd04k
		lhd04l
		auto_id_LatDom
		crf_parent_name_LatDom
		study_name_LatDom
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
		crf_version_LatDom = "CRF Version"
		obsdate_lhddate = "Date Completed"
		blank_LatDom = "Blank Form"
		lhdtid = "Tester ID"
		lhd01 = "Describe your handedness"
		lhd02 = "Did you ever change your writing hand"
		lhd02age = "If yes at what change writing hand"
		lhd04com = "Why did you change"
		lhd04a = "Hand dominance writing"
		lhd04b = "Hand dominance drawing"
		lhd04c = "Hand dominance throwing"
		lhd04d = "Hand dominance hammer"
		lhd04e = "Hand dominance Scissors"
		lhd04f = "Hand dominance toothbrush"
		lhd04g = "Hand dominance knife without fork"
		lhd04h = "Hand dominance spoon"
		lhd04i = "Hand dominance screwdriver"
		lhd04j = "Hand dominance broom upper hand"
		lhd04k = "Hand dominance striking match"
		lhd04l = "Hand dominance opening box lid"
		auto_id_LatDom = "Unique Teleform Number"
		crf_parent_name_LatDom = "CRF Parent Name"
		study_name_LatDom = "Study Name"
	;
	FORMAT
		lhd01 lhd01_.
		lhd02 lhd02_.
		lhd04a lhd04a_.
		lhd04b lhd04b_.
		lhd04c lhd04c_.
		lhd04d lhd04d_.
		lhd04e lhd04e_.
		lhd04f lhd04f_.
		lhd04g lhd04g_.
		lhd04h lhd04h_.
		lhd04i lhd04i_.
		lhd04j lhd04j_.
		lhd04k lhd04k_.
		lhd04l lhd04l_.
	;
RUN;


DATA blsa_lateral_dominance;
    SET WORK.IMPORT;
RUN;
