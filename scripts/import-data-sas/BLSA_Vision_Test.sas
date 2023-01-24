%let path_to_file = '../data-csv/BLSA_Vision_Test.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE vissc1_VisTes_
		0 = 'Never'
		1 = 'Near only (eg reading)'
		2 = 'Distance only (eg driving watching TV)'
		3 = 'For both distance and near'
	;

	VALUE vissc2_VisTes_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vissc2a_VisTes_
		1 = 'Glasses'
		2 = 'Contact Lenses'
	;

	VALUE vissc2a1_VisTes_
		1 = 'Single vision'
		2 = 'Bifocal'
		3 = 'Trifocals'
		4 = 'Progressives'
	;

	VALUE vissc2b_VisTes_
		1 = 'Soft'
		2 = 'RGP (hard)'
		8 = 'Unknown'
	;

	VALUE vissc2b1_VisTes_
		1 = 'Distance'
		2 = 'Bifocal'
		3 = 'Monovision'
	;

	VALUE vissc2b2_VisTes_
		1 = 'Right'
		2 = 'Left'
		8 = 'Unknown'
	;

	VALUE $visst1_
		_0 = 'Left'
		_00 = 'Right'
		_000 = 'Top'
		_1 = 'Bottom'
	;

	VALUE $visst2_
		_0 = 'Right'
		_00 = 'Top'
		_000 = 'Bottom'
		_1 = 'Left'
	;

	VALUE $visst3_
		_0 = 'Left'
		_00 = 'Right'
		_000 = 'Top'
		_1 = 'Bottom'
	;

	VALUE $visst4_
		_0 = 'Left'
		_00 = 'Right'
		_000 = 'Bottom'
		_1 = 'Top'
	;

	VALUE $visst5_
		_0 = 'Left'
		_00 = 'Right'
		_000 = 'Bottom'
		_1 = 'Top'
	;

	VALUE $visst6_
		_0 = 'Right'
		_00 = 'Top'
		_000 = 'Bottom'
		_1 = 'Left'
	;

	VALUE $visst7_
		_0 = 'Left'
		_00 = 'Top'
		_000 = 'Bottom'
		_1 = 'Right'
	;

	VALUE $visst8_
		_0 = 'Right'
		_00 = 'Top'
		_000 = 'Bottom'
		_1 = 'Left'
	;

	VALUE $visst9_
		_0 = 'Left'
		_00 = 'Top'
		_000 = 'Bottom'
		_1 = 'Right'
	;

	VALUE visstdon_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE visstrnd_
		555 = 'Physical problems'
		666 = 'Cognitive problems'
		777 = 'Physical and cognitive'
		888 = 'Refused*'
		999 = 'Technical problems'
	;

	VALUE visstgls_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE visva11_
		0 = '>100'
		1 = '100'
		2 = '80'
		3 = '63'
		4 = '50'
		5 = '40'
		6 = '32'
		7 = '25'
		8 = '20'
		9 = '16'
	;

	VALUE visva12_
		0 = '>100'
		1 = '100'
		2 = '80'
		3 = '63'
		4 = '50'
		5 = '40'
		6 = '32'
		7 = '25'
		8 = '20'
		9 = '16'
	;

	VALUE visva13_
		0 = '>100'
		1 = '100'
		2 = '80'
		3 = '63'
		4 = '50'
		5 = '40'
		6 = '32'
		7 = '25'
		8 = '20'
		9 = '16'
	;

	VALUE viscsdis_
		4 = '4'
		8 = '8'
	;

	VALUE viscs1b0_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE viscs1b1_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs1b2_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs1b3_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs1b4_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs1b5_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs1b6_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs1b7_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs1b8_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs1c0_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE viscs1c1_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs1c2_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs1c3_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs1c4_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs1c5_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs1c6_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs1c7_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs1c8_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE visva21_
		0 = '>100'
		1 = '100'
		2 = '80'
		3 = '63'
		4 = '50'
		5 = '40'
		6 = '32'
		7 = '25'
		8 = '20'
		9 = '16'
	;

	VALUE visva22_
		0 = '>100'
		1 = '100'
		2 = '80'
		3 = '63'
		4 = '50'
		5 = '40'
		6 = '32'
		7 = '25'
		8 = '20'
		9 = '16'
	;

	VALUE visva23_
		0 = '>100'
		1 = '100'
		2 = '80'
		3 = '63'
		4 = '50'
		5 = '40'
		6 = '32'
		7 = '25'
		8 = '20'
		9 = '16'
	;

	VALUE viscs2b0_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE viscs2b1_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs2b2_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs2b3_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs2b4_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs2b5_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs2b6_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs2b7_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs2b8_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs2c0_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE viscs2c1_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs2c2_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs2c3_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs2c4_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs2c5_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs2c6_
		0 = 'Top'
		1 = 'Bottom'
		9 = 'Blank'
	;

	VALUE viscs2c7_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE viscs2c8_
		0 = 'Bottom'
		1 = 'Top'
		9 = 'Blank'
	;

	VALUE visvadon_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE visvarnd_
		555 = 'Physical problems'
		666 = 'Cognitive problems'
		777 = 'Physical and cognitive'
		888 = 'Refused*'
		999 = 'Technical problems'
	;

	VALUE visvagls_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE viscsdon_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE viscsrnd_
		555 = 'Physical problems'
		666 = 'Cognitive problems'
		777 = 'Physical and cognitive'
		888 = 'Refused*'
		999 = 'Technical problems'
	;

	VALUE viscsgls_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE visvalta_
		0 = 'No - Go to STANDARD ALERT'
		1 = 'Yes - Go to B'
	;

	VALUE visvaltb_
		1 = 'Within the past few days - EMERGENCY ALERT'
		2 = 'Within the past few weeks - URGENT ALERT'
		3 = 'More than a few weeks ago - STANDARD ALERT'
	;

	VALUE visvfdis_VisTes_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE visvfdon_VisTes_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE visvfrnd_VisTes_
		555 = 'Physical problems (*includes if participant has marked discrepancy of vision between eyes)'
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

	INFORMAT crf_version_VisTes $7.;
	FORMAT crf_version_VisTes $7.;

	INFORMAT obsdate_visdate YYMMDD10.;
	FORMAT obsdate_visdate YYMMDD10.;

	INFORMAT visscdt YYMMDD10.;
	FORMAT visscdt YYMMDD10.;

	INFORMAT blank_VisTes $1.;
	FORMAT blank_VisTes $1.;

	INFORMAT visscid BEST32.;
	FORMAT visscid BEST12.;

	INFORMAT vissc1_VisTes BEST32.;
	FORMAT vissc1_VisTes BEST12.;

	INFORMAT vissc2_VisTes BEST32.;
	FORMAT vissc2_VisTes BEST12.;

	INFORMAT vissc2a_VisTes BEST32.;
	FORMAT vissc2a_VisTes BEST12.;

	INFORMAT vissc2a1_VisTes BEST32.;
	FORMAT vissc2a1_VisTes BEST12.;

	INFORMAT vissc2b_VisTes BEST32.;
	FORMAT vissc2b_VisTes BEST12.;

	INFORMAT vissc2b1_VisTes BEST32.;
	FORMAT vissc2b1_VisTes BEST12.;

	INFORMAT vissc2b2_VisTes BEST32.;
	FORMAT vissc2b2_VisTes BEST12.;

	INFORMAT vistid $5.;
	FORMAT vistid $5.;

	INFORMAT visst1 $2.;
	FORMAT visst1 $2.;

	INFORMAT visst2 $2.;
	FORMAT visst2 $2.;

	INFORMAT visst3 $2.;
	FORMAT visst3 $2.;

	INFORMAT visst4 $2.;
	FORMAT visst4 $2.;

	INFORMAT visst5 $4.;
	FORMAT visst5 $4.;

	INFORMAT visst6 $4.;
	FORMAT visst6 $4.;

	INFORMAT visst7 $2.;
	FORMAT visst7 $2.;

	INFORMAT visst8 $2.;
	FORMAT visst8 $2.;

	INFORMAT visst9 $2.;
	FORMAT visst9 $2.;

	INFORMAT visstdon BEST32.;
	FORMAT visstdon BEST12.;

	INFORMAT visstrnd BEST32.;
	FORMAT visstrnd BEST12.;

	INFORMAT visstgls BEST32.;
	FORMAT visstgls BEST12.;

	INFORMAT visva11 BEST32.;
	FORMAT visva11 BEST12.;

	INFORMAT visva12 BEST32.;
	FORMAT visva12 BEST12.;

	INFORMAT visva13 BEST32.;
	FORMAT visva13 BEST12.;

	INFORMAT viscsdis BEST32.;
	FORMAT viscsdis BEST12.;

	INFORMAT viscs1b0 BEST32.;
	FORMAT viscs1b0 BEST12.;

	INFORMAT viscs1b1 BEST32.;
	FORMAT viscs1b1 BEST12.;

	INFORMAT viscs1b2 BEST32.;
	FORMAT viscs1b2 BEST12.;

	INFORMAT viscs1b3 BEST32.;
	FORMAT viscs1b3 BEST12.;

	INFORMAT viscs1b4 BEST32.;
	FORMAT viscs1b4 BEST12.;

	INFORMAT viscs1b5 BEST32.;
	FORMAT viscs1b5 BEST12.;

	INFORMAT viscs1b6 BEST32.;
	FORMAT viscs1b6 BEST12.;

	INFORMAT viscs1b7 BEST32.;
	FORMAT viscs1b7 BEST12.;

	INFORMAT viscs1b8 BEST32.;
	FORMAT viscs1b8 BEST12.;

	INFORMAT viscs1c0 BEST32.;
	FORMAT viscs1c0 BEST12.;

	INFORMAT viscs1c1 BEST32.;
	FORMAT viscs1c1 BEST12.;

	INFORMAT viscs1c2 BEST32.;
	FORMAT viscs1c2 BEST12.;

	INFORMAT viscs1c3 BEST32.;
	FORMAT viscs1c3 BEST12.;

	INFORMAT viscs1c4 BEST32.;
	FORMAT viscs1c4 BEST12.;

	INFORMAT viscs1c5 BEST32.;
	FORMAT viscs1c5 BEST12.;

	INFORMAT viscs1c6 BEST32.;
	FORMAT viscs1c6 BEST12.;

	INFORMAT viscs1c7 BEST32.;
	FORMAT viscs1c7 BEST12.;

	INFORMAT viscs1c8 BEST32.;
	FORMAT viscs1c8 BEST12.;

	INFORMAT visva21 BEST32.;
	FORMAT visva21 BEST12.;

	INFORMAT visva22 BEST32.;
	FORMAT visva22 BEST12.;

	INFORMAT visva23 BEST32.;
	FORMAT visva23 BEST12.;

	INFORMAT viscs2b0 BEST32.;
	FORMAT viscs2b0 BEST12.;

	INFORMAT viscs2b1 BEST32.;
	FORMAT viscs2b1 BEST12.;

	INFORMAT viscs2b2 BEST32.;
	FORMAT viscs2b2 BEST12.;

	INFORMAT viscs2b3 BEST32.;
	FORMAT viscs2b3 BEST12.;

	INFORMAT viscs2b4 BEST32.;
	FORMAT viscs2b4 BEST12.;

	INFORMAT viscs2b5 BEST32.;
	FORMAT viscs2b5 BEST12.;

	INFORMAT viscs2b6 BEST32.;
	FORMAT viscs2b6 BEST12.;

	INFORMAT viscs2b7 BEST32.;
	FORMAT viscs2b7 BEST12.;

	INFORMAT viscs2b8 BEST32.;
	FORMAT viscs2b8 BEST12.;

	INFORMAT viscs2c0 BEST32.;
	FORMAT viscs2c0 BEST12.;

	INFORMAT viscs2c1 BEST32.;
	FORMAT viscs2c1 BEST12.;

	INFORMAT viscs2c2 BEST32.;
	FORMAT viscs2c2 BEST12.;

	INFORMAT viscs2c3 BEST32.;
	FORMAT viscs2c3 BEST12.;

	INFORMAT viscs2c4 BEST32.;
	FORMAT viscs2c4 BEST12.;

	INFORMAT viscs2c5 BEST32.;
	FORMAT viscs2c5 BEST12.;

	INFORMAT viscs2c6 BEST32.;
	FORMAT viscs2c6 BEST12.;

	INFORMAT viscs2c7 BEST32.;
	FORMAT viscs2c7 BEST12.;

	INFORMAT viscs2c8 BEST32.;
	FORMAT viscs2c8 BEST12.;

	INFORMAT visvadon BEST32.;
	FORMAT visvadon BEST12.;

	INFORMAT visvarnd BEST32.;
	FORMAT visvarnd BEST12.;

	INFORMAT visvagls BEST32.;
	FORMAT visvagls BEST12.;

	INFORMAT viscsdon BEST32.;
	FORMAT viscsdon BEST12.;

	INFORMAT viscsrnd BEST32.;
	FORMAT viscsrnd BEST12.;

	INFORMAT viscsgls BEST32.;
	FORMAT viscsgls BEST12.;

	INFORMAT visvalta BEST32.;
	FORMAT visvalta BEST12.;

	INFORMAT visvaltb BEST32.;
	FORMAT visvaltb BEST12.;

	INFORMAT visvfid BEST32.;
	FORMAT visvfid BEST12.;

	INFORMAT visvfdt YYMMDD10.;
	FORMAT visvfdt YYMMDD10.;

	INFORMAT visvfdis_VisTes BEST32.;
	FORMAT visvfdis_VisTes BEST12.;

	INFORMAT vissc3a1_VisTes NLNUM32.;
	FORMAT vissc3a1_VisTes NLNUM12.;

	INFORMAT vissc3a2_VisTes BEST32.;
	FORMAT vissc3a2_VisTes BEST12.;

	INFORMAT vissc3a3_VisTes BEST32.;
	FORMAT vissc3a3_VisTes BEST12.;

	INFORMAT vissc3a4_VisTes NLNUM32.;
	FORMAT vissc3a4_VisTes NLNUM12.;

	INFORMAT vissc3b1_VisTes NLNUM32.;
	FORMAT vissc3b1_VisTes NLNUM12.;

	INFORMAT vissc3b2_VisTes BEST32.;
	FORMAT vissc3b2_VisTes BEST12.;

	INFORMAT vissc3b3_VisTes BEST32.;
	FORMAT vissc3b3_VisTes BEST12.;

	INFORMAT vissc3b4_VisTes NLNUM32.;
	FORMAT vissc3b4_VisTes NLNUM12.;

	INFORMAT vissc3c_VisTes NLNUM32.;
	FORMAT vissc3c_VisTes NLNUM12.;

	INFORMAT visvfdon_VisTes BEST32.;
	FORMAT visvfdon_VisTes BEST12.;

	INFORMAT visvfrnd_VisTes BEST32.;
	FORMAT visvfrnd_VisTes BEST12.;

	INFORMAT auto_id_VisTes BEST32.;
	FORMAT auto_id_VisTes BEST12.;

	INFORMAT crf_parent_name_VisTes $16.;
	FORMAT crf_parent_name_VisTes $16.;

	INFORMAT study_name_VisTes $4.;
	FORMAT study_name_VisTes $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_VisTes
		obsdate_visdate
		visscdt
		blank_VisTes
		visscid
		vissc1_VisTes
		vissc2_VisTes
		vissc2a_VisTes
		vissc2a1_VisTes
		vissc2b_VisTes
		vissc2b1_VisTes
		vissc2b2_VisTes
		vistid
		visst1
		visst2
		visst3
		visst4
		visst5
		visst6
		visst7
		visst8
		visst9
		visstdon
		visstrnd
		visstgls
		visva11
		visva12
		visva13
		viscsdis
		viscs1b0
		viscs1b1
		viscs1b2
		viscs1b3
		viscs1b4
		viscs1b5
		viscs1b6
		viscs1b7
		viscs1b8
		viscs1c0
		viscs1c1
		viscs1c2
		viscs1c3
		viscs1c4
		viscs1c5
		viscs1c6
		viscs1c7
		viscs1c8
		visva21
		visva22
		visva23
		viscs2b0
		viscs2b1
		viscs2b2
		viscs2b3
		viscs2b4
		viscs2b5
		viscs2b6
		viscs2b7
		viscs2b8
		viscs2c0
		viscs2c1
		viscs2c2
		viscs2c3
		viscs2c4
		viscs2c5
		viscs2c6
		viscs2c7
		viscs2c8
		visvadon
		visvarnd
		visvagls
		viscsdon
		viscsrnd
		viscsgls
		visvalta
		visvaltb
		visvfid
		visvfdt
		visvfdis_VisTes
		vissc3a1_VisTes
		vissc3a2_VisTes
		vissc3a3_VisTes
		vissc3a4_VisTes
		vissc3b1_VisTes
		vissc3b2_VisTes
		vissc3b3_VisTes
		vissc3b4_VisTes
		vissc3c_VisTes
		visvfdon_VisTes
		visvfrnd_VisTes
		auto_id_VisTes
		crf_parent_name_VisTes
		study_name_VisTes
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
		crf_version_VisTes = "CRF Version"
		obsdate_visdate = "Vision Date Completed"
		visscdt = "Date Completed"
		blank_VisTes = "Blank Form"
		visscid = "Tester ID"
		vissc1_VisTes = "Do you wear glasses or contact lenses"
		vissc2_VisTes = "Did you bring your glasses"
		vissc2a_VisTes = "Type of glasses or contact lenses"
		vissc2a1_VisTes = "Glasses"
		vissc2b_VisTes = "Contact Lenses"
		vissc2b1_VisTes = "Contact lenses for distance bifocal or monovision"
		vissc2b2_VisTes = "Which eye distance"
		vistid = "VisionTester ID"
		visst1 = "Stereopsis Line 1"
		visst2 = "Stereopsis Line 2"
		visst3 = "Stereopsis Line 3"
		visst4 = "Stereopsis Line 4"
		visst5 = "Stereopsis Line 5"
		visst6 = "Stereopsis Line 6"
		visst7 = "Stereopsis Line 7"
		visst8 = "Stereopsis Line 8"
		visst9 = "Stereopsis Line 9"
		visstdon = "Stereopsis test completed"
		visstrnd = "Stereopsis reason not done"
		visstgls = "Did participant wear glasses"
		visva11 = "Glare lights off column 1 high contrast"
		visva12 = "Glare lights off column 2 medium contrast"
		visva13 = "Glare lights off column 3 low contrast"
		viscsdis = "Test distance"
		viscs1b0 = "Do you see the bars in the first circles see line B"
		viscs1b1 = "Glare lights off Line B1"
		viscs1b2 = "Glare lights off Line B2"
		viscs1b3 = "Glare lights off Line B3"
		viscs1b4 = "Glare lights off Line B4"
		viscs1b5 = "Glare lights off Line B5"
		viscs1b6 = "Glare lights off Line B6"
		viscs1b7 = "Glare lights off Line B7"
		viscs1b8 = "Glare lights off Line B8"
		viscs1c0 = "Lights off Do you see the bars in the first circles see line C"
		viscs1c1 = "Glare lights off Line C1"
		viscs1c2 = "Glare lights off Line C2"
		viscs1c3 = "Glare lights off Line C3"
		viscs1c4 = "Glare lights off Line C4"
		viscs1c5 = "Glare lights off Line C5"
		viscs1c6 = "Glare lights off Line C6"
		viscs1c7 = "Glare lights off Line C7"
		viscs1c8 = "Glare lights off Line C8"
		visva21 = "Glare lights on column 1 high contrast"
		visva22 = "Glare lights on column 2 medium contrast"
		visva23 = "Glare lights on column 3 low contrast"
		viscs2b0 = "Light on Do you see the bars in the first circles see line B"
		viscs2b1 = "Glare lights on Line B1"
		viscs2b2 = "Glare lights on Line B2"
		viscs2b3 = "Glare lights on Line B3"
		viscs2b4 = "Glare lights on Line B4"
		viscs2b5 = "Glare lights on Line B5"
		viscs2b6 = "Glare lights on Line B6"
		viscs2b7 = "Glare lights on Line B7"
		viscs2b8 = "Glare lights on Line B8"
		viscs2c0 = "Lights on Do you see the bars in the first circles see line C"
		viscs2c1 = "Glare lights on Line C1"
		viscs2c2 = "Glare lights on Line C2"
		viscs2c3 = "Glare lights on Line C3"
		viscs2c4 = "Glare lights on Line C4"
		viscs2c5 = "Glare lights on Line C5"
		viscs2c6 = "Glare lights on Line C6"
		viscs2c7 = "Glare lights on Line C7"
		viscs2c8 = "Glare lights on Line C8"
		visvadon = "Was visual acuity completed"
		visvarnd = "Visual acuity reason not done"
		visvagls = "Visual acuity did particpant wear glasses"
		viscsdon = "Was contrast sensitivity completed"
		viscsrnd = "Contrast sensitivity reason not done"
		viscsgls = "Contrast sensitivity did particpant wear glasses"
		visvalta = "Visual Acuity and Visual Field Alerts YN"
		visvaltb = "Alerts"
		visvfid = "Visual Field Tester ID"
		visvfdt = "Visual Field Date"
		visvfdis_VisTes = "Does participant have marked discrepency of vision between eyes"
		vissc3a1_VisTes = "Right eye sphere Rx"
		vissc3a2_VisTes = "Right eye cylinder Rx"
		vissc3a3_VisTes = "Right eye Axis Rx"
		vissc3a4_VisTes = "Right eye sphere Rx final"
		vissc3b1_VisTes = "Left eye sphere Rx"
		vissc3b2_VisTes = "Left eye cylinder Rx"
		vissc3b3_VisTes = "Left eye Axis Rx"
		vissc3b4_VisTes = "Left eye sphere Rx final"
		vissc3c_VisTes = "Near add"
		visvfdon_VisTes = "Was visual field assessment completed"
		visvfrnd_VisTes = "Why visual field not done"
		auto_id_VisTes = "Unique Teleform Number"
		crf_parent_name_VisTes = "CRF Parent Name"
		study_name_VisTes = "Study Name"
	;
	FORMAT
		vissc1_VisTes vissc1_VisTes_.
		vissc2_VisTes vissc2_VisTes_.
		vissc2a_VisTes vissc2a_VisTes_.
		vissc2a1_VisTes vissc2a1_VisTes_.
		vissc2b_VisTes vissc2b_VisTes_.
		vissc2b1_VisTes vissc2b1_VisTes_.
		vissc2b2_VisTes vissc2b2_VisTes_.
		visstdon visstdon_.
		visstrnd visstrnd_.
		visstgls visstgls_.
		visva11 visva11_.
		visva12 visva12_.
		visva13 visva13_.
		viscsdis viscsdis_.
		viscs1b0 viscs1b0_.
		viscs1b1 viscs1b1_.
		viscs1b2 viscs1b2_.
		viscs1b3 viscs1b3_.
		viscs1b4 viscs1b4_.
		viscs1b5 viscs1b5_.
		viscs1b6 viscs1b6_.
		viscs1b7 viscs1b7_.
		viscs1b8 viscs1b8_.
		viscs1c0 viscs1c0_.
		viscs1c1 viscs1c1_.
		viscs1c2 viscs1c2_.
		viscs1c3 viscs1c3_.
		viscs1c4 viscs1c4_.
		viscs1c5 viscs1c5_.
		viscs1c6 viscs1c6_.
		viscs1c7 viscs1c7_.
		viscs1c8 viscs1c8_.
		visva21 visva21_.
		visva22 visva22_.
		visva23 visva23_.
		viscs2b0 viscs2b0_.
		viscs2b1 viscs2b1_.
		viscs2b2 viscs2b2_.
		viscs2b3 viscs2b3_.
		viscs2b4 viscs2b4_.
		viscs2b5 viscs2b5_.
		viscs2b6 viscs2b6_.
		viscs2b7 viscs2b7_.
		viscs2b8 viscs2b8_.
		viscs2c0 viscs2c0_.
		viscs2c1 viscs2c1_.
		viscs2c2 viscs2c2_.
		viscs2c3 viscs2c3_.
		viscs2c4 viscs2c4_.
		viscs2c5 viscs2c5_.
		viscs2c6 viscs2c6_.
		viscs2c7 viscs2c7_.
		viscs2c8 viscs2c8_.
		visvadon visvadon_.
		visvarnd visvarnd_.
		visvagls visvagls_.
		viscsdon viscsdon_.
		viscsrnd viscsrnd_.
		viscsgls viscsgls_.
		visvalta visvalta_.
		visvaltb visvaltb_.
		visvfdis_VisTes visvfdis_VisTes_.
		visvfdon_VisTes visvfdon_VisTes_.
		visvfrnd_VisTes visvfrnd_VisTes_.
		visst1 $visst1_.
		visst2 $visst2_.
		visst3 $visst3_.
		visst4 $visst4_.
		visst5 $visst5_.
		visst6 $visst6_.
		visst7 $visst7_.
		visst8 $visst8_.
		visst9 $visst9_.
	;
RUN;


DATA blsa_vision_test;
    SET WORK.IMPORT;
RUN;
