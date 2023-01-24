%let path_to_file = '../data-csv/BLSA_Visit_Procedure_Checklist.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE obsdate_data_in_study_manager_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE vttype_
		0 = '(0) Normal'
		1 = '(1) Continuation of previous visit'
	;

	VALUE vt06a_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt06aa_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt06ab_
		1 = 'To be rescheduled'
	;

	VALUE vt52_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt52a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt52b_
		1 = 'To be rescheduled'
	;

	VALUE vt14_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt14a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt14b_
		1 = 'To be rescheduled'
	;

	VALUE vt16_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt16a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt16b_
		1 = 'To be rescheduled'
	;

	VALUE vt19_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt19a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt19b_
		1 = 'To be rescheduled'
	;

	VALUE vt32_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt32a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt32b_
		1 = 'To be rescheduled'
	;

	VALUE vt33_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt33a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt33b_
		1 = 'To be rescheduled'
	;

	VALUE vt42_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt46_
		1 = 'Yes'
		4 = '<70'
		5 = 'Cancer'
		6 = 'Diabetes'
		7 = 'Other Chronic'
		8 = 'Frail'
		9 = 'Other'
	;

	VALUE vt06b_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt06ba_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt06bb_
		1 = 'To be rescheduled'
	;

	VALUE vt06d_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt06da_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt06db_
		1 = 'To be rescheduled'
	;

	VALUE vt06e_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt06ea_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt06eb_
		1 = 'To be rescheduled'
	;

	VALUE vt06g_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt06ga_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt06gb_
		1 = 'To be rescheduled'
	;

	VALUE vt06gc_
		0 = 'nan'
		1 = 'Yes'
	;

	VALUE vt06h_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt06ha_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt06hb_
		1 = 'To be rescheduled'
	;

	VALUE vt07_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt07a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt07b_
		1 = 'To be rescheduled'
	;

	VALUE vt08ac_
		1 = 'TIA or CVA within past 6 mo'
		2 = 'Bilateral carotid bruits'
		3 = 'Neck access problem'
	;

	VALUE vt08a_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt08aa_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt08ab_
		1 = 'To be rescheduled'
	;

	VALUE vt08ba_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt08bb_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt08b_
		1 = 'To be rescheduled'
	;

	VALUE vt08c_
		0 = 'None'
		1 = 'Both sides'
		2 = 'Only Right'
		3 = 'Only Left'
	;

	VALUE vt08ca_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt08cb_
		1 = 'To be rescheduled'
	;

	VALUE vt09a_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt09aa_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt09ab_
		1 = 'To be rescheduled'
	;

	VALUE vt09b_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt09ba_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt10_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt10a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt10b_
		1 = 'To be rescheduled'
	;

	VALUE vt11a_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt11aa_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt11ab_
		1 = 'To be rescheduled'
	;

	VALUE vt11b_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt11ba_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt11bb_
		1 = 'To be rescheduled'
	;

	VALUE vt12_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt12a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt12b_
		1 = 'To be rescheduled'
	;

	VALUE vt15_
		0 = 'None'
		1 = 'Both sides'
		2 = 'Only Right'
		3 = 'Only Left'
	;

	VALUE vt15a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt15b_
		1 = 'To be rescheduled'
	;

	VALUE vt17_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt17a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt17b_
		1 = 'To be rescheduled'
	;

	VALUE vt18_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt18a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt18b_
		1 = 'To be rescheduled'
	;

	VALUE vt20_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt20a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt20b_
		1 = 'To be rescheduled'
	;

	VALUE vt34_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt34a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt34b_
		1 = 'To be rescheduled'
	;

	VALUE vt21_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt21a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt21b_
		1 = 'To be rescheduled'
	;

	VALUE vt22_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt22a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt22b_
		1 = 'To be rescheduled'
	;

	VALUE vt24_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt24a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt24b_
		1 = 'To be rescheduled'
	;

	VALUE vt25_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt25a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt25b_
		1 = 'To be rescheduled'
	;

	VALUE vt26_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt26a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt26b_
		1 = 'To be rescheduled'
	;

	VALUE vt27_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt27a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt27b_
		1 = 'To be rescheduled'
	;

	VALUE vt28_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt28a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt28b_
		1 = 'To be rescheduled'
	;

	VALUE vt29_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt29a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt29b_
		1 = 'To be rescheduled'
	;

	VALUE vt55_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt55a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt55b_
		1 = 'To be rescheduled'
	;

	VALUE vt56_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt56a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt56b_
		1 = 'To be rescheduled'
	;

	VALUE vt66_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt66a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt66b_
		1 = 'To be rescheduled'
	;

	VALUE vt30_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt30a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt30b_
		1 = 'To be rescheduled'
	;

	VALUE vt31_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt31a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt35_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt35a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt35b_
		1 = 'To be rescheduled'
	;

	VALUE vt38_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt38a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt38b_
		1 = 'To be rescheduled'
	;

	VALUE vt40_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt40a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt40b_
		1 = 'To be rescheduled'
	;

	VALUE vt53_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt53a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt53b_
		1 = 'To be rescheduled'
	;

	VALUE vt54_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt54a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt54b_
		1 = 'To be rescheduled'
	;

	VALUE vt67a_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt67b_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt70_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt70a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt41_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt44_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt49_
		0 = 'N/E'
		1 = 'Scheduled'
		2 = 'Info given'
	;

	VALUE vt63_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt71_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt72_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt48b_
		1 = 'To be rescheduled'
	;

	VALUE vt52ad1_2_
		2 = 'Actigraph'
		3 = 'Both'
		4 = 'Actiwatch'
	;

	VALUE vt44rnd_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt63rnd_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt71rnd_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt72rnd_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt48_2_
		1 = 'Done'
		2 = 'Consented'
		3 = 'N/Done'
	;

	VALUE vt48rnd_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE epidermalaging_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE epidermalagrnd_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE cogstate_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE cogstaternd_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE maskworn_VisProChe_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vteyetrdone_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vteyetrrnd_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vteyetrresch_
		1 = 'To be rescheduled'
	;

	VALUE intestinalperm_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE intestinalpermrnd_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt73b_
		1 = 'To be rescheduled'
	;

	VALUE vt59_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt59a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt60_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt60a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt68_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt68a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt74_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt74a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE followup_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vt69_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt69a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt69b_
		1 = 'To be rescheduled'
	;

	VALUE vt75_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt75a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt48_3_
		1 = 'Done'
		2 = 'Consented'
		3 = 'N/Done'
	;

	VALUE vt58_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt09sb_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt09srnd_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vttimea_
		1 = 'am'
		2 = 'pm'
	;

	VALUE vttimeb_
		1 = 'am'
		2 = 'pm'
	;

	VALUE vt03_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt03a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt04a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt04b_
		1 = 'To be rescheduled'
	;

	VALUE vt05a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt05b_
		1 = 'To be rescheduled'
	;

	VALUE vt06c_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt06ca_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt06cb_
		1 = 'To be rescheduled'
	;

	VALUE vt06f_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt06fa_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt06fb_
		1 = 'To be rescheduled'
	;

	VALUE vt13_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt13a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt13b_
		1 = 'To be rescheduled'
	;

	VALUE vt52ad1_
		1 = 'Actiheart'
		2 = 'Actigraph'
		3 = 'Both'
		4 = 'Actiwatch'
	;

	VALUE vt23_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt23a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt23b_
		1 = 'To be rescheduled'
	;

	VALUE vt59b_
		1 = 'To be rescheduled'
	;

	VALUE vt60b_
		1 = 'To be rescheduled'
	;

	VALUE vt64_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt64a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt64b_
		1 = 'To be rescheduled'
	;

	VALUE vt68b_
		1 = 'To be rescheduled'
	;

	VALUE sensoryresch_
		1 = 'To be rescheduled'
	;

	VALUE vt31b_
		1 = 'To be rescheduled'
	;

	VALUE fittsdone_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt47_
		0 = 'N/E'
		1 = 'Done'
		2 = 'Consented'
	;

	VALUE vt61_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt62_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt36_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt36a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt36b_
		1 = 'To be rescheduled'
	;

	VALUE vt37_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt37a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt37b_
		1 = 'To be rescheduled'
	;

	VALUE vt39_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt39a_
		3 = '(3) No Time'
		4 = '(4) Refused'
		5 = '(5) Unable'
		6 = '(6) Equipment problem'
		7 = '(7) No Tester'
		8 = '(8) Not Eligible'
		9 = '(9) Not Scheduled N/A'
	;

	VALUE vt39b_
		1 = 'To be rescheduled'
	;

	VALUE vt43_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt45_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE vt51_
		0 = 'Not done'
		1 = 'Done'
	;

	VALUE acknowledgment_form_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE copy_md_orders_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE orders_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE blsa_consent_hipaa_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE validate_hipaa_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE advanced_directives_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE falls_risk_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE pneumoccoccal_questionnaire_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE pneumoccoccal_screen_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE cytapheresis_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE hiv_consent_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE radiation_exposition_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE ekg_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE holter_monitor_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE height_weight_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE vital_signs_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE fasting_urine_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE urine_24_hours_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE bdnf_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE nan_ping_tubes_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE bhcg_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE hiv_serology_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE blood_draw_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE strength_test_blood_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE ogtt_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE physical_examination_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE finger_tapping_test_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE medical_interview_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE socio_demographic_interview_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE blessed_mental_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE dexa_scan_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE knee_xray_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE hand_xray_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE hand_photo_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE ctscan_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE mri_neuro_imaging_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE grip_strength_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE knee_strength_right_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE knee_strength_left_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE le_physical_performance_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE long_distance_corridor_walk_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE gait_lab_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE early_markers_ad_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE core_cognitive_testing_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE personal_computer_testing_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE emg_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE vibration_sensitivity_nrsv_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE proprioception_test_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE resting_metabolic_rate_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE treadmill_stress_test_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE oxygen_consumption_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE pulmonary_function_test_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE echocardiogram_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE carotid_ultrasound_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE pulse_wave_velocity_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE abi_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE autopsy_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE body_measurements_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE vision_testing_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE vision_stereopsis_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE visual_fields_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE food_frequency_questionnaire_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE food_intake_record_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE progress_note_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE on_study_card_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
	;

	VALUE best_list_
		0 = 'Other'
		1 = 'Fully completed'
		2 = 'Partially completed'
		7 = 'Refused'
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

	INFORMAT crf_version_VisProChe $10.;
	FORMAT crf_version_VisProChe $10.;

	INFORMAT obsdate_data_in_study_manager BEST32.;
	FORMAT obsdate_data_in_study_manager BEST12.;

	INFORMAT vttype BEST32.;
	FORMAT vttype BEST12.;

	INFORMAT blank_VisProChe $1.;
	FORMAT blank_VisProChe $1.;

	INFORMAT vtdate2 YYMMDD10.;
	FORMAT vtdate2 YYMMDD10.;

	INFORMAT vt01 $1.;
	FORMAT vt01 $1.;

	INFORMAT vt04 $1.;
	FORMAT vt04 $1.;

	INFORMAT vt05 $1.;
	FORMAT vt05 $1.;

	INFORMAT vt06a BEST32.;
	FORMAT vt06a BEST12.;

	INFORMAT vt06aa BEST32.;
	FORMAT vt06aa BEST12.;

	INFORMAT vt06ab BEST32.;
	FORMAT vt06ab BEST12.;

	INFORMAT vt52 BEST32.;
	FORMAT vt52 BEST12.;

	INFORMAT vt52a BEST32.;
	FORMAT vt52a BEST12.;

	INFORMAT vt52b BEST32.;
	FORMAT vt52b BEST12.;

	INFORMAT vt14 BEST32.;
	FORMAT vt14 BEST12.;

	INFORMAT vt14a BEST32.;
	FORMAT vt14a BEST12.;

	INFORMAT vt14b BEST32.;
	FORMAT vt14b BEST12.;

	INFORMAT vt16 BEST32.;
	FORMAT vt16 BEST12.;

	INFORMAT vt16a BEST32.;
	FORMAT vt16a BEST12.;

	INFORMAT vt16b BEST32.;
	FORMAT vt16b BEST12.;

	INFORMAT vt19 BEST32.;
	FORMAT vt19 BEST12.;

	INFORMAT vt19a BEST32.;
	FORMAT vt19a BEST12.;

	INFORMAT vt19b BEST32.;
	FORMAT vt19b BEST12.;

	INFORMAT vt32 BEST32.;
	FORMAT vt32 BEST12.;

	INFORMAT vt32a BEST32.;
	FORMAT vt32a BEST12.;

	INFORMAT vt32b BEST32.;
	FORMAT vt32b BEST12.;

	INFORMAT vt33 BEST32.;
	FORMAT vt33 BEST12.;

	INFORMAT vt33a BEST32.;
	FORMAT vt33a BEST12.;

	INFORMAT vt33b BEST32.;
	FORMAT vt33b BEST12.;

	INFORMAT vt42 BEST32.;
	FORMAT vt42 BEST12.;

	INFORMAT vt46 BEST32.;
	FORMAT vt46 BEST12.;

	INFORMAT vt46a $388.;
	FORMAT vt46a $388.;

	INFORMAT cdr $1.;
	FORMAT cdr $1.;

	INFORMAT neuroimaging $1.;
	FORMAT neuroimaging $1.;

	INFORMAT autopsystudy $1.;
	FORMAT autopsystudy $1.;

	INFORMAT reactiontime $1.;
	FORMAT reactiontime $1.;

	INFORMAT reacttimernd $1.;
	FORMAT reacttimernd $1.;

	INFORMAT reacttimeres $1.;
	FORMAT reacttimeres $1.;

	INFORMAT activityscaleq $1.;
	FORMAT activityscaleq $1.;

	INFORMAT epworthss $1.;
	FORMAT epworthss $1.;

	INFORMAT lateraldom $1.;
	FORMAT lateraldom $1.;

	INFORMAT swallowingq $1.;
	FORMAT swallowingq $1.;

	INFORMAT vtdate1 YYMMDD10.;
	FORMAT vtdate1 YYMMDD10.;

	INFORMAT vt06b BEST32.;
	FORMAT vt06b BEST12.;

	INFORMAT vt06ba BEST32.;
	FORMAT vt06ba BEST12.;

	INFORMAT vt06bb BEST32.;
	FORMAT vt06bb BEST12.;

	INFORMAT vt06d BEST32.;
	FORMAT vt06d BEST12.;

	INFORMAT vt06da BEST32.;
	FORMAT vt06da BEST12.;

	INFORMAT vt06db BEST32.;
	FORMAT vt06db BEST12.;

	INFORMAT vt06e BEST32.;
	FORMAT vt06e BEST12.;

	INFORMAT vt06ea BEST32.;
	FORMAT vt06ea BEST12.;

	INFORMAT vt06eb BEST32.;
	FORMAT vt06eb BEST12.;

	INFORMAT vt06g BEST32.;
	FORMAT vt06g BEST12.;

	INFORMAT vt06ga BEST32.;
	FORMAT vt06ga BEST12.;

	INFORMAT vt06gb BEST32.;
	FORMAT vt06gb BEST12.;

	INFORMAT vt06gc BEST32.;
	FORMAT vt06gc BEST12.;

	INFORMAT vt06h BEST32.;
	FORMAT vt06h BEST12.;

	INFORMAT vt06ha BEST32.;
	FORMAT vt06ha BEST12.;

	INFORMAT vt06hb BEST32.;
	FORMAT vt06hb BEST12.;

	INFORMAT vt07 BEST32.;
	FORMAT vt07 BEST12.;

	INFORMAT vt07a BEST32.;
	FORMAT vt07a BEST12.;

	INFORMAT vt07b BEST32.;
	FORMAT vt07b BEST12.;

	INFORMAT vt08ac BEST32.;
	FORMAT vt08ac BEST12.;

	INFORMAT vt08a BEST32.;
	FORMAT vt08a BEST12.;

	INFORMAT vt08aa BEST32.;
	FORMAT vt08aa BEST12.;

	INFORMAT vt08ab BEST32.;
	FORMAT vt08ab BEST12.;

	INFORMAT vt08ba BEST32.;
	FORMAT vt08ba BEST12.;

	INFORMAT vt08bb BEST32.;
	FORMAT vt08bb BEST12.;

	INFORMAT vt08b BEST32.;
	FORMAT vt08b BEST12.;

	INFORMAT vt08c BEST32.;
	FORMAT vt08c BEST12.;

	INFORMAT vt08ca BEST32.;
	FORMAT vt08ca BEST12.;

	INFORMAT vt08cb BEST32.;
	FORMAT vt08cb BEST12.;

	INFORMAT vt09a BEST32.;
	FORMAT vt09a BEST12.;

	INFORMAT vt09aa BEST32.;
	FORMAT vt09aa BEST12.;

	INFORMAT vt09ab BEST32.;
	FORMAT vt09ab BEST12.;

	INFORMAT vt09b BEST32.;
	FORMAT vt09b BEST12.;

	INFORMAT vt09ba BEST32.;
	FORMAT vt09ba BEST12.;

	INFORMAT vt10 BEST32.;
	FORMAT vt10 BEST12.;

	INFORMAT vt10a BEST32.;
	FORMAT vt10a BEST12.;

	INFORMAT vt10b BEST32.;
	FORMAT vt10b BEST12.;

	INFORMAT vt11a BEST32.;
	FORMAT vt11a BEST12.;

	INFORMAT vt11aa BEST32.;
	FORMAT vt11aa BEST12.;

	INFORMAT vt11ab BEST32.;
	FORMAT vt11ab BEST12.;

	INFORMAT vt11b BEST32.;
	FORMAT vt11b BEST12.;

	INFORMAT vt11ba BEST32.;
	FORMAT vt11ba BEST12.;

	INFORMAT vt11bb BEST32.;
	FORMAT vt11bb BEST12.;

	INFORMAT vt12 BEST32.;
	FORMAT vt12 BEST12.;

	INFORMAT vt12a BEST32.;
	FORMAT vt12a BEST12.;

	INFORMAT vt12b BEST32.;
	FORMAT vt12b BEST12.;

	INFORMAT vt52ad1c $433.;
	FORMAT vt52ad1c $433.;

	INFORMAT vt15 BEST32.;
	FORMAT vt15 BEST12.;

	INFORMAT vt15a BEST32.;
	FORMAT vt15a BEST12.;

	INFORMAT vt15b BEST32.;
	FORMAT vt15b BEST12.;

	INFORMAT vt17 BEST32.;
	FORMAT vt17 BEST12.;

	INFORMAT vt17a BEST32.;
	FORMAT vt17a BEST12.;

	INFORMAT vt17b BEST32.;
	FORMAT vt17b BEST12.;

	INFORMAT vt18 BEST32.;
	FORMAT vt18 BEST12.;

	INFORMAT vt18a BEST32.;
	FORMAT vt18a BEST12.;

	INFORMAT vt18b BEST32.;
	FORMAT vt18b BEST12.;

	INFORMAT vt20 BEST32.;
	FORMAT vt20 BEST12.;

	INFORMAT vt20a BEST32.;
	FORMAT vt20a BEST12.;

	INFORMAT vt20b BEST32.;
	FORMAT vt20b BEST12.;

	INFORMAT vt34 BEST32.;
	FORMAT vt34 BEST12.;

	INFORMAT vt34a BEST32.;
	FORMAT vt34a BEST12.;

	INFORMAT vt34b BEST32.;
	FORMAT vt34b BEST12.;

	INFORMAT vt21 BEST32.;
	FORMAT vt21 BEST12.;

	INFORMAT vt21a BEST32.;
	FORMAT vt21a BEST12.;

	INFORMAT vt21b BEST32.;
	FORMAT vt21b BEST12.;

	INFORMAT vt22 BEST32.;
	FORMAT vt22 BEST12.;

	INFORMAT vt22a BEST32.;
	FORMAT vt22a BEST12.;

	INFORMAT vt22b BEST32.;
	FORMAT vt22b BEST12.;

	INFORMAT vt24 BEST32.;
	FORMAT vt24 BEST12.;

	INFORMAT vt24a BEST32.;
	FORMAT vt24a BEST12.;

	INFORMAT vt24b BEST32.;
	FORMAT vt24b BEST12.;

	INFORMAT vt25 BEST32.;
	FORMAT vt25 BEST12.;

	INFORMAT vt25a BEST32.;
	FORMAT vt25a BEST12.;

	INFORMAT vt25b BEST32.;
	FORMAT vt25b BEST12.;

	INFORMAT vt26 BEST32.;
	FORMAT vt26 BEST12.;

	INFORMAT vt26a BEST32.;
	FORMAT vt26a BEST12.;

	INFORMAT vt26b BEST32.;
	FORMAT vt26b BEST12.;

	INFORMAT vt27 BEST32.;
	FORMAT vt27 BEST12.;

	INFORMAT vt27a BEST32.;
	FORMAT vt27a BEST12.;

	INFORMAT vt27b BEST32.;
	FORMAT vt27b BEST12.;

	INFORMAT vt28 BEST32.;
	FORMAT vt28 BEST12.;

	INFORMAT vt28a BEST32.;
	FORMAT vt28a BEST12.;

	INFORMAT vt28b BEST32.;
	FORMAT vt28b BEST12.;

	INFORMAT vt29 BEST32.;
	FORMAT vt29 BEST12.;

	INFORMAT vt29a BEST32.;
	FORMAT vt29a BEST12.;

	INFORMAT vt29b BEST32.;
	FORMAT vt29b BEST12.;

	INFORMAT vt55 BEST32.;
	FORMAT vt55 BEST12.;

	INFORMAT vt55a BEST32.;
	FORMAT vt55a BEST12.;

	INFORMAT vt55b BEST32.;
	FORMAT vt55b BEST12.;

	INFORMAT vt56 BEST32.;
	FORMAT vt56 BEST12.;

	INFORMAT vt56a BEST32.;
	FORMAT vt56a BEST12.;

	INFORMAT vt56b BEST32.;
	FORMAT vt56b BEST12.;

	INFORMAT vt66 BEST32.;
	FORMAT vt66 BEST12.;

	INFORMAT vt66a BEST32.;
	FORMAT vt66a BEST12.;

	INFORMAT vt66b BEST32.;
	FORMAT vt66b BEST12.;

	INFORMAT vt30 BEST32.;
	FORMAT vt30 BEST12.;

	INFORMAT vt30a BEST32.;
	FORMAT vt30a BEST12.;

	INFORMAT vt30b BEST32.;
	FORMAT vt30b BEST12.;

	INFORMAT vt31 BEST32.;
	FORMAT vt31 BEST12.;

	INFORMAT vt31a BEST32.;
	FORMAT vt31a BEST12.;

	INFORMAT vt35 BEST32.;
	FORMAT vt35 BEST12.;

	INFORMAT vt35a BEST32.;
	FORMAT vt35a BEST12.;

	INFORMAT vt35b BEST32.;
	FORMAT vt35b BEST12.;

	INFORMAT vt38 BEST32.;
	FORMAT vt38 BEST12.;

	INFORMAT vt38a BEST32.;
	FORMAT vt38a BEST12.;

	INFORMAT vt38b BEST32.;
	FORMAT vt38b BEST12.;

	INFORMAT vt40 BEST32.;
	FORMAT vt40 BEST12.;

	INFORMAT vt40a BEST32.;
	FORMAT vt40a BEST12.;

	INFORMAT vt40b BEST32.;
	FORMAT vt40b BEST12.;

	INFORMAT vt53 BEST32.;
	FORMAT vt53 BEST12.;

	INFORMAT vt53a BEST32.;
	FORMAT vt53a BEST12.;

	INFORMAT vt53b BEST32.;
	FORMAT vt53b BEST12.;

	INFORMAT vt54 BEST32.;
	FORMAT vt54 BEST12.;

	INFORMAT vt54a BEST32.;
	FORMAT vt54a BEST12.;

	INFORMAT vt54b BEST32.;
	FORMAT vt54b BEST12.;

	INFORMAT vt67a BEST32.;
	FORMAT vt67a BEST12.;

	INFORMAT vt67b BEST32.;
	FORMAT vt67b BEST12.;

	INFORMAT vt70 BEST32.;
	FORMAT vt70 BEST12.;

	INFORMAT vt70a BEST32.;
	FORMAT vt70a BEST12.;

	INFORMAT vt41 BEST32.;
	FORMAT vt41 BEST12.;

	INFORMAT vt44 BEST32.;
	FORMAT vt44 BEST12.;

	INFORMAT vt49 BEST32.;
	FORMAT vt49 BEST12.;

	INFORMAT vt63 BEST32.;
	FORMAT vt63 BEST12.;

	INFORMAT vt71 BEST32.;
	FORMAT vt71 BEST12.;

	INFORMAT vt72 BEST32.;
	FORMAT vt72 BEST12.;

	INFORMAT vt48b BEST32.;
	FORMAT vt48b BEST12.;

	INFORMAT vt04dat2 YYMMDD10.;
	FORMAT vt04dat2 YYMMDD10.;

	INFORMAT vt05dat2 YYMMDD10.;
	FORMAT vt05dat2 YYMMDD10.;

	INFORMAT vt06dat2 YYMMDD10.;
	FORMAT vt06dat2 YYMMDD10.;

	INFORMAT vt6hdat2 YYMMDD10.;
	FORMAT vt6hdat2 YYMMDD10.;

	INFORMAT vt07dat2 YYMMDD10.;
	FORMAT vt07dat2 YYMMDD10.;

	INFORMAT vt08dat2 YYMMDD10.;
	FORMAT vt08dat2 YYMMDD10.;

	INFORMAT vt09dat2 YYMMDD10.;
	FORMAT vt09dat2 YYMMDD10.;

	INFORMAT vt10dat2 YYMMDD10.;
	FORMAT vt10dat2 YYMMDD10.;

	INFORMAT vt11dat2 YYMMDD10.;
	FORMAT vt11dat2 YYMMDD10.;

	INFORMAT vt12dat2 YYMMDD10.;
	FORMAT vt12dat2 YYMMDD10.;

	INFORMAT vt52dat2 YYMMDD10.;
	FORMAT vt52dat2 YYMMDD10.;

	INFORMAT vt52ad1_2 BEST32.;
	FORMAT vt52ad1_2 BEST12.;

	INFORMAT vt14dat2 YYMMDD10.;
	FORMAT vt14dat2 YYMMDD10.;

	INFORMAT vt15dat2 YYMMDD10.;
	FORMAT vt15dat2 YYMMDD10.;

	INFORMAT vt16dat2 YYMMDD10.;
	FORMAT vt16dat2 YYMMDD10.;

	INFORMAT vt17dat2 YYMMDD10.;
	FORMAT vt17dat2 YYMMDD10.;

	INFORMAT vt18dat2 YYMMDD10.;
	FORMAT vt18dat2 YYMMDD10.;

	INFORMAT vt19dat2 YYMMDD10.;
	FORMAT vt19dat2 YYMMDD10.;

	INFORMAT vt20dat2 YYMMDD10.;
	FORMAT vt20dat2 YYMMDD10.;

	INFORMAT vt34dat2 YYMMDD10.;
	FORMAT vt34dat2 YYMMDD10.;

	INFORMAT vt21dat2 YYMMDD10.;
	FORMAT vt21dat2 YYMMDD10.;

	INFORMAT vt22dat2 YYMMDD10.;
	FORMAT vt22dat2 YYMMDD10.;

	INFORMAT vt24dat2 YYMMDD10.;
	FORMAT vt24dat2 YYMMDD10.;

	INFORMAT vt25dat2 YYMMDD10.;
	FORMAT vt25dat2 YYMMDD10.;

	INFORMAT vt26dat2 YYMMDD10.;
	FORMAT vt26dat2 YYMMDD10.;

	INFORMAT vt28dat2 YYMMDD10.;
	FORMAT vt28dat2 YYMMDD10.;

	INFORMAT vt29dat2 YYMMDD10.;
	FORMAT vt29dat2 YYMMDD10.;

	INFORMAT vt55dat2 YYMMDD10.;
	FORMAT vt55dat2 YYMMDD10.;

	INFORMAT vt56dat2 YYMMDD10.;
	FORMAT vt56dat2 YYMMDD10.;

	INFORMAT vt66dat2 YYMMDD10.;
	FORMAT vt66dat2 YYMMDD10.;

	INFORMAT vt30dat2 YYMMDD10.;
	FORMAT vt30dat2 YYMMDD10.;

	INFORMAT vt32dat2 YYMMDD10.;
	FORMAT vt32dat2 YYMMDD10.;

	INFORMAT vt33dat2 YYMMDD10.;
	FORMAT vt33dat2 YYMMDD10.;

	INFORMAT vt35dat2 YYMMDD10.;
	FORMAT vt35dat2 YYMMDD10.;

	INFORMAT vt38dat2 YYMMDD10.;
	FORMAT vt38dat2 YYMMDD10.;

	INFORMAT vt40dat2 YYMMDD10.;
	FORMAT vt40dat2 YYMMDD10.;

	INFORMAT vt53dat2 YYMMDD10.;
	FORMAT vt53dat2 YYMMDD10.;

	INFORMAT vt54dat2 YYMMDD10.;
	FORMAT vt54dat2 YYMMDD10.;

	INFORMAT vt67dat2 YYMMDD10.;
	FORMAT vt67dat2 YYMMDD10.;

	INFORMAT vt70dat2 YYMMDD10.;
	FORMAT vt70dat2 YYMMDD10.;

	INFORMAT vt01dat3 YYMMDD10.;
	FORMAT vt01dat3 YYMMDD10.;

	INFORMAT vt44rnd BEST32.;
	FORMAT vt44rnd BEST12.;

	INFORMAT vt63rnd BEST32.;
	FORMAT vt63rnd BEST12.;

	INFORMAT vt71rnd BEST32.;
	FORMAT vt71rnd BEST12.;

	INFORMAT vt72rnd BEST32.;
	FORMAT vt72rnd BEST12.;

	INFORMAT vt48_2 BEST32.;
	FORMAT vt48_2 BEST12.;

	INFORMAT vt48rnd BEST32.;
	FORMAT vt48rnd BEST12.;

	INFORMAT epidermalaging BEST32.;
	FORMAT epidermalaging BEST12.;

	INFORMAT epidermalagrnd BEST32.;
	FORMAT epidermalagrnd BEST12.;

	INFORMAT cogstate BEST32.;
	FORMAT cogstate BEST12.;

	INFORMAT cogstaternd BEST32.;
	FORMAT cogstaternd BEST12.;

	INFORMAT maskworn_VisProChe BEST32.;
	FORMAT maskworn_VisProChe BEST12.;

	INFORMAT vteyetrdt YYMMDD10.;
	FORMAT vteyetrdt YYMMDD10.;

	INFORMAT vteyetrdone BEST32.;
	FORMAT vteyetrdone BEST12.;

	INFORMAT vteyetrrnd BEST32.;
	FORMAT vteyetrrnd BEST12.;

	INFORMAT vteyetrresch BEST32.;
	FORMAT vteyetrresch BEST12.;

	INFORMAT intestinalperm BEST32.;
	FORMAT intestinalperm BEST12.;

	INFORMAT intestinalpermrnd BEST32.;
	FORMAT intestinalpermrnd BEST12.;

	INFORMAT vt73b BEST32.;
	FORMAT vt73b BEST12.;

	INFORMAT vt59 BEST32.;
	FORMAT vt59 BEST12.;

	INFORMAT vt59a BEST32.;
	FORMAT vt59a BEST12.;

	INFORMAT vt60 BEST32.;
	FORMAT vt60 BEST12.;

	INFORMAT vt60a BEST32.;
	FORMAT vt60a BEST12.;

	INFORMAT vt68 BEST32.;
	FORMAT vt68 BEST12.;

	INFORMAT vt68a BEST32.;
	FORMAT vt68a BEST12.;

	INFORMAT vt74 BEST32.;
	FORMAT vt74 BEST12.;

	INFORMAT vt74a BEST32.;
	FORMAT vt74a BEST12.;

	INFORMAT vt73dat2 YYMMDD10.;
	FORMAT vt73dat2 YYMMDD10.;

	INFORMAT followup BEST32.;
	FORMAT followup BEST12.;

	INFORMAT vt69 BEST32.;
	FORMAT vt69 BEST12.;

	INFORMAT vt69a BEST32.;
	FORMAT vt69a BEST12.;

	INFORMAT vt69b BEST32.;
	FORMAT vt69b BEST12.;

	INFORMAT vt69dat2 YYMMDD10.;
	FORMAT vt69dat2 YYMMDD10.;

	INFORMAT vt75 BEST32.;
	FORMAT vt75 BEST12.;

	INFORMAT vt75a BEST32.;
	FORMAT vt75a BEST12.;

	INFORMAT vt48_3 BEST32.;
	FORMAT vt48_3 BEST12.;

	INFORMAT auto_id_VisProChe BEST32.;
	FORMAT auto_id_VisProChe BEST12.;

	INFORMAT vt58 BEST32.;
	FORMAT vt58 BEST12.;

	INFORMAT vt48 $1.;
	FORMAT vt48 $1.;

	INFORMAT vt09sb BEST32.;
	FORMAT vt09sb BEST12.;

	INFORMAT vt09srnd BEST32.;
	FORMAT vt09srnd BEST12.;

	INFORMAT vt06hid BEST32.;
	FORMAT vt06hid BEST12.;

	INFORMAT lab07a_VisProChe $5.;
	FORMAT lab07a_VisProChe $5.;

	INFORMAT lab07b_VisProChe $6.;
	FORMAT lab07b_VisProChe $6.;

	INFORMAT vt01dat2 $1.;
	FORMAT vt01dat2 $1.;

	INFORMAT vttime1 $5.;
	FORMAT vttime1 $5.;

	INFORMAT vttimea BEST32.;
	FORMAT vttimea BEST12.;

	INFORMAT vttime2 $5.;
	FORMAT vttime2 $5.;

	INFORMAT vttimeb BEST32.;
	FORMAT vttimeb BEST12.;

	INFORMAT date_completed YYMMDD10.;
	FORMAT date_completed YYMMDD10.;

	INFORMAT vt01dat $11.;
	FORMAT vt01dat $11.;

	INFORMAT vt01id BEST32.;
	FORMAT vt01id BEST12.;

	INFORMAT vt02dat BEST32.;
	FORMAT vt02dat BEST12.;

	INFORMAT vt02id BEST32.;
	FORMAT vt02id BEST12.;

	INFORMAT vt02 $1.;
	FORMAT vt02 $1.;

	INFORMAT vt03dat BEST32.;
	FORMAT vt03dat BEST12.;

	INFORMAT vt03id BEST32.;
	FORMAT vt03id BEST12.;

	INFORMAT vt03 BEST32.;
	FORMAT vt03 BEST12.;

	INFORMAT vt03a BEST32.;
	FORMAT vt03a BEST12.;

	INFORMAT vt03b $1.;
	FORMAT vt03b $1.;

	INFORMAT vt04dat $11.;
	FORMAT vt04dat $11.;

	INFORMAT vt04id BEST32.;
	FORMAT vt04id BEST12.;

	INFORMAT vt04a BEST32.;
	FORMAT vt04a BEST12.;

	INFORMAT vt04b BEST32.;
	FORMAT vt04b BEST12.;

	INFORMAT vt05dat $11.;
	FORMAT vt05dat $11.;

	INFORMAT vt05id BEST32.;
	FORMAT vt05id BEST12.;

	INFORMAT vt05a BEST32.;
	FORMAT vt05a BEST12.;

	INFORMAT vt05b BEST32.;
	FORMAT vt05b BEST12.;

	INFORMAT vt06dat $11.;
	FORMAT vt06dat $11.;

	INFORMAT vt06id BEST32.;
	FORMAT vt06id BEST12.;

	INFORMAT vt06c BEST32.;
	FORMAT vt06c BEST12.;

	INFORMAT vt06ca BEST32.;
	FORMAT vt06ca BEST12.;

	INFORMAT vt06cb BEST32.;
	FORMAT vt06cb BEST12.;

	INFORMAT vt06f BEST32.;
	FORMAT vt06f BEST12.;

	INFORMAT vt06fa BEST32.;
	FORMAT vt06fa BEST12.;

	INFORMAT vt06fb BEST32.;
	FORMAT vt06fb BEST12.;

	INFORMAT vt6hdat $5.;
	FORMAT vt6hdat $5.;

	INFORMAT vt07dat $5.;
	FORMAT vt07dat $5.;

	INFORMAT vt07id BEST32.;
	FORMAT vt07id BEST12.;

	INFORMAT vt08dat $5.;
	FORMAT vt08dat $5.;

	INFORMAT vt08id BEST32.;
	FORMAT vt08id BEST12.;

	INFORMAT vt09dat $5.;
	FORMAT vt09dat $5.;

	INFORMAT vt09id BEST32.;
	FORMAT vt09id BEST12.;

	INFORMAT vt10dat $5.;
	FORMAT vt10dat $5.;

	INFORMAT vt10id BEST32.;
	FORMAT vt10id BEST12.;

	INFORMAT vt11dat $11.;
	FORMAT vt11dat $11.;

	INFORMAT vt11id BEST32.;
	FORMAT vt11id BEST12.;

	INFORMAT vt12dat $6.;
	FORMAT vt12dat $6.;

	INFORMAT vt12id BEST32.;
	FORMAT vt12id BEST12.;

	INFORMAT vt13dat NLNUM32.;
	FORMAT vt13dat NLNUM12.;

	INFORMAT vt13id BEST32.;
	FORMAT vt13id BEST12.;

	INFORMAT vt13 BEST32.;
	FORMAT vt13 BEST12.;

	INFORMAT vt13a BEST32.;
	FORMAT vt13a BEST12.;

	INFORMAT vt13b BEST32.;
	FORMAT vt13b BEST12.;

	INFORMAT vt52dat $5.;
	FORMAT vt52dat $5.;

	INFORMAT vt52id BEST32.;
	FORMAT vt52id BEST12.;

	INFORMAT vt52ad1 BEST32.;
	FORMAT vt52ad1 BEST12.;

	INFORMAT vt14dat $5.;
	FORMAT vt14dat $5.;

	INFORMAT vt14id BEST32.;
	FORMAT vt14id BEST12.;

	INFORMAT vt15dat $5.;
	FORMAT vt15dat $5.;

	INFORMAT vt15id BEST32.;
	FORMAT vt15id BEST12.;

	INFORMAT vt16dat $5.;
	FORMAT vt16dat $5.;

	INFORMAT vt16id BEST32.;
	FORMAT vt16id BEST12.;

	INFORMAT vt17dat $5.;
	FORMAT vt17dat $5.;

	INFORMAT vt17id BEST32.;
	FORMAT vt17id BEST12.;

	INFORMAT vt18dat $5.;
	FORMAT vt18dat $5.;

	INFORMAT vt18id BEST32.;
	FORMAT vt18id BEST12.;

	INFORMAT vt19dat $5.;
	FORMAT vt19dat $5.;

	INFORMAT vt19id BEST32.;
	FORMAT vt19id BEST12.;

	INFORMAT vt20dat $5.;
	FORMAT vt20dat $5.;

	INFORMAT vt20id BEST32.;
	FORMAT vt20id BEST12.;

	INFORMAT vt34dat $5.;
	FORMAT vt34dat $5.;

	INFORMAT vt34id BEST32.;
	FORMAT vt34id BEST12.;

	INFORMAT vt21dat $9.;
	FORMAT vt21dat $9.;

	INFORMAT vt21id BEST32.;
	FORMAT vt21id BEST12.;

	INFORMAT vt22dat $8.;
	FORMAT vt22dat $8.;

	INFORMAT vt22id $5.;
	FORMAT vt22id $5.;

	INFORMAT vt23dat $5.;
	FORMAT vt23dat $5.;

	INFORMAT vt23id BEST32.;
	FORMAT vt23id BEST12.;

	INFORMAT vt23 BEST32.;
	FORMAT vt23 BEST12.;

	INFORMAT vt23a BEST32.;
	FORMAT vt23a BEST12.;

	INFORMAT vt23b BEST32.;
	FORMAT vt23b BEST12.;

	INFORMAT vt24dat $5.;
	FORMAT vt24dat $5.;

	INFORMAT vt24id BEST32.;
	FORMAT vt24id BEST12.;

	INFORMAT vt25dat $5.;
	FORMAT vt25dat $5.;

	INFORMAT vt25id BEST32.;
	FORMAT vt25id BEST12.;

	INFORMAT vt26dat $5.;
	FORMAT vt26dat $5.;

	INFORMAT vt26id BEST32.;
	FORMAT vt26id BEST12.;

	INFORMAT vt28dat $5.;
	FORMAT vt28dat $5.;

	INFORMAT vt27id BEST32.;
	FORMAT vt27id BEST12.;

	INFORMAT vt29dat $5.;
	FORMAT vt29dat $5.;

	INFORMAT vt29id BEST32.;
	FORMAT vt29id BEST12.;

	INFORMAT vt55dat $5.;
	FORMAT vt55dat $5.;

	INFORMAT vt55id BEST32.;
	FORMAT vt55id BEST12.;

	INFORMAT vt56dat $8.;
	FORMAT vt56dat $8.;

	INFORMAT vt56id BEST32.;
	FORMAT vt56id BEST12.;

	INFORMAT vt66dat $5.;
	FORMAT vt66dat $5.;

	INFORMAT vt66id BEST32.;
	FORMAT vt66id BEST12.;

	INFORMAT vt73dat $5.;
	FORMAT vt73dat $5.;

	INFORMAT vt73id BEST32.;
	FORMAT vt73id BEST12.;

	INFORMAT vt59dat $5.;
	FORMAT vt59dat $5.;

	INFORMAT vt59id BEST32.;
	FORMAT vt59id BEST12.;

	INFORMAT vt59b BEST32.;
	FORMAT vt59b BEST12.;

	INFORMAT vt60dat $5.;
	FORMAT vt60dat $5.;

	INFORMAT vt60id BEST32.;
	FORMAT vt60id BEST12.;

	INFORMAT vt60b BEST32.;
	FORMAT vt60b BEST12.;

	INFORMAT vt64dat $5.;
	FORMAT vt64dat $5.;

	INFORMAT vt64id BEST32.;
	FORMAT vt64id BEST12.;

	INFORMAT vt64 BEST32.;
	FORMAT vt64 BEST12.;

	INFORMAT vt64a BEST32.;
	FORMAT vt64a BEST12.;

	INFORMAT vt64b BEST32.;
	FORMAT vt64b BEST12.;

	INFORMAT vt68dat $5.;
	FORMAT vt68dat $5.;

	INFORMAT vt68id BEST32.;
	FORMAT vt68id BEST12.;

	INFORMAT vt68b BEST32.;
	FORMAT vt68b BEST12.;

	INFORMAT vt30dat $8.;
	FORMAT vt30dat $8.;

	INFORMAT vt30id BEST32.;
	FORMAT vt30id BEST12.;

	INFORMAT vt32dat $10.;
	FORMAT vt32dat $10.;

	INFORMAT vt32id BEST32.;
	FORMAT vt32id BEST12.;

	INFORMAT vt33dat $9.;
	FORMAT vt33dat $9.;

	INFORMAT vt33id $5.;
	FORMAT vt33id $5.;

	INFORMAT sensorydt TIME20.;
	FORMAT sensorydt TIME20.;

	INFORMAT sensorytid BEST32.;
	FORMAT sensorytid BEST12.;

	INFORMAT sensoryresch BEST32.;
	FORMAT sensoryresch BEST12.;

	INFORMAT vt31dat $8.;
	FORMAT vt31dat $8.;

	INFORMAT vt31id BEST32.;
	FORMAT vt31id BEST12.;

	INFORMAT vt31b BEST32.;
	FORMAT vt31b BEST12.;

	INFORMAT fittsdone BEST32.;
	FORMAT fittsdone BEST12.;

	INFORMAT fittsrnd $1.;
	FORMAT fittsrnd $1.;

	INFORMAT vt69dat $10.;
	FORMAT vt69dat $10.;

	INFORMAT vt69id BEST32.;
	FORMAT vt69id BEST12.;

	INFORMAT vt35dat $11.;
	FORMAT vt35dat $11.;

	INFORMAT vt35id BEST32.;
	FORMAT vt35id BEST12.;

	INFORMAT vt38dat $6.;
	FORMAT vt38dat $6.;

	INFORMAT vt38id BEST32.;
	FORMAT vt38id BEST12.;

	INFORMAT vt40dat $6.;
	FORMAT vt40dat $6.;

	INFORMAT vt40id BEST32.;
	FORMAT vt40id BEST12.;

	INFORMAT vt53dat $5.;
	FORMAT vt53dat $5.;

	INFORMAT vt53id BEST32.;
	FORMAT vt53id BEST12.;

	INFORMAT vt54dat $11.;
	FORMAT vt54dat $11.;

	INFORMAT vt54id BEST32.;
	FORMAT vt54id BEST12.;

	INFORMAT vt67dat $5.;
	FORMAT vt67dat $5.;

	INFORMAT vt70dat $5.;
	FORMAT vt70dat $5.;

	INFORMAT vt47 BEST32.;
	FORMAT vt47 BEST12.;

	INFORMAT vt61 BEST32.;
	FORMAT vt61 BEST12.;

	INFORMAT vt62 BEST32.;
	FORMAT vt62 BEST12.;

	INFORMAT vt57 $1.;
	FORMAT vt57 $1.;

	INFORMAT vt36dat BEST32.;
	FORMAT vt36dat BEST12.;

	INFORMAT vt36id BEST32.;
	FORMAT vt36id BEST12.;

	INFORMAT vt36 BEST32.;
	FORMAT vt36 BEST12.;

	INFORMAT vt36a BEST32.;
	FORMAT vt36a BEST12.;

	INFORMAT vt36b BEST32.;
	FORMAT vt36b BEST12.;

	INFORMAT vt37dat BEST32.;
	FORMAT vt37dat BEST12.;

	INFORMAT vt37id BEST32.;
	FORMAT vt37id BEST12.;

	INFORMAT vt37 BEST32.;
	FORMAT vt37 BEST12.;

	INFORMAT vt37a BEST32.;
	FORMAT vt37a BEST12.;

	INFORMAT vt37b BEST32.;
	FORMAT vt37b BEST12.;

	INFORMAT vt39dat BEST32.;
	FORMAT vt39dat BEST12.;

	INFORMAT vt39id BEST32.;
	FORMAT vt39id BEST12.;

	INFORMAT vt39 BEST32.;
	FORMAT vt39 BEST12.;

	INFORMAT vt39a BEST32.;
	FORMAT vt39a BEST12.;

	INFORMAT vt39b BEST32.;
	FORMAT vt39b BEST12.;

	INFORMAT vt43 BEST32.;
	FORMAT vt43 BEST12.;

	INFORMAT vt45 BEST32.;
	FORMAT vt45 BEST12.;

	INFORMAT vt50 $1.;
	FORMAT vt50 $1.;

	INFORMAT vt51 BEST32.;
	FORMAT vt51 BEST12.;

	INFORMAT tester_id BEST32.;
	FORMAT tester_id BEST12.;

	INFORMAT acknowledgment_form BEST32.;
	FORMAT acknowledgment_form BEST12.;

	INFORMAT acknowledgment_form_comment $18.;
	FORMAT acknowledgment_form_comment $18.;

	INFORMAT copy_md_orders BEST32.;
	FORMAT copy_md_orders BEST12.;

	INFORMAT copy_md_orders_comment $28.;
	FORMAT copy_md_orders_comment $28.;

	INFORMAT orders BEST32.;
	FORMAT orders BEST12.;

	INFORMAT orders_comment $24.;
	FORMAT orders_comment $24.;

	INFORMAT blsa_consent_hipaa BEST32.;
	FORMAT blsa_consent_hipaa BEST12.;

	INFORMAT blsa_consent_hipaa_comment $16.;
	FORMAT blsa_consent_hipaa_comment $16.;

	INFORMAT validate_hipaa BEST32.;
	FORMAT validate_hipaa BEST12.;

	INFORMAT validate_hipaa_comment $13.;
	FORMAT validate_hipaa_comment $13.;

	INFORMAT advanced_directives BEST32.;
	FORMAT advanced_directives BEST12.;

	INFORMAT advanced_directives_comment $16.;
	FORMAT advanced_directives_comment $16.;

	INFORMAT falls_risk BEST32.;
	FORMAT falls_risk BEST12.;

	INFORMAT falls_risk_comment $16.;
	FORMAT falls_risk_comment $16.;

	INFORMAT pneumoccoccal_questionnaire BEST32.;
	FORMAT pneumoccoccal_questionnaire BEST12.;

	INFORMAT pneumoccoccal_question_comment $13.;
	FORMAT pneumoccoccal_question_comment $13.;

	INFORMAT pneumoccoccal_screen BEST32.;
	FORMAT pneumoccoccal_screen BEST12.;

	INFORMAT pneumoccoccal_screen_comment $13.;
	FORMAT pneumoccoccal_screen_comment $13.;

	INFORMAT cytapheresis BEST32.;
	FORMAT cytapheresis BEST12.;

	INFORMAT cytapheresis_comment $23.;
	FORMAT cytapheresis_comment $23.;

	INFORMAT hiv_consent BEST32.;
	FORMAT hiv_consent BEST12.;

	INFORMAT hiv_consent_comment $13.;
	FORMAT hiv_consent_comment $13.;

	INFORMAT radiation_exposition BEST32.;
	FORMAT radiation_exposition BEST12.;

	INFORMAT radiation_exposition_comment $2.;
	FORMAT radiation_exposition_comment $2.;

	INFORMAT ekg BEST32.;
	FORMAT ekg BEST12.;

	INFORMAT ekg_comment $16.;
	FORMAT ekg_comment $16.;

	INFORMAT holter_monitor BEST32.;
	FORMAT holter_monitor BEST12.;

	INFORMAT holter_monitor_comment $16.;
	FORMAT holter_monitor_comment $16.;

	INFORMAT extra_comment_1 $1.;
	FORMAT extra_comment_1 $1.;

	INFORMAT height_weight BEST32.;
	FORMAT height_weight BEST12.;

	INFORMAT height_weight_comment $16.;
	FORMAT height_weight_comment $16.;

	INFORMAT vital_signs BEST32.;
	FORMAT vital_signs BEST12.;

	INFORMAT vital_signs_comment $16.;
	FORMAT vital_signs_comment $16.;

	INFORMAT fasting_urine BEST32.;
	FORMAT fasting_urine BEST12.;

	INFORMAT fasting_urine_comment $16.;
	FORMAT fasting_urine_comment $16.;

	INFORMAT urine_24_hours BEST32.;
	FORMAT urine_24_hours BEST12.;

	INFORMAT urine_24_hours_comment $7.;
	FORMAT urine_24_hours_comment $7.;

	INFORMAT bdnf BEST32.;
	FORMAT bdnf BEST12.;

	INFORMAT bdnf_comment $1.;
	FORMAT bdnf_comment $1.;

	INFORMAT nan_ping_tubes BEST32.;
	FORMAT nan_ping_tubes BEST12.;

	INFORMAT nan_ping_tubes_comment $16.;
	FORMAT nan_ping_tubes_comment $16.;

	INFORMAT bhcg BEST32.;
	FORMAT bhcg BEST12.;

	INFORMAT bhcg_comment $6.;
	FORMAT bhcg_comment $6.;

	INFORMAT hiv_serology BEST32.;
	FORMAT hiv_serology BEST12.;

	INFORMAT hiv_serology_comment $13.;
	FORMAT hiv_serology_comment $13.;

	INFORMAT blood_draw BEST32.;
	FORMAT blood_draw BEST12.;

	INFORMAT blood_draw_comment $18.;
	FORMAT blood_draw_comment $18.;

	INFORMAT strength_test_blood BEST32.;
	FORMAT strength_test_blood BEST12.;

	INFORMAT strength_test_blood_comment $12.;
	FORMAT strength_test_blood_comment $12.;

	INFORMAT ogtt BEST32.;
	FORMAT ogtt BEST12.;

	INFORMAT ogtt_comment $18.;
	FORMAT ogtt_comment $18.;

	INFORMAT extra_comment_2 $1.;
	FORMAT extra_comment_2 $1.;

	INFORMAT physical_examination BEST32.;
	FORMAT physical_examination BEST12.;

	INFORMAT physical_examination_comment $16.;
	FORMAT physical_examination_comment $16.;

	INFORMAT finger_tapping_test BEST32.;
	FORMAT finger_tapping_test BEST12.;

	INFORMAT finger_tapping_test_comment $11.;
	FORMAT finger_tapping_test_comment $11.;

	INFORMAT medical_interview BEST32.;
	FORMAT medical_interview BEST12.;

	INFORMAT medical_interview_comment $16.;
	FORMAT medical_interview_comment $16.;

	INFORMAT socio_demographic_interview BEST32.;
	FORMAT socio_demographic_interview BEST12.;

	INFORMAT socio_demographic_inte_comment $16.;
	FORMAT socio_demographic_inte_comment $16.;

	INFORMAT blessed_mental BEST32.;
	FORMAT blessed_mental BEST12.;

	INFORMAT blessed_mental_comment $16.;
	FORMAT blessed_mental_comment $16.;

	INFORMAT extra_comment_3 $1.;
	FORMAT extra_comment_3 $1.;

	INFORMAT dexa_scan BEST32.;
	FORMAT dexa_scan BEST12.;

	INFORMAT dexa_scan_comment $12.;
	FORMAT dexa_scan_comment $12.;

	INFORMAT knee_xray BEST32.;
	FORMAT knee_xray BEST12.;

	INFORMAT knee_xray_comment $23.;
	FORMAT knee_xray_comment $23.;

	INFORMAT hand_xray BEST32.;
	FORMAT hand_xray BEST12.;

	INFORMAT hand_xray_comment $23.;
	FORMAT hand_xray_comment $23.;

	INFORMAT hand_photo BEST32.;
	FORMAT hand_photo BEST12.;

	INFORMAT hand_photo_comment $13.;
	FORMAT hand_photo_comment $13.;

	INFORMAT ctscan BEST32.;
	FORMAT ctscan BEST12.;

	INFORMAT ctscan_comment $16.;
	FORMAT ctscan_comment $16.;

	INFORMAT mri_neuro_imaging BEST32.;
	FORMAT mri_neuro_imaging BEST12.;

	INFORMAT mri_neuro_imaging_comment $16.;
	FORMAT mri_neuro_imaging_comment $16.;

	INFORMAT grip_strength BEST32.;
	FORMAT grip_strength BEST12.;

	INFORMAT grip_strength_comment $16.;
	FORMAT grip_strength_comment $16.;

	INFORMAT knee_strength_right BEST32.;
	FORMAT knee_strength_right BEST12.;

	INFORMAT knee_strength_right_comment $26.;
	FORMAT knee_strength_right_comment $26.;

	INFORMAT knee_strength_left BEST32.;
	FORMAT knee_strength_left BEST12.;

	INFORMAT knee_strength_left_comment $26.;
	FORMAT knee_strength_left_comment $26.;

	INFORMAT le_physical_performance BEST32.;
	FORMAT le_physical_performance BEST12.;

	INFORMAT le_physical_performanc_comment $16.;
	FORMAT le_physical_performanc_comment $16.;

	INFORMAT long_distance_corridor_walk BEST32.;
	FORMAT long_distance_corridor_walk BEST12.;

	INFORMAT long_distance_corridor_comment $16.;
	FORMAT long_distance_corridor_comment $16.;

	INFORMAT gait_lab BEST32.;
	FORMAT gait_lab BEST12.;

	INFORMAT gait_lab_comment $17.;
	FORMAT gait_lab_comment $17.;

	INFORMAT extra_comment_4 $1.;
	FORMAT extra_comment_4 $1.;

	INFORMAT early_markers_ad BEST32.;
	FORMAT early_markers_ad BEST12.;

	INFORMAT early_markers_ad_comment $13.;
	FORMAT early_markers_ad_comment $13.;

	INFORMAT core_cognitive_testing BEST32.;
	FORMAT core_cognitive_testing BEST12.;

	INFORMAT core_cognitive_testing_comment $20.;
	FORMAT core_cognitive_testing_comment $20.;

	INFORMAT personal_computer_testing BEST32.;
	FORMAT personal_computer_testing BEST12.;

	INFORMAT personal_computer_test_comment $16.;
	FORMAT personal_computer_test_comment $16.;

	INFORMAT extra_comment_5 $1.;
	FORMAT extra_comment_5 $1.;

	INFORMAT emg BEST32.;
	FORMAT emg BEST12.;

	INFORMAT emg_comment $16.;
	FORMAT emg_comment $16.;

	INFORMAT vibration_sensitivity_nrsv BEST32.;
	FORMAT vibration_sensitivity_nrsv BEST12.;

	INFORMAT vibration_sensitivity_comment $16.;
	FORMAT vibration_sensitivity_comment $16.;

	INFORMAT proprioception_test BEST32.;
	FORMAT proprioception_test BEST12.;

	INFORMAT proprioception_test_comment $13.;
	FORMAT proprioception_test_comment $13.;

	INFORMAT extra_comment_6 $1.;
	FORMAT extra_comment_6 $1.;

	INFORMAT resting_metabolic_rate BEST32.;
	FORMAT resting_metabolic_rate BEST12.;

	INFORMAT resting_metabolic_rate_comment $3.;
	FORMAT resting_metabolic_rate_comment $3.;

	INFORMAT treadmill_stress_test BEST32.;
	FORMAT treadmill_stress_test BEST12.;

	INFORMAT treadmill_stress_test_comment $16.;
	FORMAT treadmill_stress_test_comment $16.;

	INFORMAT oxygen_consumption BEST32.;
	FORMAT oxygen_consumption BEST12.;

	INFORMAT oxygen_consumption_comment $12.;
	FORMAT oxygen_consumption_comment $12.;

	INFORMAT pulmonary_function_test BEST32.;
	FORMAT pulmonary_function_test BEST12.;

	INFORMAT pulmonary_function_tes_comment $16.;
	FORMAT pulmonary_function_tes_comment $16.;

	INFORMAT echocardiogram BEST32.;
	FORMAT echocardiogram BEST12.;

	INFORMAT echocardiogram_comment $11.;
	FORMAT echocardiogram_comment $11.;

	INFORMAT carotid_ultrasound BEST32.;
	FORMAT carotid_ultrasound BEST12.;

	INFORMAT carotid_ultrasound_comment $10.;
	FORMAT carotid_ultrasound_comment $10.;

	INFORMAT pulse_wave_velocity BEST32.;
	FORMAT pulse_wave_velocity BEST12.;

	INFORMAT pulse_wave_velocity_comment $13.;
	FORMAT pulse_wave_velocity_comment $13.;

	INFORMAT abi BEST32.;
	FORMAT abi BEST12.;

	INFORMAT abi_comment $13.;
	FORMAT abi_comment $13.;

	INFORMAT extra_comment_7 $1.;
	FORMAT extra_comment_7 $1.;

	INFORMAT autopsy BEST32.;
	FORMAT autopsy BEST12.;

	INFORMAT autopsy_comment $16.;
	FORMAT autopsy_comment $16.;

	INFORMAT body_measurements BEST32.;
	FORMAT body_measurements BEST12.;

	INFORMAT body_measurements_comment $16.;
	FORMAT body_measurements_comment $16.;

	INFORMAT extra_comment_8 $1.;
	FORMAT extra_comment_8 $1.;

	INFORMAT vision_testing BEST32.;
	FORMAT vision_testing BEST12.;

	INFORMAT vision_testing_comment $18.;
	FORMAT vision_testing_comment $18.;

	INFORMAT vision_stereopsis BEST32.;
	FORMAT vision_stereopsis BEST12.;

	INFORMAT vision_stereopsis_comment $18.;
	FORMAT vision_stereopsis_comment $18.;

	INFORMAT visual_fields BEST32.;
	FORMAT visual_fields BEST12.;

	INFORMAT visual_fields_comment $11.;
	FORMAT visual_fields_comment $11.;

	INFORMAT extra_comment_9 $1.;
	FORMAT extra_comment_9 $1.;

	INFORMAT food_frequency_questionnaire BEST32.;
	FORMAT food_frequency_questionnaire BEST12.;

	INFORMAT food_frequency_questio_comment $16.;
	FORMAT food_frequency_questio_comment $16.;

	INFORMAT food_intake_record BEST32.;
	FORMAT food_intake_record BEST12.;

	INFORMAT food_intake_record_comment $16.;
	FORMAT food_intake_record_comment $16.;

	INFORMAT progress_note BEST32.;
	FORMAT progress_note BEST12.;

	INFORMAT progress_note_comment $13.;
	FORMAT progress_note_comment $13.;

	INFORMAT on_study_card BEST32.;
	FORMAT on_study_card BEST12.;

	INFORMAT on_study_card_comment $1.;
	FORMAT on_study_card_comment $1.;

	INFORMAT extra_comment_10 $1.;
	FORMAT extra_comment_10 $1.;

	INFORMAT best_list BEST32.;
	FORMAT best_list BEST12.;

	INFORMAT best_list_comment $23.;
	FORMAT best_list_comment $23.;

	INFORMAT data_in_study_manager_comment BEST32.;
	FORMAT data_in_study_manager_comment BEST12.;

	INFORMAT crf_parent_name_VisProChe $30.;
	FORMAT crf_parent_name_VisProChe $30.;

	INFORMAT study_name_VisProChe $4.;
	FORMAT study_name_VisProChe $4.;

	INFORMAT vt01_1 BEST32.;
	FORMAT vt01_1 BEST12.;

	INFORMAT vt02_1 BEST32.;
	FORMAT vt02_1 BEST12.;

	INFORMAT vt04_1 BEST32.;
	FORMAT vt04_1 BEST12.;

	INFORMAT vt05_1 BEST32.;
	FORMAT vt05_1 BEST12.;

	INFORMAT vt48_0 BEST32.;
	FORMAT vt48_0 BEST12.;

	INFORMAT vt48_1 BEST32.;
	FORMAT vt48_1 BEST12.;

	INFORMAT vt48_2_1 BEST32.;
	FORMAT vt48_2_1 BEST12.;

	INFORMAT vt48_2_2 BEST32.;
	FORMAT vt48_2_2 BEST12.;

	INFORMAT vt48_2_3 BEST32.;
	FORMAT vt48_2_3 BEST12.;

	INFORMAT vt50_0 BEST32.;
	FORMAT vt50_0 BEST12.;

	INFORMAT vt50_1 BEST32.;
	FORMAT vt50_1 BEST12.;

	INFORMAT vt50_2 BEST32.;
	FORMAT vt50_2 BEST12.;

	INFORMAT vt50_3 $1.;
	FORMAT vt50_3 $1.;

	INFORMAT vt57_0 BEST32.;
	FORMAT vt57_0 BEST12.;

	INFORMAT vt57_1 BEST32.;
	FORMAT vt57_1 BEST12.;

	INFORMAT vt57_2 BEST32.;
	FORMAT vt57_2 BEST12.;

	INFORMAT vt57_3 BEST32.;
	FORMAT vt57_3 BEST12.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_VisProChe
		obsdate_data_in_study_manager
		vttype
		blank_VisProChe
		vtdate2
		vt01
		vt04
		vt05
		vt06a
		vt06aa
		vt06ab
		vt52
		vt52a
		vt52b
		vt14
		vt14a
		vt14b
		vt16
		vt16a
		vt16b
		vt19
		vt19a
		vt19b
		vt32
		vt32a
		vt32b
		vt33
		vt33a
		vt33b
		vt42
		vt46
		vt46a
		cdr
		neuroimaging
		autopsystudy
		reactiontime
		reacttimernd
		reacttimeres
		activityscaleq
		epworthss
		lateraldom
		swallowingq
		vtdate1
		vt06b
		vt06ba
		vt06bb
		vt06d
		vt06da
		vt06db
		vt06e
		vt06ea
		vt06eb
		vt06g
		vt06ga
		vt06gb
		vt06gc
		vt06h
		vt06ha
		vt06hb
		vt07
		vt07a
		vt07b
		vt08ac
		vt08a
		vt08aa
		vt08ab
		vt08ba
		vt08bb
		vt08b
		vt08c
		vt08ca
		vt08cb
		vt09a
		vt09aa
		vt09ab
		vt09b
		vt09ba
		vt10
		vt10a
		vt10b
		vt11a
		vt11aa
		vt11ab
		vt11b
		vt11ba
		vt11bb
		vt12
		vt12a
		vt12b
		vt52ad1c
		vt15
		vt15a
		vt15b
		vt17
		vt17a
		vt17b
		vt18
		vt18a
		vt18b
		vt20
		vt20a
		vt20b
		vt34
		vt34a
		vt34b
		vt21
		vt21a
		vt21b
		vt22
		vt22a
		vt22b
		vt24
		vt24a
		vt24b
		vt25
		vt25a
		vt25b
		vt26
		vt26a
		vt26b
		vt27
		vt27a
		vt27b
		vt28
		vt28a
		vt28b
		vt29
		vt29a
		vt29b
		vt55
		vt55a
		vt55b
		vt56
		vt56a
		vt56b
		vt66
		vt66a
		vt66b
		vt30
		vt30a
		vt30b
		vt31
		vt31a
		vt35
		vt35a
		vt35b
		vt38
		vt38a
		vt38b
		vt40
		vt40a
		vt40b
		vt53
		vt53a
		vt53b
		vt54
		vt54a
		vt54b
		vt67a
		vt67b
		vt70
		vt70a
		vt41
		vt44
		vt49
		vt63
		vt71
		vt72
		vt48b
		vt04dat2
		vt05dat2
		vt06dat2
		vt6hdat2
		vt07dat2
		vt08dat2
		vt09dat2
		vt10dat2
		vt11dat2
		vt12dat2
		vt52dat2
		vt52ad1_2
		vt14dat2
		vt15dat2
		vt16dat2
		vt17dat2
		vt18dat2
		vt19dat2
		vt20dat2
		vt34dat2
		vt21dat2
		vt22dat2
		vt24dat2
		vt25dat2
		vt26dat2
		vt28dat2
		vt29dat2
		vt55dat2
		vt56dat2
		vt66dat2
		vt30dat2
		vt32dat2
		vt33dat2
		vt35dat2
		vt38dat2
		vt40dat2
		vt53dat2
		vt54dat2
		vt67dat2
		vt70dat2
		vt01dat3
		vt44rnd
		vt63rnd
		vt71rnd
		vt72rnd
		vt48_2
		vt48rnd
		epidermalaging
		epidermalagrnd
		cogstate
		cogstaternd
		maskworn_VisProChe
		vteyetrdt
		vteyetrdone
		vteyetrrnd
		vteyetrresch
		intestinalperm
		intestinalpermrnd
		vt73b
		vt59
		vt59a
		vt60
		vt60a
		vt68
		vt68a
		vt74
		vt74a
		vt73dat2
		followup
		vt69
		vt69a
		vt69b
		vt69dat2
		vt75
		vt75a
		vt48_3
		auto_id_VisProChe
		vt58
		vt48
		vt09sb
		vt09srnd
		vt06hid
		lab07a_VisProChe
		lab07b_VisProChe
		vt01dat2
		vttime1
		vttimea
		vttime2
		vttimeb
		date_completed
		vt01dat
		vt01id
		vt02dat
		vt02id
		vt02
		vt03dat
		vt03id
		vt03
		vt03a
		vt03b
		vt04dat
		vt04id
		vt04a
		vt04b
		vt05dat
		vt05id
		vt05a
		vt05b
		vt06dat
		vt06id
		vt06c
		vt06ca
		vt06cb
		vt06f
		vt06fa
		vt06fb
		vt6hdat
		vt07dat
		vt07id
		vt08dat
		vt08id
		vt09dat
		vt09id
		vt10dat
		vt10id
		vt11dat
		vt11id
		vt12dat
		vt12id
		vt13dat
		vt13id
		vt13
		vt13a
		vt13b
		vt52dat
		vt52id
		vt52ad1
		vt14dat
		vt14id
		vt15dat
		vt15id
		vt16dat
		vt16id
		vt17dat
		vt17id
		vt18dat
		vt18id
		vt19dat
		vt19id
		vt20dat
		vt20id
		vt34dat
		vt34id
		vt21dat
		vt21id
		vt22dat
		vt22id
		vt23dat
		vt23id
		vt23
		vt23a
		vt23b
		vt24dat
		vt24id
		vt25dat
		vt25id
		vt26dat
		vt26id
		vt28dat
		vt27id
		vt29dat
		vt29id
		vt55dat
		vt55id
		vt56dat
		vt56id
		vt66dat
		vt66id
		vt73dat
		vt73id
		vt59dat
		vt59id
		vt59b
		vt60dat
		vt60id
		vt60b
		vt64dat
		vt64id
		vt64
		vt64a
		vt64b
		vt68dat
		vt68id
		vt68b
		vt30dat
		vt30id
		vt32dat
		vt32id
		vt33dat
		vt33id
		sensorydt
		sensorytid
		sensoryresch
		vt31dat
		vt31id
		vt31b
		fittsdone
		fittsrnd
		vt69dat
		vt69id
		vt35dat
		vt35id
		vt38dat
		vt38id
		vt40dat
		vt40id
		vt53dat
		vt53id
		vt54dat
		vt54id
		vt67dat
		vt70dat
		vt47
		vt61
		vt62
		vt57
		vt36dat
		vt36id
		vt36
		vt36a
		vt36b
		vt37dat
		vt37id
		vt37
		vt37a
		vt37b
		vt39dat
		vt39id
		vt39
		vt39a
		vt39b
		vt43
		vt45
		vt50
		vt51
		tester_id
		acknowledgment_form
		acknowledgment_form_comment
		copy_md_orders
		copy_md_orders_comment
		orders
		orders_comment
		blsa_consent_hipaa
		blsa_consent_hipaa_comment
		validate_hipaa
		validate_hipaa_comment
		advanced_directives
		advanced_directives_comment
		falls_risk
		falls_risk_comment
		pneumoccoccal_questionnaire
		pneumoccoccal_question_comment
		pneumoccoccal_screen
		pneumoccoccal_screen_comment
		cytapheresis
		cytapheresis_comment
		hiv_consent
		hiv_consent_comment
		radiation_exposition
		radiation_exposition_comment
		ekg
		ekg_comment
		holter_monitor
		holter_monitor_comment
		extra_comment_1
		height_weight
		height_weight_comment
		vital_signs
		vital_signs_comment
		fasting_urine
		fasting_urine_comment
		urine_24_hours
		urine_24_hours_comment
		bdnf
		bdnf_comment
		nan_ping_tubes
		nan_ping_tubes_comment
		bhcg
		bhcg_comment
		hiv_serology
		hiv_serology_comment
		blood_draw
		blood_draw_comment
		strength_test_blood
		strength_test_blood_comment
		ogtt
		ogtt_comment
		extra_comment_2
		physical_examination
		physical_examination_comment
		finger_tapping_test
		finger_tapping_test_comment
		medical_interview
		medical_interview_comment
		socio_demographic_interview
		socio_demographic_inte_comment
		blessed_mental
		blessed_mental_comment
		extra_comment_3
		dexa_scan
		dexa_scan_comment
		knee_xray
		knee_xray_comment
		hand_xray
		hand_xray_comment
		hand_photo
		hand_photo_comment
		ctscan
		ctscan_comment
		mri_neuro_imaging
		mri_neuro_imaging_comment
		grip_strength
		grip_strength_comment
		knee_strength_right
		knee_strength_right_comment
		knee_strength_left
		knee_strength_left_comment
		le_physical_performance
		le_physical_performanc_comment
		long_distance_corridor_walk
		long_distance_corridor_comment
		gait_lab
		gait_lab_comment
		extra_comment_4
		early_markers_ad
		early_markers_ad_comment
		core_cognitive_testing
		core_cognitive_testing_comment
		personal_computer_testing
		personal_computer_test_comment
		extra_comment_5
		emg
		emg_comment
		vibration_sensitivity_nrsv
		vibration_sensitivity_comment
		proprioception_test
		proprioception_test_comment
		extra_comment_6
		resting_metabolic_rate
		resting_metabolic_rate_comment
		treadmill_stress_test
		treadmill_stress_test_comment
		oxygen_consumption
		oxygen_consumption_comment
		pulmonary_function_test
		pulmonary_function_tes_comment
		echocardiogram
		echocardiogram_comment
		carotid_ultrasound
		carotid_ultrasound_comment
		pulse_wave_velocity
		pulse_wave_velocity_comment
		abi
		abi_comment
		extra_comment_7
		autopsy
		autopsy_comment
		body_measurements
		body_measurements_comment
		extra_comment_8
		vision_testing
		vision_testing_comment
		vision_stereopsis
		vision_stereopsis_comment
		visual_fields
		visual_fields_comment
		extra_comment_9
		food_frequency_questionnaire
		food_frequency_questio_comment
		food_intake_record
		food_intake_record_comment
		progress_note
		progress_note_comment
		on_study_card
		on_study_card_comment
		extra_comment_10
		best_list
		best_list_comment
		data_in_study_manager_comment
		crf_parent_name_VisProChe
		study_name_VisProChe
		vt01_1
		vt02_1
		vt04_1
		vt05_1
		vt48_0
		vt48_1
		vt48_2_1
		vt48_2_2
		vt48_2_3
		vt50_0
		vt50_1
		vt50_2
		vt50_3
		vt57_0
		vt57_1
		vt57_2
		vt57_3
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
		crf_version_VisProChe = "CRF Version"
		obsdate_data_in_study_manager = "Data_in_PAS"
		vttype = "Visit type"
		blank_VisProChe = "Blank Form"
		vtdate2 = "Date Completed"
		vt01 = "BLSA Consent done"
		vt04 = "Vital signs done"
		vt05 = "Height and Weight done"
		vt06a = "Blood and lab work done"
		vt06aa = "Blood and lab work RND"
		vt06ab = "Blood and lab work to be resch"
		vt52 = "Activity Monitor done"
		vt52a = "Activity Monitor RND"
		vt52b = "Activity Monitor to be resch"
		vt14 = "Grip Strength done"
		vt14a = "Grip Strength RND"
		vt14b = "Grip Strength to be resch"
		vt16 = "LE Physical Perf done"
		vt16a = "LE Physical Perf RND"
		vt16b = "LE Physical Perf to be resch"
		vt19 = "Core Cognitive Testing done"
		vt19a = "Core Cognitive Testing RND"
		vt19b = "Core Cognitive Testing to be resch"
		vt32 = "Medical Interview done"
		vt32a = "Medical Interview RND"
		vt32b = "Medical Interview to be resch"
		vt33 = "General Interview done"
		vt33a = "General Interview RND"
		vt33b = "General Interview to be resch"
		vt42 = "Medication List done"
		vt46 = "Best list"
		vt46a = "Best list comment"
		cdr = "CDR"
		neuroimaging = "Neuro Imaging participant"
		autopsystudy = "Autopsy Study Participant"
		reactiontime = "Computer reaction time testing"
		reacttimernd = "Computer reaction time testing RND"
		reacttimeres = "Computer reaction time testing to be rescheduled"
		activityscaleq = "Activity Related Fatigue Scale"
		epworthss = "Epworth Sleep Scale"
		lateraldom = "Lateral Dominance"
		swallowingq = "Swallowing Questionnaire"
		vtdate1 = "Initial date"
		vt06b = "Fasting Urine done"
		vt06ba = "Fasting Urine RND"
		vt06bb = "Fasting Urine to be resch"
		vt06d = "Nan Ping tbs done"
		vt06da = "Nan Ping tbs RND"
		vt06db = "Nan Ping tbs to be resch"
		vt06e = "BHCG done"
		vt06ea = "BHCG RND"
		vt06eb = "BHCG to be resch"
		vt06g = "HIV Serology done"
		vt06ga = "HIV Serology RND"
		vt06gb = "HIV Serology to be resch"
		vt06gc = "HIV Serology consent signed"
		vt06h = "Urine 24Hr done"
		vt06ha = "Urine 24Hr RND"
		vt06hb = "Urine 24Hr to be resch"
		vt07 = "OGTT_ done"
		vt07a = "OGTT RND"
		vt07b = "OGTT to be resch"
		vt08ac = "Cardiovascular Assessment Contraindication"
		vt08a = "PWV done"
		vt08aa = "PWV RND"
		vt08ab = "PWV to be resch"
		vt08ba = "AGI done"
		vt08bb = "AGI RND"
		vt08b = "AGI to be resch"
		vt08c = "ABI done"
		vt08ca = "ABI RND"
		vt08cb = "ABI to be resch"
		vt09a = "Treadmill done"
		vt09aa = "Treadmill RND"
		vt09ab = "Treadmill to be resch"
		vt09b = "O2 Consumption done"
		vt09ba = "O2 Consumption RND"
		vt10 = "Pulmonary Function done"
		vt10a = "Pulmonary Function RND"
		vt10b = "Pulmonary Function to be resch"
		vt11a = "Echo done"
		vt11aa = "Echo RND"
		vt11ab = "Echo to be resch"
		vt11b = "Carotid done"
		vt11ba = "Carotid RND"
		vt11bb = "Carotid to be resch"
		vt12 = "EKG done"
		vt12a = "EKG RND"
		vt12b = "EKG to be resch"
		vt52ad1c = "Activity Monitor Note"
		vt15 = "Knee Strength done"
		vt15a = "Knee Strength RND"
		vt15b = "Knee Strength to be resch"
		vt17 = "LDCW done"
		vt17a = "LDCW RND"
		vt17b = "LDCW to be resch"
		vt18 = "Gait Lab done"
		vt18a = "Gait Lab RND"
		vt18b = "Gait Lab to be resch"
		vt20 = "Early Markers Testing done"
		vt20a = "Early Markers RND"
		vt20b = "Early Markers to be resch"
		vt34 = "Blessed Mental done"
		vt34a = "Blessed Mental RND"
		vt34b = "Blessed Mental to be resch"
		vt21 = "Personal Computer Testing done"
		vt21a = "Personal ComputerPersonal Computer RND"
		vt21b = "Personal Computer Testing to be resch"
		vt22 = "EMG done"
		vt22a = "EMG RND"
		vt22b = "EMG to be resch"
		vt24 = "Proproiception done"
		vt24a = "Proproiception RND"
		vt24b = "Proproiception to be resch"
		vt25 = "Resting Metabolic Rate done"
		vt25a = "Resting Metabolic Rate RND"
		vt25b = "Resting Metabolic Rate to be resch"
		vt26 = "Anthropometry done"
		vt26a = "Anthropometry RND"
		vt26b = "Anthropometry to be resch"
		vt27 = "Contrast Sens Vis Acuity done"
		vt27a = "Contrast Sens Vis Acuity RND"
		vt27b = "Contrast Sens Vis Acuity to be resch"
		vt28 = "Vision Stereopsis done"
		vt28a = "Vision Stereopsis RND"
		vt28b = "Vision Stereopsis to be resch"
		vt29 = "Visual Fields done"
		vt29a = "Visual Fields RND"
		vt29b = "Visual Fields to be resch"
		vt55 = "Taste Bud Photo done"
		vt55a = "Taste Bud Photo RND"
		vt55b = "Taste Bud Photo to be resch"
		vt56 = "Hearing Test done"
		vt56a = "Hearing Test RND"
		vt56b = "Hearing Test to be resch"
		vt66 = "Smell test done"
		vt66a = "Smell test RND"
		vt66b = "Smell test to be resch"
		vt30 = "Physical Exam done"
		vt30a = "Physical Exam RND"
		vt30b = "Physical Exam to be resch"
		vt31 = "Finger Tapping done"
		vt31a = "Finger Tapping RND"
		vt35 = "Radiation Exposure done"
		vt35a = "Radiation Exposure RND"
		vt35b = "Radiation Exposure to be resch"
		vt38 = "DEXA done"
		vt38a = "DEXA RND"
		vt38b = "DEXA to be resch"
		vt40 = "CT Scan done"
		vt40a = "CT Scan RND"
		vt40b = "CT Scan to be resch"
		vt53 = "MRI done"
		vt53a = "MRI RND"
		vt53b = "MRI to be resch"
		vt54 = "MRI Screening done"
		vt54a = "MRI Screening RND"
		vt54b = "MRI Screening to be resch"
		vt67a = "Sleep Study Done"
		vt67b = "Sleep Study RND"
		vt70 = "RLS Done"
		vt70a = "RLS RND"
		vt41 = "Falls Risk done"
		vt44 = "Food Freq Quest done"
		vt49 = "Autopsy Interview done"
		vt63 = "Muscle Bx done"
		vt71 = "Skin Biopsy Done"
		vt72 = "Core Body Temp Done"
		vt48b = "Cytapheresis to be resch"
		vt04dat2 = "Vital signs date"
		vt05dat2 = "Height and Weight date"
		vt06dat2 = "Blood and lab work date"
		vt6hdat2 = "Urine 24Hr date"
		vt07dat2 = "OGTT date"
		vt08dat2 = "Cardiovascular Assessment date"
		vt09dat2 = "Stress testing date"
		vt10dat2 = "Pulmonary function testing date"
		vt11dat2 = "Echo carotid date"
		vt12dat2 = "EKG date"
		vt52dat2 = "Activity Monitor date"
		vt52ad1_2 = "Activity Monitor which devide"
		vt14dat2 = "Grip Strength date"
		vt15dat2 = "Knee Strength date"
		vt16dat2 = "LE Physical Perf date"
		vt17dat2 = "LDCW date"
		vt18dat2 = "Gait Lab date"
		vt19dat2 = "Core Cognitive Testing date"
		vt20dat2 = "Early Markers Testing date"
		vt34dat2 = "Blessed Mental Testing date"
		vt21dat2 = "Personal Computer Testing date"
		vt22dat2 = "EMG date"
		vt24dat2 = "Proproiception date"
		vt25dat2 = "Resting Metabolic Rate date"
		vt26dat2 = "Anthropometry date"
		vt28dat2 = "Vision testing date"
		vt29dat2 = "Visual Fields date"
		vt55dat2 = "Taste Bud Photo date"
		vt56dat2 = "Hearing Test date"
		vt66dat2 = "Smell test date"
		vt30dat2 = "Physical Exam date"
		vt32dat2 = "Medical Interview date"
		vt33dat2 = "General Interview date"
		vt35dat2 = "Radiation Exposure date"
		vt38dat2 = "DEXA date"
		vt40dat2 = "CT Scan date"
		vt53dat2 = "MRI date"
		vt54dat2 = "MRI Screening date"
		vt67dat2 = "Sleep Study Date"
		vt70dat2 = "RLS date"
		vt01dat3 = "BLSA Consent"
		vt44rnd = "FFQ RND"
		vt63rnd = "Muscle Biopsy RND"
		vt71rnd = "Skin Biopsy RND"
		vt72rnd = "CBT RND"
		vt48_2 = "Cytapheresis done"
		vt48rnd = "Cytapheresis RND"
		epidermalaging = "Epidermal Aging"
		epidermalagrnd = "Epidermal AgingRND"
		cogstate = "Cog State done"
		cogstaternd = "Cog State RND"
		maskworn_VisProChe = "COVID-19 Pandemic Mask worn"
		vteyetrdt = "Eye Tracking date"
		vteyetrdone = "Eye Tracking done"
		vteyetrrnd = "Eye Tracking RND"
		vteyetrresch = "Eye Tracking to be resch"
		intestinalperm = "Intestinal Permeability"
		intestinalpermrnd = "Intestinal Permeability RND"
		vt73b = "Vestibular Testing resch"
		vt59 = "VEMP done"
		vt59a = "VEMP RND"
		vt60 = "VOG done"
		vt60a = "VOG RND"
		vt68 = "Orientation Done"
		vt68a = "Orientation RND"
		vt74 = "Triangle Test Done"
		vt74a = "Triangle Test RND"
		vt73dat2 = "Vestibular Testing Date"
		followup = "Additional Follow-up contact as needed between scheduled visit"
		vt69 = "HAMMS done"
		vt69a = "HAMMS RND"
		vt69b = "HAMMS to be resch"
		vt69dat2 = "HAMMS Date"
		vt75 = "Fitts Task Done"
		vt75a = "Fitts Task RND"
		vt48_3 = "Cytapheresis done"
		auto_id_VisProChe = "Unique Teleform Number"
		vt58 = "Activity Related Fatigue Scale"
		vt48 = "Cytapheresis done"
		vt09sb = "TM Stress Blood done"
		vt09srnd = "TM Stress Blood RND"
		vt06hid = "Urine 24Hr TID"
		lab07a_VisProChe = "Urine 24 Hr Begin time"
		lab07b_VisProChe = "Urine 24 Hr End time"
		vt01dat2 = "BLSA Consent"
		vttime1 = "Initial time"
		vttimea = "Initial time am pm"
		vttime2 = "Sign out time"
		vttimeb = "Sign out time am pm"
		date_completed = "Date_Completed"
		vt01dat = "BLSA Consent"
		vt01id = "BLSA Consent TID"
		vt02dat = "HIPAA Date"
		vt02id = "HIPAA TID"
		vt02 = "HIPAA Consent done"
		vt03dat = "Pneumococcal Screen date"
		vt03id = "Pneumococcal Screen TID"
		vt03 = "Pneumococcal Screen done"
		vt03a = "Pneumococcal Screen RND"
		vt03b = "Pneumococcal Screen to be resch"
		vt04dat = "Vital signs date"
		vt04id = "Vital signs TID"
		vt04a = "Vital signs RND"
		vt04b = "Vital signs to be resch"
		vt05dat = "Height and Weight date"
		vt05id = "Height and Weight TID"
		vt05a = "Height and weight RND"
		vt05b = "Height and weight to be resch"
		vt06dat = "Blood and lab work date"
		vt06id = "Blood and lab work TID"
		vt06c = "BDNF done"
		vt06ca = "BDNF RND"
		vt06cb = "BDNF to be resch"
		vt06f = "Strength blood done"
		vt06fa = "Strength blood RND"
		vt06fb = "Strength blood to be resch"
		vt6hdat = "Urine 24Hr date"
		vt07dat = "OGTT date"
		vt07id = "OGTT TID"
		vt08dat = "Cardiovascular Assessment date"
		vt08id = "Cardiovascular Assessment TID"
		vt09dat = "Stress testing date"
		vt09id = "StressTesting TID"
		vt10dat = "Pulmonary function testing date"
		vt10id = "Pulmonary Function TID"
		vt11dat = "Echo carotid date"
		vt11id = "Echo carotid TID"
		vt12dat = "EKG date"
		vt12id = "EKG TID"
		vt13dat = "Holter date"
		vt13id = "Holter TID"
		vt13 = "Holter done"
		vt13a = "Holter RND"
		vt13b = "Holter to be resch"
		vt52dat = "Activity Monitor date"
		vt52id = "Activity Monitor TID"
		vt52ad1 = "Activity Monitor which devide"
		vt14dat = "Grip Strength date"
		vt14id = "Grip Strength TID"
		vt15dat = "Knee Strength date"
		vt15id = "Knee Strength TID"
		vt16dat = "LE Physical Perf date"
		vt16id = "LE Physical Perf TID"
		vt17dat = "LDCW date"
		vt17id = "LDCW TID"
		vt18dat = "Gait Lab date"
		vt18id = "Gait Lab TID"
		vt19dat = "Core Cognitive Testing date"
		vt19id = "Core Cognitive Testing TID"
		vt20dat = "Early Markers Testing date"
		vt20id = "Early Markers Testing TID"
		vt34dat = "Blessed Mental Testing date"
		vt34id = "Blessed Mental TID"
		vt21dat = "Personal Computer Testing date"
		vt21id = "Personal Computer Testing TID"
		vt22dat = "EMG date"
		vt22id = "EMG TID"
		vt23dat = "Vibration Sensitivity date"
		vt23id = "Vibration Sensitivity TID"
		vt23 = "Vibration Sensitivity done"
		vt23a = "Vibration Sensitivity RND"
		vt23b = "Vibration Sensitivity to be resch"
		vt24dat = "Proproiception date"
		vt24id = "Proproiception TID"
		vt25dat = "Resting Metabolic Rate date"
		vt25id = "Resting Metabolic Rate TID"
		vt26dat = "Anthropometry date"
		vt26id = "Anthropometry TID"
		vt28dat = "Vision testing date"
		vt27id = "Vision Testing TID"
		vt29dat = "Visual Fields date"
		vt29id = "Visual Fields TID"
		vt55dat = "Taste Bud Photo date"
		vt55id = "Taste Bud Photo TID"
		vt56dat = "Hearing Test date"
		vt56id = "Hearing Test TID"
		vt66dat = "Smell test date"
		vt66id = "Smell test TID"
		vt73dat = "Vestibular Testing Date"
		vt73id = "Vestibular Testing TID"
		vt59dat = "VEMP date"
		vt59id = "VEMP TID"
		vt59b = "VEMP to be resch"
		vt60dat = "VOG date"
		vt60id = "VOG TID"
		vt60b = "VOG to be resch"
		vt64dat = "Balance Test date"
		vt64id = "Balance Test TID"
		vt64 = "Balance Test done"
		vt64a = "Balance Test RND"
		vt64b = "Balance Test to be resch"
		vt68dat = "Orientation Date"
		vt68id = "Orientation TID"
		vt68b = "Orientation to be resch"
		vt30dat = "Physical Exam date"
		vt30id = "Physical Exam TID"
		vt32dat = "Medical Interview date"
		vt32id = "Medical Interview TID"
		vt33dat = "General Interview date"
		vt33id = "General Interview TID"
		sensorydt = "Sensory Testing Date"
		sensorytid = "Sensory Testing TID"
		sensoryresch = "Sensory Testing to be resch"
		vt31dat = "Finger Tapping date"
		vt31id = "Finger Tapping TID"
		vt31b = "Finger Tapping to be resch"
		fittsdone = "Fitts Task Done"
		fittsrnd = "Fitts Task RND"
		vt69dat = "HAMMS Date"
		vt69id = "HAMMS TID"
		vt35dat = "Radiation Exposure date"
		vt35id = "Radiation Exposure TID"
		vt38dat = "DEXA date"
		vt38id = "DEXA TID"
		vt40dat = "CT Scan date"
		vt40id = "CT Scan TID"
		vt53dat = "MRI date"
		vt53id = "MRI TID"
		vt54dat = "MRI Screening date"
		vt54id = "MRI Screening TID"
		vt67dat = "Sleep Study Date"
		vt70dat = "RLS date"
		vt47 = "Validate done"
		vt61 = "Creatine done"
		vt62 = "DLW done"
		vt57 = "Regional Adiposity done"
		vt36dat = "Knee x-ray date"
		vt36id = "Knee x-ray TID"
		vt36 = "Knee x-ray done"
		vt36a = "Knee x-ray RND"
		vt36b = "Knee x-ray to be resch"
		vt37dat = "Hand x-ray date"
		vt37id = "Hand x-ray TID"
		vt37 = "Hand x-ray done"
		vt37a = "Hand x-ray RND"
		vt37b = "Hand x-ray to be resch"
		vt39dat = "Hand photo date"
		vt39id = "Hand photo TID"
		vt39 = "Hand photo done"
		vt39a = "Hand photo RND"
		vt39b = "Hand photo to be resch"
		vt43 = "Food Diary"
		vt45 = "On study card"
		vt50 = "MRI Neuro"
		vt51 = "Progress Note"
		tester_id = "Tester_ID"
		acknowledgment_form = "Acknowledgment_Form"
		acknowledgment_form_comment = "Acknowledgment_Form_comment"
		copy_md_orders = "Copy_MD_Orders"
		copy_md_orders_comment = "Copy_MD_Orders_comment"
		orders = "Orders"
		orders_comment = "Orders_comment"
		blsa_consent_hipaa = "BLSA_Consent_HIPAA"
		blsa_consent_hipaa_comment = "BLSA_Consent_HIPAA_comment"
		validate_hipaa = "VALIDATE_HIPAA"
		validate_hipaa_comment = "VALIDATE_HIPAA_comment"
		advanced_directives = "Advanced_Directives"
		advanced_directives_comment = "Advanced_Directives_comment"
		falls_risk = "Falls_Risk"
		falls_risk_comment = "Falls_Risk_comment"
		pneumoccoccal_questionnaire = "Pneumoccoccal_Questionnaire"
		pneumoccoccal_question_comment = "Pneumoccoccal_Question_comment"
		pneumoccoccal_screen = "Pneumoccoccal_Screen"
		pneumoccoccal_screen_comment = "Pneumoccoccal_Screen_comment"
		cytapheresis = "Cytapheresis"
		cytapheresis_comment = "Cytapheresis_comment"
		hiv_consent = "HIV_Consent"
		hiv_consent_comment = "HIV_Consent_comment"
		radiation_exposition = "Radiation_Exposition"
		radiation_exposition_comment = "Radiation_Exposition_comment"
		ekg = "EKG"
		ekg_comment = "EKG_comment"
		holter_monitor = "Holter_Monitor"
		holter_monitor_comment = "Holter_Monitor_comment"
		extra_comment_1 = "Extra_comment_1"
		height_weight = "Height_Weight"
		height_weight_comment = "Height_Weight_comment"
		vital_signs = "Vital_Signs"
		vital_signs_comment = "Vital_Signs_comment"
		fasting_urine = "Fasting_Urine"
		fasting_urine_comment = "Fasting_Urine_comment"
		urine_24_hours = "Urine_24_hours"
		urine_24_hours_comment = "Urine_24_hours_comment"
		bdnf = "BDNF"
		bdnf_comment = "BDNF_comment"
		nan_ping_tubes = "Nan_Ping_tubes"
		nan_ping_tubes_comment = "Nan_Ping_tubes_comment"
		bhcg = "BHCG"
		bhcg_comment = "BHCG_comment"
		hiv_serology = "HIV_serology"
		hiv_serology_comment = "HIV_serology_comment"
		blood_draw = "Blood_Draw"
		blood_draw_comment = "Blood_Draw_comment"
		strength_test_blood = "Strength_Test_Blood"
		strength_test_blood_comment = "Strength_Test_Blood_comment"
		ogtt = "OGTT"
		ogtt_comment = "OGTT_comment"
		extra_comment_2 = "Extra_comment_2"
		physical_examination = "Physical_Examination"
		physical_examination_comment = "Physical_Examination_comment"
		finger_tapping_test = "Finger_Tapping_Test"
		finger_tapping_test_comment = "Finger_Tapping_Test_comment"
		medical_interview = "Medical_Interview"
		medical_interview_comment = "Medical_Interview_comment"
		socio_demographic_interview = "Socio_Demographic_Interview"
		socio_demographic_inte_comment = "Socio_Demographic_Inte_comment"
		blessed_mental = "Blessed_Mental"
		blessed_mental_comment = "Blessed_Mental_comment"
		extra_comment_3 = "Extra_comment_3"
		dexa_scan = "DEXA_Scan"
		dexa_scan_comment = "DEXA_Scan_comment"
		knee_xray = "Knee_Xray"
		knee_xray_comment = "Knee_XRay_comment"
		hand_xray = "Hand_Xray"
		hand_xray_comment = "Hand_XRay_comment"
		hand_photo = "Hand_Photo"
		hand_photo_comment = "Hand_Photo_comment"
		ctscan = "CTScan"
		ctscan_comment = "CTScan_comment"
		mri_neuro_imaging = "MRI_Neuro_Imaging"
		mri_neuro_imaging_comment = "MRI_Neuro_Imaging_comment"
		grip_strength = "Grip_Strength"
		grip_strength_comment = "Grip_Strength_comment"
		knee_strength_right = "Knee_Strength_Right"
		knee_strength_right_comment = "Knee_Strength_Right_comment"
		knee_strength_left = "Knee_Strength_Left"
		knee_strength_left_comment = "Knee_Strength_Left_comment"
		le_physical_performance = "LE_Physical_Performance"
		le_physical_performanc_comment = "LE_Physical_Performanc_comment"
		long_distance_corridor_walk = "Long_Distance_Corridor_Walk"
		long_distance_corridor_comment = "Long_Distance_Corridor_comment"
		gait_lab = "Gait_Lab"
		gait_lab_comment = "Gait_Lab_comment"
		extra_comment_4 = "Extra_comment_4"
		early_markers_ad = "Early_Markers_AD"
		early_markers_ad_comment = "Early_Markers_AD_comment"
		core_cognitive_testing = "Core_Cognitive_Testing"
		core_cognitive_testing_comment = "Core_Cognitive_Testing_comment"
		personal_computer_testing = "Personal_Computer_Testing"
		personal_computer_test_comment = "Personal_Computer_Test_comment"
		extra_comment_5 = "Extra_comment_5"
		emg = "EMG"
		emg_comment = "EMG_comment"
		vibration_sensitivity_nrsv = "Vibration_Sensitivity_NRSV"
		vibration_sensitivity_comment = "Vibration_Sensitivity_comment"
		proprioception_test = "Proprioception_Test"
		proprioception_test_comment = "Proprioception_Test_comment"
		extra_comment_6 = "Extra_comment_6"
		resting_metabolic_rate = "Resting_Metabolic_Rate"
		resting_metabolic_rate_comment = "Resting_Metabolic_Rate_comment"
		treadmill_stress_test = "Treadmill_Stress_test"
		treadmill_stress_test_comment = "Treadmill_Stress_test_comment"
		oxygen_consumption = "Oxygen_Consumption"
		oxygen_consumption_comment = "Oxygen_Consumption_comment"
		pulmonary_function_test = "Pulmonary_Function_Test"
		pulmonary_function_tes_comment = "Pulmonary_Function_Tes_comment"
		echocardiogram = "Echocardiogram"
		echocardiogram_comment = "Echocardiogram_comment"
		carotid_ultrasound = "Carotid_Ultrasound"
		carotid_ultrasound_comment = "Carotid_Ultrasound_comment"
		pulse_wave_velocity = "Pulse_Wave_Velocity"
		pulse_wave_velocity_comment = "Pulse_Wave_Velocity_comment"
		abi = "ABI"
		abi_comment = "ABI_comment"
		extra_comment_7 = "Extra_comment_7"
		autopsy = "Autopsy"
		autopsy_comment = "Autopsy_comment"
		body_measurements = "Body_Measurements"
		body_measurements_comment = "Body_Measurements_comment"
		extra_comment_8 = "Extra_comment_8"
		vision_testing = "Vision_Testing"
		vision_testing_comment = "Vision_Testing_comment"
		vision_stereopsis = "Vision_Stereopsis"
		vision_stereopsis_comment = "Vision_Stereopsis_comment"
		visual_fields = "Visual_Fields"
		visual_fields_comment = "Visual_Fields_comment"
		extra_comment_9 = "Extra_comment_9"
		food_frequency_questionnaire = "Food_Frequency_Questionnaire"
		food_frequency_questio_comment = "Food_Frequency_Questio_comment"
		food_intake_record = "Food_Intake_Record"
		food_intake_record_comment = "Food_Intake_Record_comment"
		progress_note = "Progress_Note"
		progress_note_comment = "Progress_Note_comment"
		on_study_card = "On_Study_Card"
		on_study_card_comment = "On_Study_Card_comment"
		extra_comment_10 = "Extra_comment_10"
		best_list = "Best_List"
		best_list_comment = "Best_List_comment"
		data_in_study_manager_comment = "Data_in_Study_Manager_comment"
		crf_parent_name_VisProChe = "CRF Parent Name"
		study_name_VisProChe = "Study Name"
		vt01_1 = "BLSA Consent done : Done (Checkbox Indicator)"
		vt02_1 = "HIPAA Consent done : Done (Checkbox Indicator)"
		vt04_1 = "Vital signs done : Done (Checkbox Indicator)"
		vt05_1 = "Height and Weight done : Done (Checkbox Indicator)"
		vt48_0 = "Cytapheresis done : N/E (Checkbox Indicator)"
		vt48_1 = "Cytapheresis done : Done (Checkbox Indicator)"
		vt48_2_1 = "Cytapheresis done : Done (Checkbox Indicator)"
		vt48_2_2 = "Cytapheresis done : Consented (Checkbox Indicator)"
		vt48_2_3 = "Cytapheresis done : N/Done (Checkbox Indicator)"
		vt50_0 = "MRI Neuro : N/E (Checkbox Indicator)"
		vt50_1 = "MRI Neuro : Done (Checkbox Indicator)"
		vt50_2 = "MRI Neuro : Consented (Checkbox Indicator)"
		vt50_3 = "MRI Neuro : N/Done (Checkbox Indicator)"
		vt57_0 = "Regional Adiposity done : N/E (Checkbox Indicator)"
		vt57_1 = "Regional Adiposity done : Done (Checkbox Indicator)"
		vt57_2 = "Regional Adiposity done : Consented (Checkbox Indicator)"
		vt57_3 = "Regional Adiposity done : N/Done (Checkbox Indicator)"
	;
	FORMAT
		obsdate_data_in_study_manager obsdate_data_in_study_manager_.
		vttype vttype_.
		vt06a vt06a_.
		vt06aa vt06aa_.
		vt06ab vt06ab_.
		vt52 vt52_.
		vt52a vt52a_.
		vt52b vt52b_.
		vt14 vt14_.
		vt14a vt14a_.
		vt14b vt14b_.
		vt16 vt16_.
		vt16a vt16a_.
		vt16b vt16b_.
		vt19 vt19_.
		vt19a vt19a_.
		vt19b vt19b_.
		vt32 vt32_.
		vt32a vt32a_.
		vt32b vt32b_.
		vt33 vt33_.
		vt33a vt33a_.
		vt33b vt33b_.
		vt42 vt42_.
		vt46 vt46_.
		vt06b vt06b_.
		vt06ba vt06ba_.
		vt06bb vt06bb_.
		vt06d vt06d_.
		vt06da vt06da_.
		vt06db vt06db_.
		vt06e vt06e_.
		vt06ea vt06ea_.
		vt06eb vt06eb_.
		vt06g vt06g_.
		vt06ga vt06ga_.
		vt06gb vt06gb_.
		vt06gc vt06gc_.
		vt06h vt06h_.
		vt06ha vt06ha_.
		vt06hb vt06hb_.
		vt07 vt07_.
		vt07a vt07a_.
		vt07b vt07b_.
		vt08ac vt08ac_.
		vt08a vt08a_.
		vt08aa vt08aa_.
		vt08ab vt08ab_.
		vt08ba vt08ba_.
		vt08bb vt08bb_.
		vt08b vt08b_.
		vt08c vt08c_.
		vt08ca vt08ca_.
		vt08cb vt08cb_.
		vt09a vt09a_.
		vt09aa vt09aa_.
		vt09ab vt09ab_.
		vt09b vt09b_.
		vt09ba vt09ba_.
		vt10 vt10_.
		vt10a vt10a_.
		vt10b vt10b_.
		vt11a vt11a_.
		vt11aa vt11aa_.
		vt11ab vt11ab_.
		vt11b vt11b_.
		vt11ba vt11ba_.
		vt11bb vt11bb_.
		vt12 vt12_.
		vt12a vt12a_.
		vt12b vt12b_.
		vt15 vt15_.
		vt15a vt15a_.
		vt15b vt15b_.
		vt17 vt17_.
		vt17a vt17a_.
		vt17b vt17b_.
		vt18 vt18_.
		vt18a vt18a_.
		vt18b vt18b_.
		vt20 vt20_.
		vt20a vt20a_.
		vt20b vt20b_.
		vt34 vt34_.
		vt34a vt34a_.
		vt34b vt34b_.
		vt21 vt21_.
		vt21a vt21a_.
		vt21b vt21b_.
		vt22 vt22_.
		vt22a vt22a_.
		vt22b vt22b_.
		vt24 vt24_.
		vt24a vt24a_.
		vt24b vt24b_.
		vt25 vt25_.
		vt25a vt25a_.
		vt25b vt25b_.
		vt26 vt26_.
		vt26a vt26a_.
		vt26b vt26b_.
		vt27 vt27_.
		vt27a vt27a_.
		vt27b vt27b_.
		vt28 vt28_.
		vt28a vt28a_.
		vt28b vt28b_.
		vt29 vt29_.
		vt29a vt29a_.
		vt29b vt29b_.
		vt55 vt55_.
		vt55a vt55a_.
		vt55b vt55b_.
		vt56 vt56_.
		vt56a vt56a_.
		vt56b vt56b_.
		vt66 vt66_.
		vt66a vt66a_.
		vt66b vt66b_.
		vt30 vt30_.
		vt30a vt30a_.
		vt30b vt30b_.
		vt31 vt31_.
		vt31a vt31a_.
		vt35 vt35_.
		vt35a vt35a_.
		vt35b vt35b_.
		vt38 vt38_.
		vt38a vt38a_.
		vt38b vt38b_.
		vt40 vt40_.
		vt40a vt40a_.
		vt40b vt40b_.
		vt53 vt53_.
		vt53a vt53a_.
		vt53b vt53b_.
		vt54 vt54_.
		vt54a vt54a_.
		vt54b vt54b_.
		vt67a vt67a_.
		vt67b vt67b_.
		vt70 vt70_.
		vt70a vt70a_.
		vt41 vt41_.
		vt44 vt44_.
		vt49 vt49_.
		vt63 vt63_.
		vt71 vt71_.
		vt72 vt72_.
		vt48b vt48b_.
		vt52ad1_2 vt52ad1_2_.
		vt44rnd vt44rnd_.
		vt63rnd vt63rnd_.
		vt71rnd vt71rnd_.
		vt72rnd vt72rnd_.
		vt48_2 vt48_2_.
		vt48rnd vt48rnd_.
		epidermalaging epidermalaging_.
		epidermalagrnd epidermalagrnd_.
		cogstate cogstate_.
		cogstaternd cogstaternd_.
		maskworn_VisProChe maskworn_VisProChe_.
		vteyetrdone vteyetrdone_.
		vteyetrrnd vteyetrrnd_.
		vteyetrresch vteyetrresch_.
		intestinalperm intestinalperm_.
		intestinalpermrnd intestinalpermrnd_.
		vt73b vt73b_.
		vt59 vt59_.
		vt59a vt59a_.
		vt60 vt60_.
		vt60a vt60a_.
		vt68 vt68_.
		vt68a vt68a_.
		vt74 vt74_.
		vt74a vt74a_.
		followup followup_.
		vt69 vt69_.
		vt69a vt69a_.
		vt69b vt69b_.
		vt75 vt75_.
		vt75a vt75a_.
		vt48_3 vt48_3_.
		vt58 vt58_.
		vt09sb vt09sb_.
		vt09srnd vt09srnd_.
		vttimea vttimea_.
		vttimeb vttimeb_.
		vt03 vt03_.
		vt03a vt03a_.
		vt04a vt04a_.
		vt04b vt04b_.
		vt05a vt05a_.
		vt05b vt05b_.
		vt06c vt06c_.
		vt06ca vt06ca_.
		vt06cb vt06cb_.
		vt06f vt06f_.
		vt06fa vt06fa_.
		vt06fb vt06fb_.
		vt13 vt13_.
		vt13a vt13a_.
		vt13b vt13b_.
		vt52ad1 vt52ad1_.
		vt23 vt23_.
		vt23a vt23a_.
		vt23b vt23b_.
		vt59b vt59b_.
		vt60b vt60b_.
		vt64 vt64_.
		vt64a vt64a_.
		vt64b vt64b_.
		vt68b vt68b_.
		sensoryresch sensoryresch_.
		vt31b vt31b_.
		fittsdone fittsdone_.
		vt47 vt47_.
		vt61 vt61_.
		vt62 vt62_.
		vt36 vt36_.
		vt36a vt36a_.
		vt36b vt36b_.
		vt37 vt37_.
		vt37a vt37a_.
		vt37b vt37b_.
		vt39 vt39_.
		vt39a vt39a_.
		vt39b vt39b_.
		vt43 vt43_.
		vt45 vt45_.
		vt51 vt51_.
		acknowledgment_form acknowledgment_form_.
		copy_md_orders copy_md_orders_.
		orders orders_.
		blsa_consent_hipaa blsa_consent_hipaa_.
		validate_hipaa validate_hipaa_.
		advanced_directives advanced_directives_.
		falls_risk falls_risk_.
		pneumoccoccal_questionnaire pneumoccoccal_questionnaire_.
		pneumoccoccal_screen pneumoccoccal_screen_.
		cytapheresis cytapheresis_.
		hiv_consent hiv_consent_.
		radiation_exposition radiation_exposition_.
		ekg ekg_.
		holter_monitor holter_monitor_.
		height_weight height_weight_.
		vital_signs vital_signs_.
		fasting_urine fasting_urine_.
		urine_24_hours urine_24_hours_.
		bdnf bdnf_.
		nan_ping_tubes nan_ping_tubes_.
		bhcg bhcg_.
		hiv_serology hiv_serology_.
		blood_draw blood_draw_.
		strength_test_blood strength_test_blood_.
		ogtt ogtt_.
		physical_examination physical_examination_.
		finger_tapping_test finger_tapping_test_.
		medical_interview medical_interview_.
		socio_demographic_interview socio_demographic_interview_.
		blessed_mental blessed_mental_.
		dexa_scan dexa_scan_.
		knee_xray knee_xray_.
		hand_xray hand_xray_.
		hand_photo hand_photo_.
		ctscan ctscan_.
		mri_neuro_imaging mri_neuro_imaging_.
		grip_strength grip_strength_.
		knee_strength_right knee_strength_right_.
		knee_strength_left knee_strength_left_.
		le_physical_performance le_physical_performance_.
		long_distance_corridor_walk long_distance_corridor_walk_.
		gait_lab gait_lab_.
		early_markers_ad early_markers_ad_.
		core_cognitive_testing core_cognitive_testing_.
		personal_computer_testing personal_computer_testing_.
		emg emg_.
		vibration_sensitivity_nrsv vibration_sensitivity_nrsv_.
		proprioception_test proprioception_test_.
		resting_metabolic_rate resting_metabolic_rate_.
		treadmill_stress_test treadmill_stress_test_.
		oxygen_consumption oxygen_consumption_.
		pulmonary_function_test pulmonary_function_test_.
		echocardiogram echocardiogram_.
		carotid_ultrasound carotid_ultrasound_.
		pulse_wave_velocity pulse_wave_velocity_.
		abi abi_.
		autopsy autopsy_.
		body_measurements body_measurements_.
		vision_testing vision_testing_.
		vision_stereopsis vision_stereopsis_.
		visual_fields visual_fields_.
		food_frequency_questionnaire food_frequency_questionnaire_.
		food_intake_record food_intake_record_.
		progress_note progress_note_.
		on_study_card on_study_card_.
		best_list best_list_.
	;
RUN;


DATA blsa_visit_procedure_checklist;
    SET WORK.IMPORT;
RUN;
