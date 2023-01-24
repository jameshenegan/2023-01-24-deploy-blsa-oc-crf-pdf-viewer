%let path_to_file = '../data-csv/BLSA_MRI.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE mri01a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mri01b_
		1 = 'Physical'
		2 = 'Claustrophobia'
		3 = 'Metal in body'
		4 = ' Implanted Medical device'
	;

	VALUE mri01c_
		1 = 'Complete'
		2 = 'Incomplete'
		3 = 'Not Done'
	;

	VALUE mri01d1_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri01d2_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri01d3_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri01d4_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri01d5_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri01d6_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri01d7_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri01d8_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri01d9_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri01d10_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri02a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mri02b_
		1 = 'Physical'
		2 = 'Claustrophobia'
		3 = 'Metal in body'
		4 = ' Implanted Medical device'
	;

	VALUE mri02c_
		1 = 'Complete'
		2 = 'Incomplete'
		3 = 'Not Done'
	;

	VALUE mri02d1_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri02d2_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri02d3_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri02d4_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri02d5_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri02d6_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri02d7_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri02d8_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri02d9_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri03a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mri03b_
		1 = 'Physical'
		2 = 'Claustrophobia'
		3 = 'Metal in body'
		4 = ' Implanted Medical device'
	;

	VALUE mri03c_
		1 = 'Complete'
		2 = 'Incomplete'
		3 = 'Not Done'
	;

	VALUE mri03d1_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri03d2_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri03d3_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri03d4_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri03d5_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri03d6_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri03d7_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri03d8_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri03d9_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri03d10_
		3 = '3 - No Time'
		4 = '4 - Refused'
		5 = '5 - Unable (Physical/Mental)'
		6 = '6 - Equipment problem'
	;

	VALUE mri01d_2_
		3 = 'No Time'
		4 = 'Refused'
		6 = 'Equipment Problems'
		7 = 'No Tester'
		8 = 'Unable COVID-19 Mask'
		9 = 'Not Scheduled'
	;

	VALUE mri02d_2_
		3 = 'No Time'
		4 = 'Refused'
		6 = 'Equipment Problems'
		7 = 'No Tester'
		8 = 'Unable COVID-19 Mask'
		9 = 'Not Scheduled'
	;

	VALUE mri03d_2_
		3 = 'No Time'
		4 = 'Refused'
		6 = 'Equipment Problems'
		7 = 'No Tester'
		8 = 'Unable COVID-19 Mask'
		9 = 'Not Scheduled'
	;

	VALUE mri01d_
		3 = 'No Time'
		4 = 'Refused'
		6 = 'Equipment Problems'
		7 = 'No Tester'
		9 = 'Not Scheduled'
	;

	VALUE mri02d_
		3 = 'No Time'
		4 = 'Refused'
		6 = 'Equipment Problems'
		7 = 'No Tester'
		9 = 'Not Scheduled'
	;

	VALUE mri03d_
		3 = 'No Time'
		4 = 'Refused'
		6 = 'Equipment Problems'
		7 = 'No Tester'
		9 = 'Not Scheduled'
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

	INFORMAT crf_version_MRI $10.;
	FORMAT crf_version_MRI $10.;

	INFORMAT obsdate_mridate YYMMDD10.;
	FORMAT obsdate_mridate YYMMDD10.;

	INFORMAT mritid BEST32.;
	FORMAT mritid BEST12.;

	INFORMAT blank_MRI $1.;
	FORMAT blank_MRI $1.;

	INFORMAT mri01a BEST32.;
	FORMAT mri01a BEST12.;

	INFORMAT mri01b BEST32.;
	FORMAT mri01b BEST12.;

	INFORMAT mri01c BEST32.;
	FORMAT mri01c BEST12.;

	INFORMAT mri01d1 BEST32.;
	FORMAT mri01d1 BEST12.;

	INFORMAT mri01d2 BEST32.;
	FORMAT mri01d2 BEST12.;

	INFORMAT mri01d3 BEST32.;
	FORMAT mri01d3 BEST12.;

	INFORMAT mri01d4 BEST32.;
	FORMAT mri01d4 BEST12.;

	INFORMAT mri01d5 BEST32.;
	FORMAT mri01d5 BEST12.;

	INFORMAT mri01d6 BEST32.;
	FORMAT mri01d6 BEST12.;

	INFORMAT mri01d7 BEST32.;
	FORMAT mri01d7 BEST12.;

	INFORMAT mri01d8 BEST32.;
	FORMAT mri01d8 BEST12.;

	INFORMAT mri01d9 BEST32.;
	FORMAT mri01d9 BEST12.;

	INFORMAT mri01d10 BEST32.;
	FORMAT mri01d10 BEST12.;

	INFORMAT mri02a BEST32.;
	FORMAT mri02a BEST12.;

	INFORMAT mri02b BEST32.;
	FORMAT mri02b BEST12.;

	INFORMAT mri02c BEST32.;
	FORMAT mri02c BEST12.;

	INFORMAT mri02d1 BEST32.;
	FORMAT mri02d1 BEST12.;

	INFORMAT mri02d2 BEST32.;
	FORMAT mri02d2 BEST12.;

	INFORMAT mri02d3 BEST32.;
	FORMAT mri02d3 BEST12.;

	INFORMAT mri02d4 BEST32.;
	FORMAT mri02d4 BEST12.;

	INFORMAT mri02d5 BEST32.;
	FORMAT mri02d5 BEST12.;

	INFORMAT mri02d6 BEST32.;
	FORMAT mri02d6 BEST12.;

	INFORMAT mri02d7 BEST32.;
	FORMAT mri02d7 BEST12.;

	INFORMAT mri02d8 BEST32.;
	FORMAT mri02d8 BEST12.;

	INFORMAT mri02d9 BEST32.;
	FORMAT mri02d9 BEST12.;

	INFORMAT mri03a BEST32.;
	FORMAT mri03a BEST12.;

	INFORMAT mri03b BEST32.;
	FORMAT mri03b BEST12.;

	INFORMAT mri03c BEST32.;
	FORMAT mri03c BEST12.;

	INFORMAT mri03d1 BEST32.;
	FORMAT mri03d1 BEST12.;

	INFORMAT mri03d2 BEST32.;
	FORMAT mri03d2 BEST12.;

	INFORMAT mri03d3 BEST32.;
	FORMAT mri03d3 BEST12.;

	INFORMAT mri03d4 BEST32.;
	FORMAT mri03d4 BEST12.;

	INFORMAT mri03d5 BEST32.;
	FORMAT mri03d5 BEST12.;

	INFORMAT mri03d6 BEST32.;
	FORMAT mri03d6 BEST12.;

	INFORMAT mri03d7 BEST32.;
	FORMAT mri03d7 BEST12.;

	INFORMAT mri03d8 BEST32.;
	FORMAT mri03d8 BEST12.;

	INFORMAT mri03d9 BEST32.;
	FORMAT mri03d9 BEST12.;

	INFORMAT mri03d10 BEST32.;
	FORMAT mri03d10 BEST12.;

	INFORMAT mri01d_2 BEST32.;
	FORMAT mri01d_2 BEST12.;

	INFORMAT mri02d_2 BEST32.;
	FORMAT mri02d_2 BEST12.;

	INFORMAT mri03d_2 BEST32.;
	FORMAT mri03d_2 BEST12.;

	INFORMAT mri01d BEST32.;
	FORMAT mri01d BEST12.;

	INFORMAT mri02d BEST32.;
	FORMAT mri02d BEST12.;

	INFORMAT mri03d BEST32.;
	FORMAT mri03d BEST12.;

	INFORMAT auto_id_MRI BEST32.;
	FORMAT auto_id_MRI BEST12.;

	INFORMAT crf_parent_name_MRI $8.;
	FORMAT crf_parent_name_MRI $8.;

	INFORMAT study_name_MRI $4.;
	FORMAT study_name_MRI $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_MRI
		obsdate_mridate
		mritid
		blank_MRI
		mri01a
		mri01b
		mri01c
		mri01d1
		mri01d2
		mri01d3
		mri01d4
		mri01d5
		mri01d6
		mri01d7
		mri01d8
		mri01d9
		mri01d10
		mri02a
		mri02b
		mri02c
		mri02d1
		mri02d2
		mri02d3
		mri02d4
		mri02d5
		mri02d6
		mri02d7
		mri02d8
		mri02d9
		mri03a
		mri03b
		mri03c
		mri03d1
		mri03d2
		mri03d3
		mri03d4
		mri03d5
		mri03d6
		mri03d7
		mri03d8
		mri03d9
		mri03d10
		mri01d_2
		mri02d_2
		mri03d_2
		mri01d
		mri02d
		mri03d
		auto_id_MRI
		crf_parent_name_MRI
		study_name_MRI
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
		crf_version_MRI = "CRF Version"
		obsdate_mridate = "Date Completed"
		mritid = "Tester ID"
		blank_MRI = "Blank Form"
		mri01a = "Eligible for Thigh MRI"
		mri01b = "Thigh MRI reason not eligible"
		mri01c = "Was thigh MRI completed"
		mri01d1 = "Thigh SURVEY"
		mri01d2 = "Thigh WIP SURVEY"
		mri01d3 = "Thigh Small Fov Flex M survey"
		mri01d4 = "T1 3D 80 SLICE"
		mri01d5 = "COR SCOUT"
		mri01d6 = "B0map2p3ms"
		mri01d7 = "WS T1 3D 80 SLICE"
		mri01d8 = "FS T1 3D 30 SLICE"
		mri01d9 = "SV PRESS FLEX M"
		mri01d10 = "SV NOH2OSUPP"
		mri02a = "Eligible for 31P Dynamic Exercise"
		mri02b = "Dynamic Exercise MRI reason not eligible"
		mri02c = "Was Dynamic Exercise MRI completed"
		mri02d1 = "Dynamic Exercise SURVEY"
		mri02d2 = "Dynamic Exercise SURVEY L Leg"
		mri02d3 = "Dynamic Exercise T1 3D 80 Slice"
		mri02d4 = "Dynamic Exercise B0map 2p3ms"
		mri02d5 = "Dynamic Exercise T1W_TSE"
		mri02d6 = "Dynamic Exercise 31P LONG TR"
		mri02d7 = "Dynamic Exercise 31P_DYN_EXERCISE"
		mri02d8 = "Dynamic Exercise T1W_TSE 2"
		mri02d9 = "Dynamic Exercise 31P Long TR 2"
		mri03a = "Eligible for Brain MRI"
		mri03b = "Brain MRI reason not eligible"
		mri03c = "Was Brain MRI completed"
		mri03d1 = "Smart Brain"
		mri03d2 = "Ref HC8"
		mri03d3 = "MPrageADNIsag"
		mri03d4 = "REST"
		mri03d5 = "Decision Making"
		mri03d6 = "Decision Making 2"
		mri03d7 = "DE ADNIaxial"
		mri03d8 = "FLAIR"
		mri03d9 = "DT1HR2.2"
		mri03d10 = "DT1HR2.2 2"
		mri01d_2 = "Thigh MRI reason not done"
		mri02d_2 = "Dynamic Exercise MRI reason not done"
		mri03d_2 = "BrainMRI reason not done"
		mri01d = "Thigh MRI reason not done"
		mri02d = "Dynamic Exercise MRI reason not done"
		mri03d = "BrainMRI reason not done"
		auto_id_MRI = "Unique Teleform Number"
		crf_parent_name_MRI = "CRF Parent Name"
		study_name_MRI = "Study Name"
	;
	FORMAT
		mri01a mri01a_.
		mri01b mri01b_.
		mri01c mri01c_.
		mri01d1 mri01d1_.
		mri01d2 mri01d2_.
		mri01d3 mri01d3_.
		mri01d4 mri01d4_.
		mri01d5 mri01d5_.
		mri01d6 mri01d6_.
		mri01d7 mri01d7_.
		mri01d8 mri01d8_.
		mri01d9 mri01d9_.
		mri01d10 mri01d10_.
		mri02a mri02a_.
		mri02b mri02b_.
		mri02c mri02c_.
		mri02d1 mri02d1_.
		mri02d2 mri02d2_.
		mri02d3 mri02d3_.
		mri02d4 mri02d4_.
		mri02d5 mri02d5_.
		mri02d6 mri02d6_.
		mri02d7 mri02d7_.
		mri02d8 mri02d8_.
		mri02d9 mri02d9_.
		mri03a mri03a_.
		mri03b mri03b_.
		mri03c mri03c_.
		mri03d1 mri03d1_.
		mri03d2 mri03d2_.
		mri03d3 mri03d3_.
		mri03d4 mri03d4_.
		mri03d5 mri03d5_.
		mri03d6 mri03d6_.
		mri03d7 mri03d7_.
		mri03d8 mri03d8_.
		mri03d9 mri03d9_.
		mri03d10 mri03d10_.
		mri01d_2 mri01d_2_.
		mri02d_2 mri02d_2_.
		mri03d_2 mri03d_2_.
		mri01d mri01d_.
		mri02d mri02d_.
		mri03d mri03d_.
	;
RUN;


DATA blsa_mri;
    SET WORK.IMPORT;
RUN;
