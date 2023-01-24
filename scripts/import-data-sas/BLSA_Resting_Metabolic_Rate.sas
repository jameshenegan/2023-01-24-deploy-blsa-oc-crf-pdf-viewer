%let path_to_file = '../data-csv/BLSA_Resting_Metabolic_Rate.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE $rmr01a_
		Other = 'Other'
		SM501 = 'SM501'
		SM502 = 'SM502'
		SM503 = 'SM503'
		SM504 = 'SM504'
		SM506 = 'SM506'
		SM507 = 'SM507'
		SM508 = 'SM508'
		SM509 = 'SM509'
		SM510 = 'SM510'
		SM528A = 'SM528A'
		SM528B = 'SM528B'
		SM529 = 'SM529'
		SM530A = 'SM530A'
		SM530B = 'SM530B'
		SM531 = 'SM531'
		SM532A = 'SM532A'
		SM532B = 'SM532B'
		SM534 = 'SM534'
		SM537 = 'SM537'
	;

	VALUE rmr01b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rmr04a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rmr04b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rmr04c_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rmr04d_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rmr04e_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rmr04f_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rmrdone_
		1 = 'Yes'
		555 = 'Physical problems'
		666 = 'Mental problems'
		777 = 'Physical & mental problems'
		888 = 'Refused but could do'
		999 = 'Technical problems'
	;

	VALUE rmr05a_
		0 = '0 - Bed lying flat'
		1 = '1 - Bed 45°'
		2 = '2 - Chair'
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

	INFORMAT crf_version_ResMetRat $8.;
	FORMAT crf_version_ResMetRat $8.;

	INFORMAT obsdate_rmrdate YYMMDD10.;
	FORMAT obsdate_rmrdate YYMMDD10.;

	INFORMAT blank_ResMetRat $1.;
	FORMAT blank_ResMetRat $1.;

	INFORMAT rmrtid BEST32.;
	FORMAT rmrtid BEST12.;

	INFORMAT rmr01 $5.;
	FORMAT rmr01 $5.;

	INFORMAT rmr01a $6.;
	FORMAT rmr01a $6.;

	INFORMAT rmr01b BEST32.;
	FORMAT rmr01b BEST12.;

	INFORMAT rmr02 BEST32.;
	FORMAT rmr02 BEST12.;

	INFORMAT rmr03 BEST32.;
	FORMAT rmr03 BEST12.;

	INFORMAT rmr03a BEST32.;
	FORMAT rmr03a BEST12.;

	INFORMAT rmr03b BEST32.;
	FORMAT rmr03b BEST12.;

	INFORMAT rmr04a BEST32.;
	FORMAT rmr04a BEST12.;

	INFORMAT rmr04b BEST32.;
	FORMAT rmr04b BEST12.;

	INFORMAT rmr04c BEST32.;
	FORMAT rmr04c BEST12.;

	INFORMAT rmr04d BEST32.;
	FORMAT rmr04d BEST12.;

	INFORMAT rmr04e BEST32.;
	FORMAT rmr04e BEST12.;

	INFORMAT rmr04f BEST32.;
	FORMAT rmr04f BEST12.;

	INFORMAT rmr04g $116.;
	FORMAT rmr04g $116.;

	INFORMAT rmrdone BEST32.;
	FORMAT rmrdone BEST12.;

	INFORMAT rmr05a BEST32.;
	FORMAT rmr05a BEST12.;

	INFORMAT rmr06 BEST32.;
	FORMAT rmr06 BEST12.;

	INFORMAT repeat BEST32.;
	FORMAT repeat BEST12.;

	INFORMAT auto_id_ResMetRat BEST32.;
	FORMAT auto_id_ResMetRat BEST12.;

	INFORMAT crf_parent_name_ResMetRat $27.;
	FORMAT crf_parent_name_ResMetRat $27.;

	INFORMAT study_name_ResMetRat $4.;
	FORMAT study_name_ResMetRat $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_ResMetRat
		obsdate_rmrdate
		blank_ResMetRat
		rmrtid
		rmr01
		rmr01a
		rmr01b
		rmr02
		rmr03
		rmr03a
		rmr03b
		rmr04a
		rmr04b
		rmr04c
		rmr04d
		rmr04e
		rmr04f
		rmr04g
		rmrdone
		rmr05a
		rmr06
		repeat
		auto_id_ResMetRat
		crf_parent_name_ResMetRat
		study_name_ResMetRat
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
		crf_version_ResMetRat = "CRF Version"
		obsdate_rmrdate = "Date Completed"
		blank_ResMetRat = "Blank Form"
		rmrtid = "Tester ID"
		rmr01 = "Time"
		rmr01a = "Bed Number"
		rmr01b = "Did participant stay at unit last night"
		rmr02 = "Body temperature"
		rmr03 = "Room temperature"
		rmr03a = "Humidity"
		rmr03b = "Barometric Pressure"
		rmr04a = "Have you been sitting or lying down in bed for at least 15 minutes"
		rmr04b = "Have you been fasting for a minimum of 4 hours"
		rmr04c = "Have you drunk water or other drinks in the past 4 hours"
		rmr04d = "Have you strenuously exercised in the past 4 hours"
		rmr04e = "Have you smoked in the last hour"
		rmr04f = "Have you taken medications other than those you use on a regular basis in the last 12 hours"
		rmr04g = "If yes to any of these questions specify"
		rmrdone = "Was test done"
		rmr05a = "Was participant sitting or lying down"
		rmr06 = "Resting metabolic rate"
		repeat = "Just repeat same number"
		auto_id_ResMetRat = "Unique Teleform Number"
		crf_parent_name_ResMetRat = "CRF Parent Name"
		study_name_ResMetRat = "Study Name"
	;
	FORMAT
		rmr01b rmr01b_.
		rmr04a rmr04a_.
		rmr04b rmr04b_.
		rmr04c rmr04c_.
		rmr04d rmr04d_.
		rmr04e rmr04e_.
		rmr04f rmr04f_.
		rmrdone rmrdone_.
		rmr05a rmr05a_.
		rmr01a $rmr01a_.
	;
RUN;


DATA blsa_resting_metabolic_rate;
    SET WORK.IMPORT;
RUN;
