%let path_to_file = '../data-csv/BLSA_CT_Reader_Checklist_rev.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ctred01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ctred02_
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

	INFORMAT crf_version_CTReaCherev $7.;
	FORMAT crf_version_CTReaCherev $7.;

	INFORMAT obsdate_ctdondt YYMMDD10.;
	FORMAT obsdate_ctdondt YYMMDD10.;

	INFORMAT blank_CTReaCherev $1.;
	FORMAT blank_CTReaCherev $1.;

	INFORMAT ctredid BEST32.;
	FORMAT ctredid BEST12.;

	INFORMAT ctred01 BEST32.;
	FORMAT ctred01 BEST12.;

	INFORMAT ctrecdt YYMMDD10.;
	FORMAT ctrecdt YYMMDD10.;

	INFORMAT ctred02 BEST32.;
	FORMAT ctred02 BEST12.;

	INFORMAT ctred02a BEST32.;
	FORMAT ctred02a BEST12.;

	INFORMAT ctred02b BEST32.;
	FORMAT ctred02b BEST12.;

	INFORMAT ctred02c BEST32.;
	FORMAT ctred02c BEST12.;

	INFORMAT ctred02d BEST32.;
	FORMAT ctred02d BEST12.;

	INFORMAT ctred02e BEST32.;
	FORMAT ctred02e BEST12.;

	INFORMAT ctred02f BEST32.;
	FORMAT ctred02f BEST12.;

	INFORMAT ctred02g BEST32.;
	FORMAT ctred02g BEST12.;

	INFORMAT ctred02h BEST32.;
	FORMAT ctred02h BEST12.;

	INFORMAT ctred03a $1.;
	FORMAT ctred03a $1.;

	INFORMAT ctred03b $1.;
	FORMAT ctred03b $1.;

	INFORMAT ctred03c $1.;
	FORMAT ctred03c $1.;

	INFORMAT ctred03d $1.;
	FORMAT ctred03d $1.;

	INFORMAT auto_id_CTReaCherev BEST32.;
	FORMAT auto_id_CTReaCherev BEST12.;

	INFORMAT crf_parent_name_CTReaCherev $28.;
	FORMAT crf_parent_name_CTReaCherev $28.;

	INFORMAT crf_status_CTReaCherev $6.;
	FORMAT crf_status_CTReaCherev $6.;

	INFORMAT ctred03a_1 BEST32.;
	FORMAT ctred03a_1 BEST12.;

	INFORMAT ctred03a_2 $1.;
	FORMAT ctred03a_2 $1.;

	INFORMAT ctred03a_3 BEST32.;
	FORMAT ctred03a_3 BEST12.;

	INFORMAT ctred03a_4 $1.;
	FORMAT ctred03a_4 $1.;

	INFORMAT ctred03a_5 $1.;
	FORMAT ctred03a_5 $1.;

	INFORMAT ctred03a_6 BEST32.;
	FORMAT ctred03a_6 BEST12.;

	INFORMAT ctred03b_1 BEST32.;
	FORMAT ctred03b_1 BEST12.;

	INFORMAT ctred03b_2 BEST32.;
	FORMAT ctred03b_2 BEST12.;

	INFORMAT ctred03b_3 BEST32.;
	FORMAT ctred03b_3 BEST12.;

	INFORMAT ctred03b_4 BEST32.;
	FORMAT ctred03b_4 BEST12.;

	INFORMAT ctred03b_5 BEST32.;
	FORMAT ctred03b_5 BEST12.;

	INFORMAT ctred03b_6 BEST32.;
	FORMAT ctred03b_6 BEST12.;

	INFORMAT ctred03c_1 BEST32.;
	FORMAT ctred03c_1 BEST12.;

	INFORMAT ctred03c_2 BEST32.;
	FORMAT ctred03c_2 BEST12.;

	INFORMAT ctred03c_3 BEST32.;
	FORMAT ctred03c_3 BEST12.;

	INFORMAT ctred03c_4 BEST32.;
	FORMAT ctred03c_4 BEST12.;

	INFORMAT ctred03c_5 BEST32.;
	FORMAT ctred03c_5 BEST12.;

	INFORMAT ctred03c_6 BEST32.;
	FORMAT ctred03c_6 BEST12.;

	INFORMAT ctred03d_1 BEST32.;
	FORMAT ctred03d_1 BEST12.;

	INFORMAT ctred03d_2 BEST32.;
	FORMAT ctred03d_2 BEST12.;

	INFORMAT ctred03d_3 BEST32.;
	FORMAT ctred03d_3 BEST12.;

	INFORMAT ctred03d_4 BEST32.;
	FORMAT ctred03d_4 BEST12.;

	INFORMAT ctred03d_5 BEST32.;
	FORMAT ctred03d_5 BEST12.;

	INFORMAT study_name_CTReaCherev $4.;
	FORMAT study_name_CTReaCherev $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_CTReaCherev
		obsdate_ctdondt
		blank_CTReaCherev
		ctredid
		ctred01
		ctrecdt
		ctred02
		ctred02a
		ctred02b
		ctred02c
		ctred02d
		ctred02e
		ctred02f
		ctred02g
		ctred02h
		ctred03a
		ctred03b
		ctred03c
		ctred03d
		auto_id_CTReaCherev
		crf_parent_name_CTReaCherev
		crf_status_CTReaCherev
		ctred03a_1
		ctred03a_2
		ctred03a_3
		ctred03a_4
		ctred03a_5
		ctred03a_6
		ctred03b_1
		ctred03b_2
		ctred03b_3
		ctred03b_4
		ctred03b_5
		ctred03b_6
		ctred03c_1
		ctred03c_2
		ctred03c_3
		ctred03c_4
		ctred03c_5
		ctred03c_6
		ctred03d_1
		ctred03d_2
		ctred03d_3
		ctred03d_4
		ctred03d_5
		study_name_CTReaCherev
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
		crf_version_CTReaCherev = "CRF Version"
		obsdate_ctdondt = "Date CT done"
		blank_CTReaCherev = "Blank Form"
		ctredid = "Tester ID"
		ctred01 = "CD received"
		ctrecdt = "Date CT received"
		ctred02 = "Are there duplicate images"
		ctred02a = "L1-L2 how many"
		ctred02b = "L4-L5 how many"
		ctred02c = "Thigh how many"
		ctred02d = "Upper tibia how many"
		ctred02e = "Lower tibia how many"
		ctred02f = "Foot how many"
		ctred02g = "Scout Film Torso how many"
		ctred02h = "Scout Film - Legs how many"
		ctred03a = "Image Missing"
		ctred03b = "Hardware"
		ctred03c = "Malalignment"
		ctred03d = "Artifact"
		auto_id_CTReaCherev = "Unique Teleform Number"
		crf_parent_name_CTReaCherev = "CRF Parent Name"
		crf_status_CTReaCherev = "CRF Status"
		ctred03a_1 = "Image Missing : L1-L2 (Checkbox Indicator)"
		ctred03a_2 = "Image Missing : L4-L5 (Checkbox Indicator)"
		ctred03a_3 = "Image Missing : Thigh (Checkbox Indicator)"
		ctred03a_4 = "Image Missing : Upper Tibia (Checkbox Indicator)"
		ctred03a_5 = "Image Missing : Lower Tibia (Checkbox Indicator)"
		ctred03a_6 = "Image Missing : Foot (Checkbox Indicator)"
		ctred03b_1 = "Hardware : L1-L2 (Checkbox Indicator)"
		ctred03b_2 = "Hardware : L4-L5 (Checkbox Indicator)"
		ctred03b_3 = "Hardware : Thigh (Checkbox Indicator)"
		ctred03b_4 = "Hardware : Upper Tibia (Checkbox Indicator)"
		ctred03b_5 = "Hardware : Lower Tibia (Checkbox Indicator)"
		ctred03b_6 = "Hardware : Foot (Checkbox Indicator)"
		ctred03c_1 = "Malalignment : L1-L2 (Checkbox Indicator)"
		ctred03c_2 = "Malalignment : L4-L5 (Checkbox Indicator)"
		ctred03c_3 = "Malalignment : Thigh (Checkbox Indicator)"
		ctred03c_4 = "Malalignment : Upper Tibia (Checkbox Indicator)"
		ctred03c_5 = "Malalignment : Lower Tibia (Checkbox Indicator)"
		ctred03c_6 = "Malalignment : Foot (Checkbox Indicator)"
		ctred03d_1 = "Artifact : L1-L2 (Checkbox Indicator)"
		ctred03d_2 = "Artifact : L4-L5 (Checkbox Indicator)"
		ctred03d_3 = "Artifact : Thigh (Checkbox Indicator)"
		ctred03d_4 = "Artifact : Upper Tibia (Checkbox Indicator)"
		ctred03d_5 = "Artifact : Lower Tibia (Checkbox Indicator)"
		study_name_CTReaCherev = "Study Name"
	;
	FORMAT
		ctred01 ctred01_.
		ctred02 ctred02_.
	;
RUN;


DATA blsa_ct_reader_checklist_rev;
    SET WORK.IMPORT;
RUN;
