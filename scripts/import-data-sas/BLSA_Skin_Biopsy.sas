%let path_to_file = '../data-csv/BLSA_Skin_Biopsy.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE sb01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sb02_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sb07_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sb11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sb12_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sb13_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sbneedle_
		1 = '6mm'
	;

	VALUE sbsamples_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE provideinformedconsent_SkiBio_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE nohxbleedingdisorder_SkiBio_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE nomedsincrbleeding_SkiBio_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE nonsaids_SkiBio_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lessth81mgaspirin_SkiBio_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE noallergylocanesthetic_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE noinfectionskincond_SkiBio_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE notpregnant_SkiBio_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eligibility_SkiBio_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ampm1_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE ampm2_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE ampm3_
		1 = 'Am'
		2 = 'Pm'
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

	INFORMAT crf_version_SkiBio $8.;
	FORMAT crf_version_SkiBio $8.;

	INFORMAT obsdate_datecompleted_SkiBio YYMMDD10.;
	FORMAT obsdate_datecompleted_SkiBio YYMMDD10.;

	INFORMAT sbdate YYMMDD10.;
	FORMAT sbdate YYMMDD10.;

	INFORMAT blank_SkiBio $1.;
	FORMAT blank_SkiBio $1.;

	INFORMAT sbtid BEST32.;
	FORMAT sbtid BEST12.;

	INFORMAT sb01 BEST32.;
	FORMAT sb01 BEST12.;

	INFORMAT sb02 BEST32.;
	FORMAT sb02 BEST12.;

	INFORMAT sb03 BEST32.;
	FORMAT sb03 BEST12.;

	INFORMAT sb04 BEST32.;
	FORMAT sb04 BEST12.;

	INFORMAT sb05 BEST32.;
	FORMAT sb05 BEST12.;

	INFORMAT sb06s BEST32.;
	FORMAT sb06s BEST12.;

	INFORMAT sb06d BEST32.;
	FORMAT sb06d BEST12.;

	INFORMAT sb07 BEST32.;
	FORMAT sb07 BEST12.;

	INFORMAT sb09 BEST32.;
	FORMAT sb09 BEST12.;

	INFORMAT sb11 BEST32.;
	FORMAT sb11 BEST12.;

	INFORMAT sb11com $18.;
	FORMAT sb11com $18.;

	INFORMAT sb12 BEST32.;
	FORMAT sb12 BEST12.;

	INFORMAT sb12com $1.;
	FORMAT sb12com $1.;

	INFORMAT sb13 BEST32.;
	FORMAT sb13 BEST12.;

	INFORMAT sb13com $56.;
	FORMAT sb13com $56.;

	INFORMAT sbneedle BEST32.;
	FORMAT sbneedle BEST12.;

	INFORMAT sbpostpulse BEST32.;
	FORMAT sbpostpulse BEST12.;

	INFORMAT sbpostresp BEST32.;
	FORMAT sbpostresp BEST12.;

	INFORMAT sbpostsystolic BEST32.;
	FORMAT sbpostsystolic BEST12.;

	INFORMAT sbpostdiastolic BEST32.;
	FORMAT sbpostdiastolic BEST12.;

	INFORMAT sbsamples BEST32.;
	FORMAT sbsamples BEST12.;

	INFORMAT testerid_SkiBio BEST32.;
	FORMAT testerid_SkiBio BEST12.;

	INFORMAT provideinformedconsent_SkiBio BEST32.;
	FORMAT provideinformedconsent_SkiBio BEST12.;

	INFORMAT nohxbleedingdisorder_SkiBio BEST32.;
	FORMAT nohxbleedingdisorder_SkiBio BEST12.;

	INFORMAT nomedsincrbleeding_SkiBio BEST32.;
	FORMAT nomedsincrbleeding_SkiBio BEST12.;

	INFORMAT nonsaids_SkiBio BEST32.;
	FORMAT nonsaids_SkiBio BEST12.;

	INFORMAT lessth81mgaspirin_SkiBio BEST32.;
	FORMAT lessth81mgaspirin_SkiBio BEST12.;

	INFORMAT noallergylocanesthetic BEST32.;
	FORMAT noallergylocanesthetic BEST12.;

	INFORMAT noinfectionskincond_SkiBio BEST32.;
	FORMAT noinfectionskincond_SkiBio BEST12.;

	INFORMAT notpregnant_SkiBio BEST32.;
	FORMAT notpregnant_SkiBio BEST12.;

	INFORMAT eligibility_SkiBio BEST32.;
	FORMAT eligibility_SkiBio BEST12.;

	INFORMAT tester_SkiBio $21.;
	FORMAT tester_SkiBio $21.;

	INFORMAT anesthesiastart $5.;
	FORMAT anesthesiastart $5.;

	INFORMAT ampm1 BEST32.;
	FORMAT ampm1 BEST12.;

	INFORMAT biopsystart $5.;
	FORMAT biopsystart $5.;

	INFORMAT ampm2 BEST32.;
	FORMAT ampm2 BEST12.;

	INFORMAT biopsycomplete $8.;
	FORMAT biopsycomplete $8.;

	INFORMAT ampm3 BEST32.;
	FORMAT ampm3 BEST12.;

	INFORMAT sb08 $5.;
	FORMAT sb08 $5.;

	INFORMAT sb10s $5.;
	FORMAT sb10s $5.;

	INFORMAT sb10c $5.;
	FORMAT sb10c $5.;

	INFORMAT sbtesterid BEST32.;
	FORMAT sbtesterid BEST12.;

	INFORMAT auto_id_SkiBio BEST32.;
	FORMAT auto_id_SkiBio BEST12.;

	INFORMAT crf_parent_name_SkiBio $16.;
	FORMAT crf_parent_name_SkiBio $16.;

	INFORMAT item_group_repeat_SkiBio BEST32.;
	FORMAT item_group_repeat_SkiBio BEST12.;

	INFORMAT study_name_SkiBio $4.;
	FORMAT study_name_SkiBio $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_SkiBio
		obsdate_datecompleted_SkiBio
		sbdate
		blank_SkiBio
		sbtid
		sb01
		sb02
		sb03
		sb04
		sb05
		sb06s
		sb06d
		sb07
		sb09
		sb11
		sb11com
		sb12
		sb12com
		sb13
		sb13com
		sbneedle
		sbpostpulse
		sbpostresp
		sbpostsystolic
		sbpostdiastolic
		sbsamples
		testerid_SkiBio
		provideinformedconsent_SkiBio
		nohxbleedingdisorder_SkiBio
		nomedsincrbleeding_SkiBio
		nonsaids_SkiBio
		lessth81mgaspirin_SkiBio
		noallergylocanesthetic
		noinfectionskincond_SkiBio
		notpregnant_SkiBio
		eligibility_SkiBio
		tester_SkiBio
		anesthesiastart
		ampm1
		biopsystart
		ampm2
		biopsycomplete
		ampm3
		sb08
		sb10s
		sb10c
		sbtesterid
		auto_id_SkiBio
		crf_parent_name_SkiBio
		item_group_repeat_SkiBio
		study_name_SkiBio
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
		crf_version_SkiBio = "CRF Version"
		obsdate_datecompleted_SkiBio = "Date Completed"
		sbdate = "Date Completed"
		blank_SkiBio = "Blank Form"
		sbtid = "Biopsy tester ID"
		sb01 = "Skin Biopsy consent reviewed"
		sb02 = "Eligibility criteria reviewed"
		sb03 = "Pre procedure body temperature"
		sb04 = "Pre procedure pulse"
		sb05 = "Pre procedure respirations"
		sb06s = "Pre procedure BP systolic"
		sb06d = "Pre procedure BP diastolic"
		sb07 = "Brief History and Physical performed"
		sb09 = "Total amount of Anesthesia given"
		sb11 = "Biopsy performed"
		sb11com = "Biopsy comment"
		sb12 = "Dressing applied"
		sb12com = "Dressing comment"
		sb13 = "Post procedure instructions reviewed"
		sb13com = "Comment"
		sbneedle = "Skin Biopsy needle size"
		sbpostpulse = "Post procedure pulse"
		sbpostresp = "Post procedure respirations"
		sbpostsystolic = "Post procedure BP systolic"
		sbpostdiastolic = "Post procedure BP diastolic"
		sbsamples = "All samples collected"
		testerid_SkiBio = "Tester ID"
		provideinformedconsent_SkiBio = "Able to provide informed consent"
		nohxbleedingdisorder_SkiBio = "Does not have history of bleeding disorder"
		nomedsincrbleeding_SkiBio = "Does not take medications that will increase bleeding"
		nonsaids_SkiBio = "Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
		lessth81mgaspirin_SkiBio = "Does not take more than 81 mg Aspirin a day"
		noallergylocanesthetic = "Is not allergic to Lidocaine or other local anesthetic"
		noinfectionskincond_SkiBio = "Has no active infection or chronic skin condition around biopsy site"
		notpregnant_SkiBio = "Is not pregnant"
		eligibility_SkiBio = "Eligibility"
		tester_SkiBio = "Tester"
		anesthesiastart = "Anesthesia start time"
		ampm1 = "Anesthesia start time AmPm"
		biopsystart = "Biopsy started"
		ampm2 = "Biopsy started AmPm"
		biopsycomplete = "Biopsy completed"
		ampm3 = "Biopsy completed AmPm"
		sb08 = "Anesthesia start time"
		sb10s = "Biopsy started"
		sb10c = "Biopsy completed"
		sbtesterid = "Biopsy tester ID"
		auto_id_SkiBio = "Unique Teleform Number"
		crf_parent_name_SkiBio = "CRF Parent Name"
		item_group_repeat_SkiBio = "Item Group Repeate"
		study_name_SkiBio = "Study Name"
	;
	FORMAT
		sb01 sb01_.
		sb02 sb02_.
		sb07 sb07_.
		sb11 sb11_.
		sb12 sb12_.
		sb13 sb13_.
		sbneedle sbneedle_.
		sbsamples sbsamples_.
		provideinformedconsent_SkiBio provideinformedconsent_SkiBio_.
		nohxbleedingdisorder_SkiBio nohxbleedingdisorder_SkiBio_.
		nomedsincrbleeding_SkiBio nomedsincrbleeding_SkiBio_.
		nonsaids_SkiBio nonsaids_SkiBio_.
		lessth81mgaspirin_SkiBio lessth81mgaspirin_SkiBio_.
		noallergylocanesthetic noallergylocanesthetic_.
		noinfectionskincond_SkiBio noinfectionskincond_SkiBio_.
		notpregnant_SkiBio notpregnant_SkiBio_.
		eligibility_SkiBio eligibility_SkiBio_.
		ampm1 ampm1_.
		ampm2 ampm2_.
		ampm3 ampm3_.
	;
RUN;


DATA blsa_skin_biopsy;
    SET WORK.IMPORT;
RUN;
