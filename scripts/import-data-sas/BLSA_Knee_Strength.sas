%let path_to_file = '../data-csv/BLSA_Knee_Strength.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ks001_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks003_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks004_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks005_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks005a_
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
		8 = "Don't know"
	;

	VALUE ks005b_
		1 = 'Joint'
		2 = 'Bone'
		3 = 'Ligament'
		4 = 'Meniscus'
		5 = 'Cartilage'
		6 = 'Knee cap'
		7 = 'Tendon'
		8 = 'Others'
		9 = "Don't know"
	;

	VALUE ks005c_
		1 = 'Joint'
		2 = 'Bone'
		3 = 'Ligament'
		4 = 'Meniscus'
		5 = 'Cartilage'
		6 = 'Knee cap'
		7 = 'Tendon'
		8 = 'Others'
		9 = "Don't know"
	;

	VALUE ks006_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks006a_
		1 = 'Right'
		2 = 'Left'
		8 = "Don't know"
	;

	VALUE ks007_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks007a_
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
		8 = "Don't know"
	;

	VALUE ks024_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks024a_
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
		8 = "Don't know"
	;

	VALUE ks024b_
		1 = 'Occassionally'
		2 = 'Weekly'
		3 = 'Daily'
		8 = "Don't know"
	;

	VALUE ks008_
		1 = 'Right'
		2 = 'Left'
		3 = 'First time'
		4 = 'Both'
		8 = "Don't know"
	;

	VALUE ks025_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks025a_
		0 = '0'
		1 = '1'
		10 = '10'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
		9 = '9'
	;

	VALUE ks025b_
		0 = '0'
		1 = '1'
		10 = '10'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
		9 = '9'
	;

	VALUE ks025c_
		0 = '0'
		1 = '1'
		10 = '10'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
		9 = '9'
	;

	VALUE ks025d_
		0 = '0'
		1 = '1'
		10 = '10'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
		9 = '9'
	;

	VALUE ks025e_
		0 = '0'
		1 = '1'
		10 = '10'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
		9 = '9'
	;

	VALUE ks011a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ks011b_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks011brnd_
		1 = 'Requested by Participant'
		2 = "Tester's decision"
	;

	VALUE ks011c_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks011crnd_
		1 = 'Requested by Participant'
		2 = "Tester's decision"
	;

	VALUE ks011d_
		1 = 'Ineligible'
		2 = 'Technical'
		3 = 'No Tester'
		4 = 'Time'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ks013a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ks013b_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks013c_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks013brnd_
		1 = 'Requested by Participant'
		2 = "Tester's decision"
	;

	VALUE ks013d_
		1 = 'Ineligible'
		2 = 'Technical'
		3 = 'No Tester'
		4 = 'Time'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ks021a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ks021b_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks021brnd_
		1 = 'Requested by Participant'
		2 = "Tester's decision"
	;

	VALUE ks021c_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks021crnd_
		1 = 'Requested by Participant'
		2 = "Tester's decision"
	;

	VALUE ks021d_
		1 = 'Ineligible'
		2 = 'Technical'
		3 = 'No Tester'
		4 = 'Time'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ks023a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ks023b_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks023c_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks023crnd_
		1 = 'Requested by Participant'
		2 = "Tester's decision"
	;

	VALUE ks023d_
		1 = 'Ineligible'
		2 = 'Technical'
		3 = 'No Tester'
		4 = 'Time'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ks004a3m_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks004a_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks002_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks009_
		0 = 'No test both sides'
		1 = 'Right test left side only'
		2 = 'Left test right side only'
		3 = 'Both do NOT test'
		8 = " Don't know go to Kin-Com exam"
	;

	VALUE ks009a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ks009b_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE ks012a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ks012b_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks012c_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks012d_
		1 = 'Ineligible'
		2 = 'Technical'
		3 = 'No Tester'
		4 = 'Time'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ks022a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ks022b_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks022c_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4+'
	;

	VALUE ks022d_
		1 = 'Ineligible'
		2 = 'Technical'
		3 = 'No Tester'
		4 = 'Time'
		7 = 'Refused'
		8 = "Don't know"
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

	INFORMAT crf_version_KneStr $7.;
	FORMAT crf_version_KneStr $7.;

	INFORMAT obsdate_ksdate YYMMDD10.;
	FORMAT obsdate_ksdate YYMMDD10.;

	INFORMAT blank_KneStr $1.;
	FORMAT blank_KneStr $1.;

	INFORMAT kstid BEST32.;
	FORMAT kstid BEST12.;

	INFORMAT ks001 BEST32.;
	FORMAT ks001 BEST12.;

	INFORMAT ks003 BEST32.;
	FORMAT ks003 BEST12.;

	INFORMAT ks004 BEST32.;
	FORMAT ks004 BEST12.;

	INFORMAT ks005 BEST32.;
	FORMAT ks005 BEST12.;

	INFORMAT ks005a BEST32.;
	FORMAT ks005a BEST12.;

	INFORMAT ks005b BEST32.;
	FORMAT ks005b BEST12.;

	INFORMAT ks005c BEST32.;
	FORMAT ks005c BEST12.;

	INFORMAT ks006 BEST32.;
	FORMAT ks006 BEST12.;

	INFORMAT ks006a BEST32.;
	FORMAT ks006a BEST12.;

	INFORMAT ks007 BEST32.;
	FORMAT ks007 BEST12.;

	INFORMAT ks007a BEST32.;
	FORMAT ks007a BEST12.;

	INFORMAT ks024 BEST32.;
	FORMAT ks024 BEST12.;

	INFORMAT ks024a BEST32.;
	FORMAT ks024a BEST12.;

	INFORMAT ks024b BEST32.;
	FORMAT ks024b BEST12.;

	INFORMAT ks008 BEST32.;
	FORMAT ks008 BEST12.;

	INFORMAT ks025 BEST32.;
	FORMAT ks025 BEST12.;

	INFORMAT ks025a BEST32.;
	FORMAT ks025a BEST12.;

	INFORMAT ks025b BEST32.;
	FORMAT ks025b BEST12.;

	INFORMAT ks025c BEST32.;
	FORMAT ks025c BEST12.;

	INFORMAT ks025d BEST32.;
	FORMAT ks025d BEST12.;

	INFORMAT ks025e BEST32.;
	FORMAT ks025e BEST12.;

	INFORMAT ks010a BEST32.;
	FORMAT ks010a BEST12.;

	INFORMAT ks010b BEST32.;
	FORMAT ks010b BEST12.;

	INFORMAT ks010c BEST32.;
	FORMAT ks010c BEST12.;

	INFORMAT ks011a BEST32.;
	FORMAT ks011a BEST12.;

	INFORMAT ks011b BEST32.;
	FORMAT ks011b BEST12.;

	INFORMAT ks011brnd BEST32.;
	FORMAT ks011brnd BEST12.;

	INFORMAT ks011c BEST32.;
	FORMAT ks011c BEST12.;

	INFORMAT ks011crnd BEST32.;
	FORMAT ks011crnd BEST12.;

	INFORMAT ks011d BEST32.;
	FORMAT ks011d BEST12.;

	INFORMAT ks013a BEST32.;
	FORMAT ks013a BEST12.;

	INFORMAT ks013b BEST32.;
	FORMAT ks013b BEST12.;

	INFORMAT ks013c BEST32.;
	FORMAT ks013c BEST12.;

	INFORMAT ks013brnd BEST32.;
	FORMAT ks013brnd BEST12.;

	INFORMAT ks013d BEST32.;
	FORMAT ks013d BEST12.;

	INFORMAT ks020a BEST32.;
	FORMAT ks020a BEST12.;

	INFORMAT ks020b BEST32.;
	FORMAT ks020b BEST12.;

	INFORMAT ks020c BEST32.;
	FORMAT ks020c BEST12.;

	INFORMAT ks021a BEST32.;
	FORMAT ks021a BEST12.;

	INFORMAT ks021b BEST32.;
	FORMAT ks021b BEST12.;

	INFORMAT ks021brnd BEST32.;
	FORMAT ks021brnd BEST12.;

	INFORMAT ks021c BEST32.;
	FORMAT ks021c BEST12.;

	INFORMAT ks021crnd BEST32.;
	FORMAT ks021crnd BEST12.;

	INFORMAT ks021d BEST32.;
	FORMAT ks021d BEST12.;

	INFORMAT ks023a BEST32.;
	FORMAT ks023a BEST12.;

	INFORMAT ks023b BEST32.;
	FORMAT ks023b BEST12.;

	INFORMAT ks023c BEST32.;
	FORMAT ks023c BEST12.;

	INFORMAT ks023crnd BEST32.;
	FORMAT ks023crnd BEST12.;

	INFORMAT ks023d BEST32.;
	FORMAT ks023d BEST12.;

	INFORMAT ks004a3m BEST32.;
	FORMAT ks004a3m BEST12.;

	INFORMAT ksrcom $222.;
	FORMAT ksrcom $222.;

	INFORMAT kslcom $222.;
	FORMAT kslcom $222.;

	INFORMAT ks004a BEST32.;
	FORMAT ks004a BEST12.;

	INFORMAT auto_id_KneStr BEST32.;
	FORMAT auto_id_KneStr BEST12.;

	INFORMAT ks002 BEST32.;
	FORMAT ks002 BEST12.;

	INFORMAT ks009 BEST32.;
	FORMAT ks009 BEST12.;

	INFORMAT ks009a BEST32.;
	FORMAT ks009a BEST12.;

	INFORMAT ks009b BEST32.;
	FORMAT ks009b BEST12.;

	INFORMAT ksdate2 YYMMDD10.;
	FORMAT ksdate2 YYMMDD10.;

	INFORMAT kstid2 BEST32.;
	FORMAT kstid2 BEST12.;

	INFORMAT ks012a BEST32.;
	FORMAT ks012a BEST12.;

	INFORMAT ks012b BEST32.;
	FORMAT ks012b BEST12.;

	INFORMAT ks012c BEST32.;
	FORMAT ks012c BEST12.;

	INFORMAT ks012d BEST32.;
	FORMAT ks012d BEST12.;

	INFORMAT ksdate3 YYMMDD10.;
	FORMAT ksdate3 YYMMDD10.;

	INFORMAT kstid3 BEST32.;
	FORMAT kstid3 BEST12.;

	INFORMAT ks022a BEST32.;
	FORMAT ks022a BEST12.;

	INFORMAT ks022b BEST32.;
	FORMAT ks022b BEST12.;

	INFORMAT ks022c BEST32.;
	FORMAT ks022c BEST12.;

	INFORMAT ks022d BEST32.;
	FORMAT ks022d BEST12.;

	INFORMAT crf_parent_name_KneStr $18.;
	FORMAT crf_parent_name_KneStr $18.;

	INFORMAT study_name_KneStr $4.;
	FORMAT study_name_KneStr $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_KneStr
		obsdate_ksdate
		blank_KneStr
		kstid
		ks001
		ks003
		ks004
		ks005
		ks005a
		ks005b
		ks005c
		ks006
		ks006a
		ks007
		ks007a
		ks024
		ks024a
		ks024b
		ks008
		ks025
		ks025a
		ks025b
		ks025c
		ks025d
		ks025e
		ks010a
		ks010b
		ks010c
		ks011a
		ks011b
		ks011brnd
		ks011c
		ks011crnd
		ks011d
		ks013a
		ks013b
		ks013c
		ks013brnd
		ks013d
		ks020a
		ks020b
		ks020c
		ks021a
		ks021b
		ks021brnd
		ks021c
		ks021crnd
		ks021d
		ks023a
		ks023b
		ks023c
		ks023crnd
		ks023d
		ks004a3m
		ksrcom
		kslcom
		ks004a
		auto_id_KneStr
		ks002
		ks009
		ks009a
		ks009b
		ksdate2
		kstid2
		ks012a
		ks012b
		ks012c
		ks012d
		ksdate3
		kstid3
		ks022a
		ks022b
		ks022c
		ks022d
		crf_parent_name_KneStr
		study_name_KneStr
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
		crf_version_KneStr = "CRF Version"
		obsdate_ksdate = "Date Completed"
		blank_KneStr = "Blank Form"
		kstid = "Tester ID"
		ks001 = "Does BP during PE exceed 220/115"
		ks003 = "Ever been told you had aneurysm in the brain"
		ks004 = "Told you had a cerebral hemmorage in the last 6 months"
		ks005 = "Have had knee surgery"
		ks005a = "Surgery on right left or both"
		ks005b = "Right knee surgery"
		ks005c = "Left knee surgery"
		ks006 = "Had an injury that made one leg weaker than the other"
		ks006a = "Which leg is stronger"
		ks007 = "Difficult to bend or straighten knee"
		ks007a = "Which knee difficult to bend or straighten"
		ks024 = "Do you have any pain in your knee when you walk up or down stairs"
		ks024a = "Which knee has pain when walking up or down stairs"
		ks024b = "How often do you have pain when walking up or down stairs"
		ks008 = "Prior year which leg tested"
		ks025 = "Do you have any pain now"
		ks025a = "Low back pain"
		ks025b = "Right hip pain"
		ks025c = "Left hip pain"
		ks025d = "Right knee pain"
		ks025e = "Left knee pain"
		ks010a = "Right seat bottom depth"
		ks010b = "Right lever arm"
		ks010c = "Right limb weight"
		ks011a = "Right leg concentric test YN"
		ks011b = "Right leg concentric trials at 30 degree"
		ks011brnd = "R concentric 30 degree test terminated"
		ks011c = "Right leg concentric trials at 180 degree"
		ks011crnd = "R concentric 180 degree test terminated"
		ks011d = "Right leg concentric RND"
		ks013a = "Right leg Isometric test YN"
		ks013b = "Right leg Isometric trials at 120 degree"
		ks013c = "Right leg Isometric trials at 140 degree"
		ks013brnd = "R Isometric test terminated"
		ks013d = "Right leg Isometric RND"
		ks020a = "Left seat bottom depth"
		ks020b = "Left lever arm"
		ks020c = "Left limb weight"
		ks021a = "Left leg concentric test YN"
		ks021b = "Left leg concentric trials at 30 degree"
		ks021brnd = "L concentric 30 degree test terminated"
		ks021c = "Left leg concentric trials at 180 degree"
		ks021crnd = "L concentric 180 degree test terminated"
		ks021d = "Left leg concentric RND"
		ks023a = "Left leg Isometric test YN"
		ks023b = "Left leg Isometric trials at 120 degree"
		ks023c = "Left leg Isometric trials at 140 degree"
		ks023crnd = "L Isometric test terminated"
		ks023d = "Left leg Isometric RND"
		ks004a3m = "Past 3 months had low back pain that limited activity for 10 days"
		ksrcom = "Right leg comment"
		kslcom = "Left leg comment"
		ks004a = "Past year had low back pain that limited activity for 10 days"
		auto_id_KneStr = "Unique Teleform Number"
		ks002 = "From DXA is bone mineral density T score of either hip more than four standard deviations below the population mean or less than 0.5 g/cm-squared"
		ks009 = "Any pain in right left or both knees that stopped you from pushing hard"
		ks009a = "Can other side be tested"
		ks009b = "Pain in your knee stopped you from pushing hard"
		ksdate2 = "Date Completed"
		kstid2 = "Tester ID"
		ks012a = "Right leg eccentric test YN"
		ks012b = "Right leg eccentric trials at 30 degree"
		ks012c = "Right leg eccentric trials at 180 degree"
		ks012d = "Right leg eccentric RND"
		ksdate3 = "Date Completed"
		kstid3 = "Tester ID"
		ks022a = "Right leg eccentric test YN"
		ks022b = "Right leg eccentric trials at 30 degree"
		ks022c = "Right leg eccentric trials at 180 degree"
		ks022d = "Right leg eccentric RND"
		crf_parent_name_KneStr = "CRF Parent Name"
		study_name_KneStr = "Study Name"
	;
	FORMAT
		ks001 ks001_.
		ks003 ks003_.
		ks004 ks004_.
		ks005 ks005_.
		ks005a ks005a_.
		ks005b ks005b_.
		ks005c ks005c_.
		ks006 ks006_.
		ks006a ks006a_.
		ks007 ks007_.
		ks007a ks007a_.
		ks024 ks024_.
		ks024a ks024a_.
		ks024b ks024b_.
		ks008 ks008_.
		ks025 ks025_.
		ks025a ks025a_.
		ks025b ks025b_.
		ks025c ks025c_.
		ks025d ks025d_.
		ks025e ks025e_.
		ks011a ks011a_.
		ks011b ks011b_.
		ks011brnd ks011brnd_.
		ks011c ks011c_.
		ks011crnd ks011crnd_.
		ks011d ks011d_.
		ks013a ks013a_.
		ks013b ks013b_.
		ks013c ks013c_.
		ks013brnd ks013brnd_.
		ks013d ks013d_.
		ks021a ks021a_.
		ks021b ks021b_.
		ks021brnd ks021brnd_.
		ks021c ks021c_.
		ks021crnd ks021crnd_.
		ks021d ks021d_.
		ks023a ks023a_.
		ks023b ks023b_.
		ks023c ks023c_.
		ks023crnd ks023crnd_.
		ks023d ks023d_.
		ks004a3m ks004a3m_.
		ks004a ks004a_.
		ks002 ks002_.
		ks009 ks009_.
		ks009a ks009a_.
		ks009b ks009b_.
		ks012a ks012a_.
		ks012b ks012b_.
		ks012c ks012c_.
		ks012d ks012d_.
		ks022a ks022a_.
		ks022b ks022b_.
		ks022c ks022c_.
		ks022d ks022d_.
	;
RUN;


DATA blsa_knee_strength;
    SET WORK.IMPORT;
RUN;
