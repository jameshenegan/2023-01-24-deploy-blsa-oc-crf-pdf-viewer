%let path_to_file = '../data-csv/BLSA_Weight_History.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE whxdone_
		1 = 'Yes'
		5 = '(5) Physical (communication problem)'
		6 = '(6) Cannot understand the questions'
		7 = '(7) Refused to answer'
		8 = "(8) Don't remember any weight"
		9 = '(9) Technical problems (no time/not scheduled)'
	;

	VALUE whx1nd_
		7 = '(7) Refused'
		8 = '(8) DK/DR'
	;

	VALUE whx2nd_
		7 = '(7) Refused'
		8 = '(8) DK/DR'
	;

	VALUE whx3nd_
		7 = '(7) Refused'
		8 = '(8) DK/DR'
	;

	VALUE whx4nd_
		7 = '(7) Refused'
		8 = '(8) DK/DR'
		9 = '(9) NA'
	;

	VALUE whx5and_
		7 = '(7) Refused'
		8 = '(8) DK/DR'
	;

	VALUE whx5bnd_
		7 = '(7) Refused'
		8 = '(8) DK/DR'
	;

	VALUE whx6and_
		7 = '(7) Refused'
		8 = '(8) DK/DR'
	;

	VALUE whx6bnd_
		7 = '(7) Refused'
		8 = '(8) DK/DR'
	;

	VALUE whx7_
		1 = '(1) Your weight has stayed about the same +/- 10 lbs'
		2 = '(2) You have had a gradual gain in weight (>10 lbs)'
		3 = '(3) You have had a gradual loss in weight'
		4 = '(4) You have had a marked loss in weight and then kept it off'
		5 = '(5) Your weight has repeatedly gone up and down again'
		7 = '(7) Refused'
		8 = '(8) DK/DR'
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

	INFORMAT crf_version_WeiHis $7.;
	FORMAT crf_version_WeiHis $7.;

	INFORMAT obsdate_whxdate YYMMDD10.;
	FORMAT obsdate_whxdate YYMMDD10.;

	INFORMAT blank_WeiHis $1.;
	FORMAT blank_WeiHis $1.;

	INFORMAT whxttid BEST32.;
	FORMAT whxttid BEST12.;

	INFORMAT whxdone BEST32.;
	FORMAT whxdone BEST12.;

	INFORMAT whx1 BEST32.;
	FORMAT whx1 BEST12.;

	INFORMAT whx1nd BEST32.;
	FORMAT whx1nd BEST12.;

	INFORMAT whx2 BEST32.;
	FORMAT whx2 BEST12.;

	INFORMAT whx2nd BEST32.;
	FORMAT whx2nd BEST12.;

	INFORMAT whx3 BEST32.;
	FORMAT whx3 BEST12.;

	INFORMAT whx3nd BEST32.;
	FORMAT whx3nd BEST12.;

	INFORMAT whx4 BEST32.;
	FORMAT whx4 BEST12.;

	INFORMAT whx4nd BEST32.;
	FORMAT whx4nd BEST12.;

	INFORMAT whx5a BEST32.;
	FORMAT whx5a BEST12.;

	INFORMAT whx5and BEST32.;
	FORMAT whx5and BEST12.;

	INFORMAT whx5b BEST32.;
	FORMAT whx5b BEST12.;

	INFORMAT whx5bnd BEST32.;
	FORMAT whx5bnd BEST12.;

	INFORMAT whx6a BEST32.;
	FORMAT whx6a BEST12.;

	INFORMAT whx6and BEST32.;
	FORMAT whx6and BEST12.;

	INFORMAT whx6b BEST32.;
	FORMAT whx6b BEST12.;

	INFORMAT whx6bnd BEST32.;
	FORMAT whx6bnd BEST12.;

	INFORMAT whx7 BEST32.;
	FORMAT whx7 BEST12.;

	INFORMAT auto_id_WeiHis BEST32.;
	FORMAT auto_id_WeiHis BEST12.;

	INFORMAT crf_parent_name_WeiHis $19.;
	FORMAT crf_parent_name_WeiHis $19.;

	INFORMAT study_name_WeiHis $4.;
	FORMAT study_name_WeiHis $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_WeiHis
		obsdate_whxdate
		blank_WeiHis
		whxttid
		whxdone
		whx1
		whx1nd
		whx2
		whx2nd
		whx3
		whx3nd
		whx4
		whx4nd
		whx5a
		whx5and
		whx5b
		whx5bnd
		whx6a
		whx6and
		whx6b
		whx6bnd
		whx7
		auto_id_WeiHis
		crf_parent_name_WeiHis
		study_name_WeiHis
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
		crf_version_WeiHis = "CRF Version"
		obsdate_whxdate = "Date Completed"
		blank_WeiHis = "Blank Form"
		whxttid = "Tester ID"
		whxdone = "Was weight history collected"
		whx1 = "Weight 1 year ago"
		whx1nd = "Reason Q1 not answered"
		whx2 = "Weight 10 years ago"
		whx2nd = "Reason Q2 not answered"
		whx3 = "Weight at age 25"
		whx3nd = "Reason Q3 not answered"
		whx4 = "Weight at age 50"
		whx4nd = "Reqson Q4 not answered"
		whx5a = "What is the most you have ever weighed"
		whx5and = "Reason Q5a not answered"
		whx5b = "How old were you then"
		whx5bnd = "Reason Q5b not answered"
		whx6a = "What is the least you have ever weighed"
		whx6and = "Reason Q6a not answered"
		whx6b = "How old were you then"
		whx6bnd = "Reason Q6b not answered"
		whx7 = "What would you say about your weight during adult life"
		auto_id_WeiHis = "Unique Teleform Number"
		crf_parent_name_WeiHis = "CRF Parent Name"
		study_name_WeiHis = "Study Name"
	;
	FORMAT
		whxdone whxdone_.
		whx1nd whx1nd_.
		whx2nd whx2nd_.
		whx3nd whx3nd_.
		whx4nd whx4nd_.
		whx5and whx5and_.
		whx5bnd whx5bnd_.
		whx6and whx6and_.
		whx6bnd whx6bnd_.
		whx7 whx7_.
	;
RUN;


DATA blsa_weight_history;
    SET WORK.IMPORT;
RUN;
