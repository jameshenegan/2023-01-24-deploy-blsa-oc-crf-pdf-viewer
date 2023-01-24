%let path_to_file = '../data-csv/BLSA_Triangle_Completion_Test.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE tricom01a_TriComTes_
		0 = 'No - DO NOT TEST'
		1 = 'Yes'
	;

	VALUE tricom01b_
		0 = 'No'
		1 = 'Yes - DO NOT TEST'
	;

	VALUE tricom1yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tricom1lr_
		1 = "to it's Left"
		2 = "to it's right"
	;

	VALUE tricomt1i_
		1 = 'Interrupted by tester for safety'
	;

	VALUE tricom2yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tricom2lr_
		1 = "to it's Left"
		2 = "to it's right"
	;

	VALUE tricomt2i_
		1 = 'Interrupted by tester for safety'
	;

	VALUE tricom3yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tricom3lr_
		1 = "to it's Left"
		2 = "to it's right"
	;

	VALUE tricomt3i_
		1 = 'Interrupted by tester for safety'
	;

	VALUE tricom4yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tricom4lr_
		1 = "to it's Left"
		2 = "to it's right"
	;

	VALUE tricomt4i_
		1 = 'Interrupted by tester for safety'
	;

	VALUE tricomdone_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tricomrnd_
		3 = '3-No Time'
		4 = '4-Refused'
		5 = '5-Unable (Physical or Mental)'
		6 = '6-Equipment problem'
		7 = '7-No Tester'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE trisod_
		1 = '1 Poor'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7 Good'
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

	INFORMAT crf_version_TriComTes $7.;
	FORMAT crf_version_TriComTes $7.;

	INFORMAT obsdate_tricomdate YYMMDD10.;
	FORMAT obsdate_tricomdate YYMMDD10.;

	INFORMAT blank_TriComTes $1.;
	FORMAT blank_TriComTes $1.;

	INFORMAT tricomtid BEST32.;
	FORMAT tricomtid BEST12.;

	INFORMAT tricom01a_TriComTes BEST32.;
	FORMAT tricom01a_TriComTes BEST12.;

	INFORMAT tricom01b BEST32.;
	FORMAT tricom01b BEST12.;

	INFORMAT tricomt1dd BEST32.;
	FORMAT tricomt1dd BEST12.;

	INFORMAT tricomt1ad BEST32.;
	FORMAT tricomt1ad BEST12.;

	INFORMAT tricomt1dt BEST32.;
	FORMAT tricomt1dt BEST12.;

	INFORMAT tricomt1ar BEST32.;
	FORMAT tricomt1ar BEST12.;

	INFORMAT tricom1yn BEST32.;
	FORMAT tricom1yn BEST12.;

	INFORMAT tricom1lr BEST32.;
	FORMAT tricom1lr BEST12.;

	INFORMAT tricomt1i BEST32.;
	FORMAT tricomt1i BEST12.;

	INFORMAT tricomt2dd BEST32.;
	FORMAT tricomt2dd BEST12.;

	INFORMAT tricomt2ad BEST32.;
	FORMAT tricomt2ad BEST12.;

	INFORMAT tricomt2dt BEST32.;
	FORMAT tricomt2dt BEST12.;

	INFORMAT tricomt2ar BEST32.;
	FORMAT tricomt2ar BEST12.;

	INFORMAT tricom2yn BEST32.;
	FORMAT tricom2yn BEST12.;

	INFORMAT tricom2lr BEST32.;
	FORMAT tricom2lr BEST12.;

	INFORMAT tricomt2i BEST32.;
	FORMAT tricomt2i BEST12.;

	INFORMAT tricomt3dd BEST32.;
	FORMAT tricomt3dd BEST12.;

	INFORMAT tricomt3ad BEST32.;
	FORMAT tricomt3ad BEST12.;

	INFORMAT tricomt3dt BEST32.;
	FORMAT tricomt3dt BEST12.;

	INFORMAT tricomt3ar BEST32.;
	FORMAT tricomt3ar BEST12.;

	INFORMAT tricom3yn BEST32.;
	FORMAT tricom3yn BEST12.;

	INFORMAT tricom3lr BEST32.;
	FORMAT tricom3lr BEST12.;

	INFORMAT tricomt3i BEST32.;
	FORMAT tricomt3i BEST12.;

	INFORMAT tricomt4dd BEST32.;
	FORMAT tricomt4dd BEST12.;

	INFORMAT tricomt4ad BEST32.;
	FORMAT tricomt4ad BEST12.;

	INFORMAT tricomt4dt BEST32.;
	FORMAT tricomt4dt BEST12.;

	INFORMAT tricomt4ar BEST32.;
	FORMAT tricomt4ar BEST12.;

	INFORMAT tricom4yn BEST32.;
	FORMAT tricom4yn BEST12.;

	INFORMAT tricom4lr BEST32.;
	FORMAT tricom4lr BEST12.;

	INFORMAT tricomt4i BEST32.;
	FORMAT tricomt4i BEST12.;

	INFORMAT tricomdone BEST32.;
	FORMAT tricomdone BEST12.;

	INFORMAT tricomrnd BEST32.;
	FORMAT tricomrnd BEST12.;

	INFORMAT trisod BEST32.;
	FORMAT trisod BEST12.;

	INFORMAT auto_id_TriComTes BEST32.;
	FORMAT auto_id_TriComTes BEST12.;

	INFORMAT crf_parent_name_TriComTes $29.;
	FORMAT crf_parent_name_TriComTes $29.;

	INFORMAT study_name_TriComTes $4.;
	FORMAT study_name_TriComTes $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_TriComTes
		obsdate_tricomdate
		blank_TriComTes
		tricomtid
		tricom01a_TriComTes
		tricom01b
		tricomt1dd
		tricomt1ad
		tricomt1dt
		tricomt1ar
		tricom1yn
		tricom1lr
		tricomt1i
		tricomt2dd
		tricomt2ad
		tricomt2dt
		tricomt2ar
		tricom2yn
		tricom2lr
		tricomt2i
		tricomt3dd
		tricomt3ad
		tricomt3dt
		tricomt3ar
		tricom3yn
		tricom3lr
		tricomt3i
		tricomt4dd
		tricomt4ad
		tricomt4dt
		tricomt4ar
		tricom4yn
		tricom4lr
		tricomt4i
		tricomdone
		tricomrnd
		trisod
		auto_id_TriComTes
		crf_parent_name_TriComTes
		study_name_TriComTes
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
		crf_version_TriComTes = "CRF Version"
		obsdate_tricomdate = "Date Completed"
		blank_TriComTes = "Blank Form"
		tricomtid = "Tester ID"
		tricom01a_TriComTes = "Able to stand unassisted"
		tricom01b = "Use assistive device for standing or walking"
		tricomt1dd = "Triangle 1 distance of deviation"
		tricomt1ad = "Triangle 1 angle of deviation"
		tricomt1dt = "Triangle 1 distance traveled"
		tricomt1ar = "Triangle 1 angle rotated"
		tricom1yn = "Triangle 1 think you reached original starting point"
		tricom1lr = "Triangle 1 think you are to the left or right"
		tricomt1i = "Triangle 1 interrupted by tester for safety"
		tricomt2dd = "Triangle 2 distance of deviation"
		tricomt2ad = "Triangle 2 angle of deviation"
		tricomt2dt = "Triangle 2 distance traveled"
		tricomt2ar = "Triangle 2 angle rotated"
		tricom2yn = "Triangle 2 think you reached original starting point"
		tricom2lr = "Triangle 2 think you are to the left or right"
		tricomt2i = "Triangle 2 interrupted by tester for safety"
		tricomt3dd = "Triangle 3 distance of deviation"
		tricomt3ad = "Triangle 3 angle of deviation"
		tricomt3dt = "Triangle 3 distance traveled"
		tricomt3ar = "Triangle 3 angle rotated"
		tricom3yn = "Triangle 3 think you reached original starting point"
		tricom3lr = "Triangle 3 think you are to the left or right"
		tricomt3i = "Triangle 3 interrupted by tester for safety"
		tricomt4dd = "Triangle 4 distance of deviation"
		tricomt4ad = "Triangle 4 angle of deviation"
		tricomt4dt = "Triangle 4 distance traveled"
		tricomt4ar = "Triangle 4 angle rotated"
		tricom4yn = "Triangle 4 think you reached original starting point"
		tricom4lr = "Triangle 4 think you are to the left or right"
		tricomt4i = "Triangle 4 interrupted by tester for safety"
		tricomdone = "Was triangle completion test done"
		tricomrnd = "reason not done"
		trisod = "Sense of Direction"
		auto_id_TriComTes = "Unique Teleform Number"
		crf_parent_name_TriComTes = "CRF Parent Name"
		study_name_TriComTes = "Study Name"
	;
	FORMAT
		tricom01a_TriComTes tricom01a_TriComTes_.
		tricom01b tricom01b_.
		tricom1yn tricom1yn_.
		tricom1lr tricom1lr_.
		tricomt1i tricomt1i_.
		tricom2yn tricom2yn_.
		tricom2lr tricom2lr_.
		tricomt2i tricomt2i_.
		tricom3yn tricom3yn_.
		tricom3lr tricom3lr_.
		tricomt3i tricomt3i_.
		tricom4yn tricom4yn_.
		tricom4lr tricom4lr_.
		tricomt4i tricomt4i_.
		tricomdone tricomdone_.
		tricomrnd tricomrnd_.
		trisod trisod_.
	;
RUN;


DATA blsa_triangle_completion_test;
    SET WORK.IMPORT;
RUN;
