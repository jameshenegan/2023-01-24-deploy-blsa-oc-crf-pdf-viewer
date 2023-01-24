%let path_to_file = '../data-csv/BLSA_Fitts_Task.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE fittsa01_
		1 = 'Left'
		2 = 'Right'
	;

	VALUE fittsa02_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE fittst01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE fittst03_
		1 = 'Very Easy'
		2 = 'Somewhat Easy'
		3 = 'Neutral'
		4 = 'Somewhat Difficult'
		5 = 'Very Difficult'
	;

	VALUE fittst04_
		0 = 'No'
		1 = 'Yes'
		2 = 'Unsure'
	;

	VALUE fittst05_
		0 = 'No'
		1 = 'Yes'
		2 = 'Unsure'
	;

	VALUE fitts0p6_
		1 = 'Very Easy'
		2 = 'Somewhat Easy'
		3 = 'Neutral'
		4 = 'Somewhat Difficult'
		5 = 'Very Difficult'
	;

	VALUE fittst01rnd2_
		1 = 'Physical/sensory impairment'
		2 = 'Emotional problems'
		3 = 'Cognitive problems'
		4 = 'Refused'
		5 = 'Technical problems'
		6 = 'Other'
		7 = 'Joint or movement issues'
		8 = 'Vision problems'
		9 = 'Not Scheduled'
	;

	VALUE lines_
		0 = 'No'
		1 = 'Yes'
		2 = 'Unsure'
	;

	VALUE stylus_
		1 = 'Very Natural'
		2 = 'Somewhat Natural'
		3 = 'Neutral'
		4 = 'Somewhat Unnatural'
		5 = 'Very Unnatural'
	;

	VALUE linesparticipant_
		1 = 'Very Easy'
		2 = 'Somewhat Easy'
		3 = 'Neutral'
		4 = 'Somewhat Difficult'
		5 = 'Very Difficult'
	;

	VALUE armofftablet_
		1 = 'Not hard at all'
		2 = 'Somewhat hard'
		3 = 'Very hard'
	;

	VALUE cursonspeed_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE fittst01rnd_
		1 = 'Physical/sensory impairment'
		2 = 'Emotional problems'
		3 = 'Cognitive problems'
		4 = 'Refused'
		5 = 'Technical problems'
		6 = 'Other'
	;

	VALUE fittst02_
		0 = 'No'
		1 = 'Yes'
		2 = 'Unsure'
	;

	VALUE fitts0p7_
		1 = 'Very Natural'
		2 = 'Somewhat Natural'
		3 = 'Neutral'
		4 = 'Somewhat Unnatural'
		5 = 'Very Unnatural'
	;

	VALUE fitts0p8_
		1 = 'Very Easy'
		2 = 'Somewhat Easy'
		3 = 'Neutral'
		4 = 'Somewhat Difficult'
		5 = 'Very Difficult'
	;

	VALUE fittst09_
		1 = 'Much Easier'
		2 = 'Somewhat Easier'
		3 = 'About the Same'
		4 = 'With More Difficulty'
		5 = 'With Much More Difficulty'
	;

	VALUE fittsp10_
		1 = 'Much Easier'
		2 = 'Somewhat Easier'
		3 = 'About the Same'
		4 = 'With More Difficulty'
		5 = 'With Much More Difficulty'
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

	INFORMAT crf_version_FitTas $7.;
	FORMAT crf_version_FitTas $7.;

	INFORMAT obsdate_fittsdate YYMMDD10.;
	FORMAT obsdate_fittsdate YYMMDD10.;

	INFORMAT blank_FitTas $1.;
	FORMAT blank_FitTas $1.;

	INFORMAT fittstid BEST32.;
	FORMAT fittstid BEST12.;

	INFORMAT fittsa01 BEST32.;
	FORMAT fittsa01 BEST12.;

	INFORMAT fittsa02 BEST32.;
	FORMAT fittsa02 BEST12.;

	INFORMAT fittsacom $28.;
	FORMAT fittsacom $28.;

	INFORMAT fittst01 BEST32.;
	FORMAT fittst01 BEST12.;

	INFORMAT fittst03 BEST32.;
	FORMAT fittst03 BEST12.;

	INFORMAT fittst04 BEST32.;
	FORMAT fittst04 BEST12.;

	INFORMAT fittst05 BEST32.;
	FORMAT fittst05 BEST12.;

	INFORMAT fitts0p6 BEST32.;
	FORMAT fitts0p6 BEST12.;

	INFORMAT auto_id_FitTas BEST32.;
	FORMAT auto_id_FitTas BEST12.;

	INFORMAT fittst01rnd2 BEST32.;
	FORMAT fittst01rnd2 BEST12.;

	INFORMAT lines BEST32.;
	FORMAT lines BEST12.;

	INFORMAT stylus BEST32.;
	FORMAT stylus BEST12.;

	INFORMAT linesparticipant BEST32.;
	FORMAT linesparticipant BEST12.;

	INFORMAT armofftablet BEST32.;
	FORMAT armofftablet BEST12.;

	INFORMAT cursonspeed BEST32.;
	FORMAT cursonspeed BEST12.;

	INFORMAT fittst01rnd BEST32.;
	FORMAT fittst01rnd BEST12.;

	INFORMAT fittst02 BEST32.;
	FORMAT fittst02 BEST12.;

	INFORMAT fitts0p7 BEST32.;
	FORMAT fitts0p7 BEST12.;

	INFORMAT fitts0p8 BEST32.;
	FORMAT fitts0p8 BEST12.;

	INFORMAT fittst09 BEST32.;
	FORMAT fittst09 BEST12.;

	INFORMAT fittsp10 BEST32.;
	FORMAT fittsp10 BEST12.;

	INFORMAT crf_parent_name_FitTas $15.;
	FORMAT crf_parent_name_FitTas $15.;

	INFORMAT study_name_FitTas $4.;
	FORMAT study_name_FitTas $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_FitTas
		obsdate_fittsdate
		blank_FitTas
		fittstid
		fittsa01
		fittsa02
		fittsacom
		fittst01
		fittst03
		fittst04
		fittst05
		fitts0p6
		auto_id_FitTas
		fittst01rnd2
		lines
		stylus
		linesparticipant
		armofftablet
		cursonspeed
		fittst01rnd
		fittst02
		fitts0p7
		fitts0p8
		fittst09
		fittsp10
		crf_parent_name_FitTas
		study_name_FitTas
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
		crf_version_FitTas = "CRF Version"
		obsdate_fittsdate = "Date Completed"
		blank_FitTas = "Blank Form"
		fittstid = "Tester ID"
		fittsa01 = "Dominant Hand"
		fittsa02 = "Dominant Hand issues"
		fittsacom = "Explain hand issues"
		fittst01 = "Test 1 complete"
		fittst03 = "Tester How easy did the participant perform this test"
		fittst04 = "Tester Did the participant have trouble understanding the instructions"
		fittst05 = "Tester Do you think the instructions help the participant perform the test"
		fitts0p6 = "Participant How easy was this test"
		auto_id_FitTas = "Unique Teleform Number"
		fittst01rnd2 = "Test 1 reason not done"
		lines = "Tester Did the participant have a very difficult time hitting the little rectangles"
		stylus = "Participant Stylus movement"
		linesparticipant = "Participant How difficult to touch the lines"
		armofftablet = "How hard was it to hold your arm off the tablet"
		cursonspeed = "Did you feel the cursor on screen moved at a comparable speed to your movement on the tablet?"
		fittst01rnd = "Test 1 reason not done"
		fittst02 = "Tester Did the participant have a very difficult time hitting the little rectangles"
		fitts0p7 = "Participant Finger movement"
		fitts0p8 = "Participant How difficult to touch triangles"
		fittst09 = "Tester Compare how easy Test 1 Test 2"
		fittsp10 = "Participant Compare how easy Test 1 Test 2"
		crf_parent_name_FitTas = "CRF Parent Name"
		study_name_FitTas = "Study Name"
	;
	FORMAT
		fittsa01 fittsa01_.
		fittsa02 fittsa02_.
		fittst01 fittst01_.
		fittst03 fittst03_.
		fittst04 fittst04_.
		fittst05 fittst05_.
		fitts0p6 fitts0p6_.
		fittst01rnd2 fittst01rnd2_.
		lines lines_.
		stylus stylus_.
		linesparticipant linesparticipant_.
		armofftablet armofftablet_.
		cursonspeed cursonspeed_.
		fittst01rnd fittst01rnd_.
		fittst02 fittst02_.
		fitts0p7 fitts0p7_.
		fitts0p8 fitts0p8_.
		fittst09 fittst09_.
		fittsp10 fittsp10_.
	;
RUN;


DATA blsa_fitts_task;
    SET WORK.IMPORT;
RUN;
