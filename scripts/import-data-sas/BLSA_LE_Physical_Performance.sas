%let path_to_file = '../data-csv/BLSA_LE_Physical_Performance.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE lep1_
		0 = 'Not attempted unable Go to standing balance'
		1 = 'Stands without using arms Go to repeated chair stands'
		2 = 'Attempted unable to stand Go to standing balance'
		3 = 'Rises using arms Go to standing balance'
		7 = 'Participant refused (includes no time/no tester) Go to standing balance'
	;

	VALUE lep2_
		0 = 'Not attempted unable Go to standing balance'
		1 = 'Completes 10 stands without using arms Record time'
		2 = 'Attempted unable to complete 5 stands Go to Number completed'
		3 = 'Completed 5 but not 10 stands Go to Number Completed and Enter time for 5 stands'
		7 = 'Participant refused (includes no time/no tester) Go to standing balance'
	;

	VALUE lep3_
		0 = 'Not attempted unable Go to 6 meter walks'
		1 = 'Holds for 10 seconds Go to semi-tandem stand'
		2 = 'Unable to attain position or hold for one second Go to 6 meter walks'
		3 = 'Holds for less than 10 seconds Go to 6 meter walks'
		7 = 'Participant refused (includes no time/no tester) Go to 6 meter walks'
	;

	VALUE lep4_
		0 = 'Not attempted unable Go to 6 meter walks'
		1 = 'Holds position for 30 seconds Go to tandem stand'
		2 = 'Unable to attain position or hold for one second Go to 6 meter walks'
		3 = 'Holds position for less than 10 seconds Record time Go to 6 meter walks'
		4 = 'Holds position for 10 but less than 30 seconds Record time Go to tandem stand'
		7 = 'Participant refused (includes no time/no tester) Go to 6 meter walks'
	;

	VALUE lep5a_
		0 = 'Not attempted unable Go to 6 meter walks'
		1 = 'Holds position for 30 seconds Go to one-leg stand'
		2 = 'Unable to attain position or hold for one second Go to 6 meter walks'
		3 = 'Holds position for less than 10 seconds Record time Go to Trial 2'
		4 = 'Holds position for 10 but less than 30 seconds Record time Go to Trial 2'
		7 = 'Participant refused (includes no time/no tester) Go to 6 meter walks'
	;

	VALUE lep5b_
		0 = 'Not attempted unable Go to 6 meter walks'
		1 = 'Holds position for 30 seconds Go to one-leg stand'
		2 = 'Unable to attain position or hold for one second Go to 6 meter walks'
		3 = 'Hold position for less than 10 seconds Record time Go to 6 meter walks Mark unable One Leg Stand '
		4 = 'Holds position for 10 but less than 30 seconds Record time Go to 6 meter walks Mark unable One Leg Stand'
		7 = 'Participant refused (includes no time/no tester) Go to 6 meter walks'
	;

	VALUE lep6a_
		0 = 'Not attempted unable Go to 6 meter walks'
		1 = 'Holds position for 30 seconds Go to 6 meter walks'
		2 = 'Unable to attain position or hold for one second Go to 6 meter walks'
		3 = 'Holds position for one but less than 30 seconds Record time Go to Trial 2'
		7 = 'Participant refused (includes no time/no tester) Go to 6 meter walks'
	;

	VALUE lep6b_
		0 = 'Not attempted unable Go to 6 meter walks'
		1 = 'Holds position for 30 seconds Go to 6 meter walks'
		2 = 'Unable to attain position or hold for one second Go to 6 meter walks'
		3 = 'Holds position for one but less than 30 seconds Record time Go to Trial 2'
		7 = 'Participant refused (includes no time/no tester) Go to 6 meter walks'
	;

	VALUE lep7a_
		0 = 'Not attempted unable to walk End performance testing'
		1 = 'Completes without walking aid Record Time Go to trial 2'
		2 = 'Completes with walking aid Record Time Go to Trial 2'
		7 = 'Participant refused (Includes no time/no tester) End performance testing'
	;

	VALUE lep7b_
		0 = 'Not attempted unable to walk End performance testing'
		1 = 'Completes without walking aid Record Time Go to Fast Walk'
		2 = 'Completes with walking aid Record Time Go to Fast Walk'
		7 = 'Participant refused (Includes no time/no tester) End performance testing'
	;

	VALUE lep8a_
		0 = 'Not attempted unable to walk End performance testing'
		1 = 'Completes without walking aid Record Time Go to trial 2'
		2 = 'Completes with walking aid Record Time Go to Trial 2'
		7 = 'Participant refused (Includes no time/no tester) End performance testing'
	;

	VALUE lep8b_
		0 = 'Not attempted unable to walk End performance testing'
		1 = 'Completes without walking aid Record Time Go to Narrow Walk'
		2 = 'Completes with walking aid Record Time Go to Narrow Walk'
		7 = 'Participant refused (Includes no time/no tester) End performance testing'
	;

	VALUE lep9a_
		0 = 'Not attempted unable to walk unaided End performance testing'
		1 = 'Valid test Record Time Go to trial 2'
		2 = 'Invalid test stepped on line 3 times Go to Trial 2'
		7 = 'Participant refused (Includes no time/no tester) End performance testing'
	;

	VALUE lep9b_
		0 = 'Not attempted unable to walk unaided End performance testing'
		1 = 'Valid test Record Time Go to trial 3 or end'
		2 = 'Invalid test stepped on line 3 times Go to Trial 3'
		7 = 'Participant refused (Includes no time/no tester) End performance testing'
	;

	VALUE lep9c_
		0 = 'Not attempted unable to walk unaided End performance testing'
		1 = 'Valid test Record Time End'
		2 = 'Invalid test stepped on line 3 times End testing'
		7 = 'Participant refused (Includes no time/no tester) End performance testing'
	;

	VALUE lep7_
		0 = 'No three meter space available'
		1 = 'Four meters'
		2 = 'Three meters'
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

	INFORMAT crf_version_LEPhyPer $10.;
	FORMAT crf_version_LEPhyPer $10.;

	INFORMAT obsdate_lepdt1 YYMMDD10.;
	FORMAT obsdate_lepdt1 YYMMDD10.;

	INFORMAT leptid1 BEST32.;
	FORMAT leptid1 BEST12.;

	INFORMAT blank_LEPhyPer $1.;
	FORMAT blank_LEPhyPer $1.;

	INFORMAT lep1 BEST32.;
	FORMAT lep1 BEST12.;

	INFORMAT lep2 BEST32.;
	FORMAT lep2 BEST12.;

	INFORMAT lep2a $1.;
	FORMAT lep2a $1.;

	INFORMAT lep2b $1.;
	FORMAT lep2b $1.;

	INFORMAT lep2b1 $15.;
	FORMAT lep2b1 $15.;

	INFORMAT lep2c1 BEST32.;
	FORMAT lep2c1 BEST12.;

	INFORMAT lep2c2 $6.;
	FORMAT lep2c2 $6.;

	INFORMAT lep3 BEST32.;
	FORMAT lep3 BEST12.;

	INFORMAT lep4 BEST32.;
	FORMAT lep4 BEST12.;

	INFORMAT lep4b BEST32.;
	FORMAT lep4b BEST12.;

	INFORMAT lep4a BEST32.;
	FORMAT lep4a BEST12.;

	INFORMAT lep5a BEST32.;
	FORMAT lep5a BEST12.;

	INFORMAT lep5a2 BEST32.;
	FORMAT lep5a2 BEST12.;

	INFORMAT lep5a1 BEST32.;
	FORMAT lep5a1 BEST12.;

	INFORMAT lep5b BEST32.;
	FORMAT lep5b BEST12.;

	INFORMAT lep5b1 BEST32.;
	FORMAT lep5b1 BEST12.;

	INFORMAT lep5b2 BEST32.;
	FORMAT lep5b2 BEST12.;

	INFORMAT lep6a BEST32.;
	FORMAT lep6a BEST12.;

	INFORMAT lep6a1 $6.;
	FORMAT lep6a1 $6.;

	INFORMAT lep6b BEST32.;
	FORMAT lep6b BEST12.;

	INFORMAT lep6b1 BEST32.;
	FORMAT lep6b1 BEST12.;

	INFORMAT lep7a BEST32.;
	FORMAT lep7a BEST12.;

	INFORMAT lep7a1 BEST32.;
	FORMAT lep7a1 BEST12.;

	INFORMAT lep7a2 $6.;
	FORMAT lep7a2 $6.;

	INFORMAT lep7b BEST32.;
	FORMAT lep7b BEST12.;

	INFORMAT lep7b1 BEST32.;
	FORMAT lep7b1 BEST12.;

	INFORMAT lep7b2 BEST32.;
	FORMAT lep7b2 BEST12.;

	INFORMAT lep8a BEST32.;
	FORMAT lep8a BEST12.;

	INFORMAT lep8a1 BEST32.;
	FORMAT lep8a1 BEST12.;

	INFORMAT lep8a2 $5.;
	FORMAT lep8a2 $5.;

	INFORMAT lep8b BEST32.;
	FORMAT lep8b BEST12.;

	INFORMAT lep8b1 BEST32.;
	FORMAT lep8b1 BEST12.;

	INFORMAT lep8b2 BEST32.;
	FORMAT lep8b2 BEST12.;

	INFORMAT lep9a BEST32.;
	FORMAT lep9a BEST12.;

	INFORMAT lep9a1 BEST32.;
	FORMAT lep9a1 BEST12.;

	INFORMAT lep9b BEST32.;
	FORMAT lep9b BEST12.;

	INFORMAT lep9b1 BEST32.;
	FORMAT lep9b1 BEST12.;

	INFORMAT lep9c BEST32.;
	FORMAT lep9c BEST12.;

	INFORMAT lep9c1 BEST32.;
	FORMAT lep9c1 BEST12.;

	INFORMAT auto_id_LEPhyPer BEST32.;
	FORMAT auto_id_LEPhyPer BEST12.;

	INFORMAT lepdt2 YYMMDD10.;
	FORMAT lepdt2 YYMMDD10.;

	INFORMAT leptid2 BEST32.;
	FORMAT leptid2 BEST12.;

	INFORMAT lepdt3 YYMMDD10.;
	FORMAT lepdt3 YYMMDD10.;

	INFORMAT leptid3 BEST32.;
	FORMAT leptid3 BEST12.;

	INFORMAT lep7 BEST32.;
	FORMAT lep7 BEST12.;

	INFORMAT crf_parent_name_LEPhyPer $28.;
	FORMAT crf_parent_name_LEPhyPer $28.;

	INFORMAT item_group_repeat_LEPhyPer BEST32.;
	FORMAT item_group_repeat_LEPhyPer BEST12.;

	INFORMAT lep2a_0 BEST32.;
	FORMAT lep2a_0 BEST12.;

	INFORMAT lep2a_1 BEST32.;
	FORMAT lep2a_1 BEST12.;

	INFORMAT lep2a_2 BEST32.;
	FORMAT lep2a_2 BEST12.;

	INFORMAT lep2a_3 BEST32.;
	FORMAT lep2a_3 BEST12.;

	INFORMAT lep2a_4 BEST32.;
	FORMAT lep2a_4 BEST12.;

	INFORMAT lep2b_5 BEST32.;
	FORMAT lep2b_5 BEST12.;

	INFORMAT lep2b_6 BEST32.;
	FORMAT lep2b_6 BEST12.;

	INFORMAT lep2b_7 BEST32.;
	FORMAT lep2b_7 BEST12.;

	INFORMAT lep2b_8 BEST32.;
	FORMAT lep2b_8 BEST12.;

	INFORMAT study_name_LEPhyPer $4.;
	FORMAT study_name_LEPhyPer $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_LEPhyPer
		obsdate_lepdt1
		leptid1
		blank_LEPhyPer
		lep1
		lep2
		lep2a
		lep2b
		lep2b1
		lep2c1
		lep2c2
		lep3
		lep4
		lep4b
		lep4a
		lep5a
		lep5a2
		lep5a1
		lep5b
		lep5b1
		lep5b2
		lep6a
		lep6a1
		lep6b
		lep6b1
		lep7a
		lep7a1
		lep7a2
		lep7b
		lep7b1
		lep7b2
		lep8a
		lep8a1
		lep8a2
		lep8b
		lep8b1
		lep8b2
		lep9a
		lep9a1
		lep9b
		lep9b1
		lep9c
		lep9c1
		auto_id_LEPhyPer
		lepdt2
		leptid2
		lepdt3
		leptid3
		lep7
		crf_parent_name_LEPhyPer
		item_group_repeat_LEPhyPer
		lep2a_0
		lep2a_1
		lep2a_2
		lep2a_3
		lep2a_4
		lep2b_5
		lep2b_6
		lep2b_7
		lep2b_8
		study_name_LEPhyPer
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
		crf_version_LEPhyPer = "CRF Version"
		obsdate_lepdt1 = "Date Completed"
		leptid1 = "Tester ID"
		blank_LEPhyPer = "Blank Form"
		lep1 = "Single chair stand"
		lep2 = "Repeated chair stand"
		lep2a = "Unable to complete 5 stands number completed"
		lep2b = "Completes 5 but not 10 stands number completed"
		lep2b1 = "Time for 5 stands"
		lep2c1 = "Time for 10 stands min"
		lep2c2 = "Time for 10 stands sec hund"
		lep3 = "Side by side stand"
		lep4 = "Semi tandem stand"
		lep4b = "Semi tandem stand hold position for less than 10 seconds time"
		lep4a = "Semi tandem stand hold position for 10 but less than 30 seconds time"
		lep5a = "Tandem stand trial 1"
		lep5a2 = "Tandem stand hold position for less than 10 seconds time trial 1"
		lep5a1 = "Tandem stand hold position for 10 but less than 30 seconds time trial 1"
		lep5b = "Tandem stand trial 2"
		lep5b1 = "Tandem stand hold position for less than 10 seconds time trial 2"
		lep5b2 = "Tandem stand hold position for 10 but less than 30 seconds time trial 2"
		lep6a = "One leg stand Trial 1"
		lep6a1 = "One leg stand 1 but less than 30 seconds time trial 1"
		lep6b = "One leg stand Trial 2"
		lep6b1 = "One leg stand 1 but less than 30 seconds time trial 2"
		lep7a = "Uaual pace trial 1"
		lep7a1 = "Usual pace complete with walking aid trial 1 time"
		lep7a2 = "Usual pace complete without walking aid trial 1 time"
		lep7b = "Uaual pace trial 2"
		lep7b1 = "Usual pace complete with walking aid trial 2 time"
		lep7b2 = "Usual pace complete without walking aid trial 2 time"
		lep8a = "Fast pace trial 1"
		lep8a1 = "Fast pace complete with walking aid trial 1 time"
		lep8a2 = "Fast pace complete without walking aid trial 1 time"
		lep8b = "Fast pace trial 2"
		lep8b1 = "Fast pace complete with walking aid trial 2 time"
		lep8b2 = "Fast pace complete without walking aid trial 2 time"
		lep9a = "Narrow walk trial 1"
		lep9a1 = "Narrow walk valid test trial 1 time"
		lep9b = "Narrow walk trial 2"
		lep9b1 = "Narrow walk valid test trial 2 time"
		lep9c = "Narrow walk trial 3"
		lep9c1 = "Narrow walk valid test trial 3 time"
		auto_id_LEPhyPer = "Unique Teleform Number"
		lepdt2 = "Standing Balance Date Completed"
		leptid2 = "Standing Balance Tester ID"
		lepdt3 = "6 meter walks Date Completed"
		leptid3 = "6 meter walks Tester ID"
		lep7 = "HV measured meters"
		crf_parent_name_LEPhyPer = "CRF Parent Name"
		item_group_repeat_LEPhyPer = "Item Group Repeate"
		lep2a_0 = "Unable to complete 5 stands number completed : 0 (Checkbox Indicator)"
		lep2a_1 = "Unable to complete 5 stands number completed : 1 (Checkbox Indicator)"
		lep2a_2 = "Unable to complete 5 stands number completed : 2 (Checkbox Indicator)"
		lep2a_3 = "Unable to complete 5 stands number completed : 3 (Checkbox Indicator)"
		lep2a_4 = "Unable to complete 5 stands number completed : 4 (Checkbox Indicator)"
		lep2b_5 = "Completes 5 but not 10 stands number completed : 5* (Checkbox Indicator)"
		lep2b_6 = "Completes 5 but not 10 stands number completed : 6 (Checkbox Indicator)"
		lep2b_7 = "Completes 5 but not 10 stands number completed : 7 (Checkbox Indicator)"
		lep2b_8 = "Completes 5 but not 10 stands number completed : 8 (Checkbox Indicator)"
		study_name_LEPhyPer = "Study Name"
	;
	FORMAT
		lep1 lep1_.
		lep2 lep2_.
		lep3 lep3_.
		lep4 lep4_.
		lep5a lep5a_.
		lep5b lep5b_.
		lep6a lep6a_.
		lep6b lep6b_.
		lep7a lep7a_.
		lep7b lep7b_.
		lep8a lep8a_.
		lep8b lep8b_.
		lep9a lep9a_.
		lep9b lep9b_.
		lep9c lep9c_.
		lep7 lep7_.
	;
RUN;


DATA blsa_le_physical_performance;
    SET WORK.IMPORT;
RUN;
