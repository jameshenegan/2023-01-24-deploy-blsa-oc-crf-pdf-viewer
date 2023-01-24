%let path_to_file = '../data-csv/BLSA_Sense_of_Direction.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE judgedistance_
		1 = '(1) strongly agree'
		2 = '(2)'
		3 = '(3)'
		4 = '(4)'
		5 = '(5)'
		6 = '(6)'
		7 = '(7) strongly disagree'
	;

	VALUE senseofdirection_
		1 = '(1) strongly agree'
		2 = '(2)'
		3 = '(3)'
		4 = '(4)'
		5 = '(5)'
		6 = '(6)'
		7 = '(7) strongly disagree'
	;

	VALUE losteasily_
		1 = '(1) strongly agree'
		2 = '(2)'
		3 = '(3)'
		4 = '(4)'
		5 = '(5)'
		6 = '(6)'
		7 = '(7) strongly disagree'
	;

	VALUE troubledirections_
		1 = '(1) strongly agree'
		2 = '(2)'
		3 = '(3)'
		4 = '(4)'
		5 = '(5)'
		6 = '(6)'
		7 = '(7) strongly disagree'
	;

	VALUE routeswhenriding_
		1 = '(1) strongly agree'
		2 = '(2)'
		3 = '(3)'
		4 = '(4)'
		5 = '(5)'
		6 = '(6)'
		7 = '(7) strongly disagree'
	;

	VALUE rememberroutes_
		1 = '(1) strongly agree'
		2 = '(2)'
		3 = '(3)'
		4 = '(4)'
		5 = '(5)'
		6 = '(6)'
		7 = '(7) strongly disagree'
	;

	VALUE mentalmap_
		1 = '(1) strongly agree'
		2 = '(2)'
		3 = '(3)'
		4 = '(4)'
		5 = '(5)'
		6 = '(6)'
		7 = '(7) strongly disagree'
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

	INFORMAT crf_version_SenofDir $8.;
	FORMAT crf_version_SenofDir $8.;

	INFORMAT date_SenofDir YYMMDD10.;
	FORMAT date_SenofDir YYMMDD10.;

	INFORMAT blank_SenofDir $1.;
	FORMAT blank_SenofDir $1.;

	INFORMAT judgedistance BEST32.;
	FORMAT judgedistance BEST12.;

	INFORMAT senseofdirection BEST32.;
	FORMAT senseofdirection BEST12.;

	INFORMAT losteasily BEST32.;
	FORMAT losteasily BEST12.;

	INFORMAT troubledirections BEST32.;
	FORMAT troubledirections BEST12.;

	INFORMAT routeswhenriding BEST32.;
	FORMAT routeswhenriding BEST12.;

	INFORMAT rememberroutes BEST32.;
	FORMAT rememberroutes BEST12.;

	INFORMAT mentalmap BEST32.;
	FORMAT mentalmap BEST12.;

	INFORMAT crf_parent_name_SenofDir $23.;
	FORMAT crf_parent_name_SenofDir $23.;

	INFORMAT study_name_SenofDir $4.;
	FORMAT study_name_SenofDir $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_SenofDir
		date_SenofDir
		blank_SenofDir
		judgedistance
		senseofdirection
		losteasily
		troubledirections
		routeswhenriding
		rememberroutes
		mentalmap
		crf_parent_name_SenofDir
		study_name_SenofDir
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
		crf_version_SenofDir = "CRF Version"
		date_SenofDir = "Date"
		blank_SenofDir = "Blank"
		judgedistance = "I am very good at judging distances"
		senseofdirection = "My sense of direction is very good"
		losteasily = "I very easily get lost in a new city"
		troubledirections = "I have trouble understanding directions"
		routeswhenriding = "I don't remember routes very well while riding as a passenger in a car"
		rememberroutes = "I can usually remember a new route after I have traveled it only once"
		mentalmap = "I don't have a very good mental map of my environment"
		crf_parent_name_SenofDir = "CRF Parent Name"
		study_name_SenofDir = "Study Name"
	;
	FORMAT
		judgedistance judgedistance_.
		senseofdirection senseofdirection_.
		losteasily losteasily_.
		troubledirections troubledirections_.
		routeswhenriding routeswhenriding_.
		rememberroutes rememberroutes_.
		mentalmap mentalmap_.
	;
RUN;


DATA blsa_sense_of_direction;
    SET WORK.IMPORT;
RUN;
