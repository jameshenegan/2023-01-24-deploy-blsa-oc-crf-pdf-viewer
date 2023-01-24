%let path_to_file = '../data-csv/BLSA_Blessed_Mental.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ble01_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble02_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble03_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble04_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble05_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble06_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble07_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble08_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble09_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble10_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble11_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble12_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble13_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble14_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble15_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble16a_
		0 = 'First time'
		1 = 'When given in 3 phrases'
		2 = 'When given in single words'
		3 = 'Could not repeat'
	;

	VALUE ble16_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble17_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble18_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble19_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble20_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble21_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble22_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble23_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble24_
		0 = 'Correct'
		1 = 'Self-corrected error'
		2 = 'Incorrect'
	;

	VALUE ble25_
		0 = 'Correct'
		1 = 'Self-corrected error'
		2 = 'Incorrect'
	;

	VALUE ble26_
		0 = 'Correct'
		1 = 'Self-corrected error'
		2 = 'Incorrect'
	;

	VALUE ble27a_
		0 = 'Correct'
		1 = 'Incorrect/Omitted'
	;

	VALUE ble27b_
		0 = 'Correct'
		1 = 'Incorrect/Omitted'
	;

	VALUE ble27c_
		0 = 'Correct'
		1 = 'Incorrect/Omitted'
	;

	VALUE ble27d_
		0 = 'Correct'
		1 = 'Incorrect/Omitted'
	;

	VALUE ble27e_
		0 = 'Correct'
		1 = 'Incorrect/Omitted'
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

	INFORMAT crf_version_BleMen $8.;
	FORMAT crf_version_BleMen $8.;

	INFORMAT obsdate_bledate YYMMDD10.;
	FORMAT obsdate_bledate YYMMDD10.;

	INFORMAT blank_BleMen $1.;
	FORMAT blank_BleMen $1.;

	INFORMAT bletid BEST32.;
	FORMAT bletid BEST12.;

	INFORMAT yourname $24.;
	FORMAT yourname $24.;

	INFORMAT ble01 BEST32.;
	FORMAT ble01 BEST12.;

	INFORMAT yourage $16.;
	FORMAT yourage $16.;

	INFORMAT ble02 BEST32.;
	FORMAT ble02 BEST12.;

	INFORMAT whenwereyouborn $31.;
	FORMAT whenwereyouborn $31.;

	INFORMAT ble03 BEST32.;
	FORMAT ble03 BEST12.;

	INFORMAT wherewereyouborn $45.;
	FORMAT wherewereyouborn $45.;

	INFORMAT ble04 BEST32.;
	FORMAT ble04 BEST12.;

	INFORMAT whereareyourightnow $53.;
	FORMAT whereareyourightnow $53.;

	INFORMAT ble05 BEST32.;
	FORMAT ble05 BEST12.;

	INFORMAT whatstreetisiton $57.;
	FORMAT whatstreetisiton $57.;

	INFORMAT ble06 BEST32.;
	FORMAT ble06 BEST12.;

	INFORMAT hourssinceyouarrived $42.;
	FORMAT hourssinceyouarrived $42.;

	INFORMAT ble07 BEST32.;
	FORMAT ble07 BEST12.;

	INFORMAT whatcityisitin $56.;
	FORMAT whatcityisitin $56.;

	INFORMAT ble08 BEST32.;
	FORMAT ble08 BEST12.;

	INFORMAT whatistodaysdate $43.;
	FORMAT whatistodaysdate $43.;

	INFORMAT ble09 BEST32.;
	FORMAT ble09 BEST12.;

	INFORMAT whatisthecurrentmonth $8.;
	FORMAT whatisthecurrentmonth $8.;

	INFORMAT ble10 BEST32.;
	FORMAT ble10 BEST12.;

	INFORMAT whatisthecurrentyear $10.;
	FORMAT whatisthecurrentyear $10.;

	INFORMAT ble11 BEST32.;
	FORMAT ble11 BEST12.;

	INFORMAT whatdayoftheweek $68.;
	FORMAT whatdayoftheweek $68.;

	INFORMAT ble12 BEST32.;
	FORMAT ble12 BEST12.;

	INFORMAT whatpartoftheday $44.;
	FORMAT whatpartoftheday $44.;

	INFORMAT ble13 BEST32.;
	FORMAT ble13 BEST12.;

	INFORMAT aboutwhattimeisit $57.;
	FORMAT aboutwhattimeisit $57.;

	INFORMAT ble14 BEST32.;
	FORMAT ble14 BEST12.;

	INFORMAT whatseasonisthis $89.;
	FORMAT whatseasonisthis $89.;

	INFORMAT ble15 BEST32.;
	FORMAT ble15 BEST12.;

	INFORMAT ble16a BEST32.;
	FORMAT ble16a BEST12.;

	INFORMAT mothersfirstname $9.;
	FORMAT mothersfirstname $9.;

	INFORMAT ble16 BEST32.;
	FORMAT ble16 BEST12.;

	INFORMAT howmuchschooling $34.;
	FORMAT howmuchschooling $34.;

	INFORMAT ble17 BEST32.;
	FORMAT ble17 BEST12.;

	INFORMAT namepecificschool $52.;
	FORMAT namepecificschool $52.;

	INFORMAT ble18 BEST32.;
	FORMAT ble18 BEST12.;

	INFORMAT kindofworkdone $101.;
	FORMAT kindofworkdone $101.;

	INFORMAT ble19 BEST32.;
	FORMAT ble19 BEST12.;

	INFORMAT currentpresidentofus $76.;
	FORMAT currentpresidentofus $76.;

	INFORMAT ble20 BEST32.;
	FORMAT ble20 BEST12.;

	INFORMAT presidentbeforecurrent $117.;
	FORMAT presidentbeforecurrent $117.;

	INFORMAT ble21 BEST32.;
	FORMAT ble21 BEST12.;

	INFORMAT yearsofworldwari $172.;
	FORMAT yearsofworldwari $172.;

	INFORMAT ble22 BEST32.;
	FORMAT ble22 BEST12.;

	INFORMAT yearsofworldwarii $16.;
	FORMAT yearsofworldwarii $16.;

	INFORMAT ble23 BEST32.;
	FORMAT ble23 BEST12.;

	INFORMAT ble24 BEST32.;
	FORMAT ble24 BEST12.;

	INFORMAT ble25 BEST32.;
	FORMAT ble25 BEST12.;

	INFORMAT ble26 BEST32.;
	FORMAT ble26 BEST12.;

	INFORMAT ble27a BEST32.;
	FORMAT ble27a BEST12.;

	INFORMAT ble27b BEST32.;
	FORMAT ble27b BEST12.;

	INFORMAT ble27c BEST32.;
	FORMAT ble27c BEST12.;

	INFORMAT ble27d BEST32.;
	FORMAT ble27d BEST12.;

	INFORMAT ble27e BEST32.;
	FORMAT ble27e BEST12.;

	INFORMAT preliminarytotal BEST32.;
	FORMAT preliminarytotal BEST12.;

	INFORMAT bletotal BEST32.;
	FORMAT bletotal BEST12.;

	INFORMAT auto_id_BleMen BEST32.;
	FORMAT auto_id_BleMen BEST12.;

	INFORMAT crf_parent_name_BleMen $19.;
	FORMAT crf_parent_name_BleMen $19.;

	INFORMAT study_name_BleMen $4.;
	FORMAT study_name_BleMen $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_BleMen
		obsdate_bledate
		blank_BleMen
		bletid
		yourname
		ble01
		yourage
		ble02
		whenwereyouborn
		ble03
		wherewereyouborn
		ble04
		whereareyourightnow
		ble05
		whatstreetisiton
		ble06
		hourssinceyouarrived
		ble07
		whatcityisitin
		ble08
		whatistodaysdate
		ble09
		whatisthecurrentmonth
		ble10
		whatisthecurrentyear
		ble11
		whatdayoftheweek
		ble12
		whatpartoftheday
		ble13
		aboutwhattimeisit
		ble14
		whatseasonisthis
		ble15
		ble16a
		mothersfirstname
		ble16
		howmuchschooling
		ble17
		namepecificschool
		ble18
		kindofworkdone
		ble19
		currentpresidentofus
		ble20
		presidentbeforecurrent
		ble21
		yearsofworldwari
		ble22
		yearsofworldwarii
		ble23
		ble24
		ble25
		ble26
		ble27a
		ble27b
		ble27c
		ble27d
		ble27e
		preliminarytotal
		bletotal
		auto_id_BleMen
		crf_parent_name_BleMen
		study_name_BleMen
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
		crf_version_BleMen = "CRF Version"
		obsdate_bledate = "Date Completed"
		blank_BleMen = "Blank Form"
		bletid = "Tester ID"
		yourname = "What is your name"
		ble01 = "What is your name Correct Incorrect"
		yourage = "Can you tell me your age"
		ble02 = "Can you tell me your age correct incorrect"
		whenwereyouborn = "When were you born"
		ble03 = "When were you born correct incorrect"
		wherewereyouborn = "Where were you born"
		ble04 = "Where were you born correct incorrect"
		whereareyourightnow = "Where are you right now"
		ble05 = "Where are you right now correct incorrect"
		whatstreetisiton = "What street is it on"
		ble06 = "What street is it on correct incorrect"
		hourssinceyouarrived = "How many hours has it been since you arrived on the unit correct incorrect"
		ble07 = "How many hours has it been since you arrived on the unit"
		whatcityisitin = "What city is it in"
		ble08 = "What city is it in correct incorrect"
		whatistodaysdate = "What is todays date"
		ble09 = "What is todays date correct incorrect"
		whatisthecurrentmonth = "What is the current month"
		ble10 = "What is the current month correct incorrect"
		whatisthecurrentyear = "What is the current year"
		ble11 = "What is the current year correct incorrect"
		whatdayoftheweek = "What day of the week is today"
		ble12 = "What day of the week is today correct incorrect"
		whatpartoftheday = "What part of the day is it"
		ble13 = "What part of the day is it correct incorrect"
		aboutwhattimeisit = "About what time is it"
		ble14 = "About what time is it correct incorrect"
		whatseasonisthis = "What season is this"
		ble15 = "What season is this correct incorrect"
		ble16a = "When did the participant correctly repeat John Brown 42 Market Street Chicago"
		mothersfirstname = "What is your mothers first name"
		ble16 = "What is your mothers first name correct incorrect"
		howmuchschooling = "How much schooling did you have"
		ble17 = "How much schooling did you have correct incorrect"
		namepecificschool = "Name of one specific school you attended"
		ble18 = "Name of one specific school you attended correct incorrect"
		kindofworkdone = "Kind of work you have done"
		ble19 = "Kind of work you have done correct incorrect"
		currentpresidentofus = "Can you tell me who the president of the United States is right now"
		ble20 = "Current President of the United states correct incorrect"
		presidentbeforecurrent = "President before current president"
		ble21 = "President before current president correct incorrect"
		yearsofworldwari = "Can you tell me one of the years of World War I"
		ble22 = "One of the years of World War I correct incorrect"
		yearsofworldwarii = "Can you tell me one of the years of World War II"
		ble23 = "One of the years of World War II correct incorrect"
		ble24 = "Recite months of the year backwards"
		ble25 = "Count from 1 to 20"
		ble26 = "Count backwards from 20 to 1"
		ble27a = "Recall John"
		ble27b = "Recall Brown"
		ble27c = "Recall 42"
		ble27d = "Recall Market Street"
		ble27e = "Recall Chicago"
		preliminarytotal = "PreliminaryTotal"
		bletotal = "ValidatedTotal"
		auto_id_BleMen = "Unique Teleform Number"
		crf_parent_name_BleMen = "CRF Parent Name"
		study_name_BleMen = "Study Name"
	;
	FORMAT
		ble01 ble01_.
		ble02 ble02_.
		ble03 ble03_.
		ble04 ble04_.
		ble05 ble05_.
		ble06 ble06_.
		ble07 ble07_.
		ble08 ble08_.
		ble09 ble09_.
		ble10 ble10_.
		ble11 ble11_.
		ble12 ble12_.
		ble13 ble13_.
		ble14 ble14_.
		ble15 ble15_.
		ble16a ble16a_.
		ble16 ble16_.
		ble17 ble17_.
		ble18 ble18_.
		ble19 ble19_.
		ble20 ble20_.
		ble21 ble21_.
		ble22 ble22_.
		ble23 ble23_.
		ble24 ble24_.
		ble25 ble25_.
		ble26 ble26_.
		ble27a ble27a_.
		ble27b ble27b_.
		ble27c ble27c_.
		ble27d ble27d_.
		ble27e ble27e_.
	;
RUN;


DATA blsa_blessed_mental;
    SET WORK.IMPORT;
RUN;
