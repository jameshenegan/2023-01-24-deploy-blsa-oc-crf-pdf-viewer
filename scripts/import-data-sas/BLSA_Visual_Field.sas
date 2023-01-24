%let path_to_file = '../data-csv/BLSA_Visual_Field.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE vissc1_VisFie_
		0 = 'Never'
		1 = 'Near only (eg reading)'
		2 = 'Distance only (eg driving watching TV)'
		3 = 'For both distance and near'
	;

	VALUE vissc2_VisFie_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vissc2a_VisFie_
		1 = 'Glasses'
		2 = 'Contact Lenses'
	;

	VALUE vissc2a1_VisFie_
		1 = 'Single vision'
		2 = 'Bifocal'
		3 = 'Trifocals'
		4 = 'Progressives'
	;

	VALUE vissc2b_VisFie_
		1 = 'Soft'
		2 = 'RGP (hard)'
		8 = 'Unknown'
	;

	VALUE vissc2b1_VisFie_
		1 = 'Distance'
		2 = 'Bifocal'
		3 = 'Monovision'
	;

	VALUE vissc2b2_VisFie_
		1 = 'Right'
		2 = 'Left'
		8 = 'Unknown'
	;

	VALUE visvfdis_VisFie_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE visvfdon_VisFie_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE visvfrnd_VisFie_
		555 = 'Physical problems (*includes if participant has marked discrepancy of vision between eyes'
		666 = 'Physical and cognitive'
		777 = 'Cognitive problems'
		888 = 'Refused'
		999 = 'Technical problems'
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

	INFORMAT crf_version_VisFie $8.;
	FORMAT crf_version_VisFie $8.;

	INFORMAT obsdate_vfdate YYMMDD10.;
	FORMAT obsdate_vfdate YYMMDD10.;

	INFORMAT blank_VisFie $1.;
	FORMAT blank_VisFie $1.;

	INFORMAT vftid BEST32.;
	FORMAT vftid BEST12.;

	INFORMAT vissc1_VisFie BEST32.;
	FORMAT vissc1_VisFie BEST12.;

	INFORMAT vissc2_VisFie BEST32.;
	FORMAT vissc2_VisFie BEST12.;

	INFORMAT vissc2a_VisFie BEST32.;
	FORMAT vissc2a_VisFie BEST12.;

	INFORMAT vissc2a1_VisFie BEST32.;
	FORMAT vissc2a1_VisFie BEST12.;

	INFORMAT vissc2b_VisFie BEST32.;
	FORMAT vissc2b_VisFie BEST12.;

	INFORMAT vissc2b1_VisFie BEST32.;
	FORMAT vissc2b1_VisFie BEST12.;

	INFORMAT vissc2b2_VisFie BEST32.;
	FORMAT vissc2b2_VisFie BEST12.;

	INFORMAT visvfdis_VisFie BEST32.;
	FORMAT visvfdis_VisFie BEST12.;

	INFORMAT vissc3a1_VisFie BEST32.;
	FORMAT vissc3a1_VisFie BEST12.;

	INFORMAT vissc3a2_VisFie BEST32.;
	FORMAT vissc3a2_VisFie BEST12.;

	INFORMAT vissc3a3_VisFie BEST32.;
	FORMAT vissc3a3_VisFie BEST12.;

	INFORMAT vissc3a4_VisFie NLNUM32.;
	FORMAT vissc3a4_VisFie NLNUM12.;

	INFORMAT vissc3b1_VisFie BEST32.;
	FORMAT vissc3b1_VisFie BEST12.;

	INFORMAT vissc3b2_VisFie BEST32.;
	FORMAT vissc3b2_VisFie BEST12.;

	INFORMAT vissc3b3_VisFie BEST32.;
	FORMAT vissc3b3_VisFie BEST12.;

	INFORMAT vissc3b4_VisFie NLNUM32.;
	FORMAT vissc3b4_VisFie NLNUM12.;

	INFORMAT vissc3c_VisFie NLNUM32.;
	FORMAT vissc3c_VisFie NLNUM12.;

	INFORMAT visvfdon_VisFie BEST32.;
	FORMAT visvfdon_VisFie BEST12.;

	INFORMAT visvfrnd_VisFie BEST32.;
	FORMAT visvfrnd_VisFie BEST12.;

	INFORMAT comments_VisFie $253.;
	FORMAT comments_VisFie $253.;

	INFORMAT auto_id_VisFie BEST32.;
	FORMAT auto_id_VisFie BEST12.;

	INFORMAT crf_parent_name_VisFie $17.;
	FORMAT crf_parent_name_VisFie $17.;

	INFORMAT study_name_VisFie $4.;
	FORMAT study_name_VisFie $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_VisFie
		obsdate_vfdate
		blank_VisFie
		vftid
		vissc1_VisFie
		vissc2_VisFie
		vissc2a_VisFie
		vissc2a1_VisFie
		vissc2b_VisFie
		vissc2b1_VisFie
		vissc2b2_VisFie
		visvfdis_VisFie
		vissc3a1_VisFie
		vissc3a2_VisFie
		vissc3a3_VisFie
		vissc3a4_VisFie
		vissc3b1_VisFie
		vissc3b2_VisFie
		vissc3b3_VisFie
		vissc3b4_VisFie
		vissc3c_VisFie
		visvfdon_VisFie
		visvfrnd_VisFie
		comments_VisFie
		auto_id_VisFie
		crf_parent_name_VisFie
		study_name_VisFie
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
		crf_version_VisFie = "CRF Version"
		obsdate_vfdate = "Date Completed"
		blank_VisFie = "Blank Form"
		vftid = "Tester ID"
		vissc1_VisFie = "Do you wear glasses or contact lenses"
		vissc2_VisFie = "Did you bring your glasses"
		vissc2a_VisFie = "Type of glasses or contact lenses"
		vissc2a1_VisFie = "Glasses"
		vissc2b_VisFie = "Contact Lenses"
		vissc2b1_VisFie = "Contact lenses for distance bifocal or monovision"
		vissc2b2_VisFie = "Which eye distance"
		visvfdis_VisFie = "Does participant have marked discrepency of vision between eyes"
		vissc3a1_VisFie = "Right eye sphere Rx"
		vissc3a2_VisFie = "Right eye cylinder Rx"
		vissc3a3_VisFie = "Right eye Axis Rx"
		vissc3a4_VisFie = "Right eye sphere Rx final"
		vissc3b1_VisFie = "Left eye sphere Rx"
		vissc3b2_VisFie = "Left eye cylinder Rx"
		vissc3b3_VisFie = "Left eye Axis Rx"
		vissc3b4_VisFie = "Left eye sphere Rx final"
		vissc3c_VisFie = "Near add"
		visvfdon_VisFie = "Was visual field assessment completed"
		visvfrnd_VisFie = "Why visual field not done"
		comments_VisFie = "Comments"
		auto_id_VisFie = "Unique Teleform Number"
		crf_parent_name_VisFie = "CRF Parent Name"
		study_name_VisFie = "Study Name"
	;
	FORMAT
		vissc1_VisFie vissc1_VisFie_.
		vissc2_VisFie vissc2_VisFie_.
		vissc2a_VisFie vissc2a_VisFie_.
		vissc2a1_VisFie vissc2a1_VisFie_.
		vissc2b_VisFie vissc2b_VisFie_.
		vissc2b1_VisFie vissc2b1_VisFie_.
		vissc2b2_VisFie vissc2b2_VisFie_.
		visvfdis_VisFie visvfdis_VisFie_.
		visvfdon_VisFie visvfdon_VisFie_.
		visvfrnd_VisFie visvfrnd_VisFie_.
	;
RUN;


DATA blsa_visual_field;
    SET WORK.IMPORT;
RUN;
