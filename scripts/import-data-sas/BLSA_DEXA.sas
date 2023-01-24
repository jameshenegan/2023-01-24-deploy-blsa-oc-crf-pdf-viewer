%let path_to_file = '../data-csv/BLSA_DEXA.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE dxasc1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxasc2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxasc3a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxasc3b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxasc3c_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxasc3d_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxasc3e_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxasc4_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE dxasc4a_
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE dxasc6_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE dxasc5_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE dxasc5a_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxasc5b_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxasc5c_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxasc5d_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxasc5e_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxasc5f_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxasc5g_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxasc5h_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxasc5i_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxasc5j_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack1_
		1 = 'Yes'
		5 = 'No - Physical problems'
		6 = 'No - Cognitive problems'
		8 = 'No - Refused'
		9 = 'No - Technical problems'
	;

	VALUE dxack2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxack3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxack4_
		1 = 'Yes'
		5 = 'No - Physical problems'
		6 = 'No - Cognitive problems'
		8 = 'No - Refused'
		9 = 'No - Technical problems'
	;

	VALUE dxack5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxack6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxack7_
		1 = 'Yes'
		5 = 'No - Physical problems'
		6 = 'No - Cognitive problems'
		8 = 'No - Refused'
		9 = 'No - Technical problems'
	;

	VALUE dxack8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxack9_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxack11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxack12_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dxack13_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack14_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack15_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack16_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack17_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack18_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack19_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack20_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack21_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack22_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack23_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
	;

	VALUE dxack24_
		0 = 'None'
		1 = 'Hardware'
		2 = 'Other Artifacts'
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

	INFORMAT crf_version_DEX $8.;
	FORMAT crf_version_DEX $8.;

	INFORMAT obsdate_dxadate YYMMDD10.;
	FORMAT obsdate_dxadate YYMMDD10.;

	INFORMAT dxascdt YYMMDD10.;
	FORMAT dxascdt YYMMDD10.;

	INFORMAT blank_DEX $1.;
	FORMAT blank_DEX $1.;

	INFORMAT dxascid BEST32.;
	FORMAT dxascid BEST12.;

	INFORMAT dxasc1 BEST32.;
	FORMAT dxasc1 BEST12.;

	INFORMAT dxasc2 BEST32.;
	FORMAT dxasc2 BEST12.;

	INFORMAT dxasc3a BEST32.;
	FORMAT dxasc3a BEST12.;

	INFORMAT dxasc3b BEST32.;
	FORMAT dxasc3b BEST12.;

	INFORMAT dxasc3c BEST32.;
	FORMAT dxasc3c BEST12.;

	INFORMAT dxasc3d BEST32.;
	FORMAT dxasc3d BEST12.;

	INFORMAT dxasc3e BEST32.;
	FORMAT dxasc3e BEST12.;

	INFORMAT dxasc4 BEST32.;
	FORMAT dxasc4 BEST12.;

	INFORMAT dxasc4a BEST32.;
	FORMAT dxasc4a BEST12.;

	INFORMAT dxasc6 BEST32.;
	FORMAT dxasc6 BEST12.;

	INFORMAT dxasc5 BEST32.;
	FORMAT dxasc5 BEST12.;

	INFORMAT dxasc5a BEST32.;
	FORMAT dxasc5a BEST12.;

	INFORMAT dxasc5b BEST32.;
	FORMAT dxasc5b BEST12.;

	INFORMAT dxasc5c BEST32.;
	FORMAT dxasc5c BEST12.;

	INFORMAT dxasc5d BEST32.;
	FORMAT dxasc5d BEST12.;

	INFORMAT dxasc5e BEST32.;
	FORMAT dxasc5e BEST12.;

	INFORMAT dxasc5f BEST32.;
	FORMAT dxasc5f BEST12.;

	INFORMAT dxasc5g BEST32.;
	FORMAT dxasc5g BEST12.;

	INFORMAT dxasc5h BEST32.;
	FORMAT dxasc5h BEST12.;

	INFORMAT dxasc5i BEST32.;
	FORMAT dxasc5i BEST12.;

	INFORMAT dxasc5j BEST32.;
	FORMAT dxasc5j BEST12.;

	INFORMAT dxatecid BEST32.;
	FORMAT dxatecid BEST12.;

	INFORMAT dxack1 BEST32.;
	FORMAT dxack1 BEST12.;

	INFORMAT dxack2 BEST32.;
	FORMAT dxack2 BEST12.;

	INFORMAT dxack3 BEST32.;
	FORMAT dxack3 BEST12.;

	INFORMAT dxack4 BEST32.;
	FORMAT dxack4 BEST12.;

	INFORMAT dxack5 BEST32.;
	FORMAT dxack5 BEST12.;

	INFORMAT dxack6 BEST32.;
	FORMAT dxack6 BEST12.;

	INFORMAT dxack7 BEST32.;
	FORMAT dxack7 BEST12.;

	INFORMAT dxack8 BEST32.;
	FORMAT dxack8 BEST12.;

	INFORMAT dxack9 BEST32.;
	FORMAT dxack9 BEST12.;

	INFORMAT dxareaid BEST32.;
	FORMAT dxareaid BEST12.;

	INFORMAT dxack11 BEST32.;
	FORMAT dxack11 BEST12.;

	INFORMAT dxack12 BEST32.;
	FORMAT dxack12 BEST12.;

	INFORMAT dxack13 BEST32.;
	FORMAT dxack13 BEST12.;

	INFORMAT dxack14 BEST32.;
	FORMAT dxack14 BEST12.;

	INFORMAT dxack15 BEST32.;
	FORMAT dxack15 BEST12.;

	INFORMAT dxack16 BEST32.;
	FORMAT dxack16 BEST12.;

	INFORMAT dxack17 BEST32.;
	FORMAT dxack17 BEST12.;

	INFORMAT dxack18 BEST32.;
	FORMAT dxack18 BEST12.;

	INFORMAT dxack19 BEST32.;
	FORMAT dxack19 BEST12.;

	INFORMAT dxack20 BEST32.;
	FORMAT dxack20 BEST12.;

	INFORMAT dxack21 BEST32.;
	FORMAT dxack21 BEST12.;

	INFORMAT dxack22 BEST32.;
	FORMAT dxack22 BEST12.;

	INFORMAT dxack23 BEST32.;
	FORMAT dxack23 BEST12.;

	INFORMAT dxack24 BEST32.;
	FORMAT dxack24 BEST12.;

	INFORMAT dxack24a $1.;
	FORMAT dxack24a $1.;

	INFORMAT dxack24b $1.;
	FORMAT dxack24b $1.;

	INFORMAT dxack24c $1.;
	FORMAT dxack24c $1.;

	INFORMAT dxack24d $1.;
	FORMAT dxack24d $1.;

	INFORMAT auto_id_DEX BEST32.;
	FORMAT auto_id_DEX BEST12.;

	INFORMAT crf_parent_name_DEX $9.;
	FORMAT crf_parent_name_DEX $9.;

	INFORMAT crf_status_DEX $19.;
	FORMAT crf_status_DEX $19.;

	INFORMAT dxack24a_dexa_lumbar_osteophyte $1.;
	FORMAT dxack24a_dexa_lumbar_osteophyte $1.;

	INFORMAT dxack24b_dexa_lumbar_compression $23.;
	FORMAT dxack24b_dexa_lumbar_compression $23.;

	INFORMAT dxack24c_dexa_lumbar_scoliosis $21.;
	FORMAT dxack24c_dexa_lumbar_scoliosis $21.;

	INFORMAT study_name_DEX $4.;
	FORMAT study_name_DEX $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_DEX
		obsdate_dxadate
		dxascdt
		blank_DEX
		dxascid
		dxasc1
		dxasc2
		dxasc3a
		dxasc3b
		dxasc3c
		dxasc3d
		dxasc3e
		dxasc4
		dxasc4a
		dxasc6
		dxasc5
		dxasc5a
		dxasc5b
		dxasc5c
		dxasc5d
		dxasc5e
		dxasc5f
		dxasc5g
		dxasc5h
		dxasc5i
		dxasc5j
		dxatecid
		dxack1
		dxack2
		dxack3
		dxack4
		dxack5
		dxack6
		dxack7
		dxack8
		dxack9
		dxareaid
		dxack11
		dxack12
		dxack13
		dxack14
		dxack15
		dxack16
		dxack17
		dxack18
		dxack19
		dxack20
		dxack21
		dxack22
		dxack23
		dxack24
		dxack24a
		dxack24b
		dxack24c
		dxack24d
		auto_id_DEX
		crf_parent_name_DEX
		crf_status_DEX
		dxack24a_dexa_lumbar_osteophyte
		dxack24b_dexa_lumbar_compression
		dxack24c_dexa_lumbar_scoliosis
		study_name_DEX
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
		crf_version_DEX = "CRF Version"
		obsdate_dxadate = "DEXA Date completed"
		dxascdt = "Date Completed"
		blank_DEX = "Blank Form"
		dxascid = "Tester ID"
		dxasc1 = "Does weight exceed 350 lbs"
		dxasc2 = "Does height exceed 78 in (6ft 6In)"
		dxasc3a = "Barrium Enema"
		dxasc3b = "Upper GI series"
		dxasc3c = "Lower GI series"
		dxasc3d = "Nuclear medicine scan"
		dxasc3e = "Other tests using contrast or radioactive materials"
		dxasc4 = "Had hip replacement surgery"
		dxasc4a = "Which side hip replacement surgery"
		dxasc6 = "Core Body Temperature"
		dxasc5 = "Have any metal objects, pacemaker, staples, etc"
		dxasc5a = "Head"
		dxasc5b = "Left Arm"
		dxasc5c = "Right Arm"
		dxasc5d = "Left Ribs"
		dxasc5e = "Right ribs"
		dxasc5f = "Thoracic spine"
		dxasc5g = "Lumbar spine"
		dxasc5h = "Pelvis"
		dxasc5i = "Left leg"
		dxasc5j = "Right leg"
		dxatecid = "DEXA technician ID"
		dxack1 = "Was femur scanned"
		dxack2 = "Lesser trochanter minimized"
		dxack3 = "Femur vertical"
		dxack4 = "Was spine scanned"
		dxack5 = "Four or more vertebrae visible"
		dxack6 = "Iliac crests visible"
		dxack7 = "Was total body scanned"
		dxack8 = "Both upper and lower limbs in view"
		dxack9 = "Total body fields appropriately placed"
		dxareaid = "Reader Tester ID"
		dxack11 = "DXA Reader Lesser tronchanter minimized"
		dxack12 = "DXA Reader Femur vertical"
		dxack13 = "DXA Reader Head"
		dxack14 = "DXA Reader Left Arm"
		dxack15 = "DXA Reader Right Arm"
		dxack16 = "DXA Reader Left ribs"
		dxack17 = "DXA Reader Right ribs"
		dxack18 = "DXA Reader Pelvis"
		dxack19 = "DXA Reader Left Hip"
		dxack20 = "DXA Reader Left leg"
		dxack21 = "DXA Reader Right hip"
		dxack22 = "DXA Reader Right leg"
		dxack23 = "DXA Reader Thoracic spine"
		dxack24 = "DXA Reader Lumbar spine"
		dxack24a = "Osteophyte"
		dxack24b = "Compression"
		dxack24c = "Scoliosis"
		dxack24d = "Kyphosis"
		auto_id_DEX = "Unique Teleform Number"
		crf_parent_name_DEX = "CRF Parent Name"
		crf_status_DEX = "CRF Status"
		dxack24a_dexa_lumbar_osteophyte = "Osteophyte : Osteophyte (Checkbox Indicator)"
		dxack24b_dexa_lumbar_compression = "Compression : Compression (Checkbox Indicator)"
		dxack24c_dexa_lumbar_scoliosis = "Scoliosis : Scoliosis (Checkbox Indicator)"
		study_name_DEX = "Study Name"
	;
	FORMAT
		dxasc1 dxasc1_.
		dxasc2 dxasc2_.
		dxasc3a dxasc3a_.
		dxasc3b dxasc3b_.
		dxasc3c dxasc3c_.
		dxasc3d dxasc3d_.
		dxasc3e dxasc3e_.
		dxasc4 dxasc4_.
		dxasc4a dxasc4a_.
		dxasc6 dxasc6_.
		dxasc5 dxasc5_.
		dxasc5a dxasc5a_.
		dxasc5b dxasc5b_.
		dxasc5c dxasc5c_.
		dxasc5d dxasc5d_.
		dxasc5e dxasc5e_.
		dxasc5f dxasc5f_.
		dxasc5g dxasc5g_.
		dxasc5h dxasc5h_.
		dxasc5i dxasc5i_.
		dxasc5j dxasc5j_.
		dxack1 dxack1_.
		dxack2 dxack2_.
		dxack3 dxack3_.
		dxack4 dxack4_.
		dxack5 dxack5_.
		dxack6 dxack6_.
		dxack7 dxack7_.
		dxack8 dxack8_.
		dxack9 dxack9_.
		dxack11 dxack11_.
		dxack12 dxack12_.
		dxack13 dxack13_.
		dxack14 dxack14_.
		dxack15 dxack15_.
		dxack16 dxack16_.
		dxack17 dxack17_.
		dxack18 dxack18_.
		dxack19 dxack19_.
		dxack20 dxack20_.
		dxack21 dxack21_.
		dxack22 dxack22_.
		dxack23 dxack23_.
		dxack24 dxack24_.
	;
RUN;


DATA blsa_dexa;
    SET WORK.IMPORT;
RUN;
