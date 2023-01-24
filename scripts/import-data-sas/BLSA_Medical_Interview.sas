%let path_to_file = '../data-csv/BLSA_Medical_Interview.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE mdhxtyp_
		0 = 'Participant only'
		1 = 'Participant and proxy'
		2 = 'Proxy only'
		3 = 'Telephone interview'
		4 = 'Interview not done'
	;

	VALUE mdhx1_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx2_
		1 = 'At least annually'
		2 = 'At least biannually'
		3 = 'At least every 5 years'
		4 = 'Less than every 5 years'
		5 = 'Does not get routine exams'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx2f1_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx2f2_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx3_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx3a_
		1 = 'Within 1 year'
		2 = 'Within 2 years'
		3 = 'Within 5 years'
		4 = 'Over 5 years'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE mdhx4_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx5_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx6_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx7_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx7a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx8_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx9_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx10_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx11_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx12_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx12a_
		1 = 'Within 1 year'
		2 = 'Within 2 years'
		3 = 'Within 5 years'
		4 = 'Over 5 years'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE mdhx13_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx13a_
		1 = 'Within 1 year'
		2 = 'Within 2 years'
		3 = 'Within 5 years'
		4 = 'Over 5 years'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE mdhx14_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx15_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx15a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx15b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx15c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx16_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx16a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx16b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx16c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx17_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx17b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx17c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx18_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx18a1_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx18a2_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx18a3_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx18a4_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx18a5_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx18a6_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx19_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdh19a1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a9_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c9_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a10_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c10_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a12_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c12_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a13_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c13_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a14_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c14_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a15_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c15_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a16_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c16_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a17_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c17_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a18_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19c18_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a19_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19d19_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdhx20_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx20a1_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx20a2_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx20a3_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx20a4_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx20a5_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx20a6_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx20a7_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx21_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx22_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx22a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx23_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx24_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx25_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx26_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx27a_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx27aa_
		1 = 'Right eye only'
		2 = 'Left eye only'
		3 = 'Both eyes'
	;

	VALUE mdhx27b_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE mdhx27f_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE mdhx27g_
		1 = 'Right eye only'
		2 = 'Left eye only'
		3 = 'Both eyes'
	;

	VALUE mdhx27c_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx27cc_
		1 = 'Right eye only'
		2 = 'Left eye only'
		3 = 'Both eyes'
	;

	VALUE mdhx27d_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx27dd_
		1 = 'Right eye only'
		2 = 'Left eye only'
		3 = 'Both eyes'
	;

	VALUE mdhx27e_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx27ee_
		1 = 'Right eye only'
		2 = 'Left eye only'
		3 = 'Both eyes'
	;

	VALUE mdhx27i_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx27j_
		0 = 'Never'
		1 = 'Sometimes'
		3 = 'Often'
		4 = 'Constantly'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE mdhx27k_
		0 = 'Never'
		1 = 'Sometimes'
		3 = 'Often'
		4 = 'Constantly'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE mdhx28_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx28a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx29_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE mdhx29a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs1_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs1a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs1b_
		0 = 'No'
		1 = 'Yes'
		2 = 'Never hurry/walk uphill'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs1c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs1d_
		1 = 'Stop/slow down'
		2 = 'Take nitroglycerine'
		3 = 'Continue at same pace'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs1e_
		1 = 'Relieved'
		2 = 'Not relieved'
		7 = " Don't know"
		8 = 'Refused'
	;

	VALUE cvrs1f_
		1 = '10 minutes or less'
		2 = 'More than 10 minutes'
		8 = " Don't know"
	;

	VALUE cvrs1g1_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE cvrs1g2_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE cvrs1g3_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE cvrs1g4_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE cvrs1g5_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE cvrs1h_
		1 = 'Past month'
		2 = ' Past 3 months'
		3 = 'Past 6 months'
		4 = 'Past 12 months'
		5 = 'Over 12 months ago'
		8 = "Don't know"
	;

	VALUE cvrs1i_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs1j_
		0 = 'Did not see doctor'
		1 = 'Angina'
		2 = 'Heart attack'
		3 = 'Gas/Indigestion'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs2_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs2a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs2b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs2c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs2d_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs2e_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs2f_
		1 = 'Disappear in 10 minutes or less'
		2 = 'Continue for more than 10 minuters'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs3_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs3a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs3b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs4_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs4a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs5_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs5a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs5b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs6_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs7_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs8_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs8a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs9_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs9b_
		1 = 'Less than 1 hour'
		2 = 'At least 1 but < 24hr'
		3 = ' 24 or more hours'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE cvrs10_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs10b_
		1 = 'Less than 1 hour'
		2 = 'At least 1 but < 24hr'
		3 = ' 24 or more hours'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE cvrs11_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs11b_
		1 = 'Less than 1 hour'
		2 = 'At least 1 but < 24hr'
		3 = ' 24 or more hours'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE cvrs12_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs12b_
		1 = 'Less than 1 hour'
		2 = 'At least 1 but < 24hr'
		3 = ' 24 or more hours'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE cvrs12c_
		1 = 'Right side only'
		2 = 'Left side only'
		3 = 'Both sides'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs13_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs13b_
		1 = 'Less than 1 hour'
		2 = 'At least 1 but < 24hr'
		3 = ' 24 or more hours'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE cvrs13c_
		1 = 'Right side only'
		2 = 'Left side only'
		3 = 'Both sides'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs14_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs14a_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6 or more'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs14b_
		1 = 'Less than 1 hour'
		2 = 'At least 1 but < 24hr'
		3 = ' 24 or more hours'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE rhx1_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE rhx2_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE rhx3_
		0 = 'No'
		1 = 'One'
		2 = 'Both'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE rhx4_
		0 = 'No'
		1 = 'Yes in the past'
		2 = 'Yes currently'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE rhx5_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE rhx6_
		0 = 'No'
		1 = 'Yes currently'
		2 = 'Yes in the past'
		3 = 'Pre-/perimenopausal'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE rhx6c1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rhx6c2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rhx6c3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rhx7_
		0 = 'No'
		1 = 'Yes currently'
		2 = 'Yes in the past'
		3 = 'Pre-/perimenopausal'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pros1_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE pros1a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE pros2_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE pros2a1_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE pros2a2_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE pros2a3_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE pros2a4_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE pros2a5_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE pros2a6_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE pros2b_
		0 = 'Never'
		1 = 'Rarely'
		2 = 'Sometimes'
		3 = 'Often'
		4 = 'Usually'
		5 = 'Always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pros2c_
		0 = '0 no pain'
		1 = '1'
		10 = '10 pain as bad as you can imagine'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		77 = 'Refused'
		8 = '8'
		88 = "Don't know"
		9 = '9'
	;

	VALUE pros3_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE pros3a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE pros4_
		1 = 'Very low'
		2 = 'Low'
		3 = 'Moderate'
		4 = 'High'
		5 = 'Very high'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up1_
		0 = 'Not at all'
		1 = 'Less than 1 time in 5'
		2 = 'Less than half the time'
		3 = ' About half the time'
		4 = ' More than half the time'
		5 = ' Almost always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up2_
		0 = 'Not at all'
		1 = 'Less than 1 time in 5'
		2 = 'Less than half the time'
		3 = ' About half the time'
		4 = ' More than half the time'
		5 = ' Almost always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up3_
		0 = 'Not at all'
		1 = 'Less than 1 time in 5'
		2 = 'Less than half the time'
		3 = ' About half the time'
		4 = ' More than half the time'
		5 = ' Almost always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up4_
		0 = 'Not at all'
		1 = 'Less than 1 time in 5'
		2 = 'Less than half the time'
		3 = ' About half the time'
		4 = ' More than half the time'
		5 = ' Almost always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up5_
		0 = 'Not at all'
		1 = 'Less than 1 time in 5'
		2 = 'Less than half the time'
		3 = ' About half the time'
		4 = ' More than half the time'
		5 = ' Almost always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up6_
		0 = 'Not at all'
		1 = 'Less than 1 time in 5'
		2 = 'Less than half the time'
		3 = ' About half the time'
		4 = ' More than half the time'
		5 = ' Almost always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up7_
		0 = 'None'
		1 = 'One time'
		2 = 'Two times'
		3 = 'Three times'
		4 = 'Four times'
		5 = 'Five or more times'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up8_
		0 = 'None'
		1 = 'Only a little'
		3 = 'Some'
		4 = 'A lot'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up9_
		0 = 'Very satisfied'
		1 = 'Mostly satisfied'
		2 = 'Mixed'
		3 = 'Mostly dissatisfied'
		4 = 'Very dissatisfied'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up10_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE up11_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE up11a_
		0 = 'Less than once per month'
		1 = 'One or more times per month'
		2 = 'One or more times per week'
		3 = 'Every day'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up11b_
		1 = 'With an activity like coughing lifting or exercising'
		2 = "When you have the urge to urinate but can't get to a toilet fast enough"
		3 = 'You leak urine unrelated to an activity or urge'
		4 = 'Both with activy and inability to get to toilet fast enough'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE up12_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE up12a_
		0 = 'Less than once per month'
		1 = 'One or more times per month'
		2 = 'One or more times per week'
		3 = 'Every day'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE mchx17a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE coviddx_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE covidvac_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE nocovidvac_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE whatvac_
		1 = 'Pfizer'
		2 = 'Moderna'
		3 = 'Johnson and Johnson'
		4 = 'Other'
	;

	VALUE cvbooster_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE booster1_
		1 = 'Pfizer'
		2 = 'Moderna'
		3 = 'Johnson and Johnson'
		4 = ' Other'
	;

	VALUE booster2_
		1 = 'Pfizer'
		2 = 'Moderna'
		3 = 'Johnson and Johnson'
		4 = ' Other'
	;

	VALUE mdhx17a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE cvrs9a_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6 or more'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs10a_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6 or more'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs10c_
		1 = 'Right eye only'
		2 = 'Left eye only'
		3 = 'Both eyes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs11a_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6 or more'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs12a_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6 or more'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs12d_
		1 = 'Spread'
		2 = 'Stayed'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs13a_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6 or more'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cvrs13d_
		1 = 'Spread'
		2 = 'Stayed'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE dhx01_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx02_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx03_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx04_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx05_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx06_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx07_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx08_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx09_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx10_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx11_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx12_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx13_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx14_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx15_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx16_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx17_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx18_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx19_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx20_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx21_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx22_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx23_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx24_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx25_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx26_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx27_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx28_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx29_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx30_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx31_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx32_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx33_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx34_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx35_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx36_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx37_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx38_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
	;

	VALUE dhx39_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = 'Do not know'
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

	INFORMAT crf_version_MedInt $10.;
	FORMAT crf_version_MedInt $10.;

	INFORMAT obsdate_mdhxdate YYMMDD10.;
	FORMAT obsdate_mdhxdate YYMMDD10.;

	INFORMAT blank_MedInt $1.;
	FORMAT blank_MedInt $1.;

	INFORMAT mdhxtid BEST32.;
	FORMAT mdhxtid BEST12.;

	INFORMAT mdhxtyp BEST32.;
	FORMAT mdhxtyp BEST12.;

	INFORMAT mdhx1 BEST32.;
	FORMAT mdhx1 BEST12.;

	INFORMAT mdhx2 BEST32.;
	FORMAT mdhx2 BEST12.;

	INFORMAT mdhx2f1 BEST32.;
	FORMAT mdhx2f1 BEST12.;

	INFORMAT mdhx2f2 BEST32.;
	FORMAT mdhx2f2 BEST12.;

	INFORMAT mdhx3 BEST32.;
	FORMAT mdhx3 BEST12.;

	INFORMAT mdhx3a BEST32.;
	FORMAT mdhx3a BEST12.;

	INFORMAT mdhx4 BEST32.;
	FORMAT mdhx4 BEST12.;

	INFORMAT mdhx5 BEST32.;
	FORMAT mdhx5 BEST12.;

	INFORMAT mdhx6 BEST32.;
	FORMAT mdhx6 BEST12.;

	INFORMAT mdhx7 BEST32.;
	FORMAT mdhx7 BEST12.;

	INFORMAT mdhx7a BEST32.;
	FORMAT mdhx7a BEST12.;

	INFORMAT mdhx8 BEST32.;
	FORMAT mdhx8 BEST12.;

	INFORMAT mdhx9 BEST32.;
	FORMAT mdhx9 BEST12.;

	INFORMAT mdhx10 BEST32.;
	FORMAT mdhx10 BEST12.;

	INFORMAT mdhx11 BEST32.;
	FORMAT mdhx11 BEST12.;

	INFORMAT mdhx12 BEST32.;
	FORMAT mdhx12 BEST12.;

	INFORMAT mdhx12a BEST32.;
	FORMAT mdhx12a BEST12.;

	INFORMAT mdhx13 BEST32.;
	FORMAT mdhx13 BEST12.;

	INFORMAT mdhx13a BEST32.;
	FORMAT mdhx13a BEST12.;

	INFORMAT mdhx14 BEST32.;
	FORMAT mdhx14 BEST12.;

	INFORMAT mdhx15 BEST32.;
	FORMAT mdhx15 BEST12.;

	INFORMAT mdhx15a BEST32.;
	FORMAT mdhx15a BEST12.;

	INFORMAT mdhx15b BEST32.;
	FORMAT mdhx15b BEST12.;

	INFORMAT mdhx15c BEST32.;
	FORMAT mdhx15c BEST12.;

	INFORMAT mdhx16 BEST32.;
	FORMAT mdhx16 BEST12.;

	INFORMAT mdhx16a BEST32.;
	FORMAT mdhx16a BEST12.;

	INFORMAT mdhx16b BEST32.;
	FORMAT mdhx16b BEST12.;

	INFORMAT mdhx16c BEST32.;
	FORMAT mdhx16c BEST12.;

	INFORMAT mdhx17 BEST32.;
	FORMAT mdhx17 BEST12.;

	INFORMAT mdhx17b BEST32.;
	FORMAT mdhx17b BEST12.;

	INFORMAT mdhx17c BEST32.;
	FORMAT mdhx17c BEST12.;

	INFORMAT mdhx18 BEST32.;
	FORMAT mdhx18 BEST12.;

	INFORMAT mdhx18a1 BEST32.;
	FORMAT mdhx18a1 BEST12.;

	INFORMAT mdhx18a2 BEST32.;
	FORMAT mdhx18a2 BEST12.;

	INFORMAT mdhx18a3 BEST32.;
	FORMAT mdhx18a3 BEST12.;

	INFORMAT mdhx18a4 BEST32.;
	FORMAT mdhx18a4 BEST12.;

	INFORMAT mdhx18a5 BEST32.;
	FORMAT mdhx18a5 BEST12.;

	INFORMAT mdhx18a6 BEST32.;
	FORMAT mdhx18a6 BEST12.;

	INFORMAT mdhx19 BEST32.;
	FORMAT mdhx19 BEST12.;

	INFORMAT mdh19a1 BEST32.;
	FORMAT mdh19a1 BEST12.;

	INFORMAT mdh19b1 BEST32.;
	FORMAT mdh19b1 BEST12.;

	INFORMAT mdh19c1 BEST32.;
	FORMAT mdh19c1 BEST12.;

	INFORMAT mdh19d1 BEST32.;
	FORMAT mdh19d1 BEST12.;

	INFORMAT mdh19a2 BEST32.;
	FORMAT mdh19a2 BEST12.;

	INFORMAT mdh19b2 BEST32.;
	FORMAT mdh19b2 BEST12.;

	INFORMAT mdh19c2 BEST32.;
	FORMAT mdh19c2 BEST12.;

	INFORMAT mdh19d2 BEST32.;
	FORMAT mdh19d2 BEST12.;

	INFORMAT mdh19a3 BEST32.;
	FORMAT mdh19a3 BEST12.;

	INFORMAT mdh19b3 BEST32.;
	FORMAT mdh19b3 BEST12.;

	INFORMAT mdh19c3 BEST32.;
	FORMAT mdh19c3 BEST12.;

	INFORMAT mdh19d3 BEST32.;
	FORMAT mdh19d3 BEST12.;

	INFORMAT mdh19a4 BEST32.;
	FORMAT mdh19a4 BEST12.;

	INFORMAT mdh19b4 BEST32.;
	FORMAT mdh19b4 BEST12.;

	INFORMAT mdh19c4 BEST32.;
	FORMAT mdh19c4 BEST12.;

	INFORMAT mdh19d4 BEST32.;
	FORMAT mdh19d4 BEST12.;

	INFORMAT mdh19a5 BEST32.;
	FORMAT mdh19a5 BEST12.;

	INFORMAT mdh19b5 BEST32.;
	FORMAT mdh19b5 BEST12.;

	INFORMAT mdh19c5 BEST32.;
	FORMAT mdh19c5 BEST12.;

	INFORMAT mdh19d5 BEST32.;
	FORMAT mdh19d5 BEST12.;

	INFORMAT mdh19a6 BEST32.;
	FORMAT mdh19a6 BEST12.;

	INFORMAT mdh19b6 BEST32.;
	FORMAT mdh19b6 BEST12.;

	INFORMAT mdh19c6 BEST32.;
	FORMAT mdh19c6 BEST12.;

	INFORMAT mdh19d6 BEST32.;
	FORMAT mdh19d6 BEST12.;

	INFORMAT mdh19a7 BEST32.;
	FORMAT mdh19a7 BEST12.;

	INFORMAT mdh19b7 BEST32.;
	FORMAT mdh19b7 BEST12.;

	INFORMAT mdh19c7 BEST32.;
	FORMAT mdh19c7 BEST12.;

	INFORMAT mdh19d7 BEST32.;
	FORMAT mdh19d7 BEST12.;

	INFORMAT mdh19a8 BEST32.;
	FORMAT mdh19a8 BEST12.;

	INFORMAT mdh19b8 BEST32.;
	FORMAT mdh19b8 BEST12.;

	INFORMAT mdh19c8 BEST32.;
	FORMAT mdh19c8 BEST12.;

	INFORMAT mdh19d8 BEST32.;
	FORMAT mdh19d8 BEST12.;

	INFORMAT mdh19a9 BEST32.;
	FORMAT mdh19a9 BEST12.;

	INFORMAT mdh19b9 BEST32.;
	FORMAT mdh19b9 BEST12.;

	INFORMAT mdh19c9 BEST32.;
	FORMAT mdh19c9 BEST12.;

	INFORMAT mdh19d9 BEST32.;
	FORMAT mdh19d9 BEST12.;

	INFORMAT mdh19a10 BEST32.;
	FORMAT mdh19a10 BEST12.;

	INFORMAT mdh19b10 BEST32.;
	FORMAT mdh19b10 BEST12.;

	INFORMAT mdh19c10 BEST32.;
	FORMAT mdh19c10 BEST12.;

	INFORMAT mdh19d10 BEST32.;
	FORMAT mdh19d10 BEST12.;

	INFORMAT mdh19a11 BEST32.;
	FORMAT mdh19a11 BEST12.;

	INFORMAT mdh19b11 BEST32.;
	FORMAT mdh19b11 BEST12.;

	INFORMAT mdh19c11 BEST32.;
	FORMAT mdh19c11 BEST12.;

	INFORMAT mdh19d11 BEST32.;
	FORMAT mdh19d11 BEST12.;

	INFORMAT mdh19a12 BEST32.;
	FORMAT mdh19a12 BEST12.;

	INFORMAT mdh19b12 BEST32.;
	FORMAT mdh19b12 BEST12.;

	INFORMAT mdh19c12 BEST32.;
	FORMAT mdh19c12 BEST12.;

	INFORMAT mdh19d12 BEST32.;
	FORMAT mdh19d12 BEST12.;

	INFORMAT mdh19a13 BEST32.;
	FORMAT mdh19a13 BEST12.;

	INFORMAT mdh19b13 BEST32.;
	FORMAT mdh19b13 BEST12.;

	INFORMAT mdh19c13 BEST32.;
	FORMAT mdh19c13 BEST12.;

	INFORMAT mdh19d13 BEST32.;
	FORMAT mdh19d13 BEST12.;

	INFORMAT mdh19a14 BEST32.;
	FORMAT mdh19a14 BEST12.;

	INFORMAT mdh19b14 BEST32.;
	FORMAT mdh19b14 BEST12.;

	INFORMAT mdh19c14 BEST32.;
	FORMAT mdh19c14 BEST12.;

	INFORMAT mdh19d14 BEST32.;
	FORMAT mdh19d14 BEST12.;

	INFORMAT mdh19a15 BEST32.;
	FORMAT mdh19a15 BEST12.;

	INFORMAT mdh19b15 BEST32.;
	FORMAT mdh19b15 BEST12.;

	INFORMAT mdh19c15 BEST32.;
	FORMAT mdh19c15 BEST12.;

	INFORMAT mdh19d15 BEST32.;
	FORMAT mdh19d15 BEST12.;

	INFORMAT mdh19a16 BEST32.;
	FORMAT mdh19a16 BEST12.;

	INFORMAT mdh19b16 BEST32.;
	FORMAT mdh19b16 BEST12.;

	INFORMAT mdh19c16 BEST32.;
	FORMAT mdh19c16 BEST12.;

	INFORMAT mdh19d16 BEST32.;
	FORMAT mdh19d16 BEST12.;

	INFORMAT mdh19a17 BEST32.;
	FORMAT mdh19a17 BEST12.;

	INFORMAT mdh19b17 BEST32.;
	FORMAT mdh19b17 BEST12.;

	INFORMAT mdh19c17 BEST32.;
	FORMAT mdh19c17 BEST12.;

	INFORMAT mdh19d17 BEST32.;
	FORMAT mdh19d17 BEST12.;

	INFORMAT mdh19a18 BEST32.;
	FORMAT mdh19a18 BEST12.;

	INFORMAT mdh19b18 BEST32.;
	FORMAT mdh19b18 BEST12.;

	INFORMAT mdh19c18 BEST32.;
	FORMAT mdh19c18 BEST12.;

	INFORMAT mdh19d18 BEST32.;
	FORMAT mdh19d18 BEST12.;

	INFORMAT mdh19a19 BEST32.;
	FORMAT mdh19a19 BEST12.;

	INFORMAT mdh19b19 BEST32.;
	FORMAT mdh19b19 BEST12.;

	INFORMAT mdh19d19 BEST32.;
	FORMAT mdh19d19 BEST12.;

	INFORMAT mdh19e19 BEST32.;
	FORMAT mdh19e19 BEST12.;

	INFORMAT mdh19c19 $30.;
	FORMAT mdh19c19 $30.;

	INFORMAT mdh19a19e $1.;
	FORMAT mdh19a19e $1.;

	INFORMAT mdh19a19ecom $157.;
	FORMAT mdh19a19ecom $157.;

	INFORMAT mdhx20 BEST32.;
	FORMAT mdhx20 BEST12.;

	INFORMAT mdhx20a1 BEST32.;
	FORMAT mdhx20a1 BEST12.;

	INFORMAT mdhx20a2 BEST32.;
	FORMAT mdhx20a2 BEST12.;

	INFORMAT mdhx20a3 BEST32.;
	FORMAT mdhx20a3 BEST12.;

	INFORMAT mdhx20a4 BEST32.;
	FORMAT mdhx20a4 BEST12.;

	INFORMAT mdhx20a5 BEST32.;
	FORMAT mdhx20a5 BEST12.;

	INFORMAT mdhx20a6 BEST32.;
	FORMAT mdhx20a6 BEST12.;

	INFORMAT mdhx20a7 BEST32.;
	FORMAT mdhx20a7 BEST12.;

	INFORMAT mdhx21 BEST32.;
	FORMAT mdhx21 BEST12.;

	INFORMAT mdhx22 BEST32.;
	FORMAT mdhx22 BEST12.;

	INFORMAT mdhx22a BEST32.;
	FORMAT mdhx22a BEST12.;

	INFORMAT mdhx23 BEST32.;
	FORMAT mdhx23 BEST12.;

	INFORMAT mdhx24 BEST32.;
	FORMAT mdhx24 BEST12.;

	INFORMAT mdhx25 BEST32.;
	FORMAT mdhx25 BEST12.;

	INFORMAT mdhx26 BEST32.;
	FORMAT mdhx26 BEST12.;

	INFORMAT mdhx27a BEST32.;
	FORMAT mdhx27a BEST12.;

	INFORMAT mdhx27aa BEST32.;
	FORMAT mdhx27aa BEST12.;

	INFORMAT mdhx27b BEST32.;
	FORMAT mdhx27b BEST12.;

	INFORMAT mdhx27f BEST32.;
	FORMAT mdhx27f BEST12.;

	INFORMAT mdhx27g BEST32.;
	FORMAT mdhx27g BEST12.;

	INFORMAT mdhx27c BEST32.;
	FORMAT mdhx27c BEST12.;

	INFORMAT mdhx27cc BEST32.;
	FORMAT mdhx27cc BEST12.;

	INFORMAT mdhx27d BEST32.;
	FORMAT mdhx27d BEST12.;

	INFORMAT mdhx27dd BEST32.;
	FORMAT mdhx27dd BEST12.;

	INFORMAT mdhx27e BEST32.;
	FORMAT mdhx27e BEST12.;

	INFORMAT mdhx27ee BEST32.;
	FORMAT mdhx27ee BEST12.;

	INFORMAT mdhx27i BEST32.;
	FORMAT mdhx27i BEST12.;

	INFORMAT mdhx27j BEST32.;
	FORMAT mdhx27j BEST12.;

	INFORMAT mdhx27k BEST32.;
	FORMAT mdhx27k BEST12.;

	INFORMAT mdhx28 BEST32.;
	FORMAT mdhx28 BEST12.;

	INFORMAT mdhx28a BEST32.;
	FORMAT mdhx28a BEST12.;

	INFORMAT mdhx29 BEST32.;
	FORMAT mdhx29 BEST12.;

	INFORMAT mdhx29a BEST32.;
	FORMAT mdhx29a BEST12.;

	INFORMAT cvrs1 BEST32.;
	FORMAT cvrs1 BEST12.;

	INFORMAT cvrs1a BEST32.;
	FORMAT cvrs1a BEST12.;

	INFORMAT cvrs1b BEST32.;
	FORMAT cvrs1b BEST12.;

	INFORMAT cvrs1c BEST32.;
	FORMAT cvrs1c BEST12.;

	INFORMAT cvrs1d BEST32.;
	FORMAT cvrs1d BEST12.;

	INFORMAT cvrs1e BEST32.;
	FORMAT cvrs1e BEST12.;

	INFORMAT cvrs1f BEST32.;
	FORMAT cvrs1f BEST12.;

	INFORMAT cvrs1g1 BEST32.;
	FORMAT cvrs1g1 BEST12.;

	INFORMAT cvrs1g2 BEST32.;
	FORMAT cvrs1g2 BEST12.;

	INFORMAT cvrs1g3 BEST32.;
	FORMAT cvrs1g3 BEST12.;

	INFORMAT cvrs1g4 BEST32.;
	FORMAT cvrs1g4 BEST12.;

	INFORMAT cvrs1g5 BEST32.;
	FORMAT cvrs1g5 BEST12.;

	INFORMAT cvrs1h BEST32.;
	FORMAT cvrs1h BEST12.;

	INFORMAT cvrs1i BEST32.;
	FORMAT cvrs1i BEST12.;

	INFORMAT cvrs1j BEST32.;
	FORMAT cvrs1j BEST12.;

	INFORMAT cvrs2 BEST32.;
	FORMAT cvrs2 BEST12.;

	INFORMAT cvrs2a BEST32.;
	FORMAT cvrs2a BEST12.;

	INFORMAT cvrs2b BEST32.;
	FORMAT cvrs2b BEST12.;

	INFORMAT cvrs2c BEST32.;
	FORMAT cvrs2c BEST12.;

	INFORMAT cvrs2d BEST32.;
	FORMAT cvrs2d BEST12.;

	INFORMAT cvrs2e BEST32.;
	FORMAT cvrs2e BEST12.;

	INFORMAT cvrs2f BEST32.;
	FORMAT cvrs2f BEST12.;

	INFORMAT cvrs3 BEST32.;
	FORMAT cvrs3 BEST12.;

	INFORMAT cvrs3a BEST32.;
	FORMAT cvrs3a BEST12.;

	INFORMAT cvrs3b BEST32.;
	FORMAT cvrs3b BEST12.;

	INFORMAT cvrs4 BEST32.;
	FORMAT cvrs4 BEST12.;

	INFORMAT cvrs4a BEST32.;
	FORMAT cvrs4a BEST12.;

	INFORMAT cvrs5 BEST32.;
	FORMAT cvrs5 BEST12.;

	INFORMAT cvrs5a BEST32.;
	FORMAT cvrs5a BEST12.;

	INFORMAT cvrs5b BEST32.;
	FORMAT cvrs5b BEST12.;

	INFORMAT cvrs6 BEST32.;
	FORMAT cvrs6 BEST12.;

	INFORMAT cvrs7 BEST32.;
	FORMAT cvrs7 BEST12.;

	INFORMAT cvrs8 BEST32.;
	FORMAT cvrs8 BEST12.;

	INFORMAT cvrs8a BEST32.;
	FORMAT cvrs8a BEST12.;

	INFORMAT cvrs9 BEST32.;
	FORMAT cvrs9 BEST12.;

	INFORMAT cvrs9b BEST32.;
	FORMAT cvrs9b BEST12.;

	INFORMAT cvrs10 BEST32.;
	FORMAT cvrs10 BEST12.;

	INFORMAT cvrs10b BEST32.;
	FORMAT cvrs10b BEST12.;

	INFORMAT cvrs11 BEST32.;
	FORMAT cvrs11 BEST12.;

	INFORMAT cvrs11b BEST32.;
	FORMAT cvrs11b BEST12.;

	INFORMAT cvrs12 BEST32.;
	FORMAT cvrs12 BEST12.;

	INFORMAT cvrs12b BEST32.;
	FORMAT cvrs12b BEST12.;

	INFORMAT cvrs12c BEST32.;
	FORMAT cvrs12c BEST12.;

	INFORMAT cvrs13 BEST32.;
	FORMAT cvrs13 BEST12.;

	INFORMAT cvrs13b BEST32.;
	FORMAT cvrs13b BEST12.;

	INFORMAT cvrs13c BEST32.;
	FORMAT cvrs13c BEST12.;

	INFORMAT cvrs14 BEST32.;
	FORMAT cvrs14 BEST12.;

	INFORMAT cvrs14a BEST32.;
	FORMAT cvrs14a BEST12.;

	INFORMAT cvrs14b BEST32.;
	FORMAT cvrs14b BEST12.;

	INFORMAT rhx1 BEST32.;
	FORMAT rhx1 BEST12.;

	INFORMAT rhx1a BEST32.;
	FORMAT rhx1a BEST12.;

	INFORMAT rhx1b BEST32.;
	FORMAT rhx1b BEST12.;

	INFORMAT rhx2 BEST32.;
	FORMAT rhx2 BEST12.;

	INFORMAT rhx2a BEST32.;
	FORMAT rhx2a BEST12.;

	INFORMAT rhx3 BEST32.;
	FORMAT rhx3 BEST12.;

	INFORMAT rhx3a BEST32.;
	FORMAT rhx3a BEST12.;

	INFORMAT rhx3b BEST32.;
	FORMAT rhx3b BEST12.;

	INFORMAT rhx4 BEST32.;
	FORMAT rhx4 BEST12.;

	INFORMAT rhx5 BEST32.;
	FORMAT rhx5 BEST12.;

	INFORMAT rhx5a BEST32.;
	FORMAT rhx5a BEST12.;

	INFORMAT rhx5b BEST32.;
	FORMAT rhx5b BEST12.;

	INFORMAT rhx5c BEST32.;
	FORMAT rhx5c BEST12.;

	INFORMAT rhx6 BEST32.;
	FORMAT rhx6 BEST12.;

	INFORMAT rhx6a BEST32.;
	FORMAT rhx6a BEST12.;

	INFORMAT rhx6b BEST32.;
	FORMAT rhx6b BEST12.;

	INFORMAT rhx6c1 BEST32.;
	FORMAT rhx6c1 BEST12.;

	INFORMAT rhx6c2 BEST32.;
	FORMAT rhx6c2 BEST12.;

	INFORMAT rhx6c3 BEST32.;
	FORMAT rhx6c3 BEST12.;

	INFORMAT rhx7 BEST32.;
	FORMAT rhx7 BEST12.;

	INFORMAT rhx7a BEST32.;
	FORMAT rhx7a BEST12.;

	INFORMAT pros1 BEST32.;
	FORMAT pros1 BEST12.;

	INFORMAT pros1a BEST32.;
	FORMAT pros1a BEST12.;

	INFORMAT pros2 BEST32.;
	FORMAT pros2 BEST12.;

	INFORMAT pros2a1 BEST32.;
	FORMAT pros2a1 BEST12.;

	INFORMAT pros2a2 BEST32.;
	FORMAT pros2a2 BEST12.;

	INFORMAT pros2a3 BEST32.;
	FORMAT pros2a3 BEST12.;

	INFORMAT pros2a4 BEST32.;
	FORMAT pros2a4 BEST12.;

	INFORMAT pros2a5 BEST32.;
	FORMAT pros2a5 BEST12.;

	INFORMAT pros2a6 BEST32.;
	FORMAT pros2a6 BEST12.;

	INFORMAT pros2b BEST32.;
	FORMAT pros2b BEST12.;

	INFORMAT pros2c BEST32.;
	FORMAT pros2c BEST12.;

	INFORMAT pros3 BEST32.;
	FORMAT pros3 BEST12.;

	INFORMAT pros3a BEST32.;
	FORMAT pros3a BEST12.;

	INFORMAT pros4 BEST32.;
	FORMAT pros4 BEST12.;

	INFORMAT up1 BEST32.;
	FORMAT up1 BEST12.;

	INFORMAT up2 BEST32.;
	FORMAT up2 BEST12.;

	INFORMAT up3 BEST32.;
	FORMAT up3 BEST12.;

	INFORMAT up4 BEST32.;
	FORMAT up4 BEST12.;

	INFORMAT up5 BEST32.;
	FORMAT up5 BEST12.;

	INFORMAT up6 BEST32.;
	FORMAT up6 BEST12.;

	INFORMAT up7 BEST32.;
	FORMAT up7 BEST12.;

	INFORMAT up8 BEST32.;
	FORMAT up8 BEST12.;

	INFORMAT up9 BEST32.;
	FORMAT up9 BEST12.;

	INFORMAT up10 BEST32.;
	FORMAT up10 BEST12.;

	INFORMAT up10a BEST32.;
	FORMAT up10a BEST12.;

	INFORMAT up10b BEST32.;
	FORMAT up10b BEST12.;

	INFORMAT up10c BEST32.;
	FORMAT up10c BEST12.;

	INFORMAT up11 BEST32.;
	FORMAT up11 BEST12.;

	INFORMAT up11a BEST32.;
	FORMAT up11a BEST12.;

	INFORMAT up11b BEST32.;
	FORMAT up11b BEST12.;

	INFORMAT up12 BEST32.;
	FORMAT up12 BEST12.;

	INFORMAT up12a BEST32.;
	FORMAT up12a BEST12.;

	INFORMAT mchx17a BEST32.;
	FORMAT mchx17a BEST12.;

	INFORMAT coviddx BEST32.;
	FORMAT coviddx BEST12.;

	INFORMAT covidvac BEST32.;
	FORMAT covidvac BEST12.;

	INFORMAT nocovidvac BEST32.;
	FORMAT nocovidvac BEST12.;

	INFORMAT novaccom $1.;
	FORMAT novaccom $1.;

	INFORMAT whatvac BEST32.;
	FORMAT whatvac BEST12.;

	INFORMAT whenvac1 YYMMDD10.;
	FORMAT whenvac1 YYMMDD10.;

	INFORMAT whenvac2 YYMMDD10.;
	FORMAT whenvac2 YYMMDD10.;

	INFORMAT covidcomment $62.;
	FORMAT covidcomment $62.;

	INFORMAT cvbooster BEST32.;
	FORMAT cvbooster BEST12.;

	INFORMAT booster1 BEST32.;
	FORMAT booster1 BEST12.;

	INFORMAT whenbooster1 YYMMDD10.;
	FORMAT whenbooster1 YYMMDD10.;

	INFORMAT booster2 BEST32.;
	FORMAT booster2 BEST12.;

	INFORMAT whenbooster2 YYMMDD10.;
	FORMAT whenbooster2 YYMMDD10.;

	INFORMAT boostercom $25.;
	FORMAT boostercom $25.;

	INFORMAT auto_id_MedInt BEST32.;
	FORMAT auto_id_MedInt BEST12.;

	INFORMAT mdhx17a BEST32.;
	FORMAT mdhx17a BEST12.;

	INFORMAT cvrs9a BEST32.;
	FORMAT cvrs9a BEST12.;

	INFORMAT cvrs10a BEST32.;
	FORMAT cvrs10a BEST12.;

	INFORMAT cvrs10c BEST32.;
	FORMAT cvrs10c BEST12.;

	INFORMAT cvrs11a BEST32.;
	FORMAT cvrs11a BEST12.;

	INFORMAT cvrs12a BEST32.;
	FORMAT cvrs12a BEST12.;

	INFORMAT cvrs12d BEST32.;
	FORMAT cvrs12d BEST12.;

	INFORMAT cvrs13a BEST32.;
	FORMAT cvrs13a BEST12.;

	INFORMAT cvrs13d BEST32.;
	FORMAT cvrs13d BEST12.;

	INFORMAT rhx4a BEST32.;
	FORMAT rhx4a BEST12.;

	INFORMAT dhx01 BEST32.;
	FORMAT dhx01 BEST12.;

	INFORMAT dhx02 BEST32.;
	FORMAT dhx02 BEST12.;

	INFORMAT dhx03 BEST32.;
	FORMAT dhx03 BEST12.;

	INFORMAT dhx04 BEST32.;
	FORMAT dhx04 BEST12.;

	INFORMAT dhx05 BEST32.;
	FORMAT dhx05 BEST12.;

	INFORMAT dhx06 BEST32.;
	FORMAT dhx06 BEST12.;

	INFORMAT dhx07 BEST32.;
	FORMAT dhx07 BEST12.;

	INFORMAT dhx08 BEST32.;
	FORMAT dhx08 BEST12.;

	INFORMAT dhx09 BEST32.;
	FORMAT dhx09 BEST12.;

	INFORMAT dhx10 BEST32.;
	FORMAT dhx10 BEST12.;

	INFORMAT dhx11 BEST32.;
	FORMAT dhx11 BEST12.;

	INFORMAT dhx12 BEST32.;
	FORMAT dhx12 BEST12.;

	INFORMAT dhx13 BEST32.;
	FORMAT dhx13 BEST12.;

	INFORMAT dhx14 BEST32.;
	FORMAT dhx14 BEST12.;

	INFORMAT dhx15 BEST32.;
	FORMAT dhx15 BEST12.;

	INFORMAT dhx16 BEST32.;
	FORMAT dhx16 BEST12.;

	INFORMAT dhx17 BEST32.;
	FORMAT dhx17 BEST12.;

	INFORMAT dhx18 BEST32.;
	FORMAT dhx18 BEST12.;

	INFORMAT dhx19 BEST32.;
	FORMAT dhx19 BEST12.;

	INFORMAT dhx20 BEST32.;
	FORMAT dhx20 BEST12.;

	INFORMAT dhx21 BEST32.;
	FORMAT dhx21 BEST12.;

	INFORMAT dhx22 BEST32.;
	FORMAT dhx22 BEST12.;

	INFORMAT dhx23 BEST32.;
	FORMAT dhx23 BEST12.;

	INFORMAT dhx24 BEST32.;
	FORMAT dhx24 BEST12.;

	INFORMAT dhx25 BEST32.;
	FORMAT dhx25 BEST12.;

	INFORMAT dhx26 BEST32.;
	FORMAT dhx26 BEST12.;

	INFORMAT dhx27 BEST32.;
	FORMAT dhx27 BEST12.;

	INFORMAT dhx28 BEST32.;
	FORMAT dhx28 BEST12.;

	INFORMAT dhx29 BEST32.;
	FORMAT dhx29 BEST12.;

	INFORMAT dhx30 BEST32.;
	FORMAT dhx30 BEST12.;

	INFORMAT dhx31 BEST32.;
	FORMAT dhx31 BEST12.;

	INFORMAT dhx32 BEST32.;
	FORMAT dhx32 BEST12.;

	INFORMAT dhx33 BEST32.;
	FORMAT dhx33 BEST12.;

	INFORMAT dhx34 BEST32.;
	FORMAT dhx34 BEST12.;

	INFORMAT dhx35 BEST32.;
	FORMAT dhx35 BEST12.;

	INFORMAT dhx36 BEST32.;
	FORMAT dhx36 BEST12.;

	INFORMAT dhx37 BEST32.;
	FORMAT dhx37 BEST12.;

	INFORMAT dhx38 BEST32.;
	FORMAT dhx38 BEST12.;

	INFORMAT dhx39 BEST32.;
	FORMAT dhx39 BEST12.;

	INFORMAT crf_parent_name_MedInt $22.;
	FORMAT crf_parent_name_MedInt $22.;

	INFORMAT item_group_repeat_MedInt BEST32.;
	FORMAT item_group_repeat_MedInt BEST12.;

	INFORMAT mdh19a19e_1 BEST32.;
	FORMAT mdh19a19e_1 BEST12.;

	INFORMAT mdh19a19e_2 BEST32.;
	FORMAT mdh19a19e_2 BEST12.;

	INFORMAT mdh19a19e_3 BEST32.;
	FORMAT mdh19a19e_3 BEST12.;

	INFORMAT study_name_MedInt $4.;
	FORMAT study_name_MedInt $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_MedInt
		obsdate_mdhxdate
		blank_MedInt
		mdhxtid
		mdhxtyp
		mdhx1
		mdhx2
		mdhx2f1
		mdhx2f2
		mdhx3
		mdhx3a
		mdhx4
		mdhx5
		mdhx6
		mdhx7
		mdhx7a
		mdhx8
		mdhx9
		mdhx10
		mdhx11
		mdhx12
		mdhx12a
		mdhx13
		mdhx13a
		mdhx14
		mdhx15
		mdhx15a
		mdhx15b
		mdhx15c
		mdhx16
		mdhx16a
		mdhx16b
		mdhx16c
		mdhx17
		mdhx17b
		mdhx17c
		mdhx18
		mdhx18a1
		mdhx18a2
		mdhx18a3
		mdhx18a4
		mdhx18a5
		mdhx18a6
		mdhx19
		mdh19a1
		mdh19b1
		mdh19c1
		mdh19d1
		mdh19a2
		mdh19b2
		mdh19c2
		mdh19d2
		mdh19a3
		mdh19b3
		mdh19c3
		mdh19d3
		mdh19a4
		mdh19b4
		mdh19c4
		mdh19d4
		mdh19a5
		mdh19b5
		mdh19c5
		mdh19d5
		mdh19a6
		mdh19b6
		mdh19c6
		mdh19d6
		mdh19a7
		mdh19b7
		mdh19c7
		mdh19d7
		mdh19a8
		mdh19b8
		mdh19c8
		mdh19d8
		mdh19a9
		mdh19b9
		mdh19c9
		mdh19d9
		mdh19a10
		mdh19b10
		mdh19c10
		mdh19d10
		mdh19a11
		mdh19b11
		mdh19c11
		mdh19d11
		mdh19a12
		mdh19b12
		mdh19c12
		mdh19d12
		mdh19a13
		mdh19b13
		mdh19c13
		mdh19d13
		mdh19a14
		mdh19b14
		mdh19c14
		mdh19d14
		mdh19a15
		mdh19b15
		mdh19c15
		mdh19d15
		mdh19a16
		mdh19b16
		mdh19c16
		mdh19d16
		mdh19a17
		mdh19b17
		mdh19c17
		mdh19d17
		mdh19a18
		mdh19b18
		mdh19c18
		mdh19d18
		mdh19a19
		mdh19b19
		mdh19d19
		mdh19e19
		mdh19c19
		mdh19a19e
		mdh19a19ecom
		mdhx20
		mdhx20a1
		mdhx20a2
		mdhx20a3
		mdhx20a4
		mdhx20a5
		mdhx20a6
		mdhx20a7
		mdhx21
		mdhx22
		mdhx22a
		mdhx23
		mdhx24
		mdhx25
		mdhx26
		mdhx27a
		mdhx27aa
		mdhx27b
		mdhx27f
		mdhx27g
		mdhx27c
		mdhx27cc
		mdhx27d
		mdhx27dd
		mdhx27e
		mdhx27ee
		mdhx27i
		mdhx27j
		mdhx27k
		mdhx28
		mdhx28a
		mdhx29
		mdhx29a
		cvrs1
		cvrs1a
		cvrs1b
		cvrs1c
		cvrs1d
		cvrs1e
		cvrs1f
		cvrs1g1
		cvrs1g2
		cvrs1g3
		cvrs1g4
		cvrs1g5
		cvrs1h
		cvrs1i
		cvrs1j
		cvrs2
		cvrs2a
		cvrs2b
		cvrs2c
		cvrs2d
		cvrs2e
		cvrs2f
		cvrs3
		cvrs3a
		cvrs3b
		cvrs4
		cvrs4a
		cvrs5
		cvrs5a
		cvrs5b
		cvrs6
		cvrs7
		cvrs8
		cvrs8a
		cvrs9
		cvrs9b
		cvrs10
		cvrs10b
		cvrs11
		cvrs11b
		cvrs12
		cvrs12b
		cvrs12c
		cvrs13
		cvrs13b
		cvrs13c
		cvrs14
		cvrs14a
		cvrs14b
		rhx1
		rhx1a
		rhx1b
		rhx2
		rhx2a
		rhx3
		rhx3a
		rhx3b
		rhx4
		rhx5
		rhx5a
		rhx5b
		rhx5c
		rhx6
		rhx6a
		rhx6b
		rhx6c1
		rhx6c2
		rhx6c3
		rhx7
		rhx7a
		pros1
		pros1a
		pros2
		pros2a1
		pros2a2
		pros2a3
		pros2a4
		pros2a5
		pros2a6
		pros2b
		pros2c
		pros3
		pros3a
		pros4
		up1
		up2
		up3
		up4
		up5
		up6
		up7
		up8
		up9
		up10
		up10a
		up10b
		up10c
		up11
		up11a
		up11b
		up12
		up12a
		mchx17a
		coviddx
		covidvac
		nocovidvac
		novaccom
		whatvac
		whenvac1
		whenvac2
		covidcomment
		cvbooster
		booster1
		whenbooster1
		booster2
		whenbooster2
		boostercom
		auto_id_MedInt
		mdhx17a
		cvrs9a
		cvrs10a
		cvrs10c
		cvrs11a
		cvrs12a
		cvrs12d
		cvrs13a
		cvrs13d
		rhx4a
		dhx01
		dhx02
		dhx03
		dhx04
		dhx05
		dhx06
		dhx07
		dhx08
		dhx09
		dhx10
		dhx11
		dhx12
		dhx13
		dhx14
		dhx15
		dhx16
		dhx17
		dhx18
		dhx19
		dhx20
		dhx21
		dhx22
		dhx23
		dhx24
		dhx25
		dhx26
		dhx27
		dhx28
		dhx29
		dhx30
		dhx31
		dhx32
		dhx33
		dhx34
		dhx35
		dhx36
		dhx37
		dhx38
		dhx39
		crf_parent_name_MedInt
		item_group_repeat_MedInt
		mdh19a19e_1
		mdh19a19e_2
		mdh19a19e_3
		study_name_MedInt
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
		crf_version_MedInt = "CRF Version"
		obsdate_mdhxdate = "Date Completed"
		blank_MedInt = "Blank Form"
		mdhxtid = "Tester ID"
		mdhxtyp = "Interview conducted with"
		mdhx1 = "Have you seen a Md PA or NP for any reason within the past 2 years"
		mdhx2 = "How often do you have a routine physical examination"
		mdhx2f1 = "Did you receive the flu shot this year"
		mdhx2f2 = "If no do you plan to get the flu shot this year"
		mdhx3 = "Has doctor ever said you had a heart attack or myocardial infarction"
		mdhx3a = "If yes how long ago most recent heart attack"
		mdhx4 = "Has doctor ever said you had a heart failure or CHF"
		mdhx5 = "Has doctor ever said you had angina chest pain due to heart or coronary artery disease"
		mdhx6 = "Has doctor ever said you had chronic bronchitis emphysema or COPD"
		mdhx7 = "Has doctor ever said you had asthma"
		mdhx7a = "If yes do you still have asthma"
		mdhx8 = "Has doctor ever said you had cirrhosis or liver disease"
		mdhx9 = "Has doctor ever said you had hepatitis"
		mdhx10 = "Has doctor ever said you had HIV or AIDS"
		mdhx11 = "Has doctor ever said you had kidney disease nephritis or renal insufficiency"
		mdhx12 = "Has doctor ever said you had a stroke mini stroke or slight stroke"
		mdhx12a = "If yes how long ago most recent stroke"
		mdhx13 = "Has doctor ever said you had a transient ischemic attack or TIA"
		mdhx13a = "If yes how long ago most recent TIA"
		mdhx14 = "Has doctor ever said you had peripheral neuropathy or nerve damage in your lower legs feet or hands"
		mdhx15 = "Has doctor ever said you had high blood pressure or hypertension"
		mdhx15a = "If yes are you currently taking prescribed medications for BP"
		mdhx15b = "If no meds do you still have high blood pressure"
		mdhx15c = "If yes to high BP are you following lifestyle recommendations"
		mdhx16 = "Has doctor ever said you had diabetes glucose intolerance or high blood sugar"
		mdhx16a = "If yes are you currently taking diabetes medication"
		mdhx16b = "If no meds do you still have high blood sugar"
		mdhx16c = "If yes to high blood sugar are you following lifestyle recommendations"
		mdhx17 = "Has doctor ever said you had high cholesterol triglycerides"
		mdhx17b = "If not currently taking medication, do you still have high cholesterol (lipids)?"
		mdhx17c = "If yes to high cholesterol are you following lifestyle recommendations"
		mdhx18 = "Had bypass surgery carotid endarterectomy or aortic aneurysm repair"
		mdhx18a1 = "Coronary bypass surgery heart bypass or CABG"
		mdhx18a2 = "Angioplasty of coronary arteries"
		mdhx18a3 = "Bypass procedure on leg or femoral arteries"
		mdhx18a4 = "Angioplasty on leg or femoral arteries"
		mdhx18a5 = "Carotid endarterectomy surgery on your neck arteries"
		mdhx18a6 = "Repair of aortic aneurysm"
		mdhx19 = "Ever told you had cancer or malignant growth"
		mdh19a1 = "Bladder cancer YN"
		mdh19b1 = "Age first told had bladder cancer"
		mdh19c1 = "Had recurrence of bladder cancer"
		mdh19d1 = "Age most recent recurrence of bladder cancer"
		mdh19a2 = "Brain cancer YN"
		mdh19b2 = "Age first told had brain cancer"
		mdh19c2 = "Had recurrence of brain cancer"
		mdh19d2 = "Age most recent recurrence of brain cancer"
		mdh19a3 = "Breast cancer YN"
		mdh19b3 = "Age first told had Breast cancer"
		mdh19c3 = "Had recurrence of Breast cancer"
		mdh19d3 = "Age most recent recurrence of Breast cancer"
		mdh19a4 = "Cervical cancer YN"
		mdh19b4 = "Age first told had Cervical cancer"
		mdh19c4 = "Had recurrence of Cervical cancer"
		mdh19d4 = "Age most recent recurrence of Cervical cancer"
		mdh19a5 = "Colon Rectal cancer YN"
		mdh19b5 = "Age first told had Colon Rectal cancer"
		mdh19c5 = "Had recurrence of Colon Rectal cancer"
		mdh19d5 = "Age most recent recurrence of Colon Rectal cancer"
		mdh19a6 = "Endometrial cancer YN"
		mdh19b6 = "Age first told had Endometrial cancer"
		mdh19c6 = "Had recurrence of Endometrial cancer"
		mdh19d6 = "Age most recent recurrence of Endometrial cancer"
		mdh19a7 = "Leukemia cancer YN"
		mdh19b7 = "Age first told had Leukemia cancer"
		mdh19c7 = "Had recurrence of Leukemia cancer"
		mdh19d7 = "Age most recent recurrence of Leukemia cancer"
		mdh19a8 = "Liver cancer YN"
		mdh19b8 = "Age first told had Liver cancer"
		mdh19c8 = "Had recurrence of Liver cancer"
		mdh19d8 = "Age most recent recurrence of Liver cancer"
		mdh19a9 = "Lung cancer YN"
		mdh19b9 = "Age first told had Lung cancer"
		mdh19c9 = "Had recurrence of Lung cancer"
		mdh19d9 = "Age most recent recurrence of Lung cancer"
		mdh19a10 = "Lymphoma cancer YN"
		mdh19b10 = "Age first told had Lymphoma cancer"
		mdh19c10 = "Had recurrence of Lymphoma cancer"
		mdh19d10 = "Age most recent recurrence of Lymphoma cancer"
		mdh19a11 = "Melanoma cancer YN"
		mdh19b11 = "Age first told had Melanoma cancer"
		mdh19c11 = "Had recurrence of Melanoma cancer"
		mdh19d11 = "Age most recent recurrence of Melanoma cancer"
		mdh19a12 = "Ovarian cancer YN"
		mdh19b12 = "Age first told had Ovarian cancer"
		mdh19c12 = "Had recurrence of Ovarian cancer"
		mdh19d12 = "Age most recent recurrence of Ovarian cancer"
		mdh19a13 = "Pancreatic cancer YN"
		mdh19b13 = "Age first told had Pancreatic cancer"
		mdh19c13 = "Had recurrence of Pancreatic cancer"
		mdh19d13 = "Age most recent recurrence of Pancreatic cancer"
		mdh19a14 = "Prostate cancer YN"
		mdh19b14 = "Age first told had Prostate cancer"
		mdh19c14 = "Had recurrence of Prostate cancer"
		mdh19d14 = "Age most recent recurrence of Prostate cancer"
		mdh19a15 = "Skin Basal cancer YN"
		mdh19b15 = "Age first told had Skin Basal cancer"
		mdh19c15 = "Had recurrence of Skin Basal cancer"
		mdh19d15 = "Age most recent recurrence of Skin Basal cancer"
		mdh19a16 = "Skin Squamous cancer YN"
		mdh19b16 = "Age first told had Skin Squamous cancer"
		mdh19c16 = "Had recurrence of Skin Squamous cancer"
		mdh19d16 = "Age most recent recurrence of Skin Squamous cancer"
		mdh19a17 = "Stomach cancer YN"
		mdh19b17 = "Age first told had Stomach cancer"
		mdh19c17 = "Had recurrence of Stomach cancer"
		mdh19d17 = "Age most recent recurrence of Stomach cancer"
		mdh19a18 = "Thyroid cancer YN"
		mdh19b18 = "Age first told had Thyroid cancer"
		mdh19c18 = "Had recurrence of Thyroid cancer"
		mdh19d18 = "Age most recent recurrence of Thyroid cancer"
		mdh19a19 = "Other cancer YN"
		mdh19b19 = "Age first told had Other cancer"
		mdh19d19 = "Had recurrence of Other cancer"
		mdh19e19 = "Age most recent recurrence of Othercancer"
		mdh19c19 = "Other cancer specify"
		mdh19a19e = "Type of treatment for cancers"
		mdh19a19ecom = "Other cancer treatment"
		mdhx20 = "Has doctor ever said you had arthritis or osteoarthritis"
		mdhx20a1 = "Arthritis in Knees"
		mdhx20a2 = "Arthritis in Hips"
		mdhx20a3 = "Arthritis in Hands"
		mdhx20a4 = "Arthritis in Back"
		mdhx20a5 = "Arthritis in Neck"
		mdhx20a6 = "Arthritis in Feet"
		mdhx20a7 = "Arthritis in Shoulders"
		mdhx21 = "Has doctor ever said you had spinal stenosis"
		mdhx22 = "Has doctor ever said you had osteoporosis"
		mdhx22a = "Are you currently following lifestyle recommendations or taking over the counter calcium or Vit D supplements to manage your osteoporosis"
		mdhx23 = "Has doctor ever said you had connective tissue disease"
		mdhx24 = "Has doctor ever said you had Parkinsons disease"
		mdhx25 = "Has doctor ever said you had Intermittent Claudication or PAD"
		mdhx26 = "Has doctor ever said you had varicose veins damage to the veins in lower legs phlebitis or venous insufficiency"
		mdhx27a = "Has doctor ever said you had Cataracts"
		mdhx27aa = "Which eye Cataracts"
		mdhx27b = "If had cataracts in both eyes was this at the same time"
		mdhx27f = "Have you ever had cataract surgery"
		mdhx27g = "Which eye cataract surgery"
		mdhx27c = "Has doctor ever said you had Glaucoma"
		mdhx27cc = "Which eye Glaucoma"
		mdhx27d = "Has doctor ever said you had problems with your retina retinopathy or retinal changes"
		mdhx27dd = "Which eye Retina problems"
		mdhx27e = "Has doctor ever said you had Maculardegeneration"
		mdhx27ee = "Which eye Maculardegeneration"
		mdhx27i = "Ever been diagnosed by a clinician as having dry eye syndrome"
		mdhx27j = "How often do your eyes feel dry"
		mdhx27k = "How often do your eyes feel irritated"
		mdhx28 = "Has doctor ever said you had a stomach gastric or duodenal ulcer"
		mdhx28a = "Do you still have a stomach gastric or duodenal ulcer"
		mdhx29 = "Has doctor ever said you had depression"
		mdhx29a = "Have you ever received treatment medications and or counseling for depression"
		cvrs1 = "Have you ever had pain or discomfort in your chest"
		cvrs1a = "Have you had any pain or discomfort in your chest since your last BLSA visit or within 2 years if first visit"
		cvrs1b = "Do you get it when you walk uphill or hurry"
		cvrs1c = "Do you get it when you walk at an ordinary pace on a level surface"
		cvrs1d = "What do you do if you get any pain or discomfort in your chest while walking"
		cvrs1e = "If you stand still is the pain relieved or not relieved"
		cvrs1f = "How soon is chest pain relieved"
		cvrs1g1 = "Chest Pain location Middle or upper sternum"
		cvrs1g2 = "Chest Pain location Lower sternum"
		cvrs1g3 = "Chest Pain location Left anterior chest"
		cvrs1g4 = "Chest Pain location Left arm"
		cvrs1g5 = "Chest Pain location anywhere else"
		cvrs1h = "Chest Pain when was your most recent episode"
		cvrs1i = "Have you had severe pain across the front of your chest lasting half an hr or more since your last BLSA visit or within past 2 years"
		cvrs1j = "What did your doctor say it was"
		cvrs2 = "Do you get pain or discomfort in either leg when you walk"
		cvrs2a = "Does the leg pain begin when you are standing still or sitting"
		cvrs2b = "Do you get this pain in your calf"
		cvrs2c = "Do you get this pain if you walk uphill or hurry"
		cvrs2d = "Do you get this pain when you walk at an ordinary pace on a level surface"
		cvrs2e = "Does this leg pain ever disappear while you are still walking"
		cvrs2f = "What happens to the leg pain if you stop walking and stand still"
		cvrs3 = "Do you get shortness of breath when you walk uphill hurry or climb single flight of stairs"
		cvrs3a = "Do you get shortness of breath when walking at your own pace on a level surface"
		cvrs3b = "Do you get shortness of breath when lying down flat"
		cvrs4 = "In the past 12 months were there times when you had a cough almost every morning"
		cvrs4a = "Did you have this morning cough for a total of 3 mo or more out of the last 12 months"
		cvrs5 = "In the past 12 months have you had wheezing or whistling in your chest at any time"
		cvrs5a = "Does your chest sound wheezy or whistling most days or nights"
		cvrs5b = "Have you required medicine or treatment for any episodes of wheezing or whistling"
		cvrs6 = "In the past 12 months have you had to sleep on 2 or more pillows to help you breathe"
		cvrs7 = "In the past 12 months have you been awakened at night by trouble breathing"
		cvrs8 = "In the past 12 months have you had swelling of your feet or ankles"
		cvrs8a = "Does this swelling tend to come on during the day and go down overnight"
		cvrs9 = "Since your last BLSA visit or within the past 2 years have you had any sudden loss or changes in speech"
		cvrs9b = "Sudden loss or changes in speech how long did longest episode last"
		cvrs10 = "Since your last BLSA visit or within the past 2 years have you had any sudden loss of vision complete or partial"
		cvrs10b = "Sudden loss of vision how long did the worst episode last"
		cvrs11 = "Since your last BLSA visit or within the past 2 years have you had any sudden spells of double vision"
		cvrs11b = "Sudden spells of double vision how long did the worst episode last"
		cvrs12 = "Since your last BLSA visit or within the past 2 years have you had any sudden numbness tingling or loss of feeling on one side of your body"
		cvrs12b = "Numbness tingling loss of feeling how long did the worst episode last"
		cvrs12c = "Numbness tingling loss of feeling which side affected"
		cvrs13 = "Since your last BLSA visit or within the past 2 years have you had any sudden paralysis or weakness on one side of your body"
		cvrs13b = "Paralysis or weakness how long did the worst episode last"
		cvrs13c = "Paralysis or weakness which side affected"
		cvrs14 = "Since your last BLSA visit or within the past 2 years have you had any sudden spells of dizziness loss of balance or sensation of spinning"
		cvrs14a = "During this time how many spells of dizziness loss of balance have you had"
		cvrs14b = "Dizziness loss of balance how long did the longest episode last"
		rhx1 = "Have you ever been pregnant"
		rhx1a = "How many pregnancies resulted in the birth of a live child"
		rhx1b = "How old were you when your first child was born"
		rhx2 = "Have you had a hysterectomy"
		rhx2a = "How old were you when you had hysterectomy"
		rhx3 = "Have you had one or both overies removed"
		rhx3a = "Age first ovary removed"
		rhx3b = "Agesecond ovary removed"
		rhx4 = "Have you ever taken birth control pills"
		rhx5 = "Have you gone through menopause"
		rhx5a = "How old were you when you went through menopause"
		rhx5b = "How many months ago was your last menstrual period"
		rhx5c = "How many periods have you had in the last 12 months"
		rhx6 = "Ever taken estrogen as hormone replacement therapy"
		rhx6a = "How old were you when you started taking estrogen"
		rhx6b = "How many years did you take have you been taking estrogen"
		rhx6c1 = "Take estrogen pills"
		rhx6c2 = "Use estrogen patch"
		rhx6c3 = "Use estrogen cream"
		rhx7 = "Ever taken progesterone alone or along with estrogen as hormone replacement therapy"
		rhx7a = "How many years did you take have you been taking progesterone"
		pros1 = "Ever told you had BPH benign prostatic hyperplasia or enlarged prostate"
		pros1a = "Have you ever had surgery for an enlarged prostate"
		pros2 = "Have you experienced any pain or discomfort in the perineum testicles tip of penis pubic or bladder area"
		pros2a1 = "Area have pain or discomfort perineum"
		pros2a2 = "Area have pain or discomfort testicles"
		pros2a3 = "Area have pain or discomfort tip of penis"
		pros2a4 = "Area have pain or discomfort bladder area"
		pros2a5 = "Area have pain or discomfort during urination"
		pros2a6 = "Area have pain or discomfort during or after sexual climax"
		pros2b = "In the past month how often have you had pain or discomfort"
		pros2c = "Describe average pain or discomfort in any of these areas in the past month"
		pros3 = "In the past 6 months have you been sexually active"
		pros3a = "In the past 6 months have you used any medicatins or devices to help you get and keep an erection"
		pros4 = "How would you rate your ability Without medication if used to get and keep an erection"
		up1 = "During the past month how often have you had a sensation of not emptying your bladder completely"
		up2 = "During the past month how often have you had to urinate less than 2 hours after you finished urinating"
		up3 = "During the past month how often have you found you stopped and started again several times when you urinate"
		up4 = "During the past month how often have you found it difficult to postpone urination"
		up5 = "During the past month how often have you had a weak urinary stream"
		up6 = "During the past month how often have you had to push or strain to begin urinatin"
		up7 = "During the past month how many times did you typically get up at night to urinate"
		up8 = "During the past month how much have your urinary symptoms kept you from doing the kings of things you usually do"
		up9 = "If you were to spend the rest of your life with your symptoms just the way they have been over the past month how would you feel"
		up10 = "Past week did you leak even a small amount of urine"
		up10a = "Past week how many times did you leak urine when coughing lifting or exercising"
		up10b = "Past week how many times had sense of urgency and could not get to a toilet fast enough"
		up10c = "Past week how many times did you leak urine unrelated to an activity or urge to urinate"
		up11 = "Past 12 months did you leak even a small amount of urine"
		up11a = "In the past 12 months how often have you leaked urine"
		up11b = "In the past 12 months when did you leak urine"
		up12 = "In the past 12 months did you ever lose control of normal bowel movements"
		up12a = "In the past 12 months how often have you lost control of normal bowel movements"
		mchx17a = "If yes to high cholesterol are you currently taking prescribed medications for BP"
		coviddx = "Has a doctor ever diagnosed you with COVID-19"
		covidvac = "Did you receive a vaccination for COVID-19"
		nocovidvac = "Do you plan to get a COVID-19 vaccine"
		novaccom = "No covid vaccind comment"
		whatvac = "What vaccine did you receive"
		whenvac1 = "What dates were you vaccinated First date"
		whenvac2 = "What dates were you vaccinated Second date if applicable"
		covidcomment = "COVID comments"
		cvbooster = "Did you receive a COVID-19 Booster"
		booster1 = "What vaccine booster did you receive 1"
		whenbooster1 = "What date did you receive Booster 1"
		booster2 = "What vaccine booster did you receive 2"
		whenbooster2 = "What dates were you vaccinated First date"
		boostercom = "Booster comment"
		auto_id_MedInt = "Unique Teleform Number"
		mdhx17a = "If yes to high cholesterol are you currently taking prescribed medications for BP"
		cvrs9a = "How many episodes of loss or change in speach did you have"
		cvrs10a = "How many episodes of loss of vision have you had"
		cvrs10c = "Worst episode which eye affected"
		cvrs11a = "How many episodes of double vision have you had"
		cvrs12a = "How many episodes of numbness tingling have you had"
		cvrs12d = "Did abnormal sensation start in one part of body and spread to another"
		cvrs13a = "How many episodes of paralysis or weakness have you had"
		cvrs13d = "Did paralysis weakness start in one part of body and spread to another"
		rhx4a = "How many yrs use birth control"
		dhx01 = "Lifetime had 4 wks or longer when daily felt sad empty or depressed"
		dhx02 = "Lifetime had 4 wks or longer when you lost interest in most things"
		dhx03 = "during period 4wks when sad did you lack energy or feel tired all the time"
		dhx04 = "Did you have less appetite than usual almost every day"
		dhx05 = "Did you lose weight without trying to as much as 2 lbs a wk for several weeks"
		dhx06 = "Did you have a much larger appetite than is usual for you almost every day for 2 wks or more"
		dhx07 = "Did increased appetite cause weight gain of 2 lbs a wk for several wks"
		dhx08 = "Have trouble sleeping almost every night for 4 wks or more"
		dhx09 = "Were you sleeping too much almost every day"
		dhx10 = "Were you talking or moving more slowly than is normal almost daily for 2 wks"
		dhx11 = "Were you unable to sit still all the time"
		dhx12 = "Did you feel worthless or guilty nearly every day"
		dhx13 = "Did you feel you were not as good as other people"
		dhx14 = "Have little self confidence that you wouldn't try to have your say about anything"
		dhx15 = "Have more trouble concentrating than normal"
		dhx16 = "Did you thoughts come much slower than usual"
		dhx17 = "Unable to makeup your mind"
		dhx18 = "Did you think a lot about death"
		dhx19 = "Feel so low you thought a lot about committing suicide"
		dhx20 = "Did you attempt suicide"
		dhx21 = "Had 2 yrs or more in your life when you felt depressed or sad most days"
		dhx22 = "Did any period like that ever last 2 yrs without an interruption of 2 full months when you felt ok"
		dhx23 = "Have trouble sleeping"
		dhx24 = "Sleep too much"
		dhx25 = "Very little appetite for food"
		dhx26 = "Eat much more than usual"
		dhx27 = "Lack energy feel tired"
		dhx28 = "Feel you were not as good as other people"
		dhx29 = "Little self confidence"
		dhx30 = "A lot more trouble concentrating"
		dhx31 = "Unable to make up your mind"
		dhx32 = "Were you often in tears"
		dhx33 = "Feel hopeless"
		dhx34 = "Feel you could not cope with your everyday life and responsibilities"
		dhx35 = "Feel that your life had always been bad and wasn't going to get any better"
		dhx36 = "No longer wanted to spend time with friends and relatives"
		dhx37 = "Less talkative than is usual"
		dhx38 = "Lose interest in most things"
		dhx39 = "Interest in sex a lot less than usual"
		crf_parent_name_MedInt = "CRF Parent Name"
		item_group_repeat_MedInt = "Item Group Repeate"
		mdh19a19e_1 = "Type of treatment for cancers : Chemotherapy (Checkbox Indicator)"
		mdh19a19e_2 = "Type of treatment for cancers : Radiation (Checkbox Indicator)"
		mdh19a19e_3 = "Type of treatment for cancers : Surgery (Checkbox Indicator)"
		study_name_MedInt = "Study Name"
	;
	FORMAT
		mdhxtyp mdhxtyp_.
		mdhx1 mdhx1_.
		mdhx2 mdhx2_.
		mdhx2f1 mdhx2f1_.
		mdhx2f2 mdhx2f2_.
		mdhx3 mdhx3_.
		mdhx3a mdhx3a_.
		mdhx4 mdhx4_.
		mdhx5 mdhx5_.
		mdhx6 mdhx6_.
		mdhx7 mdhx7_.
		mdhx7a mdhx7a_.
		mdhx8 mdhx8_.
		mdhx9 mdhx9_.
		mdhx10 mdhx10_.
		mdhx11 mdhx11_.
		mdhx12 mdhx12_.
		mdhx12a mdhx12a_.
		mdhx13 mdhx13_.
		mdhx13a mdhx13a_.
		mdhx14 mdhx14_.
		mdhx15 mdhx15_.
		mdhx15a mdhx15a_.
		mdhx15b mdhx15b_.
		mdhx15c mdhx15c_.
		mdhx16 mdhx16_.
		mdhx16a mdhx16a_.
		mdhx16b mdhx16b_.
		mdhx16c mdhx16c_.
		mdhx17 mdhx17_.
		mdhx17b mdhx17b_.
		mdhx17c mdhx17c_.
		mdhx18 mdhx18_.
		mdhx18a1 mdhx18a1_.
		mdhx18a2 mdhx18a2_.
		mdhx18a3 mdhx18a3_.
		mdhx18a4 mdhx18a4_.
		mdhx18a5 mdhx18a5_.
		mdhx18a6 mdhx18a6_.
		mdhx19 mdhx19_.
		mdh19a1 mdh19a1_.
		mdh19c1 mdh19c1_.
		mdh19a2 mdh19a2_.
		mdh19c2 mdh19c2_.
		mdh19a3 mdh19a3_.
		mdh19c3 mdh19c3_.
		mdh19a4 mdh19a4_.
		mdh19c4 mdh19c4_.
		mdh19a5 mdh19a5_.
		mdh19c5 mdh19c5_.
		mdh19a6 mdh19a6_.
		mdh19c6 mdh19c6_.
		mdh19a7 mdh19a7_.
		mdh19c7 mdh19c7_.
		mdh19a8 mdh19a8_.
		mdh19c8 mdh19c8_.
		mdh19a9 mdh19a9_.
		mdh19c9 mdh19c9_.
		mdh19a10 mdh19a10_.
		mdh19c10 mdh19c10_.
		mdh19a11 mdh19a11_.
		mdh19c11 mdh19c11_.
		mdh19a12 mdh19a12_.
		mdh19c12 mdh19c12_.
		mdh19a13 mdh19a13_.
		mdh19c13 mdh19c13_.
		mdh19a14 mdh19a14_.
		mdh19c14 mdh19c14_.
		mdh19a15 mdh19a15_.
		mdh19c15 mdh19c15_.
		mdh19a16 mdh19a16_.
		mdh19c16 mdh19c16_.
		mdh19a17 mdh19a17_.
		mdh19c17 mdh19c17_.
		mdh19a18 mdh19a18_.
		mdh19c18 mdh19c18_.
		mdh19a19 mdh19a19_.
		mdh19d19 mdh19d19_.
		mdhx20 mdhx20_.
		mdhx20a1 mdhx20a1_.
		mdhx20a2 mdhx20a2_.
		mdhx20a3 mdhx20a3_.
		mdhx20a4 mdhx20a4_.
		mdhx20a5 mdhx20a5_.
		mdhx20a6 mdhx20a6_.
		mdhx20a7 mdhx20a7_.
		mdhx21 mdhx21_.
		mdhx22 mdhx22_.
		mdhx22a mdhx22a_.
		mdhx23 mdhx23_.
		mdhx24 mdhx24_.
		mdhx25 mdhx25_.
		mdhx26 mdhx26_.
		mdhx27a mdhx27a_.
		mdhx27aa mdhx27aa_.
		mdhx27b mdhx27b_.
		mdhx27f mdhx27f_.
		mdhx27g mdhx27g_.
		mdhx27c mdhx27c_.
		mdhx27cc mdhx27cc_.
		mdhx27d mdhx27d_.
		mdhx27dd mdhx27dd_.
		mdhx27e mdhx27e_.
		mdhx27ee mdhx27ee_.
		mdhx27i mdhx27i_.
		mdhx27j mdhx27j_.
		mdhx27k mdhx27k_.
		mdhx28 mdhx28_.
		mdhx28a mdhx28a_.
		mdhx29 mdhx29_.
		mdhx29a mdhx29a_.
		cvrs1 cvrs1_.
		cvrs1a cvrs1a_.
		cvrs1b cvrs1b_.
		cvrs1c cvrs1c_.
		cvrs1d cvrs1d_.
		cvrs1e cvrs1e_.
		cvrs1f cvrs1f_.
		cvrs1g1 cvrs1g1_.
		cvrs1g2 cvrs1g2_.
		cvrs1g3 cvrs1g3_.
		cvrs1g4 cvrs1g4_.
		cvrs1g5 cvrs1g5_.
		cvrs1h cvrs1h_.
		cvrs1i cvrs1i_.
		cvrs1j cvrs1j_.
		cvrs2 cvrs2_.
		cvrs2a cvrs2a_.
		cvrs2b cvrs2b_.
		cvrs2c cvrs2c_.
		cvrs2d cvrs2d_.
		cvrs2e cvrs2e_.
		cvrs2f cvrs2f_.
		cvrs3 cvrs3_.
		cvrs3a cvrs3a_.
		cvrs3b cvrs3b_.
		cvrs4 cvrs4_.
		cvrs4a cvrs4a_.
		cvrs5 cvrs5_.
		cvrs5a cvrs5a_.
		cvrs5b cvrs5b_.
		cvrs6 cvrs6_.
		cvrs7 cvrs7_.
		cvrs8 cvrs8_.
		cvrs8a cvrs8a_.
		cvrs9 cvrs9_.
		cvrs9b cvrs9b_.
		cvrs10 cvrs10_.
		cvrs10b cvrs10b_.
		cvrs11 cvrs11_.
		cvrs11b cvrs11b_.
		cvrs12 cvrs12_.
		cvrs12b cvrs12b_.
		cvrs12c cvrs12c_.
		cvrs13 cvrs13_.
		cvrs13b cvrs13b_.
		cvrs13c cvrs13c_.
		cvrs14 cvrs14_.
		cvrs14a cvrs14a_.
		cvrs14b cvrs14b_.
		rhx1 rhx1_.
		rhx2 rhx2_.
		rhx3 rhx3_.
		rhx4 rhx4_.
		rhx5 rhx5_.
		rhx6 rhx6_.
		rhx6c1 rhx6c1_.
		rhx6c2 rhx6c2_.
		rhx6c3 rhx6c3_.
		rhx7 rhx7_.
		pros1 pros1_.
		pros1a pros1a_.
		pros2 pros2_.
		pros2a1 pros2a1_.
		pros2a2 pros2a2_.
		pros2a3 pros2a3_.
		pros2a4 pros2a4_.
		pros2a5 pros2a5_.
		pros2a6 pros2a6_.
		pros2b pros2b_.
		pros2c pros2c_.
		pros3 pros3_.
		pros3a pros3a_.
		pros4 pros4_.
		up1 up1_.
		up2 up2_.
		up3 up3_.
		up4 up4_.
		up5 up5_.
		up6 up6_.
		up7 up7_.
		up8 up8_.
		up9 up9_.
		up10 up10_.
		up11 up11_.
		up11a up11a_.
		up11b up11b_.
		up12 up12_.
		up12a up12a_.
		mchx17a mchx17a_.
		coviddx coviddx_.
		covidvac covidvac_.
		nocovidvac nocovidvac_.
		whatvac whatvac_.
		cvbooster cvbooster_.
		booster1 booster1_.
		booster2 booster2_.
		mdhx17a mdhx17a_.
		cvrs9a cvrs9a_.
		cvrs10a cvrs10a_.
		cvrs10c cvrs10c_.
		cvrs11a cvrs11a_.
		cvrs12a cvrs12a_.
		cvrs12d cvrs12d_.
		cvrs13a cvrs13a_.
		cvrs13d cvrs13d_.
		dhx01 dhx01_.
		dhx02 dhx02_.
		dhx03 dhx03_.
		dhx04 dhx04_.
		dhx05 dhx05_.
		dhx06 dhx06_.
		dhx07 dhx07_.
		dhx08 dhx08_.
		dhx09 dhx09_.
		dhx10 dhx10_.
		dhx11 dhx11_.
		dhx12 dhx12_.
		dhx13 dhx13_.
		dhx14 dhx14_.
		dhx15 dhx15_.
		dhx16 dhx16_.
		dhx17 dhx17_.
		dhx18 dhx18_.
		dhx19 dhx19_.
		dhx20 dhx20_.
		dhx21 dhx21_.
		dhx22 dhx22_.
		dhx23 dhx23_.
		dhx24 dhx24_.
		dhx25 dhx25_.
		dhx26 dhx26_.
		dhx27 dhx27_.
		dhx28 dhx28_.
		dhx29 dhx29_.
		dhx30 dhx30_.
		dhx31 dhx31_.
		dhx32 dhx32_.
		dhx33 dhx33_.
		dhx34 dhx34_.
		dhx35 dhx35_.
		dhx36 dhx36_.
		dhx37 dhx37_.
		dhx38 dhx38_.
		dhx39 dhx39_.
	;
RUN;


DATA blsa_medical_interview;
    SET WORK.IMPORT;
RUN;
