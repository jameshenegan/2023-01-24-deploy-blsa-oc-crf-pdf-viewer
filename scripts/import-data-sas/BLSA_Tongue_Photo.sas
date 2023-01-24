%let path_to_file = '../data-csv/BLSA_Tongue_Photo.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE tph01_
		0 = 'Other'
		1 = 'Yes'
		4 = 'Refused'
		6 = 'Technical'
		7 = 'No tester'
		9 = 'Not scheduled'
	;

	VALUE tph02a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tph02b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tph02c_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tph02d_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tph03a_
		0 = 'Other'
		4 = 'Refused'
		6 = 'Technical'
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

	INFORMAT crf_version_TonPho $8.;
	FORMAT crf_version_TonPho $8.;

	INFORMAT obsdate_tphdat YYMMDD10.;
	FORMAT obsdate_tphdat YYMMDD10.;

	INFORMAT blank_TonPho $1.;
	FORMAT blank_TonPho $1.;

	INFORMAT tphtid BEST32.;
	FORMAT tphtid BEST12.;

	INFORMAT tph01 BEST32.;
	FORMAT tph01 BEST12.;

	INFORMAT tph01c $72.;
	FORMAT tph01c $72.;

	INFORMAT tph02a BEST32.;
	FORMAT tph02a BEST12.;

	INFORMAT tph02b BEST32.;
	FORMAT tph02b BEST12.;

	INFORMAT tph02c BEST32.;
	FORMAT tph02c BEST12.;

	INFORMAT tph02d BEST32.;
	FORMAT tph02d BEST12.;

	INFORMAT tph03a BEST32.;
	FORMAT tph03a BEST12.;

	INFORMAT tph03b $47.;
	FORMAT tph03b $47.;

	INFORMAT auto_id_TonPho BEST32.;
	FORMAT auto_id_TonPho BEST12.;

	INFORMAT crf_parent_name_TonPho $17.;
	FORMAT crf_parent_name_TonPho $17.;

	INFORMAT study_name_TonPho $4.;
	FORMAT study_name_TonPho $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_TonPho
		obsdate_tphdat
		blank_TonPho
		tphtid
		tph01
		tph01c
		tph02a
		tph02b
		tph02c
		tph02d
		tph03a
		tph03b
		auto_id_TonPho
		crf_parent_name_TonPho
		study_name_TonPho
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
		crf_version_TonPho = "CRF Version"
		obsdate_tphdat = "Date Completed"
		blank_TonPho = "Blank Form"
		tphtid = "Tester ID"
		tph01 = "Were Tongue photos taken"
		tph01c = "Comment"
		tph02a = "Photo taken without food coloring Left"
		tph02b = "Photo taken without food coloring Right"
		tph02c = "Photo taken with food coloring Left"
		tph02d = "Photo taken with food coloring Right"
		tph03a = "Reason all photos not collected"
		tph03b = "Other reason all photos not collected"
		auto_id_TonPho = "Unique Teleform Number"
		crf_parent_name_TonPho = "CRF Parent Name"
		study_name_TonPho = "Study Name"
	;
	FORMAT
		tph01 tph01_.
		tph02a tph02a_.
		tph02b tph02b_.
		tph02c tph02c_.
		tph02d tph02d_.
		tph03a tph03a_.
	;
RUN;


DATA blsa_tongue_photo;
    SET WORK.IMPORT;
RUN;
