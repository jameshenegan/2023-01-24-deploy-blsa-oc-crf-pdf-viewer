%let path_to_file = '../data-csv/BLSA_Knee_Extensor_Power.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE kep01_
		1 = 'Kin-Com preceded power testing'
		2 = 'Kin-Com to follow power testing'
		3 = 'Not scheduled for current visit'
	;

	VALUE kep02_
		0 = 'No excluded do not test'
		1 = 'Yes no discomfort test same leg'
		2 = 'No technical issues check knee strength eligibility'
		3 = 'Yes some discomfort test other leg unless contraindications'
	;

	VALUE kep02a_
		0 = 'Not eligible'
		1 = 'Eligible'
	;

	VALUE kep02b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE kep03_
		1 = 'Right'
		2 = 'First time'
		3 = 'Left'
		8 = "Don't know"
	;

	VALUE kep03a_
		1 = 'Right'
		2 = 'Left'
		3 = 'Neither (test not performed)'
	;

	VALUE kep03b_
		1 = 'Not elegible'
		555 = 'physical problems'
		666 = 'cognitive problems'
		777 = 'physical and cognitive'
		888 = 'refused'
		999 = 'technical problems'
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

	INFORMAT crf_version_KneExtPow $7.;
	FORMAT crf_version_KneExtPow $7.;

	INFORMAT obsdate_kepdate YYMMDD10.;
	FORMAT obsdate_kepdate YYMMDD10.;

	INFORMAT blank_KneExtPow $1.;
	FORMAT blank_KneExtPow $1.;

	INFORMAT keptid BEST32.;
	FORMAT keptid BEST12.;

	INFORMAT tricom01a_KneExtPow $1.;
	FORMAT tricom01a_KneExtPow $1.;

	INFORMAT kep01 BEST32.;
	FORMAT kep01 BEST12.;

	INFORMAT kep02 BEST32.;
	FORMAT kep02 BEST12.;

	INFORMAT kep02a BEST32.;
	FORMAT kep02a BEST12.;

	INFORMAT kep02b BEST32.;
	FORMAT kep02b BEST12.;

	INFORMAT kep02c $1.;
	FORMAT kep02c $1.;

	INFORMAT kep03 BEST32.;
	FORMAT kep03 BEST12.;

	INFORMAT kep03a BEST32.;
	FORMAT kep03a BEST12.;

	INFORMAT kep03b BEST32.;
	FORMAT kep03b BEST12.;

	INFORMAT kep04 BEST32.;
	FORMAT kep04 BEST12.;

	INFORMAT kep05 BEST32.;
	FORMAT kep05 BEST12.;

	INFORMAT kep40t1 BEST32.;
	FORMAT kep40t1 BEST12.;

	INFORMAT kep40t2 BEST32.;
	FORMAT kep40t2 BEST12.;

	INFORMAT kep40t3 BEST32.;
	FORMAT kep40t3 BEST12.;

	INFORMAT kep40t4 BEST32.;
	FORMAT kep40t4 BEST12.;

	INFORMAT kep40t5 BEST32.;
	FORMAT kep40t5 BEST12.;

	INFORMAT kep50t1 BEST32.;
	FORMAT kep50t1 BEST12.;

	INFORMAT kep50t2 BEST32.;
	FORMAT kep50t2 BEST12.;

	INFORMAT kep50t3 BEST32.;
	FORMAT kep50t3 BEST12.;

	INFORMAT kep50t4 BEST32.;
	FORMAT kep50t4 BEST12.;

	INFORMAT kep50t5 BEST32.;
	FORMAT kep50t5 BEST12.;

	INFORMAT kep60t1 BEST32.;
	FORMAT kep60t1 BEST12.;

	INFORMAT kep60t2 BEST32.;
	FORMAT kep60t2 BEST12.;

	INFORMAT kep60t3 BEST32.;
	FORMAT kep60t3 BEST12.;

	INFORMAT kep60t4 BEST32.;
	FORMAT kep60t4 BEST12.;

	INFORMAT kep60t5 BEST32.;
	FORMAT kep60t5 BEST12.;

	INFORMAT kep70t1 BEST32.;
	FORMAT kep70t1 BEST12.;

	INFORMAT kep70t2 BEST32.;
	FORMAT kep70t2 BEST12.;

	INFORMAT kep70t3 BEST32.;
	FORMAT kep70t3 BEST12.;

	INFORMAT kep70t4 BEST32.;
	FORMAT kep70t4 BEST12.;

	INFORMAT kep70t5 BEST32.;
	FORMAT kep70t5 BEST12.;

	INFORMAT auto_id_KneExtPow BEST32.;
	FORMAT auto_id_KneExtPow BEST12.;

	INFORMAT crf_parent_name_KneExtPow $24.;
	FORMAT crf_parent_name_KneExtPow $24.;

	INFORMAT study_name_KneExtPow $4.;
	FORMAT study_name_KneExtPow $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_KneExtPow
		obsdate_kepdate
		blank_KneExtPow
		keptid
		tricom01a_KneExtPow
		kep01
		kep02
		kep02a
		kep02b
		kep02c
		kep03
		kep03a
		kep03b
		kep04
		kep05
		kep40t1
		kep40t2
		kep40t3
		kep40t4
		kep40t5
		kep50t1
		kep50t2
		kep50t3
		kep50t4
		kep50t5
		kep60t1
		kep60t2
		kep60t3
		kep60t4
		kep60t5
		kep70t1
		kep70t2
		kep70t3
		kep70t4
		kep70t5
		auto_id_KneExtPow
		crf_parent_name_KneExtPow
		study_name_KneExtPow
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
		crf_version_KneExtPow = "CRF Version"
		obsdate_kepdate = "Date Completed"
		blank_KneExtPow = "Blank Form"
		keptid = "Tester ID"
		tricom01a_KneExtPow = "Able to stand unassisted"
		kep01 = "Time from Kin-Com testing"
		kep02 = "Did participant complete knee strength testing"
		kep02a = "Eligibility"
		kep02b = "Was range of motion 155 degrees or better"
		kep02c = "Record ROM below 155 degrees"
		kep03 = "Which leg was tested at most recent BLSA Kin-Com testing"
		kep03a = "Which leg is to be tested"
		kep03b = "Reason not tested"
		kep04 = "Predicted Initial Setting"
		kep05 = "1 RM"
		kep40t1 = "40% 1 RM Trial 1"
		kep40t2 = "40% 1 RM Trial 2"
		kep40t3 = "40% 1 RM Trial 3"
		kep40t4 = "40% 1 RM Trial 4"
		kep40t5 = "40% 1 RM Trial 5"
		kep50t1 = "50% 1 RM Trial 1"
		kep50t2 = "50% 1 RM Trial 2"
		kep50t3 = "50% 1 RM Trial 3"
		kep50t4 = "50% 1 RM Trial 4"
		kep50t5 = "50% 1 RM Trial 5"
		kep60t1 = "60% 1 RM Trial 1"
		kep60t2 = "60% 1 RM Trial 2"
		kep60t3 = "60% 1 RM Trial 3"
		kep60t4 = "60% 1 RM Trial 4"
		kep60t5 = "60% 1 RM Trial 5"
		kep70t1 = "70% 1 RM Trial 1"
		kep70t2 = "70% 1 RM Trial 2"
		kep70t3 = "70% 1 RM Trial 3"
		kep70t4 = "70% 1 RM Trial 4"
		kep70t5 = "70% 1 RM Trial 5"
		auto_id_KneExtPow = "Unique Teleform Number"
		crf_parent_name_KneExtPow = "CRF Parent Name"
		study_name_KneExtPow = "Study Name"
	;
	FORMAT
		kep01 kep01_.
		kep02 kep02_.
		kep02a kep02a_.
		kep02b kep02b_.
		kep03 kep03_.
		kep03a kep03a_.
		kep03b kep03b_.
	;
RUN;


DATA blsa_knee_extensor_power;
    SET WORK.IMPORT;
RUN;
