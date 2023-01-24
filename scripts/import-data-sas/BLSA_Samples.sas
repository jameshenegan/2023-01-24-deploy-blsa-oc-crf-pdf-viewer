%let path_to_file = '../data-csv/BLSA_Samples.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE sam03_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sam03a_
		3 = '3-No Time'
		4 = '4-Refused'
		5 = '5-Unable (Physical or Mental)'
		6 = '6-Equipment problems'
		7 = '7-No Tester'
		8 = '8-Not Eligible'
		9 = '9-Not Scheduled/Not Applicable'
	;

	VALUE sam03d_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE sam04_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sam04a_
		3 = '3-No Time'
		4 = '4-Refused'
		5 = '5-Unable (Physical or Mental)'
		6 = '6-Equipment problems'
		7 = '7-No Tester'
		8 = '8-Not Eligible'
		9 = '9-Not Scheduled/Not Applicable'
	;

	VALUE sam04f_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sam02_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sam02a_
		3 = '3-No Time'
		4 = '4-Refused'
		5 = '5-Unable (Physical or Mental)'
		6 = '6-Equipment problems'
		7 = '7-No Tester'
		8 = '8-Not Eligible'
		9 = '9-Not Scheduled/Not Applicable'
	;

	VALUE sam01c_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sam01d_
		3 = '3-No Time'
		4 = '4-Refused'
		5 = '5-Unable (Physical or Mental)'
		6 = '6-Equipment problems'
		7 = '7-No Tester'
		8 = '8-Not Eligible'
		9 = '9-Not Scheduled/Not Applicable'
	;

	VALUE sam01r_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
	;

	VALUE sam01a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sam01b_
		3 = '3-No Time'
		4 = '4-Refused'
		5 = '5-Unable (Physical or Mental)'
		6 = '6-Equipment problems'
		7 = '7-No Tester'
		8 = '8-Not Eligible'
		9 = '9-Not Scheduled/Not Applicable'
	;

	VALUE sam01l_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
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

	INFORMAT crf_version_Sam $8.;
	FORMAT crf_version_Sam $8.;

	INFORMAT obsdate_samdate YYMMDD10.;
	FORMAT obsdate_samdate YYMMDD10.;

	INFORMAT blank_Sam $1.;
	FORMAT blank_Sam $1.;

	INFORMAT sam3tid BEST32.;
	FORMAT sam3tid BEST12.;

	INFORMAT sam03 BEST32.;
	FORMAT sam03 BEST12.;

	INFORMAT sam03a BEST32.;
	FORMAT sam03a BEST12.;

	INFORMAT sam03b YYMMDD10.;
	FORMAT sam03b YYMMDD10.;

	INFORMAT sam03c $5.;
	FORMAT sam03c $5.;

	INFORMAT sam03d BEST32.;
	FORMAT sam03d BEST12.;

	INFORMAT sam4tid BEST32.;
	FORMAT sam4tid BEST12.;

	INFORMAT sam04 BEST32.;
	FORMAT sam04 BEST12.;

	INFORMAT sam04a BEST32.;
	FORMAT sam04a BEST12.;

	INFORMAT sam04b YYMMDD10.;
	FORMAT sam04b YYMMDD10.;

	INFORMAT sam04c $5.;
	FORMAT sam04c $5.;

	INFORMAT sam04d $1.;
	FORMAT sam04d $1.;

	INFORMAT sam04e $5.;
	FORMAT sam04e $5.;

	INFORMAT sam04f BEST32.;
	FORMAT sam04f BEST12.;

	INFORMAT sam04g $4.;
	FORMAT sam04g $4.;

	INFORMAT sam04h $1.;
	FORMAT sam04h $1.;

	INFORMAT sam04i $52.;
	FORMAT sam04i $52.;

	INFORMAT sam2tid BEST32.;
	FORMAT sam2tid BEST12.;

	INFORMAT sam02 BEST32.;
	FORMAT sam02 BEST12.;

	INFORMAT sam02a BEST32.;
	FORMAT sam02a BEST12.;

	INFORMAT sam1tid BEST32.;
	FORMAT sam1tid BEST12.;

	INFORMAT sam01c BEST32.;
	FORMAT sam01c BEST12.;

	INFORMAT sam01d BEST32.;
	FORMAT sam01d BEST12.;

	INFORMAT sam01r BEST32.;
	FORMAT sam01r BEST12.;

	INFORMAT sam01a BEST32.;
	FORMAT sam01a BEST12.;

	INFORMAT sam01b BEST32.;
	FORMAT sam01b BEST12.;

	INFORMAT sam01l BEST32.;
	FORMAT sam01l BEST12.;

	INFORMAT auto_id_Sam BEST32.;
	FORMAT auto_id_Sam BEST12.;

	INFORMAT crf_parent_name_Sam $12.;
	FORMAT crf_parent_name_Sam $12.;

	INFORMAT item_group_repeat_Sam BEST32.;
	FORMAT item_group_repeat_Sam BEST12.;

	INFORMAT sam04d_2 BEST32.;
	FORMAT sam04d_2 BEST12.;

	INFORMAT study_name_Sam $4.;
	FORMAT study_name_Sam $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_Sam
		obsdate_samdate
		blank_Sam
		sam3tid
		sam03
		sam03a
		sam03b
		sam03c
		sam03d
		sam4tid
		sam04
		sam04a
		sam04b
		sam04c
		sam04d
		sam04e
		sam04f
		sam04g
		sam04h
		sam04i
		sam2tid
		sam02
		sam02a
		sam1tid
		sam01c
		sam01d
		sam01r
		sam01a
		sam01b
		sam01l
		auto_id_Sam
		crf_parent_name_Sam
		item_group_repeat_Sam
		sam04d_2
		study_name_Sam
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
		crf_version_Sam = "CRF Version"
		obsdate_samdate = "Date Completed"
		blank_Sam = "Blank Form"
		sam3tid = "Stool Sample Tester ID"
		sam03 = "Was Stool Sample collected"
		sam03a = "Stool Sample reason not cone"
		sam03b = "Date Collected"
		sam03c = "Time collected"
		sam03d = "Time ampm"
		sam4tid = "Stress Blood Sample Tester ID"
		sam04 = "Was stress blood sample collected"
		sam04a = "Blood Sample reason not cone"
		sam04b = "Date Collected"
		sam04c = "Time collected"
		sam04d = "Time pm"
		sam04e = "What time did you have dinner"
		sam04f = "Anything to eat or drink after dinner"
		sam04g = "Time you last consumed anything"
		sam04h = "Time pm"
		sam04i = "Comment"
		sam2tid = "Saliva Tester ID"
		sam02 = "Was Saliva collected"
		sam02a = "Saliva reason not cone"
		sam1tid = "Nail Clippings Tester ID"
		sam01c = "Were nail clippings collected right"
		sam01d = "Nail Clippings reason not done right"
		sam01r = "Nail clippings right"
		sam01a = "Were nail clippings collected left"
		sam01b = "Nail Clippings reason not done left"
		sam01l = "Nail clippings left"
		auto_id_Sam = "Unique Teleform Number"
		crf_parent_name_Sam = "CRF Parent Name"
		item_group_repeat_Sam = "Item Group Repeate"
		sam04d_2 = "Time pm : Pm (Checkbox Indicator)"
		study_name_Sam = "Study Name"
	;
	FORMAT
		sam03 sam03_.
		sam03a sam03a_.
		sam03d sam03d_.
		sam04 sam04_.
		sam04a sam04a_.
		sam04f sam04f_.
		sam02 sam02_.
		sam02a sam02a_.
		sam01c sam01c_.
		sam01d sam01d_.
		sam01r sam01r_.
		sam01a sam01a_.
		sam01b sam01b_.
		sam01l sam01l_.
	;
RUN;


DATA blsa_samples;
    SET WORK.IMPORT;
RUN;
