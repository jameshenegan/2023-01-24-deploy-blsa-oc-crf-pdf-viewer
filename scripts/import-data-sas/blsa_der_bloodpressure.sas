%let path_to_file = '../data-csv/blsa_der_bloodpressure.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE hbp_hx_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bpmeds_self_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE htn_self_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bpjnc7_
		0 = 'Normal'
		1 = 'Pre-HTN'
		2 = 'Stage I HTN'
		3 = 'Stage II HTN'
	;

	VALUE bpmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bpmeds_
		0 = 'Yes'
		1 = 'Not Listed'
	;

	VALUE bp2cat_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE htn_
		0 = 'Non-Hypertensive'
		1 = 'Hypertensive'
	;

	VALUE icrose_
		0 = 'Symptoms Absent'
		1 = 'Symptoms Present'
	;

	VALUE pad_
		0 = 'PAD Absent'
		1 = 'PAD Present'
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

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT hbp_hx BEST32.;
	FORMAT hbp_hx BEST12.;

	INFORMAT bpmeds_self BEST32.;
	FORMAT bpmeds_self BEST12.;

	INFORMAT htn_self BEST32.;
	FORMAT htn_self BEST12.;

	INFORMAT sbp BEST32.;
	FORMAT sbp BEST12.;

	INFORMAT dbp BEST32.;
	FORMAT dbp BEST12.;

	INFORMAT bpjnc7 BEST32.;
	FORMAT bpjnc7 BEST12.;

	INFORMAT bpmeds_file BEST32.;
	FORMAT bpmeds_file BEST12.;

	INFORMAT bpmeds BEST32.;
	FORMAT bpmeds BEST12.;

	INFORMAT bp2cat BEST32.;
	FORMAT bp2cat BEST12.;

	INFORMAT htn BEST32.;
	FORMAT htn BEST12.;

	INFORMAT abi $1.;
	FORMAT abi $1.;

	INFORMAT abi2cat $1.;
	FORMAT abi2cat $1.;

	INFORMAT icrose BEST32.;
	FORMAT icrose BEST12.;

	INFORMAT pad BEST32.;
	FORMAT pad BEST12.;

	INPUT
		idno
		visit
		hbp_hx
		bpmeds_self
		htn_self
		sbp
		dbp
		bpjnc7
		bpmeds_file
		bpmeds
		bp2cat
		htn
		abi
		abi2cat
		icrose
		pad
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		idno = "BLSA ID"
		visit = "Visit Number"
		hbp_hx = "Self-Reported History of High Blood Pressure"
		bpmeds_self = "Self-Reported BP Medication Use"
		htn_self = "Hypertension Status (using self-reported physician DX and BP medication use)"
		sbp = "Systolic Blood Pressure (mmHg)"
		dbp = "Diastolic Blood Pressure (mmHg)"
		bpjnc7 = "JNC 7 BP Classification"
		bpmeds_file = "BP Medication Brought to Clinic"
		bpmeds = "BP Medication Use"
		bp2cat = "Elevated BP Classification"
		htn = "Hypertension Status"
		abi = "Ankle-Brachial Index"
		abi2cat = "Peripheral Artery Disease ABI Classification"
		icrose = "Classic Symptoms of Intermittent Claudication as Defined by Rose"
		pad = "Peripheral Artery Disease"
	;
	FORMAT
		hbp_hx hbp_hx_.
		bpmeds_self bpmeds_self_.
		htn_self htn_self_.
		bpjnc7 bpjnc7_.
		bpmeds_file bpmeds_file_.
		bpmeds bpmeds_.
		bp2cat bp2cat_.
		htn htn_.
		icrose icrose_.
		pad pad_.
	;
RUN;


DATA blsa_der_bloodpressure;
    SET WORK.IMPORT;
RUN;
