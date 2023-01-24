%let path_to_file = '../data-csv/BLSA_Ideomotor_Apraxia.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ima01_
		0 = 'Failure'
		1 = 'Correction after explanation'
		2 = 'Spontaneous correction'
		3 = 'Immediate success'
		8 = 'Unknown'
	;

	VALUE ima01_rnd_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE ima02_
		0 = 'Failure'
		1 = 'Correction after explanation'
		2 = 'Spontaneous correction'
		3 = 'Immediate success'
		8 = 'Unknown'
	;

	VALUE ima02_rnd_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE ima03_
		0 = 'Failure'
		1 = 'Correction after explanation'
		2 = 'Spontaneous correction'
		3 = 'Immediate success'
		8 = 'Unknown'
	;

	VALUE ima03_rnd_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE ima04_
		0 = 'Failure'
		1 = 'Correction after explanation'
		2 = 'Spontaneous correction'
		3 = 'Immediate success'
		8 = 'Unknown'
	;

	VALUE ima04_rnd_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE ima05_
		0 = 'Failure'
		1 = 'Correction after explanation'
		2 = 'Spontaneous correction'
		3 = 'Immediate success'
		8 = 'Unknown'
	;

	VALUE ima05_rnd_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE ima06_
		0 = 'Failure'
		1 = 'Correction after explanation'
		2 = 'Spontaneous correction'
		3 = 'Immediate success'
		8 = 'Unknown'
	;

	VALUE ima06_rnd_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE ima07_
		0 = 'Failure'
		1 = 'Correction after explanation'
		2 = 'Spontaneous correction'
		3 = 'Immediate success'
		8 = 'Unknown'
	;

	VALUE ima07_rnd_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE imalmt_
		1 = 'Normal'
		2 = 'Spastic'
		3 = 'Lead pipe'
		4 = 'Cogwheeling'
		8 = 'Unknown'
	;

	VALUE imalmtuk_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE imarmt_
		1 = 'Normal'
		2 = 'Spastic'
		3 = 'Lead pipe'
		4 = 'Cogwheeling'
		8 = 'Unknown'
	;

	VALUE imarmtuk_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE imartl1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE imartl2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE imartl3_
		8 = 'Unknown'
	;

	VALUE imartl4_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE imartr1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE imartr2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE imartr3_
		8 = 'Unknown'
	;

	VALUE imartr4_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE imafml1_
		0 = 'Abnormal'
		1 = 'Normal'
		8 = 'Unknown'
	;

	VALUE imafmluk_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE imafmr1_
		0 = 'Abnormal'
		1 = 'Normal'
		8 = 'Unknown'
	;

	VALUE imafmruk_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE imaacl1_
		1 = 'Rhythmical continuous muscle contractions'
		2 = 'Rapidly Exhaustible movement'
		3 = 'No provoked movement'
		8 = 'Unknown'
	;

	VALUE imaacl1uk_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE imaacr1_
		1 = 'Rhythmical continuous muscle contractions'
		2 = 'Rapidly Exhaustible movement'
		3 = 'No provoked movement'
		8 = 'Unknown'
	;

	VALUE imaacruk_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE imaftnl1_
		1 = 'Normal'
		2 = 'Clumsy'
		8 = 'Unknown'
	;

	VALUE imaftnl3_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE imaftnl2_
		1 = 'Action tremor'
		2 = 'Dysmetria'
		3 = 'Both action tremor and dysmetria'
	;

	VALUE imaftnr1_
		1 = 'Normal'
		2 = 'Clumsy'
		8 = 'Unknown'
	;

	VALUE imaftnr3_
		5 = '5=Could not do due to physical problems'
		6 = '6=Could not do due to mental problems'
		7 = '7=Cound not do due to both physical and mental problems'
		8 = '8=Refused but theoretically could do'
		9 = '9=Did not do due to technical problems'
	;

	VALUE imaftnr2_
		1 = 'Action tremor'
		2 = 'Dysmetria'
		3 = 'Both action tremor and dysmetria'
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

	INFORMAT crf_version_IdeApr $7.;
	FORMAT crf_version_IdeApr $7.;

	INFORMAT obsdate_imadate YYMMDD10.;
	FORMAT obsdate_imadate YYMMDD10.;

	INFORMAT blank_IdeApr $1.;
	FORMAT blank_IdeApr $1.;

	INFORMAT imatid BEST32.;
	FORMAT imatid BEST12.;

	INFORMAT ima01 BEST32.;
	FORMAT ima01 BEST12.;

	INFORMAT ima01_rnd BEST32.;
	FORMAT ima01_rnd BEST12.;

	INFORMAT ima02 BEST32.;
	FORMAT ima02 BEST12.;

	INFORMAT ima02_rnd BEST32.;
	FORMAT ima02_rnd BEST12.;

	INFORMAT ima03 BEST32.;
	FORMAT ima03 BEST12.;

	INFORMAT ima03_rnd BEST32.;
	FORMAT ima03_rnd BEST12.;

	INFORMAT ima04 BEST32.;
	FORMAT ima04 BEST12.;

	INFORMAT ima04_rnd BEST32.;
	FORMAT ima04_rnd BEST12.;

	INFORMAT ima05 BEST32.;
	FORMAT ima05 BEST12.;

	INFORMAT ima05_rnd BEST32.;
	FORMAT ima05_rnd BEST12.;

	INFORMAT ima06 BEST32.;
	FORMAT ima06 BEST12.;

	INFORMAT ima06_rnd BEST32.;
	FORMAT ima06_rnd BEST12.;

	INFORMAT ima07 BEST32.;
	FORMAT ima07 BEST12.;

	INFORMAT ima07_rnd BEST32.;
	FORMAT ima07_rnd BEST12.;

	INFORMAT imalmt BEST32.;
	FORMAT imalmt BEST12.;

	INFORMAT imalmtuk BEST32.;
	FORMAT imalmtuk BEST12.;

	INFORMAT imarmt BEST32.;
	FORMAT imarmt BEST12.;

	INFORMAT imarmtuk BEST32.;
	FORMAT imarmtuk BEST12.;

	INFORMAT imartl1 BEST32.;
	FORMAT imartl1 BEST12.;

	INFORMAT imartl2 BEST32.;
	FORMAT imartl2 BEST12.;

	INFORMAT imartl3 BEST32.;
	FORMAT imartl3 BEST12.;

	INFORMAT imartl4 BEST32.;
	FORMAT imartl4 BEST12.;

	INFORMAT imartr1 BEST32.;
	FORMAT imartr1 BEST12.;

	INFORMAT imartr2 BEST32.;
	FORMAT imartr2 BEST12.;

	INFORMAT imartr3 BEST32.;
	FORMAT imartr3 BEST12.;

	INFORMAT imartr4 BEST32.;
	FORMAT imartr4 BEST12.;

	INFORMAT imafml1 BEST32.;
	FORMAT imafml1 BEST12.;

	INFORMAT imafmluk BEST32.;
	FORMAT imafmluk BEST12.;

	INFORMAT imafmr1 BEST32.;
	FORMAT imafmr1 BEST12.;

	INFORMAT imafmruk BEST32.;
	FORMAT imafmruk BEST12.;

	INFORMAT imaacl1 BEST32.;
	FORMAT imaacl1 BEST12.;

	INFORMAT imaacl1uk BEST32.;
	FORMAT imaacl1uk BEST12.;

	INFORMAT imaacr1 BEST32.;
	FORMAT imaacr1 BEST12.;

	INFORMAT imaacruk BEST32.;
	FORMAT imaacruk BEST12.;

	INFORMAT imaftnl1 BEST32.;
	FORMAT imaftnl1 BEST12.;

	INFORMAT imaftnl3 BEST32.;
	FORMAT imaftnl3 BEST12.;

	INFORMAT imaftnl2 BEST32.;
	FORMAT imaftnl2 BEST12.;

	INFORMAT imaftnr1 BEST32.;
	FORMAT imaftnr1 BEST12.;

	INFORMAT imaftnr3 BEST32.;
	FORMAT imaftnr3 BEST12.;

	INFORMAT imaftnr2 BEST32.;
	FORMAT imaftnr2 BEST12.;

	INFORMAT auto_id_IdeApr BEST32.;
	FORMAT auto_id_IdeApr BEST12.;

	INFORMAT crf_parent_name_IdeApr $22.;
	FORMAT crf_parent_name_IdeApr $22.;

	INFORMAT study_name_IdeApr $4.;
	FORMAT study_name_IdeApr $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_IdeApr
		obsdate_imadate
		blank_IdeApr
		imatid
		ima01
		ima01_rnd
		ima02
		ima02_rnd
		ima03
		ima03_rnd
		ima04
		ima04_rnd
		ima05
		ima05_rnd
		ima06
		ima06_rnd
		ima07
		ima07_rnd
		imalmt
		imalmtuk
		imarmt
		imarmtuk
		imartl1
		imartl2
		imartl3
		imartl4
		imartr1
		imartr2
		imartr3
		imartr4
		imafml1
		imafmluk
		imafmr1
		imafmruk
		imaacl1
		imaacl1uk
		imaacr1
		imaacruk
		imaftnl1
		imaftnl3
		imaftnl2
		imaftnr1
		imaftnr3
		imaftnr2
		auto_id_IdeApr
		crf_parent_name_IdeApr
		study_name_IdeApr
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
		crf_version_IdeApr = "CRF Version"
		obsdate_imadate = "Date Completed"
		blank_IdeApr = "Blank Form"
		imatid = "Tester ID"
		ima01 = "Gesture 1"
		ima01_rnd = "Gesture 1 reason unknown"
		ima02 = "Gesture 2"
		ima02_rnd = "Gesture 2 reason unknown"
		ima03 = "Gesture 3"
		ima03_rnd = "Gesture 3 reason unknown"
		ima04 = "Gesture 4"
		ima04_rnd = "Gesture 4 reason unknown"
		ima05 = "Gesture 5"
		ima05_rnd = "Gesture 5 reason unknown"
		ima06 = "Gesture6"
		ima06_rnd = "Gesture 6 reason unknown"
		ima07 = "Gesture 7"
		ima07_rnd = "Gesture 7 reason unknown"
		imalmt = "Left arm muscle tone"
		imalmtuk = "Left arm muscle tone unknown"
		imarmt = "Right arm muscle tone"
		imarmtuk = "Right arm muscle tone unknown"
		imartl1 = "Tremor on the left hand at rest without counting"
		imartl2 = "Tremor on the left hand at rest with counting"
		imartl3 = "Tremor on the left hand unknown"
		imartl4 = "Tremor on the left hand reason unknown"
		imartr1 = "Tremor on the right hand at rest without counting"
		imartr2 = "Tremor on the right hand at rest with counting"
		imartr3 = "Tremor on the right hand unknown"
		imartr4 = "Tremor on the right hand reason unknown"
		imafml1 = "Left finger motion"
		imafmluk = "Left finger motion reason unknown"
		imafmr1 = "Right finger motion"
		imafmruk = "Right finger motion reason unknown"
		imaacl1 = "Left ankle motion"
		imaacl1uk = "Left ankle motion reason unknown"
		imaacr1 = "Right ankle motion"
		imaacruk = "Right ankle motion reason unknown"
		imaftnl1 = "Left finger to nose"
		imaftnl3 = "Left finger to nose reason unknown"
		imaftnl2 = "Left finger to nose if clumsy"
		imaftnr1 = "Right finger to nose"
		imaftnr3 = "Right finger to nose reason unknown"
		imaftnr2 = "Right finger to nose if clumsy"
		auto_id_IdeApr = "Unique Teleform Number"
		crf_parent_name_IdeApr = "CRF Parent Name"
		study_name_IdeApr = "Study Name"
	;
	FORMAT
		ima01 ima01_.
		ima01_rnd ima01_rnd_.
		ima02 ima02_.
		ima02_rnd ima02_rnd_.
		ima03 ima03_.
		ima03_rnd ima03_rnd_.
		ima04 ima04_.
		ima04_rnd ima04_rnd_.
		ima05 ima05_.
		ima05_rnd ima05_rnd_.
		ima06 ima06_.
		ima06_rnd ima06_rnd_.
		ima07 ima07_.
		ima07_rnd ima07_rnd_.
		imalmt imalmt_.
		imalmtuk imalmtuk_.
		imarmt imarmt_.
		imarmtuk imarmtuk_.
		imartl1 imartl1_.
		imartl2 imartl2_.
		imartl3 imartl3_.
		imartl4 imartl4_.
		imartr1 imartr1_.
		imartr2 imartr2_.
		imartr3 imartr3_.
		imartr4 imartr4_.
		imafml1 imafml1_.
		imafmluk imafmluk_.
		imafmr1 imafmr1_.
		imafmruk imafmruk_.
		imaacl1 imaacl1_.
		imaacl1uk imaacl1uk_.
		imaacr1 imaacr1_.
		imaacruk imaacruk_.
		imaftnl1 imaftnl1_.
		imaftnl3 imaftnl3_.
		imaftnl2 imaftnl2_.
		imaftnr1 imaftnr1_.
		imaftnr3 imaftnr3_.
		imaftnr2 imaftnr2_.
	;
RUN;


DATA blsa_ideomotor_apraxia;
    SET WORK.IMPORT;
RUN;
