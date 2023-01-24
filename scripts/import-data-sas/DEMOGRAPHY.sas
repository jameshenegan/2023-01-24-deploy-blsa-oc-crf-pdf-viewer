%let path_to_file = '../data-csv/DEMOGRAPHY.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ageu_
		1 = 'Years'
		2 = ' Months'
		3 = ' Weeks'
		4 = ' Days'
	;

	VALUE $sex_
		F = 'Female'
		M = ' Male'
	;

	VALUE ethnic_
		0 = 'Not reported'
		1 = 'Not Hispanic or Latino'
		2 = 'Hispanic or Latino'
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

	INFORMAT event_name $9.;
	FORMAT event_name $9.;

	INFORMAT crf_version_DEM $4.;
	FORMAT crf_version_DEM $4.;

	INFORMAT brthdat YYMMDD10.;
	FORMAT brthdat YYMMDD10.;

	INFORMAT age_DEM BEST32.;
	FORMAT age_DEM BEST12.;

	INFORMAT ageu BEST32.;
	FORMAT ageu BEST12.;

	INFORMAT visdat YYMMDD10.;
	FORMAT visdat YYMMDD10.;

	INFORMAT sex $1.;
	FORMAT sex $1.;

	INFORMAT ethnic BEST32.;
	FORMAT ethnic BEST12.;

	INFORMAT crf_parent_name_DEM $10.;
	FORMAT crf_parent_name_DEM $10.;

	INFORMAT item_group_repeat_DEM BEST32.;
	FORMAT item_group_repeat_DEM BEST12.;

	INFORMAT study_name_DEM $4.;
	FORMAT study_name_DEM $4.;

	INFORMAT race_6 BEST32.;
	FORMAT race_6 BEST12.;

	INFORMAT race_1 BEST32.;
	FORMAT race_1 BEST12.;

	INFORMAT race_5 BEST32.;
	FORMAT race_5 BEST12.;

	INFORMAT race_2 BEST32.;
	FORMAT race_2 BEST12.;

	INFORMAT race_3 BEST32.;
	FORMAT race_3 BEST12.;

	INFORMAT race_7 BEST32.;
	FORMAT race_7 BEST12.;

	INFORMAT race_9 BEST32.;
	FORMAT race_9 BEST12.;

	INPUT
		idno
		subject_id
		event_name
		crf_version_DEM
		brthdat
		age_DEM
		ageu
		visdat
		sex
		ethnic
		crf_parent_name_DEM
		item_group_repeat_DEM
		study_name_DEM
		race_6
		race_1
		race_5
		race_2
		race_3
		race_7
		race_9
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		idno = "Participant ID"
		subject_id = "Participant ID"
		event_name = "Visit Number"
		crf_version_DEM = "CRF Version"
		brthdat = "Date of Birth"
		age_DEM = "Age"
		ageu = "Age Units"
		visdat = "Date of visit:"
		sex = "Sex"
		ethnic = "Ethnicity of Subject"
		crf_parent_name_DEM = "CRF Parent Name"
		item_group_repeat_DEM = "Item Group Repeate"
		study_name_DEM = "Study Name"
		race_6 = "Race of Subject :  White (Checkbox Indicator)"
		race_1 = "Race of Subject : Asian or Pacific Islander (Checkbox Indicator)"
		race_5 = "Race of Subject :  Hispanic (Checkbox Indicator)"
		race_2 = "Race of Subject :  American Indian or Alaskan Native (Checkbox Indicator)"
		race_3 = "Race of Subject :  Black or African American (Checkbox Indicator)"
		race_7 = "Race of Subject :  More than one race (Checkbox Indicator)"
		race_9 = "Race of Subject :  Asian (Checkbox Indicator)"
	;
	FORMAT
		ageu ageu_.
		ethnic ethnic_.
		sex $sex_.
	;
RUN;


DATA demography;
    SET WORK.IMPORT;
RUN;
