%let path_to_file = '../data-csv/BLSA_Purpose_in_Life.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE q1_
		1 = 'Strongly disagree'
		2 = 'Disagree'
		3 = 'Neutral'
		4 = 'Agree'
		5 = 'Strongly agree'
	;

	VALUE q2_
		1 = 'Strongly agree'
		2 = 'Agree'
		3 = 'Neutral'
		4 = 'Disagree'
		5 = 'Strongly disagree'
	;

	VALUE q3_
		1 = 'Strongly agree'
		2 = 'Agree'
		3 = 'Neutral'
		4 = 'Disagree'
		5 = 'Strongly disagree'
	;

	VALUE q4_
		1 = 'Strongly disagree'
		2 = 'Disagree'
		3 = 'Neutral'
		4 = 'Agree'
		5 = 'Strongly agree'
	;

	VALUE q5_
		1 = 'Strongly agree'
		2 = 'Agree'
		3 = 'Neutral'
		4 = 'Disagree'
		5 = 'Strongly disagree'
	;

	VALUE q6_
		1 = 'Strongly agree'
		2 = 'Agree'
		3 = 'Neutral'
		4 = 'Disagree'
		5 = 'Strongly disagree'
	;

	VALUE q7_
		1 = 'Strongly disagree'
		2 = 'Disagree'
		3 = 'Neutral'
		4 = 'Agree'
		5 = 'Strongly agree'
	;

	VALUE q8_
		1 = 'Strongly disagree'
		2 = 'Disagree'
		3 = 'Neutral'
		4 = 'Agree'
		5 = 'Strongly agree'
	;

	VALUE q9_
		1 = 'Strongly disagree'
		2 = 'Disagree'
		3 = 'Neutral'
		4 = 'Agree'
		5 = 'Strongly agree'
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

	INFORMAT crf_version_PurinLif $7.;
	FORMAT crf_version_PurinLif $7.;

	INFORMAT date_PurinLif YYMMDD10.;
	FORMAT date_PurinLif YYMMDD10.;

	INFORMAT q1 BEST32.;
	FORMAT q1 BEST12.;

	INFORMAT q2 BEST32.;
	FORMAT q2 BEST12.;

	INFORMAT q3 BEST32.;
	FORMAT q3 BEST12.;

	INFORMAT q4 BEST32.;
	FORMAT q4 BEST12.;

	INFORMAT q5 BEST32.;
	FORMAT q5 BEST12.;

	INFORMAT q6 BEST32.;
	FORMAT q6 BEST12.;

	INFORMAT q7 BEST32.;
	FORMAT q7 BEST12.;

	INFORMAT q8 BEST32.;
	FORMAT q8 BEST12.;

	INFORMAT q9 BEST32.;
	FORMAT q9 BEST12.;

	INFORMAT crf_parent_name_PurinLif $20.;
	FORMAT crf_parent_name_PurinLif $20.;

	INFORMAT study_name_PurinLif $4.;
	FORMAT study_name_PurinLif $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_PurinLif
		date_PurinLif
		q1
		q2
		q3
		q4
		q5
		q6
		q7
		q8
		q9
		crf_parent_name_PurinLif
		study_name_PurinLif
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
		crf_version_PurinLif = "CRF Version"
		date_PurinLif = "Visit Date"
		q1 = "I feel good when I think of what I've done in the past and what I hope to do in the future"
		q2 = "I live life one day at a time and don't really think about the future"
		q3 = "I tend to focus on the present because the future nearly always brings me problems"
		q4 = "I have a sense of direction and purpose in life"
		q5 = "My daily activities often seem trivial and unimportant to me"
		q6 = "I used to set goals for myself but that now seems like a waste of time"
		q7 = "I enjoy making plans for the future and working them to a reality"
		q8 = "I am an active person in carrying out the plans I set for myself"
		q9 = "Some people wander aimlessly through life but I am not one of them"
		crf_parent_name_PurinLif = "CRF Parent Name"
		study_name_PurinLif = "Study Name"
	;
	FORMAT
		q1 q1_.
		q2 q2_.
		q3 q3_.
		q4 q4_.
		q5 q5_.
		q6 q6_.
		q7 q7_.
		q8 q8_.
		q9 q9_.
	;
RUN;


DATA blsa_purpose_in_life;
    SET WORK.IMPORT;
RUN;
