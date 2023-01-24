%let path_to_file = '../data-csv/BLSA_Lab_Processing.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE lab03_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lab03c_
		0 = 'Other (please specify)'
		1 = 'Exclusion criteria (includes lower hemoglobin)'
		2 = 'Insufficient venous access'
		5 = 'Physical problems'
		7 = 'Refused'
		9 = 'Technical problems'
	;

	VALUE lab03a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lab03b_
		1 = 'Poor (small veins could not thread IV difficult blood blow)'
		2 = 'Fair (this veins slow blood flow)'
		3 = 'Good (moderate thin veins adequate blood flow)'
		4 = 'Excellent (large veins no problems all tubes collected)'
	;

	VALUE lab04_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lab04a_
		0 = 'Not fasting'
		1 = 'Fasting'
	;

	VALUE lab01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lab02_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lab07_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lab06_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lab06a_
		0 = 'Not fasting'
		1 = 'Fasting'
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

	INFORMAT crf_version_LabPro $10.;
	FORMAT crf_version_LabPro $10.;

	INFORMAT obsdate_labdate YYMMDD10.;
	FORMAT obsdate_labdate YYMMDD10.;

	INFORMAT blank_LabPro $1.;
	FORMAT blank_LabPro $1.;

	INFORMAT labtid BEST32.;
	FORMAT labtid BEST12.;

	INFORMAT lab03 BEST32.;
	FORMAT lab03 BEST12.;

	INFORMAT lab03c BEST32.;
	FORMAT lab03c BEST12.;

	INFORMAT lab03d $78.;
	FORMAT lab03d $78.;

	INFORMAT lab03a BEST32.;
	FORMAT lab03a BEST12.;

	INFORMAT lab03b BEST32.;
	FORMAT lab03b BEST12.;

	INFORMAT lab04 BEST32.;
	FORMAT lab04 BEST12.;

	INFORMAT lab04a BEST32.;
	FORMAT lab04a BEST12.;

	INFORMAT auto_id_LabPro BEST32.;
	FORMAT auto_id_LabPro BEST12.;

	INFORMAT comment_LabPro $103.;
	FORMAT comment_LabPro $103.;

	INFORMAT lab01 BEST32.;
	FORMAT lab01 BEST12.;

	INFORMAT lab02 BEST32.;
	FORMAT lab02 BEST12.;

	INFORMAT day2tubescoll $122.;
	FORMAT day2tubescoll $122.;

	INFORMAT lab07 BEST32.;
	FORMAT lab07 BEST12.;

	INFORMAT lab07a_LabPro $5.;
	FORMAT lab07a_LabPro $5.;

	INFORMAT lab07b_LabPro $5.;
	FORMAT lab07b_LabPro $5.;

	INFORMAT lab05a $14.;
	FORMAT lab05a $14.;

	INFORMAT lab05b $23.;
	FORMAT lab05b $23.;

	INFORMAT lab05c $14.;
	FORMAT lab05c $14.;

	INFORMAT lab05d $14.;
	FORMAT lab05d $14.;

	INFORMAT lab05e $14.;
	FORMAT lab05e $14.;

	INFORMAT lab06 BEST32.;
	FORMAT lab06 BEST12.;

	INFORMAT lab06a BEST32.;
	FORMAT lab06a BEST12.;

	INFORMAT lab06b $14.;
	FORMAT lab06b $14.;

	INFORMAT lab07d $5.;
	FORMAT lab07d $5.;

	INFORMAT lab07c $14.;
	FORMAT lab07c $14.;

	INFORMAT crf_parent_name_LabPro $19.;
	FORMAT crf_parent_name_LabPro $19.;

	INFORMAT study_name_LabPro $4.;
	FORMAT study_name_LabPro $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_LabPro
		obsdate_labdate
		blank_LabPro
		labtid
		lab03
		lab03c
		lab03d
		lab03a
		lab03b
		lab04
		lab04a
		auto_id_LabPro
		comment_LabPro
		lab01
		lab02
		day2tubescoll
		lab07
		lab07a_LabPro
		lab07b_LabPro
		lab05a
		lab05b
		lab05c
		lab05d
		lab05e
		lab06
		lab06a
		lab06b
		lab07d
		lab07c
		crf_parent_name_LabPro
		study_name_LabPro
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
		crf_version_LabPro = "CRF Version"
		obsdate_labdate = "Date Completed"
		blank_LabPro = "Blank Form"
		labtid = "Tester ID"
		lab03 = "Venipuncture done"
		lab03c = "Venipuncture reason not done"
		lab03d = "Venipuncture other RND"
		lab03a = "Venipuncture require more than 2 sticks"
		lab03b = "Veins quality assessment"
		lab04 = "Were all expected samples collected at first day"
		lab04a = "Fasting"
		auto_id_LabPro = "Unique Teleform Number"
		comment_LabPro = "Comment"
		lab01 = "Have you donated blood within 56 days"
		lab02 = "Have history of anemia"
		day2tubescoll = "Describe tubes collected second day"
		lab07 = "Was 24 hour urine collection obtained"
		lab07a_LabPro = "24 hour urine begin time"
		lab07b_LabPro = "24 hour urine end time"
		lab05a = "3ml Lavender label"
		lab05b = "8.5 ml Red"
		lab05c = "4.5 ml Blue"
		lab05d = "RPR 3.5ml Gold"
		lab05e = "HIV 3.5 ml Gold"
		lab06 = "Urine specimen collected for UA"
		lab06a = "Urine Fasting or Non Fasting"
		lab06b = "HH Urine Sample label"
		lab07d = "Total time for 24 hr urine"
		lab07c = "24 hour urine label"
		crf_parent_name_LabPro = "CRF Parent Name"
		study_name_LabPro = "Study Name"
	;
	FORMAT
		lab03 lab03_.
		lab03c lab03c_.
		lab03a lab03a_.
		lab03b lab03b_.
		lab04 lab04_.
		lab04a lab04a_.
		lab01 lab01_.
		lab02 lab02_.
		lab07 lab07_.
		lab06 lab06_.
		lab06a lab06a_.
	;
RUN;


DATA blsa_lab_processing;
    SET WORK.IMPORT;
RUN;
