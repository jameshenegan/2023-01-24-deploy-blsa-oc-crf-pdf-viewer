%let path_to_file = '../data-csv/BLSA_Knee_x-ray.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE knx000_
		0 = 'None'
		1 = 'Both'
		2 = 'Left only'
		3 = 'Right only'
	;

	VALUE knxqa1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqb1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqa2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqb2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqa3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqb3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqa4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqb4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqa5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqb5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqa6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqb6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqa7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqb7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqa8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqb8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqa9_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqb9_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqa10_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqb10_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqa11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxqb11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE knxa1m_
		0 = 'Zero'
		9 = 'Unknown'
	;

	VALUE knxb1m_
		0 = 'Zero'
		9 = 'Unknown'
	;

	VALUE knxa31_
		0 = 'Normal (absent)'
		1 = 'Possible'
		2 = 'OARSI Grade1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE knxa32_
		0 = 'Normal (absent)'
		1 = 'Possible'
		2 = 'OARSI Grade1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE knxa41_
		0 = 'Normal'
		1 = 'OARSI Grade1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE knxa42_
		0 = 'Normal'
		1 = 'OARSI Grade1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE knxa51_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE knxa52_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE knxa6_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE knxa7_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE knxa8_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE knxakl_
		0 = 'Grade 0 = No osteophytes normal joint space width'
		1 = 'Grade 1 = Doubtful narrowing possible osteophyte'
		2 = 'Grade 2 = Minimal definite osteophytes unimpared joint space (JS)'
		3 = 'Grade 3 = Moderate osteophytes definite diminution of JS some sclerosos (OARSI 1-2)'
		4 = 'Grade 4 = Severe definite osteophytes joint space greatly narrowed (OARSI grade 3)'
		5 = 'Grade 5 = Endstage knee replaced'
	;

	VALUE knxb31_
		0 = 'Normal (absent)'
		1 = 'Possible'
		2 = 'OARSI Grade1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE knxb32_
		0 = 'Normal (absent)'
		1 = 'Possible'
		2 = 'OARSI Grade1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE knxb41_
		0 = 'Normal'
		1 = 'OARSI Grade1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE knxb42_
		0 = 'Normal'
		1 = 'OARSI Grade1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE knxb51_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE knxb52_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE knxb6_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE knxb7_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE knxb8_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE knxbkl_
		0 = 'Grade 0 = No osteophytes normal joint space width'
		1 = 'Grade 1 = Doubtful narrowing possible osteophyte'
		2 = 'Grade 2 = Minimal definite osteophytes unimpared joint space (JS)'
		3 = 'Grade 3 = Moderate osteophytes definite diminution of JS some sclerosos (OARSI 1-2)'
		4 = 'Grade 4 = Severe definite osteophytes joint space greatly narrowed (OARSI grade 3)'
		5 = 'Grade 5 = Endstage knee replaced'
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

	INFORMAT crf_version_Knexra $7.;
	FORMAT crf_version_Knexra $7.;

	INFORMAT obsdate_knxdat2 YYMMDD10.;
	FORMAT obsdate_knxdat2 YYMMDD10.;

	INFORMAT knxqdat YYMMDD10.;
	FORMAT knxqdat YYMMDD10.;

	INFORMAT blank_Knexra $1.;
	FORMAT blank_Knexra $1.;

	INFORMAT knxqtid BEST32.;
	FORMAT knxqtid BEST12.;

	INFORMAT knx000 BEST32.;
	FORMAT knx000 BEST12.;

	INFORMAT knxqa1 BEST32.;
	FORMAT knxqa1 BEST12.;

	INFORMAT knxqb1 BEST32.;
	FORMAT knxqb1 BEST12.;

	INFORMAT knxqa2 BEST32.;
	FORMAT knxqa2 BEST12.;

	INFORMAT knxqb2 BEST32.;
	FORMAT knxqb2 BEST12.;

	INFORMAT knxqa3 BEST32.;
	FORMAT knxqa3 BEST12.;

	INFORMAT knxqb3 BEST32.;
	FORMAT knxqb3 BEST12.;

	INFORMAT knxqa4 BEST32.;
	FORMAT knxqa4 BEST12.;

	INFORMAT knxqb4 BEST32.;
	FORMAT knxqb4 BEST12.;

	INFORMAT knxqa5 BEST32.;
	FORMAT knxqa5 BEST12.;

	INFORMAT knxqb5 BEST32.;
	FORMAT knxqb5 BEST12.;

	INFORMAT knxqa6 BEST32.;
	FORMAT knxqa6 BEST12.;

	INFORMAT knxqb6 BEST32.;
	FORMAT knxqb6 BEST12.;

	INFORMAT knxqa7 BEST32.;
	FORMAT knxqa7 BEST12.;

	INFORMAT knxqb7 BEST32.;
	FORMAT knxqb7 BEST12.;

	INFORMAT knxqa8 BEST32.;
	FORMAT knxqa8 BEST12.;

	INFORMAT knxqb8 BEST32.;
	FORMAT knxqb8 BEST12.;

	INFORMAT knxqa9 BEST32.;
	FORMAT knxqa9 BEST12.;

	INFORMAT knxqb9 BEST32.;
	FORMAT knxqb9 BEST12.;

	INFORMAT knxqa10 BEST32.;
	FORMAT knxqa10 BEST12.;

	INFORMAT knxqb10 BEST32.;
	FORMAT knxqb10 BEST12.;

	INFORMAT knxqa11 BEST32.;
	FORMAT knxqa11 BEST12.;

	INFORMAT knxqb11 BEST32.;
	FORMAT knxqb11 BEST12.;

	INFORMAT knxa1m BEST32.;
	FORMAT knxa1m BEST12.;

	INFORMAT knxa1 BEST32.;
	FORMAT knxa1 BEST12.;

	INFORMAT knxa2a1 BEST32.;
	FORMAT knxa2a1 BEST12.;

	INFORMAT knxa2a2 BEST32.;
	FORMAT knxa2a2 BEST12.;

	INFORMAT knxa2b1 BEST32.;
	FORMAT knxa2b1 BEST12.;

	INFORMAT knxa2b2 BEST32.;
	FORMAT knxa2b2 BEST12.;

	INFORMAT knxa2c BEST32.;
	FORMAT knxa2c BEST12.;

	INFORMAT knxb1m BEST32.;
	FORMAT knxb1m BEST12.;

	INFORMAT knxb1 BEST32.;
	FORMAT knxb1 BEST12.;

	INFORMAT knxb2a1 BEST32.;
	FORMAT knxb2a1 BEST12.;

	INFORMAT knxb2a2 BEST32.;
	FORMAT knxb2a2 BEST12.;

	INFORMAT knxb2b1 BEST32.;
	FORMAT knxb2b1 BEST12.;

	INFORMAT knxb2b2 BEST32.;
	FORMAT knxb2b2 BEST12.;

	INFORMAT knxb2c BEST32.;
	FORMAT knxb2c BEST12.;

	INFORMAT knxtid BEST32.;
	FORMAT knxtid BEST12.;

	INFORMAT knxdate YYMMDD10.;
	FORMAT knxdate YYMMDD10.;

	INFORMAT knxtid2 BEST32.;
	FORMAT knxtid2 BEST12.;

	INFORMAT knxa31 BEST32.;
	FORMAT knxa31 BEST12.;

	INFORMAT knxa32 BEST32.;
	FORMAT knxa32 BEST12.;

	INFORMAT knxa41 BEST32.;
	FORMAT knxa41 BEST12.;

	INFORMAT knxa42 BEST32.;
	FORMAT knxa42 BEST12.;

	INFORMAT knxa51 BEST32.;
	FORMAT knxa51 BEST12.;

	INFORMAT knxa52 BEST32.;
	FORMAT knxa52 BEST12.;

	INFORMAT knxa6 BEST32.;
	FORMAT knxa6 BEST12.;

	INFORMAT knxa7 BEST32.;
	FORMAT knxa7 BEST12.;

	INFORMAT knxa8 BEST32.;
	FORMAT knxa8 BEST12.;

	INFORMAT knxakl BEST32.;
	FORMAT knxakl BEST12.;

	INFORMAT knxb31 BEST32.;
	FORMAT knxb31 BEST12.;

	INFORMAT knxb32 BEST32.;
	FORMAT knxb32 BEST12.;

	INFORMAT knxb41 BEST32.;
	FORMAT knxb41 BEST12.;

	INFORMAT knxb42 BEST32.;
	FORMAT knxb42 BEST12.;

	INFORMAT knxb51 BEST32.;
	FORMAT knxb51 BEST12.;

	INFORMAT knxb52 BEST32.;
	FORMAT knxb52 BEST12.;

	INFORMAT knxb6 BEST32.;
	FORMAT knxb6 BEST12.;

	INFORMAT knxb7 BEST32.;
	FORMAT knxb7 BEST12.;

	INFORMAT knxb8 BEST32.;
	FORMAT knxb8 BEST12.;

	INFORMAT knxbkl BEST32.;
	FORMAT knxbkl BEST12.;

	INFORMAT auto_id_Knexra BEST32.;
	FORMAT auto_id_Knexra BEST12.;

	INFORMAT crf_parent_name_Knexra $15.;
	FORMAT crf_parent_name_Knexra $15.;

	INFORMAT study_name_Knexra $4.;
	FORMAT study_name_Knexra $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_Knexra
		obsdate_knxdat2
		knxqdat
		blank_Knexra
		knxqtid
		knx000
		knxqa1
		knxqb1
		knxqa2
		knxqb2
		knxqa3
		knxqb3
		knxqa4
		knxqb4
		knxqa5
		knxqb5
		knxqa6
		knxqb6
		knxqa7
		knxqb7
		knxqa8
		knxqb8
		knxqa9
		knxqb9
		knxqa10
		knxqb10
		knxqa11
		knxqb11
		knxa1m
		knxa1
		knxa2a1
		knxa2a2
		knxa2b1
		knxa2b2
		knxa2c
		knxb1m
		knxb1
		knxb2a1
		knxb2a2
		knxb2b1
		knxb2b2
		knxb2c
		knxtid
		knxdate
		knxtid2
		knxa31
		knxa32
		knxa41
		knxa42
		knxa51
		knxa52
		knxa6
		knxa7
		knxa8
		knxakl
		knxb31
		knxb32
		knxb41
		knxb42
		knxb51
		knxb52
		knxb6
		knxb7
		knxb8
		knxbkl
		auto_id_Knexra
		crf_parent_name_Knexra
		study_name_Knexra
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
		crf_version_Knexra = "CRF Version"
		obsdate_knxdat2 = "Date Completed 2"
		knxqdat = "Date Completed"
		blank_Knexra = "Blank Form"
		knxqtid = "Tester ID"
		knx000 = "Which knee submitted for interpretation"
		knxqa1 = "Are both knees radiographed R"
		knxqb1 = "Are both knees radiographed L"
		knxqa2 = "Are markers on each film in a location that does not obscure any structure R"
		knxqb2 = "Are markers on each film in a location that does not obscure any structure L"
		knxqa3 = "Does the entire joint appear on the film R"
		knxqb3 = "Does the entire joint appear on the film L"
		knxqa4 = "Are the lines of beads in the positioning frame visible R"
		knxqb4 = "Are the lines of beads in the positioning frame visible R"
		knxqa5 = "Is articular surface of the medial femoral condyle sharply delineated R"
		knxqb5 = "Is articular surface of the medial femoral condyle sharply delineated L"
		knxqa6 = "Is floor of the medial tibial plateau clearly delineated and flat R"
		knxqb6 = "Is floor of the medial tibial plateau clearly delineated and flat L"
		knxqa7 = "Is cortex of the tibial plateau floor sharply delineated R"
		knxqb7 = "Is cortex of the tibial plateau floor sharply delineated L"
		knxqa8 = "Vertical distance between anterior and posterior tibial margins at center of medial tibial plateau gr than about mm R"
		knxqb8 = "Vertical distance between anterior and posterior tibial margins at center of medial tibial plateau gr than about mm L"
		knxqa9 = "Are medial and lateral sides of knee joint including bone margins clearly visible without use of high intensity light R"
		knxqb9 = "Are medial and lateral sides of knee joint including bone margins clearly visible without use of high intensity light L"
		knxqa10 = "Is soft tissue visible R"
		knxqb10 = "Is soft tissue visible L"
		knxqa11 = "Is any hardware visible R"
		knxqb11 = "Is any hardware visible L"
		knxa1m = "Knee alignment R"
		knxa1 = "Knee alignment R not zero"
		knxa2a1 = "Mid JSW Medial R"
		knxa2a2 = "Mid JSW Lateral R"
		knxa2b1 = "Min JSW Medial R"
		knxa2b2 = "Min JSW Lateral R"
		knxa2c = "Marker diameter R"
		knxb1m = "Knee alignment L"
		knxb1 = "Knee alignment L not zero"
		knxb2a1 = "Mid JSW Medial L"
		knxb2a2 = "Mid JSW Lateral L"
		knxb2b1 = "Min JSW Medial L"
		knxb2b2 = "Min JSW Lateral L"
		knxb2c = "Marker diameter L"
		knxtid = "Interpreter Tester ID 1"
		knxdate = "Date Completed 1"
		knxtid2 = "Interpreter Tester ID 2"
		knxa31 = "R Osteophytes score medial"
		knxa32 = "R Osteophytes score lateral"
		knxa41 = "R Narrowing score medial"
		knxa42 = "R Narrowing score lateral"
		knxa51 = "R Sclerosis score medial"
		knxa52 = "R Sclerosis score lateral"
		knxa6 = "R Tibial spines sharpening"
		knxa7 = "R Chondrocalcinosis"
		knxa8 = "R Old Trauma"
		knxakl = "R KL Grade"
		knxb31 = "L Osteophytes score medial"
		knxb32 = "L Osteophytes score lateral"
		knxb41 = "L Narrowing score medial"
		knxb42 = "L Narrowing score lateral"
		knxb51 = "L Sclerosis score medial"
		knxb52 = "L Sclerosis score lateral"
		knxb6 = "L Tibial spines sharpening"
		knxb7 = "L Chondrocalcinosis"
		knxb8 = "L Old Trauma"
		knxbkl = "L KL Grade"
		auto_id_Knexra = "Unique Teleform Number"
		crf_parent_name_Knexra = "CRF Parent Name"
		study_name_Knexra = "Study Name"
	;
	FORMAT
		knx000 knx000_.
		knxqa1 knxqa1_.
		knxqb1 knxqb1_.
		knxqa2 knxqa2_.
		knxqb2 knxqb2_.
		knxqa3 knxqa3_.
		knxqb3 knxqb3_.
		knxqa4 knxqa4_.
		knxqb4 knxqb4_.
		knxqa5 knxqa5_.
		knxqb5 knxqb5_.
		knxqa6 knxqa6_.
		knxqb6 knxqb6_.
		knxqa7 knxqa7_.
		knxqb7 knxqb7_.
		knxqa8 knxqa8_.
		knxqb8 knxqb8_.
		knxqa9 knxqa9_.
		knxqb9 knxqb9_.
		knxqa10 knxqa10_.
		knxqb10 knxqb10_.
		knxqa11 knxqa11_.
		knxqb11 knxqb11_.
		knxa1m knxa1m_.
		knxb1m knxb1m_.
		knxa31 knxa31_.
		knxa32 knxa32_.
		knxa41 knxa41_.
		knxa42 knxa42_.
		knxa51 knxa51_.
		knxa52 knxa52_.
		knxa6 knxa6_.
		knxa7 knxa7_.
		knxa8 knxa8_.
		knxakl knxakl_.
		knxb31 knxb31_.
		knxb32 knxb32_.
		knxb41 knxb41_.
		knxb42 knxb42_.
		knxb51 knxb51_.
		knxb52 knxb52_.
		knxb6 knxb6_.
		knxb7 knxb7_.
		knxb8 knxb8_.
		knxbkl knxbkl_.
	;
RUN;


DATA blsa_knee_x-ray;
    SET WORK.IMPORT;
RUN;
