%let path_to_file = '../data-csv/BLSA_Treadmill.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE trm01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE trm01a_
		000 = 'Other'
		1 = 'Contraindication'
		555 = 'Physical problems'
		666 = 'Cognitive'
		777 = 'Physical and cognitive'
		888 = 'Refused'
		999 = 'Technical problems'
	;

	VALUE trm01b_
		0 = 'Other medical'
		1 = 'Aortic stenosis of at least moderate severity'
		10 = 'Poor health status'
		2 = 'Symptoms suspicious for unstable angina'
		3 = 'Recent (<6 months) myocardial infaction or revascularization'
		4 = 'Uncontrolled hypertension (SBP >180 or DBP >110)'
		5 = 'Factors that would preclude subject from being able to walk on a treadmill (unsteady gait difficulty with ambulation etc)'
		6 = 'High grade AV block on resting EKG (Mobitz Type II 2nd or 3rd degree heart block)'
		7 = 'Ate full meal within the past 2 hours'
		8 = 'LBBB with Hx of previous MI or coronary revascularization'
		9 = 'Resting heart rate >120'
	;

	VALUE trm02_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE trm02a_
		1 = 'Other (please specify)'
		555 = 'Physical problems'
		666 = 'Cognitive'
		777 = 'Physical and cognitive'
		888 = 'Refused mouthpiece (or could not tolerate)'
		999 = 'Technical problems'
	;

	VALUE trm03_
		00 = 'Other'
		1 = 'Tester request'
		10 = 'Claudication'
		11 = 'Mouthpiece discomfort'
		2 = 'Musculoskeletal pain'
		3 = 'Dyspena'
		4 = 'Chest pain'
		5 = 'Ischemia'
		6 = 'Fatigue'
		7 = 'Nausea'
		8 = 'Dizziness'
		9 = 'Arrhythmia'
	;

	VALUE trm04_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE trmf1_
		1 = 'Yes'
		4 = 'Refused'
		5 = 'Unable'
		6 = 'Technical'
		7 = 'No Tester'
		8 = 'Not Eligible'
		9 = 'Not Scheduled'
	;

	VALUE trmf2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE trmf3_
		1 = 'Max Treadmill speed 1.5 mph'
		2 = 'Max Treadmill speed 2.0 mph'
		3 = 'Max Treadmill speed 2.5 mph'
		4 = 'Max Treadmill speed 3.0 mph'
	;

	VALUE trmf7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE trmf7a_
		00 = 'Other'
		1 = 'Tester request'
		10 = 'Claudication'
		11 = 'Mouthpiece discomfort'
		2 = 'Musculoskeletal pain'
		3 = 'Dyspena'
		4 = 'Chest pain'
		5 = 'Ischemia'
		6 = 'Fatigue'
		7 = 'Nausea'
		8 = 'Dizziness'
		9 = 'Arrhythmia'
	;

	VALUE trmss1_
		1 = 'Yes'
		4 = 'Refused'
		5 = 'Unable'
		6 = 'Technical'
		7 = 'No Tester'
		8 = 'Not Eligible'
		9 = 'Not Scheduled'
	;

	VALUE trmss2_
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

	INFORMAT crf_version_Tre $8.;
	FORMAT crf_version_Tre $8.;

	INFORMAT obsdate_trmdate YYMMDD10.;
	FORMAT obsdate_trmdate YYMMDD10.;

	INFORMAT trmttid BEST32.;
	FORMAT trmttid BEST12.;

	INFORMAT blank_Tre $1.;
	FORMAT blank_Tre $1.;

	INFORMAT trm01 BEST32.;
	FORMAT trm01 BEST12.;

	INFORMAT trm01a BEST32.;
	FORMAT trm01a BEST12.;

	INFORMAT trm01b BEST32.;
	FORMAT trm01b BEST12.;

	INFORMAT trm01c $123.;
	FORMAT trm01c $123.;

	INFORMAT trm02 BEST32.;
	FORMAT trm02 BEST12.;

	INFORMAT trm02a BEST32.;
	FORMAT trm02a BEST12.;

	INFORMAT trm02b $88.;
	FORMAT trm02b $88.;

	INFORMAT trm03 BEST32.;
	FORMAT trm03 BEST12.;

	INFORMAT trm03a $76.;
	FORMAT trm03a $76.;

	INFORMAT trm04 BEST32.;
	FORMAT trm04 BEST12.;

	INFORMAT trmborg BEST32.;
	FORMAT trmborg BEST12.;

	INFORMAT trmf1 BEST32.;
	FORMAT trmf1 BEST12.;

	INFORMAT trmf2 BEST32.;
	FORMAT trmf2 BEST12.;

	INFORMAT trmf3 BEST32.;
	FORMAT trmf3 BEST12.;

	INFORMAT tssborg5 BEST32.;
	FORMAT tssborg5 BEST12.;

	INFORMAT tssborg10 BEST32.;
	FORMAT tssborg10 BEST12.;

	INFORMAT tssborg15 BEST32.;
	FORMAT tssborg15 BEST12.;

	INFORMAT trmf7 BEST32.;
	FORMAT trmf7 BEST12.;

	INFORMAT trmf7a BEST32.;
	FORMAT trmf7a BEST12.;

	INFORMAT trmf7oth $1.;
	FORMAT trmf7oth $1.;

	INFORMAT trmss1 BEST32.;
	FORMAT trmss1 BEST12.;

	INFORMAT trmss2 BEST32.;
	FORMAT trmss2 BEST12.;

	INFORMAT tssborg BEST32.;
	FORMAT tssborg BEST12.;

	INFORMAT auto_id_Tre BEST32.;
	FORMAT auto_id_Tre BEST12.;

	INFORMAT crf_parent_name_Tre $14.;
	FORMAT crf_parent_name_Tre $14.;

	INFORMAT study_name_Tre $4.;
	FORMAT study_name_Tre $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_Tre
		obsdate_trmdate
		trmttid
		blank_Tre
		trm01
		trm01a
		trm01b
		trm01c
		trm02
		trm02a
		trm02b
		trm03
		trm03a
		trm04
		trmborg
		trmf1
		trmf2
		trmf3
		tssborg5
		tssborg10
		tssborg15
		trmf7
		trmf7a
		trmf7oth
		trmss1
		trmss2
		tssborg
		auto_id_Tre
		crf_parent_name_Tre
		study_name_Tre
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
		crf_version_Tre = "CRF Version"
		obsdate_trmdate = "Date Completed"
		trmttid = "Tester ID"
		blank_Tre = "Blank Form"
		trm01 = "Treadmill done"
		trm01a = "Treadmill reason not done"
		trm01b = "Treadmill contraindications"
		trm01c = "Treadmill Contraindication other"
		trm02 = "Oxygen consumption measured"
		trm02a = "Oxygen consumption Reason not done"
		trm02b = "Oxygen consumption RND other"
		trm03 = "Reason exercise was stopped"
		trm03a = "Reason exercise was stopped Other"
		trm04 = "Participant complained of chest pain"
		trmborg = "Borg score"
		trmf1 = "Fatigability performed"
		trmf2 = "Was oxygen consumption measured during SS"
		trmf3 = "Which Fatigability speed setting was used"
		tssborg5 = "Borg score Fatigability 5 min"
		tssborg10 = "Borg score Fatigability 10 min"
		tssborg15 = "Borg score Fatigability 15 min"
		trmf7 = "Did participant complete Fatigability test"
		trmf7a = "Reason exercise was stopped"
		trmf7oth = "Reason exercise was stopped Other"
		trmss1 = "Steady Stage performed"
		trmss2 = "Was oxygen consumption measured during SS"
		tssborg = "Borg score for Steady Stage"
		auto_id_Tre = "Unique Teleform Number"
		crf_parent_name_Tre = "CRF Parent Name"
		study_name_Tre = "Study Name"
	;
	FORMAT
		trm01 trm01_.
		trm01a trm01a_.
		trm01b trm01b_.
		trm02 trm02_.
		trm02a trm02a_.
		trm03 trm03_.
		trm04 trm04_.
		trmf1 trmf1_.
		trmf2 trmf2_.
		trmf3 trmf3_.
		trmf7 trmf7_.
		trmf7a trmf7a_.
		trmss1 trmss1_.
		trmss2 trmss2_.
	;
RUN;


DATA blsa_treadmill;
    SET WORK.IMPORT;
RUN;
