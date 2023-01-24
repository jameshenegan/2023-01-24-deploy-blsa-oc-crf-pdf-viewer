%let path_to_file = '../data-csv/BLSA_Circadian_Core_Body_Temp.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE cct01_
		0 = 'No'
		1 = 'Yes'
		2 = " Don't know"
	;

	VALUE cct02_
		0 = 'No'
		1 = 'Yes'
		2 = " Don't know"
	;

	VALUE cct03_
		0 = 'No'
		1 = 'Yes'
		2 = " Don't know"
	;

	VALUE cct04_
		0 = 'No'
		1 = 'Yes'
		2 = " Don't know"
	;

	VALUE cct05_
		0 = 'No'
		1 = 'Yes'
		2 = " Don't know"
	;

	VALUE cct06_
		0 = 'No'
		1 = 'Yes'
		2 = " Don't know"
	;

	VALUE cct07_
		0 = 'No'
		1 = 'Yes'
		2 = " Don't know"
	;

	VALUE cctsm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE cctrbm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE cctrem_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE ccttmam_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE ccttmbm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE cctlam_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE cctlbm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE cctgam_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE cctgbm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE cctcam_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE cctcbm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE cctstm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE cctatm_
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

	INFORMAT crf_version_CirCorBodTem $7.;
	FORMAT crf_version_CirCorBodTem $7.;

	INFORMAT obsdate_cctdate YYMMDD10.;
	FORMAT obsdate_cctdate YYMMDD10.;

	INFORMAT blank_CirCorBodTem $1.;
	FORMAT blank_CirCorBodTem $1.;

	INFORMAT ccttid BEST32.;
	FORMAT ccttid BEST12.;

	INFORMAT cct01 BEST32.;
	FORMAT cct01 BEST12.;

	INFORMAT cct02 BEST32.;
	FORMAT cct02 BEST12.;

	INFORMAT cct03 BEST32.;
	FORMAT cct03 BEST12.;

	INFORMAT cct04 BEST32.;
	FORMAT cct04 BEST12.;

	INFORMAT cct05 BEST32.;
	FORMAT cct05 BEST12.;

	INFORMAT cct06 BEST32.;
	FORMAT cct06 BEST12.;

	INFORMAT cct07 BEST32.;
	FORMAT cct07 BEST12.;

	INFORMAT cctstid BEST32.;
	FORMAT cctstid BEST12.;

	INFORMAT cctsdate YYMMDD10.;
	FORMAT cctsdate YYMMDD10.;

	INFORMAT cctstime $5.;
	FORMAT cctstime $5.;

	INFORMAT cctsm BEST32.;
	FORMAT cctsm BEST12.;

	INFORMAT cctsn BEST32.;
	FORMAT cctsn BEST12.;

	INFORMAT cctcn BEST32.;
	FORMAT cctcn BEST12.;

	INFORMAT cctrtid BEST32.;
	FORMAT cctrtid BEST12.;

	INFORMAT cctrn BEST32.;
	FORMAT cctrn BEST12.;

	INFORMAT cctrbdt YYMMDD10.;
	FORMAT cctrbdt YYMMDD10.;

	INFORMAT cctrbtm $5.;
	FORMAT cctrbtm $5.;

	INFORMAT cctrbm BEST32.;
	FORMAT cctrbm BEST12.;

	INFORMAT cctredt YYMMDD10.;
	FORMAT cctredt YYMMDD10.;

	INFORMAT cctretm $5.;
	FORMAT cctretm $5.;

	INFORMAT cctrem BEST32.;
	FORMAT cctrem BEST12.;

	INFORMAT ccttma $5.;
	FORMAT ccttma $5.;

	INFORMAT ccttmam BEST32.;
	FORMAT ccttmam BEST12.;

	INFORMAT ccttmb $5.;
	FORMAT ccttmb $5.;

	INFORMAT ccttmbm BEST32.;
	FORMAT ccttmbm BEST12.;

	INFORMAT ccttmc $1.;
	FORMAT ccttmc $1.;

	INFORMAT cctla $5.;
	FORMAT cctla $5.;

	INFORMAT cctlam BEST32.;
	FORMAT cctlam BEST12.;

	INFORMAT cctlb $8.;
	FORMAT cctlb $8.;

	INFORMAT cctlbm BEST32.;
	FORMAT cctlbm BEST12.;

	INFORMAT cctlc $1.;
	FORMAT cctlc $1.;

	INFORMAT cctga $5.;
	FORMAT cctga $5.;

	INFORMAT cctgam BEST32.;
	FORMAT cctgam BEST12.;

	INFORMAT cctgb $5.;
	FORMAT cctgb $5.;

	INFORMAT cctgbm BEST32.;
	FORMAT cctgbm BEST12.;

	INFORMAT cctgc $1.;
	FORMAT cctgc $1.;

	INFORMAT cctca $5.;
	FORMAT cctca $5.;

	INFORMAT cctcam BEST32.;
	FORMAT cctcam BEST12.;

	INFORMAT cctcb $5.;
	FORMAT cctcb $5.;

	INFORMAT cctcbm BEST32.;
	FORMAT cctcbm BEST12.;

	INFORMAT cctcc $1.;
	FORMAT cctcc $1.;

	INFORMAT cctst $5.;
	FORMAT cctst $5.;

	INFORMAT cctstm BEST32.;
	FORMAT cctstm BEST12.;

	INFORMAT cctat $5.;
	FORMAT cctat $5.;

	INFORMAT cctatm BEST32.;
	FORMAT cctatm BEST12.;

	INFORMAT auto_id_CirCorBodTem BEST32.;
	FORMAT auto_id_CirCorBodTem BEST12.;

	INFORMAT blank_1_CirCorBodTem $1.;
	FORMAT blank_1_CirCorBodTem $1.;

	INFORMAT cctcc_1 BEST32.;
	FORMAT cctcc_1 BEST12.;

	INFORMAT cctgc_1 BEST32.;
	FORMAT cctgc_1 BEST12.;

	INFORMAT cctlc_1 BEST32.;
	FORMAT cctlc_1 BEST12.;

	INFORMAT crf_parent_name_CirCorBodTem $29.;
	FORMAT crf_parent_name_CirCorBodTem $29.;

	INFORMAT study_name_CirCorBodTem $4.;
	FORMAT study_name_CirCorBodTem $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_CirCorBodTem
		obsdate_cctdate
		blank_CirCorBodTem
		ccttid
		cct01
		cct02
		cct03
		cct04
		cct05
		cct06
		cct07
		cctstid
		cctsdate
		cctstime
		cctsm
		cctsn
		cctcn
		cctrtid
		cctrn
		cctrbdt
		cctrbtm
		cctrbm
		cctredt
		cctretm
		cctrem
		ccttma
		ccttmam
		ccttmb
		ccttmbm
		ccttmc
		cctla
		cctlam
		cctlb
		cctlbm
		cctlc
		cctga
		cctgam
		cctgb
		cctgbm
		cctgc
		cctca
		cctcam
		cctcb
		cctcbm
		cctcc
		cctst
		cctstm
		cctat
		cctatm
		auto_id_CirCorBodTem
		blank_1_CirCorBodTem
		cctcc_1
		cctgc_1
		cctlc_1
		crf_parent_name_CirCorBodTem
		study_name_CirCorBodTem
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
		crf_version_CirCorBodTem = "CRF Version"
		obsdate_cctdate = "Date Completed"
		blank_CirCorBodTem = "Blank Form"
		ccttid = "Tester ID"
		cct01 = "Use pacemaker or other implanted electro medical device"
		cct02 = "Scheduled to receive an MRI within next 5 days"
		cct03 = "Have impaired gag reflex or trouble swallowing large pills"
		cct04 = "Hx or suspicion of gastrointestinal obstruction diverticulitis or IBS"
		cct05 = "Have severe constipation"
		cct06 = "Have had gastrointestinal surgery"
		cct07 = "Hx of reflux esophagitis esophageal food impaction or feninization of the esophagus"
		cctstid = "Sensor administration tester ID"
		cctsdate = "Sensor Administration Date Completed"
		cctstime = "Sensor Administration time"
		cctsm = "Senson Administration AmPm"
		cctsn = "Sensor serial number"
		cctcn = "Sensor calibration number"
		cctrtid = "Recorder tester ID"
		cctrn = "Recprder number"
		cctrbdt = "Begin recording Date"
		cctrbtm = "Begin recording time"
		cctrbm = "Begin recording time AmPm"
		cctredt = "End recording Date"
		cctretm = "End recording time"
		cctrem = "End recording time AmPm"
		ccttma = "Treadmill start time"
		ccttmam = "Treadmill start time AmPm"
		ccttmb = "Treadmill stop time"
		ccttmbm = "Treadmill stop time AmPm"
		ccttmc = "Treadmill not done during monitoring"
		cctla = "Long Distance Corridor Walk start"
		cctlam = "LDCW start time AmPm"
		cctlb = "Long Distance Corridor Walk stop"
		cctlbm = "LDCW stop time AmPm"
		cctlc = "Long Distance Corridor Walk not done during monitoring"
		cctga = "GAIT start"
		cctgam = "GAIT start time AmPm"
		cctgb = "GAIT stop"
		cctgbm = "GAIT stop time AmPm"
		cctgc = "GAIT not done during monitoring"
		cctca = "Cognitive Assessment start"
		cctcam = "Cognitive start time AmPm"
		cctcb = "Cognitive Assessment stop"
		cctcbm = "Cognitive stop time AmPm"
		cctcc = "Cognitive Assessment not done during monitoring"
		cctst = "In bed for sleeping start"
		cctstm = "In bed for sleeping start AmPm"
		cctat = "Awake in the morning start"
		cctatm = "Awake start AmPm"
		auto_id_CirCorBodTem = "Unique Teleform Number"
		blank_1_CirCorBodTem = "Blank"
		cctcc_1 = "Cognitive Assessment not done during monitoring : Not done during monitoring (Checkbox Indicator)"
		cctgc_1 = "GAIT not done during monitoring : Not done during monitoring (Checkbox Indicator)"
		cctlc_1 = "Long Distance Corridor Walk not done during monitoring : Not done during monitoring (Checkbox Indicator)"
		crf_parent_name_CirCorBodTem = "CRF Parent Name"
		study_name_CirCorBodTem = "Study Name"
	;
	FORMAT
		cct01 cct01_.
		cct02 cct02_.
		cct03 cct03_.
		cct04 cct04_.
		cct05 cct05_.
		cct06 cct06_.
		cct07 cct07_.
		cctsm cctsm_.
		cctrbm cctrbm_.
		cctrem cctrem_.
		ccttmam ccttmam_.
		ccttmbm ccttmbm_.
		cctlam cctlam_.
		cctlbm cctlbm_.
		cctgam cctgam_.
		cctgbm cctgbm_.
		cctcam cctcam_.
		cctcbm cctcbm_.
		cctstm cctstm_.
		cctatm cctatm_.
	;
RUN;


DATA blsa_circadian_core_body_temp;
    SET WORK.IMPORT;
RUN;
