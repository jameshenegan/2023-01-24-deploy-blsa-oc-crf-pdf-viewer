%let path_to_file = '../data-csv/BLSA_Physical_Exam.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE penotdone_
		1 = 'Exam done'
		3 = 'Exam incomplete'
		4 = 'Exam not done leave form blank'
	;

	VALUE pe03_
		0 = 'No prosthesis'
		1 = 'Partial prosthesis'
		3 = 'Complete prosthesis'
		8 = 'Unknown'
	;

	VALUE pe03m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe06_
		0 = 'Absent'
		1 = 'Present'
		8 = 'Unknown'
	;

	VALUE pe06m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe07_
		0 = 'Symmetrical'
		1 = 'Asymmetrical'
		8 = 'Unknown'
	;

	VALUE pe07m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe08_
		0 = 'Full'
		1 = 'Assymmetrical'
		2 = 'Bilateral abnormal'
		8 = 'Unknown'
	;

	VALUE pe08m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe09_
		0 = 'Full'
		1 = 'Assymmetrical'
		2 = 'Bilateral abnormal'
		8 = 'Unknown'
	;

	VALUE pe09m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe10_
		0 = 'Normal'
		1 = 'Abnormal'
		8 = 'Unknown'
	;

	VALUE pe10m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe11_
		0 = 'No nystagmus'
		1 = 'Nystagmus present'
		8 = 'Unknown'
	;

	VALUE pe11m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe12_
		0 = 'Normal convergence'
		1 = 'Unable to converge'
		8 = 'Unknown'
	;

	VALUE pe12m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe13_
		0 = 'Symmetrical'
		1 = 'Asymmetrical'
		8 = 'Unknown'
	;

	VALUE pe13m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe14_
		0 = 'No murmurs'
		1 = 'Murmur present'
		8 = 'Unknown'
	;

	VALUE pe14m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe15_
		0 = 'Normal (regular)'
		1 = 'Abnormal (irregular)'
		8 = 'Unknown'
	;

	VALUE pe15m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe16_
		0 = 'Absent'
		1 = 'Right side only'
		2 = 'Left side only'
		3 = 'Bilateral'
		8 = 'Unknown'
	;

	VALUE pe16m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe18_
		0 = 'No rales'
		1 = 'Rales at bases'
		2 = 'Rales more than at bases'
		8 = 'Unknown'
	;

	VALUE pe18m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe19_
		0 = 'No wheezing'
		1 = 'Wheezing'
		8 = 'Unknown'
	;

	VALUE pe19m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe23_
		0 = 'Rhythmic'
		1 = 'Dysrhythmic'
		8 = 'Unknown'
	;

	VALUE pe23m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe24m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe28_
		0 = 'No contraction'
		1 = 'Contraction'
		8 = 'Unknown'
	;

	VALUE pe28m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe29_
		0 = 'Stops in < = 5 blinks'
		1 = 'Stops in 6 - 15 blinks'
		2 = 'Persists > 15 blinks'
		8 = 'Unknown'
	;

	VALUE pe29m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe31_
		0 = 'Normal'
		1 = 'Absent'
		2 = 'Slightly brisk'
		3 = 'Hyperreflexia'
		8 = 'Unknown'
	;

	VALUE pe31m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe32_
		0 = 'Normal'
		1 = 'Absent'
		2 = 'Slightly brisk'
		3 = 'Hyperreflexia'
		8 = 'Unknown'
	;

	VALUE pe32m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe41k_
		0 = 'No Pain'
		1 = 'Pain localized to groin or hip'
		2 = 'Pain localized to thigh'
		3 = 'Pain localized to back or shoots down lower extremity'
		8 = 'Unkown'
	;

	VALUE pe41km_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe42k_
		0 = 'No Pain'
		1 = 'Pain localized to groin or hip'
		2 = 'Pain localized to thigh'
		3 = 'Pain localized to back or shoots down lower extremity'
		8 = 'Unkown'
	;

	VALUE pe42km_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe46_
		0 = 'Yes'
		1 = 'No'
		8 = 'Unknown'
	;

	VALUE pe46m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe47_
		0 = 'Yes'
		1 = 'No'
		8 = 'Unknown'
	;

	VALUE pe47m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe48_
		0 = 'Yes'
		1 = 'No'
		8 = 'Unknown'
	;

	VALUE pe48m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe49_
		0 = 'Flexion or nothing'
		1 = 'Dorsiflexion of great toe fanning of toes or both'
		8 = 'Unknown'
	;

	VALUE pe49m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe50_
		0 = 'Yes'
		1 = 'No'
		8 = 'Unknown'
	;

	VALUE pe50m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe51_
		0 = 'Yes'
		1 = 'No'
		8 = 'Unknown'
	;

	VALUE pe51m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe52_
		0 = 'Yes'
		1 = 'No'
		8 = 'Unknown'
	;

	VALUE pe52m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe53_
		0 = 'Yes'
		1 = 'No'
		8 = 'Unknown'
	;

	VALUE pe53m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe61_
		0 = 'Present'
		1 = 'Absent'
		8 = 'Unknown'
	;

	VALUE pe61m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe62_
		0 = 'Present'
		1 = 'Absent'
		8 = 'Unknown'
	;

	VALUE pe62m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe63_
		0 = 'Present'
		1 = 'Absent'
		8 = 'Unknown'
	;

	VALUE pe63m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe64_
		0 = 'Present'
		1 = 'Absent'
		8 = 'Unknown'
	;

	VALUE pe64m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe65_
		0 = 'Absent'
		1 = 'Present'
		8 = 'Unknown'
	;

	VALUE pe65m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe66_
		0 = 'Absent'
		1 = 'Present'
		8 = 'Unknown'
	;

	VALUE pe66m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe67a_
		1 = 'Small'
		2 = 'Regular'
		3 = 'Large'
		4 = 'Thigh'
		8 = 'Unknown'
	;

	VALUE pe67f_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pe67fm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe69_
		0 = 'Absent'
		1 = 'Present'
		8 = 'Unknown'
	;

	VALUE pe69m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe70b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pe70c_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pe70cm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe72_
		0 = 'Absent'
		1 = 'Present'
		8 = 'Unknown'
	;

	VALUE pe72m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe73a_
		0 = 'Yes (record 0 cm)'
		1 = 'No (record distance from wall)'
		8 = 'Unknown'
	;

	VALUE pe73m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe74b_
		0 = 'No'
		1 = 'Yes'
		8 = 'Unknown'
	;

	VALUE pe74bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe81b_
		0 = 'Normal'
		1 = 'Absent'
		2 = 'Slightly brisk'
		3 = 'Hyperreflexia'
		8 = 'Unknown'
	;

	VALUE pe81bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe81a_
		0 = 'Normal'
		1 = 'Absent'
		2 = 'Slightly brisk'
		3 = 'Hyperreflexia'
		8 = 'Unknown'
	;

	VALUE pe81am_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe83_
		0 = 'None'
		1 = 'Trace pitting'
		2 = 'Very obvious pitting'
		8 = 'Unknown'
	;

	VALUE pe83m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe90m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe91a_
		1 = 'Above elbow'
		2 = 'Below elbow'
		3 = 'Metacarpal'
		4 = 'Digits'
	;

	VALUE pe91b_
		1 = 'Above elbow'
		2 = 'Below elbow'
		3 = 'Metacarpal'
		4 = 'Digits'
	;

	VALUE pe91c_
		1 = 'Above knee'
		2 = 'Below knee'
		3 = 'Metatarsal'
		4 = 'Digits'
	;

	VALUE pe91d_
		1 = 'Above knee'
		2 = 'Below knee'
		3 = 'Metatarsal'
		4 = 'Digits'
	;

	VALUE pe01m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe02m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe04_PhyExa_
		0 = '0=Unknown'
		1 = '1=Normal appearance of gingival and oral mucosa'
		2 = '2=Mild inflammation'
		3 = '3=Moderate inflammation'
		4 = '4=Severe inflammation'
	;

	VALUE pe04m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe05_
		0 = '0=unknown'
		1 = '1=No easily visible plaque'
		2 = '2=Small amounts of hardly visible plaque'
		3 = '3=Moderate amounts of plaque'
		4 = '4=Abundant amounts of confluent plaque'
	;

	VALUE pe05m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe17_
		0 = 'No pacemaker or ICD'
		1 = 'Pacemaker or ICD present'
		8 = 'Unknown'
	;

	VALUE pe20_
		0 = 'Phase < 6 seconds'
		1 = 'Phase > 6 seconds'
		8 = 'Unknown'
	;

	VALUE pe20m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe21_
		0 = 'Rapid and precise'
		1 = 'Slows down'
		2 = 'Misses target'
		8 = 'Unknown'
	;

	VALUE pe21m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe22_
		0 = 'Rapid and precise'
		1 = 'Slows down'
		2 = 'Misses target'
		8 = 'Unknown'
	;

	VALUE pe22m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe25_
		0 = 'None'
		1 = 'One direction'
		2 = 'Throughout'
		8 = 'Unknown'
	;

	VALUE pe25m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe26_
		0 = 'None'
		1 = 'Present on right'
		2 = 'Present on left'
		3 = 'Present bilaterally'
		8 = 'Unknown'
	;

	VALUE pe26m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe27_
		0 = 'No flexion or adduction'
		1 = 'Reflexive flexion or adduction'
		8 = 'Unknown'
	;

	VALUE pe27m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe30_
		0 = 'No reflexive sucking or puckering'
		1 = 'Reflexive sucking or puckering'
		8 = 'Unknown'
	;

	VALUE pe30m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe33_
		0 = 'No pain'
		1 = 'Pain in any one area'
		8 = 'Unknown'
	;

	VALUE pe33m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe34_
		0 = 'No pain'
		1 = 'Pain in any one area'
		8 = 'Unknown'
	;

	VALUE pe34m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe35a_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe35m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe36a_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe36m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe37_
		0 = 'JVD absent'
		1 = 'JVD present'
		8 = ' Unknown'
	;

	VALUE pe37m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe38_
		0 = 'Absent'
		1 = 'Obvious venous distension to jaw'
		2 = 'Could not evaluate/Valsalva'
		8 = 'Unknown'
	;

	VALUE pe38m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe39b_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe39bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe39d_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe39dm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe40b_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe40bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe40d_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe40dm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe41a_
		0 = 'No crepitus detected'
		1 = 'Crepitus present'
		8 = 'Unknown'
	;

	VALUE pe41am_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe41b_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe41bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe41d_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe41dm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe41e_
		0 = '0 degrees'
		1 = 'Contracture'
		2 = 'Hypertension'
		8 = 'Unknown'
	;

	VALUE pe41em_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe41f_
		0 = 'No effusion detected'
		1 = 'Effusion present'
		8 = 'Unknown'
	;

	VALUE pe41fm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe41g_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe41gm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe41h_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe41hm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe42a_
		0 = 'No crepitus detected'
		1 = 'Crepitus present'
		8 = 'Unknown'
	;

	VALUE pe42am_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe42b_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe42bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe42d_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe42dm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe42e_
		0 = '0 degrees'
		1 = 'Contracture'
		2 = 'Hypertension'
		8 = 'Unknown'
	;

	VALUE pe42em_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe42f_
		0 = 'No effusion detected'
		1 = 'Effusion present'
		8 = 'Unknown'
	;

	VALUE pe42fm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe42g_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe42gm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe42h_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe42hm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe43_
		0 = 'Able'
		1 = 'Unable'
		8 = 'Unknown'
	;

	VALUE pe43m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe44_
		0 = 'Normal'
		1 = 'Absent'
		2 = 'Slightly brisk'
		3 = 'Hyperreflexia'
		8 = 'Unknown'
	;

	VALUE pe44m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe45_
		0 = 'Normal'
		1 = 'Absent'
		2 = 'Slightly brisk'
		3 = 'Hyperreflexia'
		8 = 'Unknown'
	;

	VALUE pe45m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe55_
		0 = 'Movements rhythmic'
		1 = 'Movements not rhythmic'
		8 = 'Unknown'
	;

	VALUE pe55m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe57_
		0 = 'Movements rhythmic'
		1 = 'Movements not rhythmic'
		8 = 'Unknown'
	;

	VALUE pe57m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe58_
		0 = 'Grasps thumb'
		1 = 'Unable to grasp thumb'
		8 = 'Unknown'
	;

	VALUE pe58m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe59_
		0 = 'Grasps thumb'
		1 = 'Unable to grasp thumb'
		8 = 'Unknown'
	;

	VALUE pe59m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe60_
		0 = 'Grasps thumb'
		1 = 'Unable to grasp thumb'
		8 = 'Unknown'
	;

	VALUE pe60m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe68a_
		0 = '0 degrees'
		8 = 'Unknown'
	;

	VALUE pe68am_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe68b_
		0 = '0 degrees'
		8 = 'Unknown'
	;

	VALUE pe68bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe74d_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe74dm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe75a_
		0 = 'Fully able'
		1 = 'Partially able'
		2 = 'Unable'
		8 = 'Unknown'
	;

	VALUE pe75am_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe75b_
		0 = 'Fully able'
		1 = 'Partially able'
		2 = 'Unable'
		8 = 'Unknown'
	;

	VALUE pe75bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe76a_
		0 = 'Fully able'
		1 = 'Partially able'
		2 = 'Unable'
		8 = 'Unknown'
	;

	VALUE pe76am_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe76b_
		0 = 'Fully able'
		1 = 'Partially able'
		2 = 'Unable'
		8 = 'Unknown'
	;

	VALUE pe76bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe77a_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe77am_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe77b_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe77bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe78a_
		0 = 'All points > 3 lbs'
		8 = 'Unknown'
	;

	VALUE pe78am_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe79b_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe79bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe79d_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe79dm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe80b_
		0 = 'No pain'
		1 = 'Pain present'
		8 = 'Unknown'
	;

	VALUE pe80bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe82_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pe82a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pe82b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pe82c_
		0 = 'NO'
		1 = 'YES Severe requiring analgesics'
		8 = 'Unknown'
	;

	VALUE pe82cm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe82d_
		0 = '0'
		1 = '1'
		10 = '10'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		77 = 'Refused'
		8 = '8'
		88 = 'Unknown'
		9 = '9'
	;

	VALUE pe84_
		0 = 'None'
		1 = 'Ankle only'
		2 = 'More than ankle'
		8 = 'Unknown'
	;

	VALUE pe84m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe85_
		0 = 'None'
		1 = 'Ankle only'
		2 = 'More than ankle'
		8 = 'Unknown'
	;

	VALUE pe85m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe86_
		0 = 'No ulcers or only ulcers from trauma'
		1 = 'Single ulcer'
		2 = 'Multiple ulcers'
		8 = 'Unknown'
	;

	VALUE pe86m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe87_
		0 = 'No ulcers no healed ulceration go to inspection'
		1 = 'No ative ulcer but healed ulceration present go to inspection'
		2 = 'Open ulcer(s) largest ulcer is < 2 cm diameter'
		3 = 'Open ulcer(s) largest ulcer is = > 2 cm diameter'
		8 = 'Unknown'
	;

	VALUE pe87m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe88_
		0 = 'Ulcer(s) for < 3 mo'
		1 = 'Ulcer(s) for = > 3 mo'
		8 = 'Unknown'
	;

	VALUE pe88m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe89_
		1 = 'Has first ulcer not recurrent'
		2 = 'Has ulcer first recurrence'
		3 = 'Has ulcer more than once'
		8 = 'Unknown'
	;

	VALUE pe89m_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe71aa_
		0 = 'All normal'
		8 = 'Unknown'
	;

	VALUE pe71am_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe71ba_
		0 = 'All normal'
		8 = 'Unknown'
	;

	VALUE pe71bm_
		555 = '555 - Physical problems'
		666 = '666 - Mental problems'
		777 = '777 - Both Physical and Mental problems'
		888 = '888 - Refused but could do'
		999 = '999 - Technical Problems'
	;

	VALUE pe70d_
		0 = 'Standing'
		1 = 'Sitting'
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

	INFORMAT crf_version_PhyExa $10.;
	FORMAT crf_version_PhyExa $10.;

	INFORMAT obsdate_pedate YYMMDD10.;
	FORMAT obsdate_pedate YYMMDD10.;

	INFORMAT blank_PhyExa $1.;
	FORMAT blank_PhyExa $1.;

	INFORMAT petrid BEST32.;
	FORMAT petrid BEST12.;

	INFORMAT penotdone BEST32.;
	FORMAT penotdone BEST12.;

	INFORMAT pe03 BEST32.;
	FORMAT pe03 BEST12.;

	INFORMAT pe03m BEST32.;
	FORMAT pe03m BEST12.;

	INFORMAT pe06 BEST32.;
	FORMAT pe06 BEST12.;

	INFORMAT pe06m BEST32.;
	FORMAT pe06m BEST12.;

	INFORMAT pe07 BEST32.;
	FORMAT pe07 BEST12.;

	INFORMAT pe07m BEST32.;
	FORMAT pe07m BEST12.;

	INFORMAT pe08 BEST32.;
	FORMAT pe08 BEST12.;

	INFORMAT pe08m BEST32.;
	FORMAT pe08m BEST12.;

	INFORMAT pe09 BEST32.;
	FORMAT pe09 BEST12.;

	INFORMAT pe09m BEST32.;
	FORMAT pe09m BEST12.;

	INFORMAT pe10 BEST32.;
	FORMAT pe10 BEST12.;

	INFORMAT pe10m BEST32.;
	FORMAT pe10m BEST12.;

	INFORMAT pe11 BEST32.;
	FORMAT pe11 BEST12.;

	INFORMAT pe11m BEST32.;
	FORMAT pe11m BEST12.;

	INFORMAT pe12 BEST32.;
	FORMAT pe12 BEST12.;

	INFORMAT pe12m BEST32.;
	FORMAT pe12m BEST12.;

	INFORMAT pe13 BEST32.;
	FORMAT pe13 BEST12.;

	INFORMAT pe13m BEST32.;
	FORMAT pe13m BEST12.;

	INFORMAT pe14 BEST32.;
	FORMAT pe14 BEST12.;

	INFORMAT pe14m BEST32.;
	FORMAT pe14m BEST12.;

	INFORMAT pe15 BEST32.;
	FORMAT pe15 BEST12.;

	INFORMAT pe15m BEST32.;
	FORMAT pe15m BEST12.;

	INFORMAT pe16 BEST32.;
	FORMAT pe16 BEST12.;

	INFORMAT pe16m BEST32.;
	FORMAT pe16m BEST12.;

	INFORMAT pe18 BEST32.;
	FORMAT pe18 BEST12.;

	INFORMAT pe18m BEST32.;
	FORMAT pe18m BEST12.;

	INFORMAT pe19 BEST32.;
	FORMAT pe19 BEST12.;

	INFORMAT pe19m BEST32.;
	FORMAT pe19m BEST12.;

	INFORMAT pe23 BEST32.;
	FORMAT pe23 BEST12.;

	INFORMAT pe23m BEST32.;
	FORMAT pe23m BEST12.;

	INFORMAT pe24 BEST32.;
	FORMAT pe24 BEST12.;

	INFORMAT pe24dk $1.;
	FORMAT pe24dk $1.;

	INFORMAT pe24m BEST32.;
	FORMAT pe24m BEST12.;

	INFORMAT pe28 BEST32.;
	FORMAT pe28 BEST12.;

	INFORMAT pe28m BEST32.;
	FORMAT pe28m BEST12.;

	INFORMAT pe29 BEST32.;
	FORMAT pe29 BEST12.;

	INFORMAT pe29m BEST32.;
	FORMAT pe29m BEST12.;

	INFORMAT pe31 BEST32.;
	FORMAT pe31 BEST12.;

	INFORMAT pe31m BEST32.;
	FORMAT pe31m BEST12.;

	INFORMAT pe32 BEST32.;
	FORMAT pe32 BEST12.;

	INFORMAT pe32m BEST32.;
	FORMAT pe32m BEST12.;

	INFORMAT pe41k BEST32.;
	FORMAT pe41k BEST12.;

	INFORMAT pe41km BEST32.;
	FORMAT pe41km BEST12.;

	INFORMAT pe42k BEST32.;
	FORMAT pe42k BEST12.;

	INFORMAT pe42km BEST32.;
	FORMAT pe42km BEST12.;

	INFORMAT pe46 BEST32.;
	FORMAT pe46 BEST12.;

	INFORMAT pe46m BEST32.;
	FORMAT pe46m BEST12.;

	INFORMAT pe47 BEST32.;
	FORMAT pe47 BEST12.;

	INFORMAT pe47m BEST32.;
	FORMAT pe47m BEST12.;

	INFORMAT pe48 BEST32.;
	FORMAT pe48 BEST12.;

	INFORMAT pe48m BEST32.;
	FORMAT pe48m BEST12.;

	INFORMAT pe49 BEST32.;
	FORMAT pe49 BEST12.;

	INFORMAT pe49m BEST32.;
	FORMAT pe49m BEST12.;

	INFORMAT pe50 BEST32.;
	FORMAT pe50 BEST12.;

	INFORMAT pe50m BEST32.;
	FORMAT pe50m BEST12.;

	INFORMAT pe51 BEST32.;
	FORMAT pe51 BEST12.;

	INFORMAT pe51m BEST32.;
	FORMAT pe51m BEST12.;

	INFORMAT pe52 BEST32.;
	FORMAT pe52 BEST12.;

	INFORMAT pe52m BEST32.;
	FORMAT pe52m BEST12.;

	INFORMAT pe53 BEST32.;
	FORMAT pe53 BEST12.;

	INFORMAT pe53m BEST32.;
	FORMAT pe53m BEST12.;

	INFORMAT pe61 BEST32.;
	FORMAT pe61 BEST12.;

	INFORMAT pe61m BEST32.;
	FORMAT pe61m BEST12.;

	INFORMAT pe62 BEST32.;
	FORMAT pe62 BEST12.;

	INFORMAT pe62m BEST32.;
	FORMAT pe62m BEST12.;

	INFORMAT pe63 BEST32.;
	FORMAT pe63 BEST12.;

	INFORMAT pe63m BEST32.;
	FORMAT pe63m BEST12.;

	INFORMAT pe64 BEST32.;
	FORMAT pe64 BEST12.;

	INFORMAT pe64m BEST32.;
	FORMAT pe64m BEST12.;

	INFORMAT pe65 BEST32.;
	FORMAT pe65 BEST12.;

	INFORMAT pe65m BEST32.;
	FORMAT pe65m BEST12.;

	INFORMAT pe66 BEST32.;
	FORMAT pe66 BEST12.;

	INFORMAT pe66m BEST32.;
	FORMAT pe66m BEST12.;

	INFORMAT pe67a BEST32.;
	FORMAT pe67a BEST12.;

	INFORMAT pe67b BEST32.;
	FORMAT pe67b BEST12.;

	INFORMAT pe67c1 $1.;
	FORMAT pe67c1 $1.;

	INFORMAT pe67c2 $1.;
	FORMAT pe67c2 $1.;

	INFORMAT pe67c3 $1.;
	FORMAT pe67c3 $1.;

	INFORMAT pe67c4 $1.;
	FORMAT pe67c4 $1.;

	INFORMAT pe67c5 $1.;
	FORMAT pe67c5 $1.;

	INFORMAT pe67c6 $1.;
	FORMAT pe67c6 $1.;

	INFORMAT pe67sr1 BEST32.;
	FORMAT pe67sr1 BEST12.;

	INFORMAT pe67dr1 BEST32.;
	FORMAT pe67dr1 BEST12.;

	INFORMAT pe67sl1 BEST32.;
	FORMAT pe67sl1 BEST12.;

	INFORMAT pe67dl1 BEST32.;
	FORMAT pe67dl1 BEST12.;

	INFORMAT pe67sr2 BEST32.;
	FORMAT pe67sr2 BEST12.;

	INFORMAT pe67dr2 BEST32.;
	FORMAT pe67dr2 BEST12.;

	INFORMAT pe67sl2 BEST32.;
	FORMAT pe67sl2 BEST12.;

	INFORMAT pe67dl2 BEST32.;
	FORMAT pe67dl2 BEST12.;

	INFORMAT pe67sr3 BEST32.;
	FORMAT pe67sr3 BEST12.;

	INFORMAT pe67dr3 BEST32.;
	FORMAT pe67dr3 BEST12.;

	INFORMAT pe67sl3 BEST32.;
	FORMAT pe67sl3 BEST12.;

	INFORMAT pe67dl3 BEST32.;
	FORMAT pe67dl3 BEST12.;

	INFORMAT pe67hrt BEST32.;
	FORMAT pe67hrt BEST12.;

	INFORMAT pe67f BEST32.;
	FORMAT pe67f BEST12.;

	INFORMAT pe67fm BEST32.;
	FORMAT pe67fm BEST12.;

	INFORMAT pe69 BEST32.;
	FORMAT pe69 BEST12.;

	INFORMAT pe69m BEST32.;
	FORMAT pe69m BEST12.;

	INFORMAT pe70sbp BEST32.;
	FORMAT pe70sbp BEST12.;

	INFORMAT pe70dbp BEST32.;
	FORMAT pe70dbp BEST12.;

	INFORMAT pe70hrt BEST32.;
	FORMAT pe70hrt BEST12.;

	INFORMAT pe70b BEST32.;
	FORMAT pe70b BEST12.;

	INFORMAT pe70c BEST32.;
	FORMAT pe70c BEST12.;

	INFORMAT pe70cm BEST32.;
	FORMAT pe70cm BEST12.;

	INFORMAT pe72 BEST32.;
	FORMAT pe72 BEST12.;

	INFORMAT pe72m BEST32.;
	FORMAT pe72m BEST12.;

	INFORMAT pe73a BEST32.;
	FORMAT pe73a BEST12.;

	INFORMAT pe73m BEST32.;
	FORMAT pe73m BEST12.;

	INFORMAT pe73 BEST32.;
	FORMAT pe73 BEST12.;

	INFORMAT pe74b BEST32.;
	FORMAT pe74b BEST12.;

	INFORMAT pe74bm BEST32.;
	FORMAT pe74bm BEST12.;

	INFORMAT pe81b BEST32.;
	FORMAT pe81b BEST12.;

	INFORMAT pe81bm BEST32.;
	FORMAT pe81bm BEST12.;

	INFORMAT pe81a BEST32.;
	FORMAT pe81a BEST12.;

	INFORMAT pe81am BEST32.;
	FORMAT pe81am BEST12.;

	INFORMAT pe83 BEST32.;
	FORMAT pe83 BEST12.;

	INFORMAT pe83m BEST32.;
	FORMAT pe83m BEST12.;

	INFORMAT pe90 $1.;
	FORMAT pe90 $1.;

	INFORMAT pe90m BEST32.;
	FORMAT pe90m BEST12.;

	INFORMAT pe91a BEST32.;
	FORMAT pe91a BEST12.;

	INFORMAT pe91a1 $1.;
	FORMAT pe91a1 $1.;

	INFORMAT pe91a2 $1.;
	FORMAT pe91a2 $1.;

	INFORMAT pe91a3 $1.;
	FORMAT pe91a3 $1.;

	INFORMAT pe91a4 $1.;
	FORMAT pe91a4 $1.;

	INFORMAT pe91a5 $1.;
	FORMAT pe91a5 $1.;

	INFORMAT pe91b BEST32.;
	FORMAT pe91b BEST12.;

	INFORMAT pe91b1 $1.;
	FORMAT pe91b1 $1.;

	INFORMAT pe91b2 $1.;
	FORMAT pe91b2 $1.;

	INFORMAT pe91b3 $1.;
	FORMAT pe91b3 $1.;

	INFORMAT pe91b4 $1.;
	FORMAT pe91b4 $1.;

	INFORMAT pe91b5 $1.;
	FORMAT pe91b5 $1.;

	INFORMAT pe91c BEST32.;
	FORMAT pe91c BEST12.;

	INFORMAT pe91c1 $1.;
	FORMAT pe91c1 $1.;

	INFORMAT pe91c2 $1.;
	FORMAT pe91c2 $1.;

	INFORMAT pe91c3 $1.;
	FORMAT pe91c3 $1.;

	INFORMAT pe91c4 $1.;
	FORMAT pe91c4 $1.;

	INFORMAT pe91c5 $1.;
	FORMAT pe91c5 $1.;

	INFORMAT pe91d BEST32.;
	FORMAT pe91d BEST12.;

	INFORMAT pe91d1 $1.;
	FORMAT pe91d1 $1.;

	INFORMAT pe91d2 $1.;
	FORMAT pe91d2 $1.;

	INFORMAT pe91d3 $1.;
	FORMAT pe91d3 $1.;

	INFORMAT pe91d4 $1.;
	FORMAT pe91d4 $1.;

	INFORMAT pe91d5 $1.;
	FORMAT pe91d5 $1.;

	INFORMAT pe92a $1.;
	FORMAT pe92a $1.;

	INFORMAT pe92b $1.;
	FORMAT pe92b $1.;

	INFORMAT pe92c $1.;
	FORMAT pe92c $1.;

	INFORMAT pe92d $1.;
	FORMAT pe92d $1.;

	INFORMAT pe93a $1.;
	FORMAT pe93a $1.;

	INFORMAT pe93b $1.;
	FORMAT pe93b $1.;

	INFORMAT pe93c $1.;
	FORMAT pe93c $1.;

	INFORMAT pe93d $1.;
	FORMAT pe93d $1.;

	INFORMAT auto_id_PhyExa BEST32.;
	FORMAT auto_id_PhyExa BEST12.;

	INFORMAT pe01 BEST32.;
	FORMAT pe01 BEST12.;

	INFORMAT pe01m BEST32.;
	FORMAT pe01m BEST12.;

	INFORMAT pe02 BEST32.;
	FORMAT pe02 BEST12.;

	INFORMAT pe02m BEST32.;
	FORMAT pe02m BEST12.;

	INFORMAT pe04_PhyExa BEST32.;
	FORMAT pe04_PhyExa BEST12.;

	INFORMAT pe04m BEST32.;
	FORMAT pe04m BEST12.;

	INFORMAT pe05 BEST32.;
	FORMAT pe05 BEST12.;

	INFORMAT pe05m BEST32.;
	FORMAT pe05m BEST12.;

	INFORMAT pe17 BEST32.;
	FORMAT pe17 BEST12.;

	INFORMAT pd17m $1.;
	FORMAT pd17m $1.;

	INFORMAT pe20 BEST32.;
	FORMAT pe20 BEST12.;

	INFORMAT pe20m BEST32.;
	FORMAT pe20m BEST12.;

	INFORMAT pe21 BEST32.;
	FORMAT pe21 BEST12.;

	INFORMAT pe21m BEST32.;
	FORMAT pe21m BEST12.;

	INFORMAT pe22 BEST32.;
	FORMAT pe22 BEST12.;

	INFORMAT pe22m BEST32.;
	FORMAT pe22m BEST12.;

	INFORMAT pe25 BEST32.;
	FORMAT pe25 BEST12.;

	INFORMAT pe25m BEST32.;
	FORMAT pe25m BEST12.;

	INFORMAT pe26 BEST32.;
	FORMAT pe26 BEST12.;

	INFORMAT pe26m BEST32.;
	FORMAT pe26m BEST12.;

	INFORMAT pe27 BEST32.;
	FORMAT pe27 BEST12.;

	INFORMAT pe27m BEST32.;
	FORMAT pe27m BEST12.;

	INFORMAT pe30 BEST32.;
	FORMAT pe30 BEST12.;

	INFORMAT pe30m BEST32.;
	FORMAT pe30m BEST12.;

	INFORMAT pe33 BEST32.;
	FORMAT pe33 BEST12.;

	INFORMAT pe33m BEST32.;
	FORMAT pe33m BEST12.;

	INFORMAT pe34 BEST32.;
	FORMAT pe34 BEST12.;

	INFORMAT pe34m BEST32.;
	FORMAT pe34m BEST12.;

	INFORMAT pe35 BEST32.;
	FORMAT pe35 BEST12.;

	INFORMAT pe35a BEST32.;
	FORMAT pe35a BEST12.;

	INFORMAT pe35m BEST32.;
	FORMAT pe35m BEST12.;

	INFORMAT pe36 BEST32.;
	FORMAT pe36 BEST12.;

	INFORMAT pe36a BEST32.;
	FORMAT pe36a BEST12.;

	INFORMAT pe36m BEST32.;
	FORMAT pe36m BEST12.;

	INFORMAT pe37 BEST32.;
	FORMAT pe37 BEST12.;

	INFORMAT pe37m BEST32.;
	FORMAT pe37m BEST12.;

	INFORMAT pe38 BEST32.;
	FORMAT pe38 BEST12.;

	INFORMAT pe38m BEST32.;
	FORMAT pe38m BEST12.;

	INFORMAT pe39a BEST32.;
	FORMAT pe39a BEST12.;

	INFORMAT pe39b BEST32.;
	FORMAT pe39b BEST12.;

	INFORMAT pe39bm BEST32.;
	FORMAT pe39bm BEST12.;

	INFORMAT pe39c BEST32.;
	FORMAT pe39c BEST12.;

	INFORMAT pe39d BEST32.;
	FORMAT pe39d BEST12.;

	INFORMAT pe39dm BEST32.;
	FORMAT pe39dm BEST12.;

	INFORMAT pe40a BEST32.;
	FORMAT pe40a BEST12.;

	INFORMAT pe40b BEST32.;
	FORMAT pe40b BEST12.;

	INFORMAT pe40bm BEST32.;
	FORMAT pe40bm BEST12.;

	INFORMAT pe40c BEST32.;
	FORMAT pe40c BEST12.;

	INFORMAT pe40d BEST32.;
	FORMAT pe40d BEST12.;

	INFORMAT pe40dm BEST32.;
	FORMAT pe40dm BEST12.;

	INFORMAT pe41a BEST32.;
	FORMAT pe41a BEST12.;

	INFORMAT pe41am BEST32.;
	FORMAT pe41am BEST12.;

	INFORMAT pe41b BEST32.;
	FORMAT pe41b BEST12.;

	INFORMAT pe41bm BEST32.;
	FORMAT pe41bm BEST12.;

	INFORMAT pe41c BEST32.;
	FORMAT pe41c BEST12.;

	INFORMAT pe41d BEST32.;
	FORMAT pe41d BEST12.;

	INFORMAT pe41dm BEST32.;
	FORMAT pe41dm BEST12.;

	INFORMAT pe41e BEST32.;
	FORMAT pe41e BEST12.;

	INFORMAT pe41e1 BEST32.;
	FORMAT pe41e1 BEST12.;

	INFORMAT pe41e2 BEST32.;
	FORMAT pe41e2 BEST12.;

	INFORMAT pe41em BEST32.;
	FORMAT pe41em BEST12.;

	INFORMAT pe41f BEST32.;
	FORMAT pe41f BEST12.;

	INFORMAT pe41fm BEST32.;
	FORMAT pe41fm BEST12.;

	INFORMAT pe41g BEST32.;
	FORMAT pe41g BEST12.;

	INFORMAT pe41gm BEST32.;
	FORMAT pe41gm BEST12.;

	INFORMAT pe41h BEST32.;
	FORMAT pe41h BEST12.;

	INFORMAT pe41hm BEST32.;
	FORMAT pe41hm BEST12.;

	INFORMAT pe41j BEST32.;
	FORMAT pe41j BEST12.;

	INFORMAT pe42a BEST32.;
	FORMAT pe42a BEST12.;

	INFORMAT pe42am BEST32.;
	FORMAT pe42am BEST12.;

	INFORMAT pe42b BEST32.;
	FORMAT pe42b BEST12.;

	INFORMAT pe42bm BEST32.;
	FORMAT pe42bm BEST12.;

	INFORMAT pe42c BEST32.;
	FORMAT pe42c BEST12.;

	INFORMAT pe42d BEST32.;
	FORMAT pe42d BEST12.;

	INFORMAT pe42dm BEST32.;
	FORMAT pe42dm BEST12.;

	INFORMAT pe42e BEST32.;
	FORMAT pe42e BEST12.;

	INFORMAT pe42e1 BEST32.;
	FORMAT pe42e1 BEST12.;

	INFORMAT pe42e2 BEST32.;
	FORMAT pe42e2 BEST12.;

	INFORMAT pe42em BEST32.;
	FORMAT pe42em BEST12.;

	INFORMAT pe42f BEST32.;
	FORMAT pe42f BEST12.;

	INFORMAT pe42fm BEST32.;
	FORMAT pe42fm BEST12.;

	INFORMAT pe42g BEST32.;
	FORMAT pe42g BEST12.;

	INFORMAT pe42gm BEST32.;
	FORMAT pe42gm BEST12.;

	INFORMAT pe42h BEST32.;
	FORMAT pe42h BEST12.;

	INFORMAT pe42hm BEST32.;
	FORMAT pe42hm BEST12.;

	INFORMAT pe42j BEST32.;
	FORMAT pe42j BEST12.;

	INFORMAT pe43 BEST32.;
	FORMAT pe43 BEST12.;

	INFORMAT pe43m BEST32.;
	FORMAT pe43m BEST12.;

	INFORMAT pe44 BEST32.;
	FORMAT pe44 BEST12.;

	INFORMAT pe44m BEST32.;
	FORMAT pe44m BEST12.;

	INFORMAT pe45 BEST32.;
	FORMAT pe45 BEST12.;

	INFORMAT pe45m BEST32.;
	FORMAT pe45m BEST12.;

	INFORMAT pe54 BEST32.;
	FORMAT pe54 BEST12.;

	INFORMAT pe55 BEST32.;
	FORMAT pe55 BEST12.;

	INFORMAT pe55m BEST32.;
	FORMAT pe55m BEST12.;

	INFORMAT pe56 BEST32.;
	FORMAT pe56 BEST12.;

	INFORMAT pe57 BEST32.;
	FORMAT pe57 BEST12.;

	INFORMAT pe57m BEST32.;
	FORMAT pe57m BEST12.;

	INFORMAT pe58 BEST32.;
	FORMAT pe58 BEST12.;

	INFORMAT pe58m BEST32.;
	FORMAT pe58m BEST12.;

	INFORMAT pe59 BEST32.;
	FORMAT pe59 BEST12.;

	INFORMAT pe59m BEST32.;
	FORMAT pe59m BEST12.;

	INFORMAT pe60 BEST32.;
	FORMAT pe60 BEST12.;

	INFORMAT pe60m BEST32.;
	FORMAT pe60m BEST12.;

	INFORMAT pe67c $1.;
	FORMAT pe67c $1.;

	INFORMAT pe68a BEST32.;
	FORMAT pe68a BEST12.;

	INFORMAT pe68a1 BEST32.;
	FORMAT pe68a1 BEST12.;

	INFORMAT pe68a2 BEST32.;
	FORMAT pe68a2 BEST12.;

	INFORMAT pe68am BEST32.;
	FORMAT pe68am BEST12.;

	INFORMAT pe68b BEST32.;
	FORMAT pe68b BEST12.;

	INFORMAT pe68b1 BEST32.;
	FORMAT pe68b1 BEST12.;

	INFORMAT pe68b2 BEST32.;
	FORMAT pe68b2 BEST12.;

	INFORMAT pe68bm BEST32.;
	FORMAT pe68bm BEST12.;

	INFORMAT pe74a BEST32.;
	FORMAT pe74a BEST12.;

	INFORMAT pe74c BEST32.;
	FORMAT pe74c BEST12.;

	INFORMAT pe74d BEST32.;
	FORMAT pe74d BEST12.;

	INFORMAT pe74dm BEST32.;
	FORMAT pe74dm BEST12.;

	INFORMAT pe75a BEST32.;
	FORMAT pe75a BEST12.;

	INFORMAT pe75am BEST32.;
	FORMAT pe75am BEST12.;

	INFORMAT pe75b BEST32.;
	FORMAT pe75b BEST12.;

	INFORMAT pe75bm BEST32.;
	FORMAT pe75bm BEST12.;

	INFORMAT pe76a BEST32.;
	FORMAT pe76a BEST12.;

	INFORMAT pe76am BEST32.;
	FORMAT pe76am BEST12.;

	INFORMAT pe76b BEST32.;
	FORMAT pe76b BEST12.;

	INFORMAT pe76bm BEST32.;
	FORMAT pe76bm BEST12.;

	INFORMAT pe77a BEST32.;
	FORMAT pe77a BEST12.;

	INFORMAT pe77am BEST32.;
	FORMAT pe77am BEST12.;

	INFORMAT pe77b BEST32.;
	FORMAT pe77b BEST12.;

	INFORMAT pe77bm BEST32.;
	FORMAT pe77bm BEST12.;

	INFORMAT pe7801 BEST32.;
	FORMAT pe7801 BEST12.;

	INFORMAT pe7802 BEST32.;
	FORMAT pe7802 BEST12.;

	INFORMAT pe7803 BEST32.;
	FORMAT pe7803 BEST12.;

	INFORMAT pe7804 BEST32.;
	FORMAT pe7804 BEST12.;

	INFORMAT pe7805 BEST32.;
	FORMAT pe7805 BEST12.;

	INFORMAT pe7806 BEST32.;
	FORMAT pe7806 BEST12.;

	INFORMAT pe7807 BEST32.;
	FORMAT pe7807 BEST12.;

	INFORMAT pe7808 BEST32.;
	FORMAT pe7808 BEST12.;

	INFORMAT pe7809 BEST32.;
	FORMAT pe7809 BEST12.;

	INFORMAT pe7810 BEST32.;
	FORMAT pe7810 BEST12.;

	INFORMAT pe7811 BEST32.;
	FORMAT pe7811 BEST12.;

	INFORMAT pe7812 BEST32.;
	FORMAT pe7812 BEST12.;

	INFORMAT pe7813 BEST32.;
	FORMAT pe7813 BEST12.;

	INFORMAT pe7814 BEST32.;
	FORMAT pe7814 BEST12.;

	INFORMAT pe7815 BEST32.;
	FORMAT pe7815 BEST12.;

	INFORMAT pe7816 BEST32.;
	FORMAT pe7816 BEST12.;

	INFORMAT pe7817 BEST32.;
	FORMAT pe7817 BEST12.;

	INFORMAT pe7818 BEST32.;
	FORMAT pe7818 BEST12.;

	INFORMAT pe78a BEST32.;
	FORMAT pe78a BEST12.;

	INFORMAT pe78am BEST32.;
	FORMAT pe78am BEST12.;

	INFORMAT pe79a BEST32.;
	FORMAT pe79a BEST12.;

	INFORMAT pe79b BEST32.;
	FORMAT pe79b BEST12.;

	INFORMAT pe79bm BEST32.;
	FORMAT pe79bm BEST12.;

	INFORMAT pe79c BEST32.;
	FORMAT pe79c BEST12.;

	INFORMAT pe79d BEST32.;
	FORMAT pe79d BEST12.;

	INFORMAT pe79dm BEST32.;
	FORMAT pe79dm BEST12.;

	INFORMAT pe80a BEST32.;
	FORMAT pe80a BEST12.;

	INFORMAT pe80b BEST32.;
	FORMAT pe80b BEST12.;

	INFORMAT pe80bm BEST32.;
	FORMAT pe80bm BEST12.;

	INFORMAT pe82 BEST32.;
	FORMAT pe82 BEST12.;

	INFORMAT pe82a BEST32.;
	FORMAT pe82a BEST12.;

	INFORMAT pe82b BEST32.;
	FORMAT pe82b BEST12.;

	INFORMAT pe82c BEST32.;
	FORMAT pe82c BEST12.;

	INFORMAT pe82cm BEST32.;
	FORMAT pe82cm BEST12.;

	INFORMAT pe82d BEST32.;
	FORMAT pe82d BEST12.;

	INFORMAT pe84 BEST32.;
	FORMAT pe84 BEST12.;

	INFORMAT pe84m BEST32.;
	FORMAT pe84m BEST12.;

	INFORMAT pe85 BEST32.;
	FORMAT pe85 BEST12.;

	INFORMAT pe85m BEST32.;
	FORMAT pe85m BEST12.;

	INFORMAT pe86 BEST32.;
	FORMAT pe86 BEST12.;

	INFORMAT pe86m BEST32.;
	FORMAT pe86m BEST12.;

	INFORMAT pe87 BEST32.;
	FORMAT pe87 BEST12.;

	INFORMAT pe87m BEST32.;
	FORMAT pe87m BEST12.;

	INFORMAT pe88 BEST32.;
	FORMAT pe88 BEST12.;

	INFORMAT pe88m BEST32.;
	FORMAT pe88m BEST12.;

	INFORMAT pe89 BEST32.;
	FORMAT pe89 BEST12.;

	INFORMAT pe89m BEST32.;
	FORMAT pe89m BEST12.;

	INFORMAT pe71at $1.;
	FORMAT pe71at $1.;

	INFORMAT pe71ae $1.;
	FORMAT pe71ae $1.;

	INFORMAT pe71ad $1.;
	FORMAT pe71ad $1.;

	INFORMAT pe71a0t $1.;
	FORMAT pe71a0t $1.;

	INFORMAT pe71a0e $1.;
	FORMAT pe71a0e $1.;

	INFORMAT pe71a0d $1.;
	FORMAT pe71a0d $1.;

	INFORMAT pe71a1t $1.;
	FORMAT pe71a1t $1.;

	INFORMAT pe71a1e $1.;
	FORMAT pe71a1e $1.;

	INFORMAT pe71a1d $1.;
	FORMAT pe71a1d $1.;

	INFORMAT pe71a2t $1.;
	FORMAT pe71a2t $1.;

	INFORMAT pe71a2e $1.;
	FORMAT pe71a2e $1.;

	INFORMAT pe71a2d $1.;
	FORMAT pe71a2d $1.;

	INFORMAT pe71a3t $1.;
	FORMAT pe71a3t $1.;

	INFORMAT pe71a3e $1.;
	FORMAT pe71a3e $1.;

	INFORMAT pe71a3d $1.;
	FORMAT pe71a3d $1.;

	INFORMAT pe71a4t $1.;
	FORMAT pe71a4t $1.;

	INFORMAT pe71a4e $1.;
	FORMAT pe71a4e $1.;

	INFORMAT pe71a4d $1.;
	FORMAT pe71a4d $1.;

	INFORMAT pe71a7t $1.;
	FORMAT pe71a7t $1.;

	INFORMAT pe71a7e $1.;
	FORMAT pe71a7e $1.;

	INFORMAT pe71a7d $1.;
	FORMAT pe71a7d $1.;

	INFORMAT pe71a6t $1.;
	FORMAT pe71a6t $1.;

	INFORMAT pe71a6e $1.;
	FORMAT pe71a6e $1.;

	INFORMAT pe71a6d $1.;
	FORMAT pe71a6d $1.;

	INFORMAT pe71a5t $1.;
	FORMAT pe71a5t $1.;

	INFORMAT pe71a5e $1.;
	FORMAT pe71a5e $1.;

	INFORMAT pe71a5d $1.;
	FORMAT pe71a5d $1.;

	INFORMAT pe71a9t $1.;
	FORMAT pe71a9t $1.;

	INFORMAT pe71a9e $1.;
	FORMAT pe71a9e $1.;

	INFORMAT pe71a9d $1.;
	FORMAT pe71a9d $1.;

	INFORMAT pe71a8t $1.;
	FORMAT pe71a8t $1.;

	INFORMAT pe71a8e $1.;
	FORMAT pe71a8e $1.;

	INFORMAT pe71a8d $1.;
	FORMAT pe71a8d $1.;

	INFORMAT pe71aa BEST32.;
	FORMAT pe71aa BEST12.;

	INFORMAT pe71am BEST32.;
	FORMAT pe71am BEST12.;

	INFORMAT pe71bt $1.;
	FORMAT pe71bt $1.;

	INFORMAT pe71be $1.;
	FORMAT pe71be $1.;

	INFORMAT pe71bd $1.;
	FORMAT pe71bd $1.;

	INFORMAT pe71b0t $1.;
	FORMAT pe71b0t $1.;

	INFORMAT pe71b0e $1.;
	FORMAT pe71b0e $1.;

	INFORMAT pe71b0d $1.;
	FORMAT pe71b0d $1.;

	INFORMAT pe71b1t $1.;
	FORMAT pe71b1t $1.;

	INFORMAT pe71b1e $1.;
	FORMAT pe71b1e $1.;

	INFORMAT pe71b1d $1.;
	FORMAT pe71b1d $1.;

	INFORMAT pe71b2t $1.;
	FORMAT pe71b2t $1.;

	INFORMAT pe71b2e $1.;
	FORMAT pe71b2e $1.;

	INFORMAT pe71b2d $1.;
	FORMAT pe71b2d $1.;

	INFORMAT pe71b3t $1.;
	FORMAT pe71b3t $1.;

	INFORMAT pe71b3e $1.;
	FORMAT pe71b3e $1.;

	INFORMAT pe71b3d $1.;
	FORMAT pe71b3d $1.;

	INFORMAT pe71b4t $1.;
	FORMAT pe71b4t $1.;

	INFORMAT pe71b4e $1.;
	FORMAT pe71b4e $1.;

	INFORMAT pe71b4d $1.;
	FORMAT pe71b4d $1.;

	INFORMAT pe71b7t $1.;
	FORMAT pe71b7t $1.;

	INFORMAT pe71b7e $1.;
	FORMAT pe71b7e $1.;

	INFORMAT pe71b7d $1.;
	FORMAT pe71b7d $1.;

	INFORMAT pe71b6t $1.;
	FORMAT pe71b6t $1.;

	INFORMAT pe71b6e $1.;
	FORMAT pe71b6e $1.;

	INFORMAT pe71b6d $1.;
	FORMAT pe71b6d $1.;

	INFORMAT pe71b5t $1.;
	FORMAT pe71b5t $1.;

	INFORMAT pe71b5e $1.;
	FORMAT pe71b5e $1.;

	INFORMAT pe71b5d $1.;
	FORMAT pe71b5d $1.;

	INFORMAT pe71b9t $1.;
	FORMAT pe71b9t $1.;

	INFORMAT pe71b9e $1.;
	FORMAT pe71b9e $1.;

	INFORMAT pe71b9d $1.;
	FORMAT pe71b9d $1.;

	INFORMAT pe71b8t $1.;
	FORMAT pe71b8t $1.;

	INFORMAT pe71b8e $1.;
	FORMAT pe71b8e $1.;

	INFORMAT pe71b8d $1.;
	FORMAT pe71b8d $1.;

	INFORMAT pe71ba BEST32.;
	FORMAT pe71ba BEST12.;

	INFORMAT pe71bm BEST32.;
	FORMAT pe71bm BEST12.;

	INFORMAT pe70d BEST32.;
	FORMAT pe70d BEST12.;

	INFORMAT crf_parent_name_PhyExa $18.;
	FORMAT crf_parent_name_PhyExa $18.;

	INFORMAT item_group_repeat_PhyExa BEST32.;
	FORMAT item_group_repeat_PhyExa BEST12.;

	INFORMAT pe24dk_8 BEST32.;
	FORMAT pe24dk_8 BEST12.;

	INFORMAT pe67c1_aortic_regurgitation $20.;
	FORMAT pe67c1_aortic_regurgitation $20.;

	INFORMAT pe67c2_hyperthyroidism $15.;
	FORMAT pe67c2_hyperthyroidism $15.;

	INFORMAT pe67c3_av_shunt_left_arm $1.;
	FORMAT pe67c3_av_shunt_left_arm $1.;

	INFORMAT pe67c4_av_shunt_right_arm $1.;
	FORMAT pe67c4_av_shunt_right_arm $1.;

	INFORMAT pe67c5_previous_surgery_right_si $27.;
	FORMAT pe67c5_previous_surgery_right_si $27.;

	INFORMAT pe67c6_previous_surgery_left_sid $26.;
	FORMAT pe67c6_previous_surgery_left_sid $26.;

	INFORMAT pe67c_aortic_regurgitation $20.;
	FORMAT pe67c_aortic_regurgitation $20.;

	INFORMAT pe67c_av_shunt_left_arm $1.;
	FORMAT pe67c_av_shunt_left_arm $1.;

	INFORMAT pe67c_av_shunt_right_arm $1.;
	FORMAT pe67c_av_shunt_right_arm $1.;

	INFORMAT pe67c_hyperthyroidism $15.;
	FORMAT pe67c_hyperthyroidism $15.;

	INFORMAT pe67c_previous_surgery_left_side $26.;
	FORMAT pe67c_previous_surgery_left_side $26.;

	INFORMAT pe67c_previous_surgery_right_sid $27.;
	FORMAT pe67c_previous_surgery_right_sid $27.;

	INFORMAT pe71a0d_1 BEST32.;
	FORMAT pe71a0d_1 BEST12.;

	INFORMAT pe71a0e_1 BEST32.;
	FORMAT pe71a0e_1 BEST12.;

	INFORMAT pe71a0t_1 BEST32.;
	FORMAT pe71a0t_1 BEST12.;

	INFORMAT pe71a1d_1 BEST32.;
	FORMAT pe71a1d_1 BEST12.;

	INFORMAT pe71a1e_1 BEST32.;
	FORMAT pe71a1e_1 BEST12.;

	INFORMAT pe71a1t_1 BEST32.;
	FORMAT pe71a1t_1 BEST12.;

	INFORMAT pe71a2d_1 BEST32.;
	FORMAT pe71a2d_1 BEST12.;

	INFORMAT pe71a2e_1 BEST32.;
	FORMAT pe71a2e_1 BEST12.;

	INFORMAT pe71a2t_1 BEST32.;
	FORMAT pe71a2t_1 BEST12.;

	INFORMAT pe71a3d_1 BEST32.;
	FORMAT pe71a3d_1 BEST12.;

	INFORMAT pe71a3e_1 BEST32.;
	FORMAT pe71a3e_1 BEST12.;

	INFORMAT pe71a3t_1 BEST32.;
	FORMAT pe71a3t_1 BEST12.;

	INFORMAT pe71a4d_1 BEST32.;
	FORMAT pe71a4d_1 BEST12.;

	INFORMAT pe71a4e_1 BEST32.;
	FORMAT pe71a4e_1 BEST12.;

	INFORMAT pe71a4t_1 BEST32.;
	FORMAT pe71a4t_1 BEST12.;

	INFORMAT pe71a5d_1 BEST32.;
	FORMAT pe71a5d_1 BEST12.;

	INFORMAT pe71a5e_1 BEST32.;
	FORMAT pe71a5e_1 BEST12.;

	INFORMAT pe71a5t_1 BEST32.;
	FORMAT pe71a5t_1 BEST12.;

	INFORMAT pe71a6d_1 BEST32.;
	FORMAT pe71a6d_1 BEST12.;

	INFORMAT pe71a6e_1 BEST32.;
	FORMAT pe71a6e_1 BEST12.;

	INFORMAT pe71a6t_1 BEST32.;
	FORMAT pe71a6t_1 BEST12.;

	INFORMAT pe71a7d_1 BEST32.;
	FORMAT pe71a7d_1 BEST12.;

	INFORMAT pe71a7e_1 BEST32.;
	FORMAT pe71a7e_1 BEST12.;

	INFORMAT pe71a7t_1 BEST32.;
	FORMAT pe71a7t_1 BEST12.;

	INFORMAT pe71a8d_1 BEST32.;
	FORMAT pe71a8d_1 BEST12.;

	INFORMAT pe71a8e_1 BEST32.;
	FORMAT pe71a8e_1 BEST12.;

	INFORMAT pe71a8t_1 BEST32.;
	FORMAT pe71a8t_1 BEST12.;

	INFORMAT pe71a9d_1 BEST32.;
	FORMAT pe71a9d_1 BEST12.;

	INFORMAT pe71a9e_1 BEST32.;
	FORMAT pe71a9e_1 BEST12.;

	INFORMAT pe71a9t_1 BEST32.;
	FORMAT pe71a9t_1 BEST12.;

	INFORMAT pe71ad_1 BEST32.;
	FORMAT pe71ad_1 BEST12.;

	INFORMAT pe71ae_1 BEST32.;
	FORMAT pe71ae_1 BEST12.;

	INFORMAT pe71at_1 BEST32.;
	FORMAT pe71at_1 BEST12.;

	INFORMAT pe71b0d_1 BEST32.;
	FORMAT pe71b0d_1 BEST12.;

	INFORMAT pe71b0e_1 BEST32.;
	FORMAT pe71b0e_1 BEST12.;

	INFORMAT pe71b0t_1 BEST32.;
	FORMAT pe71b0t_1 BEST12.;

	INFORMAT pe71b1d_1 BEST32.;
	FORMAT pe71b1d_1 BEST12.;

	INFORMAT pe71b1e_1 BEST32.;
	FORMAT pe71b1e_1 BEST12.;

	INFORMAT pe71b1t_1 BEST32.;
	FORMAT pe71b1t_1 BEST12.;

	INFORMAT pe71b2d_1 BEST32.;
	FORMAT pe71b2d_1 BEST12.;

	INFORMAT pe71b2e_1 BEST32.;
	FORMAT pe71b2e_1 BEST12.;

	INFORMAT pe71b2t_1 BEST32.;
	FORMAT pe71b2t_1 BEST12.;

	INFORMAT pe71b3d_1 BEST32.;
	FORMAT pe71b3d_1 BEST12.;

	INFORMAT pe71b3e_1 BEST32.;
	FORMAT pe71b3e_1 BEST12.;

	INFORMAT pe71b3t_1 BEST32.;
	FORMAT pe71b3t_1 BEST12.;

	INFORMAT pe71b4d_1 BEST32.;
	FORMAT pe71b4d_1 BEST12.;

	INFORMAT pe71b4e_1 BEST32.;
	FORMAT pe71b4e_1 BEST12.;

	INFORMAT pe71b4t_1 BEST32.;
	FORMAT pe71b4t_1 BEST12.;

	INFORMAT pe71b5d_1 BEST32.;
	FORMAT pe71b5d_1 BEST12.;

	INFORMAT pe71b5e_1 BEST32.;
	FORMAT pe71b5e_1 BEST12.;

	INFORMAT pe71b5t_1 BEST32.;
	FORMAT pe71b5t_1 BEST12.;

	INFORMAT pe71b6d_1 BEST32.;
	FORMAT pe71b6d_1 BEST12.;

	INFORMAT pe71b6e_1 BEST32.;
	FORMAT pe71b6e_1 BEST12.;

	INFORMAT pe71b6t_1 BEST32.;
	FORMAT pe71b6t_1 BEST12.;

	INFORMAT pe71b7d_1 BEST32.;
	FORMAT pe71b7d_1 BEST12.;

	INFORMAT pe71b7e_1 BEST32.;
	FORMAT pe71b7e_1 BEST12.;

	INFORMAT pe71b7t_1 BEST32.;
	FORMAT pe71b7t_1 BEST12.;

	INFORMAT pe71b8d_1 BEST32.;
	FORMAT pe71b8d_1 BEST12.;

	INFORMAT pe71b8e_1 BEST32.;
	FORMAT pe71b8e_1 BEST12.;

	INFORMAT pe71b8t_1 BEST32.;
	FORMAT pe71b8t_1 BEST12.;

	INFORMAT pe71b9d_1 BEST32.;
	FORMAT pe71b9d_1 BEST12.;

	INFORMAT pe71b9e_1 BEST32.;
	FORMAT pe71b9e_1 BEST12.;

	INFORMAT pe71b9t_1 BEST32.;
	FORMAT pe71b9t_1 BEST12.;

	INFORMAT pe71bd_1 BEST32.;
	FORMAT pe71bd_1 BEST12.;

	INFORMAT pe71be_1 BEST32.;
	FORMAT pe71be_1 BEST12.;

	INFORMAT pe71bt_1 BEST32.;
	FORMAT pe71bt_1 BEST12.;

	INFORMAT pe90_0 BEST32.;
	FORMAT pe90_0 BEST12.;

	INFORMAT pe90_1 BEST32.;
	FORMAT pe90_1 BEST12.;

	INFORMAT pe90_2 BEST32.;
	FORMAT pe90_2 BEST12.;

	INFORMAT pe90_3 $1.;
	FORMAT pe90_3 $1.;

	INFORMAT pe90_4 $1.;
	FORMAT pe90_4 $1.;

	INFORMAT pe91a1_1 BEST32.;
	FORMAT pe91a1_1 BEST12.;

	INFORMAT pe91a2_1 BEST32.;
	FORMAT pe91a2_1 BEST12.;

	INFORMAT pe91a3_1 BEST32.;
	FORMAT pe91a3_1 BEST12.;

	INFORMAT pe91a4_1 BEST32.;
	FORMAT pe91a4_1 BEST12.;

	INFORMAT pe91a5_1 BEST32.;
	FORMAT pe91a5_1 BEST12.;

	INFORMAT pe91b1_1 $1.;
	FORMAT pe91b1_1 $1.;

	INFORMAT pe91b2_1 BEST32.;
	FORMAT pe91b2_1 BEST12.;

	INFORMAT pe91b3_1 $1.;
	FORMAT pe91b3_1 $1.;

	INFORMAT pe91b4_1 $1.;
	FORMAT pe91b4_1 $1.;

	INFORMAT pe91b5_1 BEST32.;
	FORMAT pe91b5_1 BEST12.;

	INFORMAT pe91c1_1 BEST32.;
	FORMAT pe91c1_1 BEST12.;

	INFORMAT pe91c2_1 BEST32.;
	FORMAT pe91c2_1 BEST12.;

	INFORMAT pe91c3_1 BEST32.;
	FORMAT pe91c3_1 BEST12.;

	INFORMAT pe91c4_1 $1.;
	FORMAT pe91c4_1 $1.;

	INFORMAT pe91c5_1 $1.;
	FORMAT pe91c5_1 $1.;

	INFORMAT pe91d1_1 BEST32.;
	FORMAT pe91d1_1 BEST12.;

	INFORMAT pe91d2_1 BEST32.;
	FORMAT pe91d2_1 BEST12.;

	INFORMAT pe91d3_1 BEST32.;
	FORMAT pe91d3_1 BEST12.;

	INFORMAT pe91d4_1 BEST32.;
	FORMAT pe91d4_1 BEST12.;

	INFORMAT pe91d5_1 BEST32.;
	FORMAT pe91d5_1 BEST12.;

	INFORMAT pe92a_1 BEST32.;
	FORMAT pe92a_1 BEST12.;

	INFORMAT pe92b_1 BEST32.;
	FORMAT pe92b_1 BEST12.;

	INFORMAT pe92c_1 BEST32.;
	FORMAT pe92c_1 BEST12.;

	INFORMAT pe92d_1 BEST32.;
	FORMAT pe92d_1 BEST12.;

	INFORMAT pe93a_1 BEST32.;
	FORMAT pe93a_1 BEST12.;

	INFORMAT pe93b_1 BEST32.;
	FORMAT pe93b_1 BEST12.;

	INFORMAT pe93c_1 BEST32.;
	FORMAT pe93c_1 BEST12.;

	INFORMAT study_name_PhyExa $4.;
	FORMAT study_name_PhyExa $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_PhyExa
		obsdate_pedate
		blank_PhyExa
		petrid
		penotdone
		pe03
		pe03m
		pe06
		pe06m
		pe07
		pe07m
		pe08
		pe08m
		pe09
		pe09m
		pe10
		pe10m
		pe11
		pe11m
		pe12
		pe12m
		pe13
		pe13m
		pe14
		pe14m
		pe15
		pe15m
		pe16
		pe16m
		pe18
		pe18m
		pe19
		pe19m
		pe23
		pe23m
		pe24
		pe24dk
		pe24m
		pe28
		pe28m
		pe29
		pe29m
		pe31
		pe31m
		pe32
		pe32m
		pe41k
		pe41km
		pe42k
		pe42km
		pe46
		pe46m
		pe47
		pe47m
		pe48
		pe48m
		pe49
		pe49m
		pe50
		pe50m
		pe51
		pe51m
		pe52
		pe52m
		pe53
		pe53m
		pe61
		pe61m
		pe62
		pe62m
		pe63
		pe63m
		pe64
		pe64m
		pe65
		pe65m
		pe66
		pe66m
		pe67a
		pe67b
		pe67c1
		pe67c2
		pe67c3
		pe67c4
		pe67c5
		pe67c6
		pe67sr1
		pe67dr1
		pe67sl1
		pe67dl1
		pe67sr2
		pe67dr2
		pe67sl2
		pe67dl2
		pe67sr3
		pe67dr3
		pe67sl3
		pe67dl3
		pe67hrt
		pe67f
		pe67fm
		pe69
		pe69m
		pe70sbp
		pe70dbp
		pe70hrt
		pe70b
		pe70c
		pe70cm
		pe72
		pe72m
		pe73a
		pe73m
		pe73
		pe74b
		pe74bm
		pe81b
		pe81bm
		pe81a
		pe81am
		pe83
		pe83m
		pe90
		pe90m
		pe91a
		pe91a1
		pe91a2
		pe91a3
		pe91a4
		pe91a5
		pe91b
		pe91b1
		pe91b2
		pe91b3
		pe91b4
		pe91b5
		pe91c
		pe91c1
		pe91c2
		pe91c3
		pe91c4
		pe91c5
		pe91d
		pe91d1
		pe91d2
		pe91d3
		pe91d4
		pe91d5
		pe92a
		pe92b
		pe92c
		pe92d
		pe93a
		pe93b
		pe93c
		pe93d
		auto_id_PhyExa
		pe01
		pe01m
		pe02
		pe02m
		pe04_PhyExa
		pe04m
		pe05
		pe05m
		pe17
		pd17m
		pe20
		pe20m
		pe21
		pe21m
		pe22
		pe22m
		pe25
		pe25m
		pe26
		pe26m
		pe27
		pe27m
		pe30
		pe30m
		pe33
		pe33m
		pe34
		pe34m
		pe35
		pe35a
		pe35m
		pe36
		pe36a
		pe36m
		pe37
		pe37m
		pe38
		pe38m
		pe39a
		pe39b
		pe39bm
		pe39c
		pe39d
		pe39dm
		pe40a
		pe40b
		pe40bm
		pe40c
		pe40d
		pe40dm
		pe41a
		pe41am
		pe41b
		pe41bm
		pe41c
		pe41d
		pe41dm
		pe41e
		pe41e1
		pe41e2
		pe41em
		pe41f
		pe41fm
		pe41g
		pe41gm
		pe41h
		pe41hm
		pe41j
		pe42a
		pe42am
		pe42b
		pe42bm
		pe42c
		pe42d
		pe42dm
		pe42e
		pe42e1
		pe42e2
		pe42em
		pe42f
		pe42fm
		pe42g
		pe42gm
		pe42h
		pe42hm
		pe42j
		pe43
		pe43m
		pe44
		pe44m
		pe45
		pe45m
		pe54
		pe55
		pe55m
		pe56
		pe57
		pe57m
		pe58
		pe58m
		pe59
		pe59m
		pe60
		pe60m
		pe67c
		pe68a
		pe68a1
		pe68a2
		pe68am
		pe68b
		pe68b1
		pe68b2
		pe68bm
		pe74a
		pe74c
		pe74d
		pe74dm
		pe75a
		pe75am
		pe75b
		pe75bm
		pe76a
		pe76am
		pe76b
		pe76bm
		pe77a
		pe77am
		pe77b
		pe77bm
		pe7801
		pe7802
		pe7803
		pe7804
		pe7805
		pe7806
		pe7807
		pe7808
		pe7809
		pe7810
		pe7811
		pe7812
		pe7813
		pe7814
		pe7815
		pe7816
		pe7817
		pe7818
		pe78a
		pe78am
		pe79a
		pe79b
		pe79bm
		pe79c
		pe79d
		pe79dm
		pe80a
		pe80b
		pe80bm
		pe82
		pe82a
		pe82b
		pe82c
		pe82cm
		pe82d
		pe84
		pe84m
		pe85
		pe85m
		pe86
		pe86m
		pe87
		pe87m
		pe88
		pe88m
		pe89
		pe89m
		pe71at
		pe71ae
		pe71ad
		pe71a0t
		pe71a0e
		pe71a0d
		pe71a1t
		pe71a1e
		pe71a1d
		pe71a2t
		pe71a2e
		pe71a2d
		pe71a3t
		pe71a3e
		pe71a3d
		pe71a4t
		pe71a4e
		pe71a4d
		pe71a7t
		pe71a7e
		pe71a7d
		pe71a6t
		pe71a6e
		pe71a6d
		pe71a5t
		pe71a5e
		pe71a5d
		pe71a9t
		pe71a9e
		pe71a9d
		pe71a8t
		pe71a8e
		pe71a8d
		pe71aa
		pe71am
		pe71bt
		pe71be
		pe71bd
		pe71b0t
		pe71b0e
		pe71b0d
		pe71b1t
		pe71b1e
		pe71b1d
		pe71b2t
		pe71b2e
		pe71b2d
		pe71b3t
		pe71b3e
		pe71b3d
		pe71b4t
		pe71b4e
		pe71b4d
		pe71b7t
		pe71b7e
		pe71b7d
		pe71b6t
		pe71b6e
		pe71b6d
		pe71b5t
		pe71b5e
		pe71b5d
		pe71b9t
		pe71b9e
		pe71b9d
		pe71b8t
		pe71b8e
		pe71b8d
		pe71ba
		pe71bm
		pe70d
		crf_parent_name_PhyExa
		item_group_repeat_PhyExa
		pe24dk_8
		pe67c1_aortic_regurgitation
		pe67c2_hyperthyroidism
		pe67c3_av_shunt_left_arm
		pe67c4_av_shunt_right_arm
		pe67c5_previous_surgery_right_si
		pe67c6_previous_surgery_left_sid
		pe67c_aortic_regurgitation
		pe67c_av_shunt_left_arm
		pe67c_av_shunt_right_arm
		pe67c_hyperthyroidism
		pe67c_previous_surgery_left_side
		pe67c_previous_surgery_right_sid
		pe71a0d_1
		pe71a0e_1
		pe71a0t_1
		pe71a1d_1
		pe71a1e_1
		pe71a1t_1
		pe71a2d_1
		pe71a2e_1
		pe71a2t_1
		pe71a3d_1
		pe71a3e_1
		pe71a3t_1
		pe71a4d_1
		pe71a4e_1
		pe71a4t_1
		pe71a5d_1
		pe71a5e_1
		pe71a5t_1
		pe71a6d_1
		pe71a6e_1
		pe71a6t_1
		pe71a7d_1
		pe71a7e_1
		pe71a7t_1
		pe71a8d_1
		pe71a8e_1
		pe71a8t_1
		pe71a9d_1
		pe71a9e_1
		pe71a9t_1
		pe71ad_1
		pe71ae_1
		pe71at_1
		pe71b0d_1
		pe71b0e_1
		pe71b0t_1
		pe71b1d_1
		pe71b1e_1
		pe71b1t_1
		pe71b2d_1
		pe71b2e_1
		pe71b2t_1
		pe71b3d_1
		pe71b3e_1
		pe71b3t_1
		pe71b4d_1
		pe71b4e_1
		pe71b4t_1
		pe71b5d_1
		pe71b5e_1
		pe71b5t_1
		pe71b6d_1
		pe71b6e_1
		pe71b6t_1
		pe71b7d_1
		pe71b7e_1
		pe71b7t_1
		pe71b8d_1
		pe71b8e_1
		pe71b8t_1
		pe71b9d_1
		pe71b9e_1
		pe71b9t_1
		pe71bd_1
		pe71be_1
		pe71bt_1
		pe90_0
		pe90_1
		pe90_2
		pe90_3
		pe90_4
		pe91a1_1
		pe91a2_1
		pe91a3_1
		pe91a4_1
		pe91a5_1
		pe91b1_1
		pe91b2_1
		pe91b3_1
		pe91b4_1
		pe91b5_1
		pe91c1_1
		pe91c2_1
		pe91c3_1
		pe91c4_1
		pe91c5_1
		pe91d1_1
		pe91d2_1
		pe91d3_1
		pe91d4_1
		pe91d5_1
		pe92a_1
		pe92b_1
		pe92c_1
		pe92d_1
		pe93a_1
		pe93b_1
		pe93c_1
		study_name_PhyExa
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
		crf_version_PhyExa = "CRF Version"
		obsdate_pedate = "Date Completed"
		blank_PhyExa = "Blank Form"
		petrid = "Tester ID"
		penotdone = "Physical Exam not done"
		pe03 = "Oral prosthesis"
		pe03m = "Oral prosthesis unknown"
		pe06 = "Hearing aid"
		pe06m = "Hearing aid unknown"
		pe07 = "PE_Oropharynx"
		pe07m = "PE_Oropharynx unknown"
		pe08 = "PE_Vertical Ocular Movement"
		pe08m = "PE_VerticalOcularMovement unknown"
		pe09 = "PE_Horizontal Ocular Movement"
		pe09m = "PE_Horizontal Ocular Movement unknown"
		pe10 = "PE_Wavy ocular tracking"
		pe10m = "PE_HorizontalOcularMovement unknown"
		pe11 = "PE_Nystagmus"
		pe11m = "PE_Nystagmus unknown"
		pe12 = "PE_Convergence"
		pe12m = "PE_Convergence unknown"
		pe13 = "PE_Cranial nerve VII Facial Asymmetry"
		pe13m = "PE_Cranial nerve VII Facial Asymmetry unknown"
		pe14 = "Heart murmurs"
		pe14m = "Heart murmurs unknown"
		pe15 = "Heart rhythm"
		pe15m = "Heart rhythm unknown"
		pe16 = "Carotid bruit"
		pe16m = "Carotid bruit unknown"
		pe18 = "Rales"
		pe18m = "Rales unknown"
		pe19 = "Wheezing"
		pe19m = "Wheezing unknown"
		pe23 = "PE_Hand rhythm"
		pe23m = "PE_Hand rhythm unknown"
		pe24 = "PE_Number of hand strikes in 20 seconds"
		pe24dk = "PE_Number of hand strikes unknown"
		pe24m = "PE_Number of hand strikes reason Unknown"
		pe28 = "PE_Palmomental sign"
		pe28m = "PE_Palmomental sign unknown"
		pe29 = "PE_Glabellar sign"
		pe29m = "PE_Glabellar Sign unknown"
		pe31 = "PE_Patellar Reflex Right"
		pe31m = "PE_Patellar Reflex Right unknown"
		pe32 = "PE_Patellar Reflex Left"
		pe32m = "PE_Patellar Reflex Left unknown"
		pe41k = "Right straight leg raise painful"
		pe41km = "Right straight leg raise painful unknown"
		pe42k = "Left straight leg raise painful"
		pe42km = "Left straight leg raise painful unknown"
		pe46 = "PE_Identifies line"
		pe46m = "PE_Identifies line unknown"
		pe47 = "PE_Identifies circle"
		pe47m = "PE_Identifies circle unknown"
		pe48 = "PE_Identifies plus sign"
		pe48m = "PE_Identifies plus sign unknown"
		pe49 = "PE_Babinski sign"
		pe49m = "PE_Babinski Sign unknown"
		pe50 = "PE_Identifies quarter"
		pe50m = "PE_Identifies quarter unknown"
		pe51 = "PE_Identifies safety pin"
		pe51m = "PE_Identifies safety pin unknown"
		pe52 = "PE_Identifies Dime"
		pe52m = "PE_Identifies dime unknown"
		pe53 = "PE_Identifies key"
		pe53m = "PE_Identifies Key unknown"
		pe61 = "PE_Posterior tibial right"
		pe61m = "PE_Posterior tibial right unknown"
		pe62 = "PE_Dorsalis pedis right"
		pe62m = "PE_Dorsalis pedis right unknown"
		pe63 = "PE_Posterior tibial left"
		pe63m = "PE_Posterior tibial left unknown"
		pe64 = "PE_Dorsalis pedis left"
		pe64m = "PE_Dorsalis pedis left unknown"
		pe65 = "PE_Telangiectasis or reticular veins"
		pe65m = "PE_Telangiectasis or reticular veins unknown"
		pe66 = "PE_Varicose veins"
		pe66m = "PE_Varicose veins unknown"
		pe67a = "Arm cuff size"
		pe67b = "Pulse obliteration level"
		pe67c1 = "Aortic regurgitation"
		pe67c2 = "Hyperthyroidism"
		pe67c3 = "AV shunt left arm"
		pe67c4 = "AV shunt right arm"
		pe67c5 = "Previous surgery right side"
		pe67c6 = "Previous surgery left side"
		pe67sr1 = "BP right systolic measurement 1"
		pe67dr1 = "BP right diastolic measurement 1"
		pe67sl1 = "BP left systolic measurement 1"
		pe67dl1 = "BP left diastolic measurement 1"
		pe67sr2 = "BP right systolic measurement 2"
		pe67dr2 = "BP right diastolic measurement 2"
		pe67sl2 = "BP left systolic measurement 2"
		pe67dl2 = "BP left diastolic measurement 2"
		pe67sr3 = "BP right systolic measurement 3"
		pe67dr3 = "BP right diastolic measurement 3"
		pe67sl3 = "BP left systolic measurement 3"
		pe67dl3 = "BP left diastolic measurement 3"
		pe67hrt = "Heart rate"
		pe67f = "Supine blood pressure completed"
		pe67fm = "Supine blood pressure reason not done"
		pe69 = "Romberg sign"
		pe69m = "Romberg sign unknown"
		pe70sbp = "Standing BP systolic"
		pe70dbp = "Standing BP diastolic"
		pe70hrt = "Standing Heart rate"
		pe70b = "Dizziness or light headed with standing"
		pe70c = "Standing blood pressure completed"
		pe70cm = "Standing blood pressure reason not done"
		pe72 = "Pronator Drift"
		pe72m = "Pronator Drift unknown"
		pe73a = "Natural occipital to wall distance"
		pe73m = "Natural occipital distance from wall unknown"
		pe73 = "Natural occipital distance from wall"
		pe74b = "Spinal flexion motion painful"
		pe74bm = "Spinal flexion motion painful unknown"
		pe81b = "Achilles reflex right"
		pe81bm = "Achilles reflex right unknown"
		pe81a = "Achilles reflex left"
		pe81am = "Achilles reflex left unknown"
		pe83 = "Edema score"
		pe83m = "Edema score unknown"
		pe90 = "Extremities inspection"
		pe90m = "Extremities Inspection Reason Unknown"
		pe91a = "Amputation right upper extremity"
		pe91a1 = "Missing 1st finger right"
		pe91a2 = "Missing 2nd finger right"
		pe91a3 = "Missing 3rd finger right"
		pe91a4 = "Missing 4th finger right"
		pe91a5 = "Missing 5th finger right"
		pe91b = "Amputation Left upper extremity"
		pe91b1 = "Missing 1st finger left"
		pe91b2 = "Missing 2nd finger left"
		pe91b3 = "Missing 3rd finger left"
		pe91b4 = "Missing 4th finger left"
		pe91b5 = "Missing 5th finger left"
		pe91c = "Amputation Right Lower extremity"
		pe91c1 = "Missing 1st toe right"
		pe91c2 = "Missing 2nd toe right"
		pe91c3 = "Missing 3rd toe right"
		pe91c4 = "Missing 4th toe right"
		pe91c5 = "Missing 5th toe right"
		pe91d = "Amputation Left Lower extremity"
		pe91d1 = "Missing 1st toe left"
		pe91d2 = "Missing 2nd toe left"
		pe91d3 = "Missing 3rd toe left"
		pe91d4 = "Missing 4th toe left"
		pe91d5 = "Missing 5th toe left"
		pe92a = "Paralysis upper Right extremity"
		pe92b = "Paralysis upper Left extremity"
		pe92c = "Paralysis lower Right extremity"
		pe92d = "Paralysis lower Left extremity"
		pe93a = "Paresis upper Right extremity"
		pe93b = "Paresis upper Left extremity"
		pe93c = "Paresis lower Right extremity"
		pe93d = "Paresis lower Left extremity"
		auto_id_PhyExa = "Unique Teleform Number"
		pe01 = "Total number of teeth"
		pe01m = "Number of teeth unknown"
		pe02 = "Number of teeth in contact"
		pe02m = "Teeth in contact unknown"
		pe04_PhyExa = "Mucosa Score inflammation"
		pe04m = "Mucosa Score unknown"
		pe05 = "Plaque score for teeth and dentures"
		pe05m = "Plaque score unknown"
		pe17 = "Pacemaker or ICD observed"
		pd17m = "Pacemaker unknown"
		pe20 = "Prolonged expiratory phase"
		pe20m = "Unknown Prolonged expiratory phase"
		pe21 = "Dysmetria and freange R hand"
		pe21m = "Dysmetria and freange R hand unknown"
		pe22 = "Dysmetria and freange L hand"
		pe22m = "Dysmetria and freange L hand unknown"
		pe25 = "Muscle tone resistance"
		pe25m = "Muscle tone resistance unknown"
		pe26 = "Tinel's sign"
		pe26m = "Tinel's sign unknown"
		pe27 = "Hoffman sign"
		pe27m = "Hoffman sign unknown"
		pe30 = "Snout sign"
		pe30m = "Snout sign unknown"
		pe33 = "Quadriceps tendonitis R"
		pe33m = "Quadriceps tendonitis R unknown"
		pe34 = "Quadriceps tendonitis L"
		pe34m = "Quadriceps tendonitis L unknown"
		pe35 = "R Hip passive internal range of motion"
		pe35a = "R Hip painful range of motion"
		pe35m = "R Hip painful range of motion unknown"
		pe36 = "L Hip passive internal range of motion"
		pe36a = "L Hip painful range of motion"
		pe36m = "L Hip painful range of motion unknown"
		pe37 = "JVD present at 45 degrees"
		pe37m = "JVD present at 45 degrees unknown"
		pe38 = "Abdominojugular reflux"
		pe38m = "Abdominojugular reflux unknown"
		pe39a = "R ankle dorsiflexion max motion"
		pe39b = "R Painful dorsiflexion max motion"
		pe39bm = "R painful dorsiflexion max motion unknown"
		pe39c = "R plantarflexion max motion"
		pe39d = "R painful plantarflexion max motion"
		pe39dm = "R painful plantarflexion max motion unknown"
		pe40a = "L ankle dorsiflexion max motion"
		pe40b = "L Painful dorsiflexion max motion"
		pe40bm = "L painful dorsiflexion max motion unknown"
		pe40c = "L plantarflexion max motion"
		pe40d = "L painful plantarflexion max motion"
		pe40dm = "L painful plantarflexion max motion unknown"
		pe41a = "R knee crepitus"
		pe41am = "R knee crepitus unknown"
		pe41b = "R knee painful passive motion"
		pe41bm = "R knee painful passive motion unknown"
		pe41c = "R knee maximal flexion range of motion"
		pe41d = "R knee painful max flexion"
		pe41dm = "R knee painful max flexion unknown"
		pe41e = "R knee maximal extension 9 degrees"
		pe41e1 = "R knee Contracture"
		pe41e2 = "R knee Hyperextension"
		pe41em = "R knee max extension unknown"
		pe41f = "R knee effusion"
		pe41fm = "R knee effusion unknown"
		pe41g = "R knee tibiofemoral tenderness"
		pe41gm = "R knee tibiofemoral tenderness unknown"
		pe41h = "R knee patellar grind sign"
		pe41hm = "R knee patellar grind sign unknown"
		pe41j = "R straight leg raise range of motion"
		pe42a = "L knee crepitus"
		pe42am = "L knee crepitus unknown"
		pe42b = "L knee painful passive motion"
		pe42bm = "L knee painful passive motion unknown"
		pe42c = "L knee maximal flexion range of motion"
		pe42d = "L knee painful max flexion"
		pe42dm = "L knee painful max flexion unknown"
		pe42e = "L knee maximal extension 9 degrees"
		pe42e1 = "L knee Contracture"
		pe42e2 = "L knee Hyperextension"
		pe42em = "L knee max extension unknown"
		pe42f = "L knee effusion"
		pe42fm = "L knee effusion unknown"
		pe42g = "L knee tibiofemoral tenderness"
		pe42gm = "L knee tibiofemoral tenderness unknown"
		pe42h = "L knee patellar grind sign"
		pe42hm = "L knee patellar grind sign unknown"
		pe42j = "L straight leg raise range of motion"
		pe43 = "Bridging"
		pe43m = "Bridging unknown"
		pe44 = "Biceps reflex Left"
		pe44m = "Biceps reflex Left unknown"
		pe45 = "Biceps reflex Right"
		pe45m = "Biceps reflex Right unknown"
		pe54 = "Heel to shin time right"
		pe55 = "Rhythm Right"
		pe55m = "Rhythm Right unknown"
		pe56 = "Heel to shin time left"
		pe57 = "Rhythm Left"
		pe57m = "Rhythm Left unknown"
		pe58 = "Grasp thumb above head"
		pe58m = "Grasp thumb above head unknown"
		pe59 = "Grasp thumb at 90 degrees"
		pe59m = "Grasp thumb at 90 degrees unknown"
		pe60 = "Grasp thumb next to hips"
		pe60m = "Grasp thumb next to hips unknown"
		pe67c = "Conditions"
		pe68a = "R femur to tibia standing alignment"
		pe68a1 = "R femur knees pointing out degrees"
		pe68a2 = "R femur knees pointing in degrees"
		pe68am = "R femur to tibia standing alignment unknown"
		pe68b = "L femur to tibia standing alignment"
		pe68b1 = "L femur knees pointing out degrees"
		pe68b2 = "L femur knees pointing in degrees"
		pe68bm = "L femur to tibia standing alignment unknown"
		pe74a = "Spinal flexion range of motion"
		pe74c = "Spinal extension range of motion"
		pe74d = "Spinal extension motion painful"
		pe74dm = "Spinal extension motion painful unknown"
		pe75a = "R shoulder elevation"
		pe75am = "R shoulder elevation unknown"
		pe75b = "L shoulder elevation"
		pe75bm = "L shoulder elevation unknown"
		pe76a = "R shoulder functional external range"
		pe76am = "R shoulder functional external range unknown"
		pe76b = "L shoulder functional external range"
		pe76bm = "L shoulder functional external range unknown"
		pe77a = "R shoulder painful motion"
		pe77am = "R shoulder painful motion unknown"
		pe77b = "L shoulder painful motion"
		pe77bm = "L shoulder painful motion unknown"
		pe7801 = "PE7801"
		pe7802 = "PE7802"
		pe7803 = "PE7803"
		pe7804 = "PE7804"
		pe7805 = "PE7805"
		pe7806 = "PE7806"
		pe7807 = "PE7807"
		pe7808 = "PE7808"
		pe7809 = "PE7809"
		pe7810 = "PE7810"
		pe7811 = "PE7811"
		pe7812 = "PE7812"
		pe7813 = "PE7813"
		pe7814 = "PE7814"
		pe7815 = "PE7815"
		pe7816 = "PE7816"
		pe7817 = "PE7817"
		pe7818 = "PE7818"
		pe78a = "PE78A"
		pe78am = "PE78Am"
		pe79a = "Neck extension range of motion"
		pe79b = "Neck extension painful motion"
		pe79bm = "Neck extension painful motion unknown"
		pe79c = "R neck active rotation"
		pe79d = "R neck rotation painful"
		pe79dm = "R neck rotation painful unknown"
		pe80a = "L neck active rotation"
		pe80b = "L neck rotation painful"
		pe80bm = "L neck rotation painful unknown"
		pe82 = "Pain in lower legs worse when standing"
		pe82a = "Is Pain from arthritis or joint problems"
		pe82b = "Is the pain worse while walking?"
		pe82c = "Need over the counter or prescription medications to relieve the pain"
		pe82cm = "Need analgesics unknown"
		pe82d = "Pain scale 1 to 10"
		pe84 = "Clinical score for pigmentation"
		pe84m = "Clinical score for pigmentation unknown"
		pe85 = "Clinical score for lipodermatosclerosis"
		pe85m = "Clinical score for lipodermatosclerosis unknown"
		pe86 = "Lower extremity ulcer"
		pe86m = "Lower extremity ulcer unknown"
		pe87 = "Clinical score for ulcer size"
		pe87m = "Clinical score for ulcer size unknown"
		pe88 = "Clinical score for ulcer duration"
		pe88m = "Clinical score for ulcer duration unknown"
		pe89 = "Clinical score for ulcer recurrence"
		pe89m = "Clinical score for ulcer recurrence unknown"
		pe71at = "WRIST_R_T"
		pe71ae = "WRIST_L_E"
		pe71ad = "WRIST_R_D"
		pe71a0t = "CMC_R_T"
		pe71a0e = "CMC_R_E"
		pe71a0d = "CMC_R_D"
		pe71a1t = "MCP5_R_T"
		pe71a1e = "MCP5_R_E"
		pe71a1d = "MCP5_R_D"
		pe71a2t = "MCP4_R_T"
		pe71a2e = "MCP4_R_E"
		pe71a2d = "MCP4_R_D"
		pe71a3t = "MCP3_R_T"
		pe71a3e = "MCP3_R_E"
		pe71a3d = "MCP3_R_D"
		pe71a4t = "MCP2_R_T"
		pe71a4e = "MCP2_R_E"
		pe71a4d = "MCP2_R_D"
		pe71a7t = "PIP2_R_T"
		pe71a7e = "PIP2_R_E"
		pe71a7d = "PIP2_R_D"
		pe71a6t = "PIP3_R_T"
		pe71a6e = "PIP3_R_E"
		pe71a6d = "PIP3_R_D"
		pe71a5t = "PIP4_R_T"
		pe71a5e = "PIP4_R_D"
		pe71a5d = "PIP4_R_D"
		pe71a9t = "DIP2_R_T"
		pe71a9e = "DIP2_R_E"
		pe71a9d = "DIP2_R_D"
		pe71a8t = "DIP3_R_T"
		pe71a8e = "DIP3_R_E"
		pe71a8d = "DIP3_R_D"
		pe71aa = "HAND_R_ALL_NORMAL"
		pe71am = "Reason unknown"
		pe71bt = "WRIST_L_T"
		pe71be = "WRIST_L_E"
		pe71bd = "WRIST_L_D"
		pe71b0t = "CMC_L_T"
		pe71b0e = "CMC_L_E"
		pe71b0d = "CMC_L_D"
		pe71b1t = "MCP5_L_T"
		pe71b1e = "MCP5_L_E"
		pe71b1d = "MCP5_L_D"
		pe71b2t = "MCP4_l_T"
		pe71b2e = "MCP4_L_E"
		pe71b2d = "MCP4_L_D"
		pe71b3t = "MCP3_L_T"
		pe71b3e = "MCP3_L_E"
		pe71b3d = "MCP3_L_D"
		pe71b4t = "MCP2_L_T"
		pe71b4e = "MCP2_L_E"
		pe71b4d = "MCP2_L_D"
		pe71b7t = "PIP2_L_T"
		pe71b7e = "PIP2_L_E"
		pe71b7d = "PIP2_L_D"
		pe71b6t = "PIP3_L_T"
		pe71b6e = "PIP3_L_E"
		pe71b6d = "PIP3_L_D"
		pe71b5t = "PIP4_L_T"
		pe71b5e = "PIP4_L_D"
		pe71b5d = "PIP4_L_D"
		pe71b9t = "DIP2_L_T"
		pe71b9e = "DIP2_L_E"
		pe71b9d = "DIP2_L_D"
		pe71b8t = "DIP3_L_T"
		pe71b8e = "DIP3_L_E"
		pe71b8d = "DIP3_L_D"
		pe71ba = "HAND_L_ALL_NORMAL"
		pe71bm = "Reason unknown"
		pe70d = "Measurements done standing or sitting"
		crf_parent_name_PhyExa = "CRF Parent Name"
		item_group_repeat_PhyExa = "Item Group Repeate"
		pe24dk_8 = "PE_Number of hand strikes unknown : Unknown (Checkbox Indicator)"
		pe67c1_aortic_regurgitation = "Aortic regurgitation : Aortic regurgitation (Checkbox Indicator)"
		pe67c2_hyperthyroidism = "Hyperthyroidism : Hyperthyroidism (Checkbox Indicator)"
		pe67c3_av_shunt_left_arm = "AV shunt left arm : AV shunt left arm (Checkbox Indicator)"
		pe67c4_av_shunt_right_arm = "AV shunt right arm : AV shunt right arm (Checkbox Indicator)"
		pe67c5_previous_surgery_right_si = "Previous surgery right side : Previous surgery right side (Checkbox Indicator)"
		pe67c6_previous_surgery_left_sid = "Previous surgery left side : Previous surgery left side (Checkbox Indicator)"
		pe67c_aortic_regurgitation = "Conditions : Aortic regurgitation (Checkbox Indicator)"
		pe67c_av_shunt_left_arm = "Conditions : AV shunt right arm (Checkbox Indicator)"
		pe67c_av_shunt_right_arm = "Conditions : AV shunt left arm (Checkbox Indicator)"
		pe67c_hyperthyroidism = "Conditions : Hyperthyroidism (Checkbox Indicator)"
		pe67c_previous_surgery_left_side = "Conditions : Previous surgery left side (Checkbox Indicator)"
		pe67c_previous_surgery_right_sid = "Conditions : Previous surgery right side (Checkbox Indicator)"
		pe71a0d_1 = "CMC_R_D : CMC_R_D (Checkbox Indicator)"
		pe71a0e_1 = "CMC_R_E : CMC_R_E (Checkbox Indicator)"
		pe71a0t_1 = "CMC_R_T : CMC_R_T (Checkbox Indicator)"
		pe71a1d_1 = "MCP5_R_D : MCP5_R_D (Checkbox Indicator)"
		pe71a1e_1 = "MCP5_R_E : MCP5_R_E (Checkbox Indicator)"
		pe71a1t_1 = "MCP5_R_T : MCP5_R_T (Checkbox Indicator)"
		pe71a2d_1 = "MCP4_R_D : MCP4_R_D (Checkbox Indicator)"
		pe71a2e_1 = "MCP4_R_E : MCP4_R_E (Checkbox Indicator)"
		pe71a2t_1 = "MCP4_R_T : MCP4_R_T (Checkbox Indicator)"
		pe71a3d_1 = "MCP3_R_D : MCP3_R_D (Checkbox Indicator)"
		pe71a3e_1 = "MCP3_R_E : MCP3_R_E (Checkbox Indicator)"
		pe71a3t_1 = "MCP3_R_T : MCP3_R_T (Checkbox Indicator)"
		pe71a4d_1 = "MCP2_R_D : MCP2_R_D (Checkbox Indicator)"
		pe71a4e_1 = "MCP2_R_E : MCP2_R_E (Checkbox Indicator)"
		pe71a4t_1 = "MCP2_R_T : MCP2_R_T (Checkbox Indicator)"
		pe71a5d_1 = "PIP4_R_D : PIP4_R_D (Checkbox Indicator)"
		pe71a5e_1 = "PIP4_R_D : PIP4_R_E (Checkbox Indicator)"
		pe71a5t_1 = "PIP4_R_T : PIP4_R_T (Checkbox Indicator)"
		pe71a6d_1 = "PIP3_R_D : PIP3_R_D (Checkbox Indicator)"
		pe71a6e_1 = "PIP3_R_E : PIP3_R_E (Checkbox Indicator)"
		pe71a6t_1 = "PIP3_R_T : PIP3_R_T (Checkbox Indicator)"
		pe71a7d_1 = "PIP2_R_D : PIP2_R_D (Checkbox Indicator)"
		pe71a7e_1 = "PIP2_R_E : PIP2_R_E (Checkbox Indicator)"
		pe71a7t_1 = "PIP2_R_T : PIP2_R_T (Checkbox Indicator)"
		pe71a8d_1 = "DIP3_R_D : DIP3_R_D (Checkbox Indicator)"
		pe71a8e_1 = "DIP3_R_E : DIP3_R_E (Checkbox Indicator)"
		pe71a8t_1 = "DIP3_R_T : DIP3_R_T (Checkbox Indicator)"
		pe71a9d_1 = "DIP2_R_D : DIP2_R_D (Checkbox Indicator)"
		pe71a9e_1 = "DIP2_R_E : DIP2_R_E (Checkbox Indicator)"
		pe71a9t_1 = "DIP2_R_T : DIP2_R_T (Checkbox Indicator)"
		pe71ad_1 = "WRIST_R_D : WRIST_R_D (Checkbox Indicator)"
		pe71ae_1 = "WRIST_L_E : WRIST_R_E (Checkbox Indicator)"
		pe71at_1 = "WRIST_R_T : WRIST_R_T (Checkbox Indicator)"
		pe71b0d_1 = "CMC_L_D : CMC_L_D (Checkbox Indicator)"
		pe71b0e_1 = "CMC_L_E : CMC_L_E (Checkbox Indicator)"
		pe71b0t_1 = "CMC_L_T : CMC_L_T (Checkbox Indicator)"
		pe71b1d_1 = "MCP5_L_D : MCP5_L_D (Checkbox Indicator)"
		pe71b1e_1 = "MCP5_L_E : MCP5_L_E (Checkbox Indicator)"
		pe71b1t_1 = "MCP5_L_T : MCP5_L_T (Checkbox Indicator)"
		pe71b2d_1 = "MCP4_L_D : MCP4_L_D (Checkbox Indicator)"
		pe71b2e_1 = "MCP4_L_E : MCP4_L_E (Checkbox Indicator)"
		pe71b2t_1 = "MCP4_l_T : MCP4_L_T (Checkbox Indicator)"
		pe71b3d_1 = "MCP3_L_D : MCP3_L_D (Checkbox Indicator)"
		pe71b3e_1 = "MCP3_L_E : MCP3_L_E (Checkbox Indicator)"
		pe71b3t_1 = "MCP3_L_T : MCP3_L_T (Checkbox Indicator)"
		pe71b4d_1 = "MCP2_L_D : MCP2_L_D (Checkbox Indicator)"
		pe71b4e_1 = "MCP2_L_E : MCP2_L_E (Checkbox Indicator)"
		pe71b4t_1 = "MCP2_L_T : MCP2_L_T (Checkbox Indicator)"
		pe71b5d_1 = "PIP4_L_D : PIP4_L_D (Checkbox Indicator)"
		pe71b5e_1 = "PIP4_L_D : PIP4_L_E (Checkbox Indicator)"
		pe71b5t_1 = "PIP4_L_T : PIP4_L_T (Checkbox Indicator)"
		pe71b6d_1 = "PIP3_L_D : PIP3_L_D (Checkbox Indicator)"
		pe71b6e_1 = "PIP3_L_E : PIP3_L_E (Checkbox Indicator)"
		pe71b6t_1 = "PIP3_L_T : PIP3_L_T (Checkbox Indicator)"
		pe71b7d_1 = "PIP2_L_D : PIP2_L_D (Checkbox Indicator)"
		pe71b7e_1 = "PIP2_L_E : PIP2_L_E (Checkbox Indicator)"
		pe71b7t_1 = "PIP2_L_T : PIP2_L_T (Checkbox Indicator)"
		pe71b8d_1 = "DIP3_L_D : DIP3_L_D (Checkbox Indicator)"
		pe71b8e_1 = "DIP3_L_E : DIP3_L_E (Checkbox Indicator)"
		pe71b8t_1 = "DIP3_L_T : DIP3_L_T (Checkbox Indicator)"
		pe71b9d_1 = "DIP2_L_D : DIP2_L_D (Checkbox Indicator)"
		pe71b9e_1 = "DIP2_L_E : DIP2_L_E (Checkbox Indicator)"
		pe71b9t_1 = "DIP2_L_T : DIP2_L_T (Checkbox Indicator)"
		pe71bd_1 = "WRIST_L_D : WRIST_L_D (Checkbox Indicator)"
		pe71be_1 = "WRIST_L_E : WRIST_L_E (Checkbox Indicator)"
		pe71bt_1 = "WRIST_L_T : WRIST_L_T (Checkbox Indicator)"
		pe90_0 = "Extremities inspection : None (Checkbox Indicator)"
		pe90_1 = "Extremities inspection : Amputation (Checkbox Indicator)"
		pe90_2 = "Extremities inspection : Paralysis (Checkbox Indicator)"
		pe90_3 = "Extremities inspection : Paresis (Checkbox Indicator)"
		pe90_4 = "Extremities inspection : Unknown (Checkbox Indicator)"
		pe91a1_1 = "Missing 1st finger right : 1 (Checkbox Indicator)"
		pe91a2_1 = "Missing 2nd finger right : 2 (Checkbox Indicator)"
		pe91a3_1 = "Missing 3rd finger right : 3 (Checkbox Indicator)"
		pe91a4_1 = "Missing 4th finger right : 4 (Checkbox Indicator)"
		pe91a5_1 = "Missing 5th finger right : 5 (Checkbox Indicator)"
		pe91b1_1 = "Missing 1st finger left : 1 (Checkbox Indicator)"
		pe91b2_1 = "Missing 2nd finger left : 2 (Checkbox Indicator)"
		pe91b3_1 = "Missing 3rd finger left : 3 (Checkbox Indicator)"
		pe91b4_1 = "Missing 4th finger left : 4 (Checkbox Indicator)"
		pe91b5_1 = "Missing 5th finger left : 5 (Checkbox Indicator)"
		pe91c1_1 = "Missing 1st toe right : 1 (Checkbox Indicator)"
		pe91c2_1 = "Missing 2nd toe right : 2 (Checkbox Indicator)"
		pe91c3_1 = "Missing 3rd toe right : 3 (Checkbox Indicator)"
		pe91c4_1 = "Missing 4th toe right : 4 (Checkbox Indicator)"
		pe91c5_1 = "Missing 5th toe right : 5 (Checkbox Indicator)"
		pe91d1_1 = "Missing 1st toe left : 1 (Checkbox Indicator)"
		pe91d2_1 = "Missing 2nd toe left : 2 (Checkbox Indicator)"
		pe91d3_1 = "Missing 3rd toe left : 3 (Checkbox Indicator)"
		pe91d4_1 = "Missing 4th toe left : 4 (Checkbox Indicator)"
		pe91d5_1 = "Missing 5th toe left : 5 (Checkbox Indicator)"
		pe92a_1 = "Paralysis upper Right extremity : Right (Checkbox Indicator)"
		pe92b_1 = "Paralysis upper Left extremity : Left (Checkbox Indicator)"
		pe92c_1 = "Paralysis lower Right extremity : Right (Checkbox Indicator)"
		pe92d_1 = "Paralysis lower Left extremity : Left (Checkbox Indicator)"
		pe93a_1 = "Paresis upper Right extremity : Right (Checkbox Indicator)"
		pe93b_1 = "Paresis upper Left extremity : Left (Checkbox Indicator)"
		pe93c_1 = "Paresis lower Right extremity : Right (Checkbox Indicator)"
		study_name_PhyExa = "Study Name"
	;
	FORMAT
		penotdone penotdone_.
		pe03 pe03_.
		pe03m pe03m_.
		pe06 pe06_.
		pe06m pe06m_.
		pe07 pe07_.
		pe07m pe07m_.
		pe08 pe08_.
		pe08m pe08m_.
		pe09 pe09_.
		pe09m pe09m_.
		pe10 pe10_.
		pe10m pe10m_.
		pe11 pe11_.
		pe11m pe11m_.
		pe12 pe12_.
		pe12m pe12m_.
		pe13 pe13_.
		pe13m pe13m_.
		pe14 pe14_.
		pe14m pe14m_.
		pe15 pe15_.
		pe15m pe15m_.
		pe16 pe16_.
		pe16m pe16m_.
		pe18 pe18_.
		pe18m pe18m_.
		pe19 pe19_.
		pe19m pe19m_.
		pe23 pe23_.
		pe23m pe23m_.
		pe24m pe24m_.
		pe28 pe28_.
		pe28m pe28m_.
		pe29 pe29_.
		pe29m pe29m_.
		pe31 pe31_.
		pe31m pe31m_.
		pe32 pe32_.
		pe32m pe32m_.
		pe41k pe41k_.
		pe41km pe41km_.
		pe42k pe42k_.
		pe42km pe42km_.
		pe46 pe46_.
		pe46m pe46m_.
		pe47 pe47_.
		pe47m pe47m_.
		pe48 pe48_.
		pe48m pe48m_.
		pe49 pe49_.
		pe49m pe49m_.
		pe50 pe50_.
		pe50m pe50m_.
		pe51 pe51_.
		pe51m pe51m_.
		pe52 pe52_.
		pe52m pe52m_.
		pe53 pe53_.
		pe53m pe53m_.
		pe61 pe61_.
		pe61m pe61m_.
		pe62 pe62_.
		pe62m pe62m_.
		pe63 pe63_.
		pe63m pe63m_.
		pe64 pe64_.
		pe64m pe64m_.
		pe65 pe65_.
		pe65m pe65m_.
		pe66 pe66_.
		pe66m pe66m_.
		pe67a pe67a_.
		pe67f pe67f_.
		pe67fm pe67fm_.
		pe69 pe69_.
		pe69m pe69m_.
		pe70b pe70b_.
		pe70c pe70c_.
		pe70cm pe70cm_.
		pe72 pe72_.
		pe72m pe72m_.
		pe73a pe73a_.
		pe73m pe73m_.
		pe74b pe74b_.
		pe74bm pe74bm_.
		pe81b pe81b_.
		pe81bm pe81bm_.
		pe81a pe81a_.
		pe81am pe81am_.
		pe83 pe83_.
		pe83m pe83m_.
		pe90m pe90m_.
		pe91a pe91a_.
		pe91b pe91b_.
		pe91c pe91c_.
		pe91d pe91d_.
		pe01m pe01m_.
		pe02m pe02m_.
		pe04_PhyExa pe04_PhyExa_.
		pe04m pe04m_.
		pe05 pe05_.
		pe05m pe05m_.
		pe17 pe17_.
		pe20 pe20_.
		pe20m pe20m_.
		pe21 pe21_.
		pe21m pe21m_.
		pe22 pe22_.
		pe22m pe22m_.
		pe25 pe25_.
		pe25m pe25m_.
		pe26 pe26_.
		pe26m pe26m_.
		pe27 pe27_.
		pe27m pe27m_.
		pe30 pe30_.
		pe30m pe30m_.
		pe33 pe33_.
		pe33m pe33m_.
		pe34 pe34_.
		pe34m pe34m_.
		pe35a pe35a_.
		pe35m pe35m_.
		pe36a pe36a_.
		pe36m pe36m_.
		pe37 pe37_.
		pe37m pe37m_.
		pe38 pe38_.
		pe38m pe38m_.
		pe39b pe39b_.
		pe39bm pe39bm_.
		pe39d pe39d_.
		pe39dm pe39dm_.
		pe40b pe40b_.
		pe40bm pe40bm_.
		pe40d pe40d_.
		pe40dm pe40dm_.
		pe41a pe41a_.
		pe41am pe41am_.
		pe41b pe41b_.
		pe41bm pe41bm_.
		pe41d pe41d_.
		pe41dm pe41dm_.
		pe41e pe41e_.
		pe41em pe41em_.
		pe41f pe41f_.
		pe41fm pe41fm_.
		pe41g pe41g_.
		pe41gm pe41gm_.
		pe41h pe41h_.
		pe41hm pe41hm_.
		pe42a pe42a_.
		pe42am pe42am_.
		pe42b pe42b_.
		pe42bm pe42bm_.
		pe42d pe42d_.
		pe42dm pe42dm_.
		pe42e pe42e_.
		pe42em pe42em_.
		pe42f pe42f_.
		pe42fm pe42fm_.
		pe42g pe42g_.
		pe42gm pe42gm_.
		pe42h pe42h_.
		pe42hm pe42hm_.
		pe43 pe43_.
		pe43m pe43m_.
		pe44 pe44_.
		pe44m pe44m_.
		pe45 pe45_.
		pe45m pe45m_.
		pe55 pe55_.
		pe55m pe55m_.
		pe57 pe57_.
		pe57m pe57m_.
		pe58 pe58_.
		pe58m pe58m_.
		pe59 pe59_.
		pe59m pe59m_.
		pe60 pe60_.
		pe60m pe60m_.
		pe68a pe68a_.
		pe68am pe68am_.
		pe68b pe68b_.
		pe68bm pe68bm_.
		pe74d pe74d_.
		pe74dm pe74dm_.
		pe75a pe75a_.
		pe75am pe75am_.
		pe75b pe75b_.
		pe75bm pe75bm_.
		pe76a pe76a_.
		pe76am pe76am_.
		pe76b pe76b_.
		pe76bm pe76bm_.
		pe77a pe77a_.
		pe77am pe77am_.
		pe77b pe77b_.
		pe77bm pe77bm_.
		pe78a pe78a_.
		pe78am pe78am_.
		pe79b pe79b_.
		pe79bm pe79bm_.
		pe79d pe79d_.
		pe79dm pe79dm_.
		pe80b pe80b_.
		pe80bm pe80bm_.
		pe82 pe82_.
		pe82a pe82a_.
		pe82b pe82b_.
		pe82c pe82c_.
		pe82cm pe82cm_.
		pe82d pe82d_.
		pe84 pe84_.
		pe84m pe84m_.
		pe85 pe85_.
		pe85m pe85m_.
		pe86 pe86_.
		pe86m pe86m_.
		pe87 pe87_.
		pe87m pe87m_.
		pe88 pe88_.
		pe88m pe88m_.
		pe89 pe89_.
		pe89m pe89m_.
		pe71aa pe71aa_.
		pe71am pe71am_.
		pe71ba pe71ba_.
		pe71bm pe71bm_.
		pe70d pe70d_.
	;
RUN;


DATA blsa_physical_exam;
    SET WORK.IMPORT;
RUN;
