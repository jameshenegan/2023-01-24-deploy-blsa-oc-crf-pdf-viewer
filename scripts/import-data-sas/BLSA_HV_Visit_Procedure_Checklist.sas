%let path_to_file = '../data-csv/BLSA_HV_Visit_Procedure_Checklist.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE hvttimea_
		1 = 'am'
		2 = 'pm'
	;

	VALUE hvttimeb_
		1 = 'am'
		2 = 'pm'
	;

	VALUE hvttype_
		0 = 'Normal (default)'
		1 = 'Continuation of previous visit'
	;

	VALUE hvt15_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt15a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt01_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt02_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt16_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt16a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt03_
		0 = 'Not done'
		1 = 'Done'
		2 = 'Proxy'
	;

	VALUE hvt03a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt20_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt20a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt21_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt21a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt04_
		0 = 'Not done'
		1 = 'Done'
		2 = 'Proxy'
	;

	VALUE hvt04a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt05_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt05a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt06_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt06a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt07_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt07a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt08_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt08a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt09_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt09a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt10_
		0 = 'Not done'
		1 = 'Done'
		2 = 'Proxy'
	;

	VALUE hvt10a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt10b_
		1 = 'To be rescheduled'
	;

	VALUE hvt11_
		0 = 'Not done'
		1 = 'Done'
		2 = 'Proxy'
	;

	VALUE hvt11a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt11b_
		1 = 'To be rescheduled'
	;

	VALUE hvt17_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt17a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt18_
		0 = 'Not done'
		1 = 'Done'
		2 = 'Proxy'
	;

	VALUE hvt18a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt12_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt12a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt13_
		0 = 'Not done'
		1 = 'Done'
		3 = 'Consented'
	;

	VALUE hvt13a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt14_
		0 = 'Not done'
		1 = 'Done'
		3 = 'Consented'
	;

	VALUE hvt14a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt19_
		0 = 'Not done'
		1 = 'Done'
		3 = 'Consented'
	;

	VALUE hvt19a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvt19b_
		1 = 'To be rescheduled'
	;

	VALUE hvt22_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE hvt22a_
		4 = '4-Refused'
		5 = '5-Unable (Physical or mental'
		6 = '6-Equipment problem'
		7 = '7-No tester/no time'
		8 = '8-Not eligible'
		9 = '9-Not scheduled/Not applicable'
	;

	VALUE hvfollowup_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hvreason_
		1 = 'Caregiver'
		2 = 'Cognitive Impairment'
		3 = 'Falls Risk'
		4 = ' Unable/unwilling to travel'
		5 = "Clinic staff has concern for participant's safety on the unit"
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

	INFORMAT crf_version_HVVisProChe $7.;
	FORMAT crf_version_HVVisProChe $7.;

	INFORMAT obsdate_hvtdate1 YYMMDD10.;
	FORMAT obsdate_hvtdate1 YYMMDD10.;

	INFORMAT hvttime1 $5.;
	FORMAT hvttime1 $5.;

	INFORMAT hvttimea BEST32.;
	FORMAT hvttimea BEST12.;

	INFORMAT hvtdate2 YYMMDD10.;
	FORMAT hvtdate2 YYMMDD10.;

	INFORMAT hvttime2 $5.;
	FORMAT hvttime2 $5.;

	INFORMAT hvttimeb BEST32.;
	FORMAT hvttimeb BEST12.;

	INFORMAT hvttype BEST32.;
	FORMAT hvttype BEST12.;

	INFORMAT hvt15 BEST32.;
	FORMAT hvt15 BEST12.;

	INFORMAT hvt15id BEST32.;
	FORMAT hvt15id BEST12.;

	INFORMAT hvt15a BEST32.;
	FORMAT hvt15a BEST12.;

	INFORMAT hvt01 BEST32.;
	FORMAT hvt01 BEST12.;

	INFORMAT hvt01id BEST32.;
	FORMAT hvt01id BEST12.;

	INFORMAT hvt02 BEST32.;
	FORMAT hvt02 BEST12.;

	INFORMAT hvt02id BEST32.;
	FORMAT hvt02id BEST12.;

	INFORMAT hvt16 BEST32.;
	FORMAT hvt16 BEST12.;

	INFORMAT hvt16id BEST32.;
	FORMAT hvt16id BEST12.;

	INFORMAT hvt16a BEST32.;
	FORMAT hvt16a BEST12.;

	INFORMAT hvt03 BEST32.;
	FORMAT hvt03 BEST12.;

	INFORMAT hvt03id BEST32.;
	FORMAT hvt03id BEST12.;

	INFORMAT hvt03a BEST32.;
	FORMAT hvt03a BEST12.;

	INFORMAT hvt03b $1.;
	FORMAT hvt03b $1.;

	INFORMAT hvt20 BEST32.;
	FORMAT hvt20 BEST12.;

	INFORMAT hvt20id BEST32.;
	FORMAT hvt20id BEST12.;

	INFORMAT hvt20a BEST32.;
	FORMAT hvt20a BEST12.;

	INFORMAT hvt20b $1.;
	FORMAT hvt20b $1.;

	INFORMAT hvt21 BEST32.;
	FORMAT hvt21 BEST12.;

	INFORMAT hvt21id BEST32.;
	FORMAT hvt21id BEST12.;

	INFORMAT hvt21a BEST32.;
	FORMAT hvt21a BEST12.;

	INFORMAT hvt21b $1.;
	FORMAT hvt21b $1.;

	INFORMAT hvt04 BEST32.;
	FORMAT hvt04 BEST12.;

	INFORMAT hvt04id BEST32.;
	FORMAT hvt04id BEST12.;

	INFORMAT hvt04a BEST32.;
	FORMAT hvt04a BEST12.;

	INFORMAT hvt04b $1.;
	FORMAT hvt04b $1.;

	INFORMAT hvt05 BEST32.;
	FORMAT hvt05 BEST12.;

	INFORMAT hvt05id BEST32.;
	FORMAT hvt05id BEST12.;

	INFORMAT hvt05a BEST32.;
	FORMAT hvt05a BEST12.;

	INFORMAT hvt05b $1.;
	FORMAT hvt05b $1.;

	INFORMAT hvt06 BEST32.;
	FORMAT hvt06 BEST12.;

	INFORMAT hvt06id BEST32.;
	FORMAT hvt06id BEST12.;

	INFORMAT hvt06a BEST32.;
	FORMAT hvt06a BEST12.;

	INFORMAT hvt06b $1.;
	FORMAT hvt06b $1.;

	INFORMAT hvt07 BEST32.;
	FORMAT hvt07 BEST12.;

	INFORMAT hvt07id BEST32.;
	FORMAT hvt07id BEST12.;

	INFORMAT hvt07a BEST32.;
	FORMAT hvt07a BEST12.;

	INFORMAT hvt07b $1.;
	FORMAT hvt07b $1.;

	INFORMAT hvt08 BEST32.;
	FORMAT hvt08 BEST12.;

	INFORMAT hvt08id BEST32.;
	FORMAT hvt08id BEST12.;

	INFORMAT hvt08a BEST32.;
	FORMAT hvt08a BEST12.;

	INFORMAT hvt08b $1.;
	FORMAT hvt08b $1.;

	INFORMAT hvt09 BEST32.;
	FORMAT hvt09 BEST12.;

	INFORMAT hvt09id BEST32.;
	FORMAT hvt09id BEST12.;

	INFORMAT hvt09a BEST32.;
	FORMAT hvt09a BEST12.;

	INFORMAT hvt09b $1.;
	FORMAT hvt09b $1.;

	INFORMAT hvt10 BEST32.;
	FORMAT hvt10 BEST12.;

	INFORMAT hvt10id BEST32.;
	FORMAT hvt10id BEST12.;

	INFORMAT hvt10a BEST32.;
	FORMAT hvt10a BEST12.;

	INFORMAT hvt10b BEST32.;
	FORMAT hvt10b BEST12.;

	INFORMAT hvt11 BEST32.;
	FORMAT hvt11 BEST12.;

	INFORMAT hvt11id BEST32.;
	FORMAT hvt11id BEST12.;

	INFORMAT hvt11a BEST32.;
	FORMAT hvt11a BEST12.;

	INFORMAT hvt11b BEST32.;
	FORMAT hvt11b BEST12.;

	INFORMAT hvt17 BEST32.;
	FORMAT hvt17 BEST12.;

	INFORMAT hvt17id BEST32.;
	FORMAT hvt17id BEST12.;

	INFORMAT hvt17a BEST32.;
	FORMAT hvt17a BEST12.;

	INFORMAT hvt18 BEST32.;
	FORMAT hvt18 BEST12.;

	INFORMAT hvt18id BEST32.;
	FORMAT hvt18id BEST12.;

	INFORMAT hvt18a BEST32.;
	FORMAT hvt18a BEST12.;

	INFORMAT hvt18b $1.;
	FORMAT hvt18b $1.;

	INFORMAT hvt12 BEST32.;
	FORMAT hvt12 BEST12.;

	INFORMAT hvt12id BEST32.;
	FORMAT hvt12id BEST12.;

	INFORMAT hvt12a BEST32.;
	FORMAT hvt12a BEST12.;

	INFORMAT hvt12b $1.;
	FORMAT hvt12b $1.;

	INFORMAT hvt13 BEST32.;
	FORMAT hvt13 BEST12.;

	INFORMAT hvt13id BEST32.;
	FORMAT hvt13id BEST12.;

	INFORMAT hvt13a BEST32.;
	FORMAT hvt13a BEST12.;

	INFORMAT hvt13b $1.;
	FORMAT hvt13b $1.;

	INFORMAT hvt14 BEST32.;
	FORMAT hvt14 BEST12.;

	INFORMAT hvt14id BEST32.;
	FORMAT hvt14id BEST12.;

	INFORMAT hvt14a BEST32.;
	FORMAT hvt14a BEST12.;

	INFORMAT hvt14b $1.;
	FORMAT hvt14b $1.;

	INFORMAT hvt19 BEST32.;
	FORMAT hvt19 BEST12.;

	INFORMAT hvt19id BEST32.;
	FORMAT hvt19id BEST12.;

	INFORMAT hvt19a BEST32.;
	FORMAT hvt19a BEST12.;

	INFORMAT hvt19b BEST32.;
	FORMAT hvt19b BEST12.;

	INFORMAT hvt22 BEST32.;
	FORMAT hvt22 BEST12.;

	INFORMAT hvt22id BEST32.;
	FORMAT hvt22id BEST12.;

	INFORMAT hvt22a BEST32.;
	FORMAT hvt22a BEST12.;

	INFORMAT hvt22b $1.;
	FORMAT hvt22b $1.;

	INFORMAT hvtcom $302.;
	FORMAT hvtcom $302.;

	INFORMAT hvfollowup BEST32.;
	FORMAT hvfollowup BEST12.;

	INFORMAT hvreason BEST32.;
	FORMAT hvreason BEST12.;

	INFORMAT hvreason_com $63.;
	FORMAT hvreason_com $63.;

	INFORMAT crf_parent_name_HVVisProChe $33.;
	FORMAT crf_parent_name_HVVisProChe $33.;

	INFORMAT study_name_HVVisProChe $4.;
	FORMAT study_name_HVVisProChe $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_HVVisProChe
		obsdate_hvtdate1
		hvttime1
		hvttimea
		hvtdate2
		hvttime2
		hvttimeb
		hvttype
		hvt15
		hvt15id
		hvt15a
		hvt01
		hvt01id
		hvt02
		hvt02id
		hvt16
		hvt16id
		hvt16a
		hvt03
		hvt03id
		hvt03a
		hvt03b
		hvt20
		hvt20id
		hvt20a
		hvt20b
		hvt21
		hvt21id
		hvt21a
		hvt21b
		hvt04
		hvt04id
		hvt04a
		hvt04b
		hvt05
		hvt05id
		hvt05a
		hvt05b
		hvt06
		hvt06id
		hvt06a
		hvt06b
		hvt07
		hvt07id
		hvt07a
		hvt07b
		hvt08
		hvt08id
		hvt08a
		hvt08b
		hvt09
		hvt09id
		hvt09a
		hvt09b
		hvt10
		hvt10id
		hvt10a
		hvt10b
		hvt11
		hvt11id
		hvt11a
		hvt11b
		hvt17
		hvt17id
		hvt17a
		hvt18
		hvt18id
		hvt18a
		hvt18b
		hvt12
		hvt12id
		hvt12a
		hvt12b
		hvt13
		hvt13id
		hvt13a
		hvt13b
		hvt14
		hvt14id
		hvt14a
		hvt14b
		hvt19
		hvt19id
		hvt19a
		hvt19b
		hvt22
		hvt22id
		hvt22a
		hvt22b
		hvtcom
		hvfollowup
		hvreason
		hvreason_com
		crf_parent_name_HVVisProChe
		study_name_HVVisProChe
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
		crf_version_HVVisProChe = "CRF Version"
		obsdate_hvtdate1 = "HV Initial date"
		hvttime1 = "HV Start time"
		hvttimea = "Start time am pm"
		hvtdate2 = "HV date completed"
		hvttime2 = "HV Start time"
		hvttimeb = "Start time am pm"
		hvttype = "Visit type"
		hvt15 = "Physician orders"
		hvt15id = "Physician orders Tester ID"
		hvt15a = "Physician orders RND"
		hvt01 = "BLSA Consent"
		hvt01id = "BLSA Consent TID"
		hvt02 = "HIPAA"
		hvt02id = "HIPAA TID"
		hvt16 = "Filming Consent"
		hvt16id = "Filming Consent Tester ID"
		hvt16a = "Filming Consent RND"
		hvt03 = "General Interview"
		hvt03id = "General Interview Tester ID"
		hvt03a = "General Interview RND"
		hvt03b = "General Interview to be resch"
		hvt20 = "Activity Related Fatigue Scale"
		hvt20id = "Activity Related Fatigue Scale Tester ID"
		hvt20a = "Activity Related Fatigue Scale RND"
		hvt20b = "Activity Related Fatigue Scale to be resch"
		hvt21 = "Epworth Sleep Scale"
		hvt21id = "Epworth Sleep Scale Tester ID"
		hvt21a = "Epworth Sleep Scale RND"
		hvt21b = "Epworth Sleep Scale to be resch"
		hvt04 = "Medical Interview"
		hvt04id = "Medical Interview Tester ID"
		hvt04a = "Medical Interview RND"
		hvt04b = "Medical Interview to be resch"
		hvt05 = "Physical Exam"
		hvt05id = "Physical Exam Tester ID"
		hvt05a = "Physical Exam RND"
		hvt05b = "Physical Exam to be resch"
		hvt06 = "Grip Strength"
		hvt06id = "Grip Strength Tester ID"
		hvt06a = "Grip Strength RND"
		hvt06b = "Grip Strength to be resch"
		hvt07 = "LE Physical Performance"
		hvt07id = "LE Physical Performance Tester ID"
		hvt07a = "LE Physical Performance RND"
		hvt07b = "LE Physical Performance to be resch"
		hvt08 = "Neurological Assessment"
		hvt08id = "Neurological Assessment Tester ID"
		hvt08a = "Neurological Assessment RND"
		hvt08b = "Neurological Assessment to be resch"
		hvt09 = "Core Cognitive Testing"
		hvt09id = "Core Cognitive Testing Tester ID"
		hvt09a = "Core Cognitive Testing RND"
		hvt09b = "Core Cognitive Testing to be resch"
		hvt10 = "Medication List"
		hvt10id = "Medication List Tester ID"
		hvt10a = "Medication List RND"
		hvt10b = "Medication List to be resch"
		hvt11 = "FFQ"
		hvt11id = "FFQ Tester ID"
		hvt11a = "FFQ RND"
		hvt11b = "FFQ to be resch"
		hvt17 = "DVD"
		hvt17id = "DVD Tester ID"
		hvt17a = "DVD RND"
		hvt18 = "Autopsy Report"
		hvt18id = "Autopsy Report Tester ID"
		hvt18a = "Autopsy Report RND"
		hvt18b = "Autopsy Report to be resch"
		hvt12 = "Autopsy Consent"
		hvt12id = "Autopsy Consent Tester ID"
		hvt12a = "Autopsy Consent RND"
		hvt12b = "Autopsy Consent to be resch"
		hvt13 = "Blood"
		hvt13id = "Blood Tester ID"
		hvt13a = "Blood RND"
		hvt13b = "Blood to be resch"
		hvt14 = "EKG"
		hvt14id = "EKG Tester ID"
		hvt14a = "EKG RND"
		hvt14b = "EKG to be resch"
		hvt19 = "Informant CDR"
		hvt19id = "Informant CDR Tester ID"
		hvt19a = "Informant CDR RND"
		hvt19b = "Informant CDR to be resch"
		hvt22 = "Accelerometer"
		hvt22id = "Accelerometer Tester ID"
		hvt22a = "Accelerometer RND"
		hvt22b = "Accelerometer to be resch"
		hvtcom = "Comments"
		hvfollowup = "Additional Follow-up contact as needed between scheduled visit"
		hvreason = "Reason for home visit"
		hvreason_com = "Reason for home visit comment"
		crf_parent_name_HVVisProChe = "CRF Parent Name"
		study_name_HVVisProChe = "Study Name"
	;
	FORMAT
		hvttimea hvttimea_.
		hvttimeb hvttimeb_.
		hvttype hvttype_.
		hvt15 hvt15_.
		hvt15a hvt15a_.
		hvt01 hvt01_.
		hvt02 hvt02_.
		hvt16 hvt16_.
		hvt16a hvt16a_.
		hvt03 hvt03_.
		hvt03a hvt03a_.
		hvt20 hvt20_.
		hvt20a hvt20a_.
		hvt21 hvt21_.
		hvt21a hvt21a_.
		hvt04 hvt04_.
		hvt04a hvt04a_.
		hvt05 hvt05_.
		hvt05a hvt05a_.
		hvt06 hvt06_.
		hvt06a hvt06a_.
		hvt07 hvt07_.
		hvt07a hvt07a_.
		hvt08 hvt08_.
		hvt08a hvt08a_.
		hvt09 hvt09_.
		hvt09a hvt09a_.
		hvt10 hvt10_.
		hvt10a hvt10a_.
		hvt10b hvt10b_.
		hvt11 hvt11_.
		hvt11a hvt11a_.
		hvt11b hvt11b_.
		hvt17 hvt17_.
		hvt17a hvt17a_.
		hvt18 hvt18_.
		hvt18a hvt18a_.
		hvt12 hvt12_.
		hvt12a hvt12a_.
		hvt13 hvt13_.
		hvt13a hvt13a_.
		hvt14 hvt14_.
		hvt14a hvt14a_.
		hvt19 hvt19_.
		hvt19a hvt19a_.
		hvt19b hvt19b_.
		hvt22 hvt22_.
		hvt22a hvt22a_.
		hvfollowup hvfollowup_.
		hvreason hvreason_.
	;
RUN;


DATA blsa_hv_visit_procedure_checklis;
    SET WORK.IMPORT;
RUN;
