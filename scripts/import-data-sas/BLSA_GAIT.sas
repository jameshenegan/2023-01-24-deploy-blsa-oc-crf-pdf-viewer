%let path_to_file = '../data-csv/BLSA_GAIT.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE shoesworn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glab001_
		0 = 'Not attempted'
		1 = 'Attempted'
	;

	VALUE glab001a_
		1 = '1-Not enough time/not scheduled'
		2 = '2-No examiner'
		3 = '3-Technical/equipment problem'
		4 = '4-Cognitively impaired'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt unsafe'
		7 = '7-Participant refused'
		8 = '8-Reason unknown'
		9 = '9-Other Physical Problems'
	;

	VALUE glab001b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glab002_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab002a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab003_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab003a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glb004a_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glb004b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glb005a_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glb005b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab024_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab024a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab025_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab025a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab026_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab026a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab027_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab027a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab030_
		0 = 'No pain during the tests'
		1 = 'Any pain (specify place and severity)'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE glab031_
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab031a_
		0 = '0-None'
		1 = '1-Mild'
		2 = '2-Moderate'
		3 = '3-Severe'
		4 = '4-Extreme'
		8 = "8-Don't know"
	;

	VALUE glab031b_
		0 = '0-None'
		1 = '1-Mild'
		2 = '2-Moderate'
		3 = '3-Severe'
		4 = '4-Extreme'
		8 = "8-Don't know"
	;

	VALUE glab032_
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab032a_
		0 = '0-None'
		1 = '1-Mild'
		2 = '2-Moderate'
		3 = '3-Severe'
		4 = '4-Extreme'
		8 = "8-Don't know"
	;

	VALUE glab032b_
		0 = '0-None'
		1 = '1-Mild'
		2 = '2-Moderate'
		3 = '3-Severe'
		4 = '4-Extreme'
		8 = "8-Don't know"
	;

	VALUE glab033_
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab033a_
		0 = '0-None'
		1 = '1-Mild'
		2 = '2-Moderate'
		3 = '3-Severe'
		4 = '4-Extreme'
		8 = "8-Don't know"
	;

	VALUE glab033b_
		0 = '0-None'
		1 = '1-Mild'
		2 = '2-Moderate'
		3 = '3-Severe'
		4 = '4-Extreme'
		8 = "8-Don't know"
	;

	VALUE glab034_
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab034a_
		0 = '0-None'
		1 = '1-Mild'
		2 = '2-Moderate'
		3 = '3-Severe'
		4 = '4-Extreme'
		8 = "8-Don't know"
	;

	VALUE glab034b_
		0 = '0-None'
		1 = '1-Mild'
		2 = '2-Moderate'
		3 = '3-Severe'
		4 = '4-Extreme'
		8 = "8-Don't know"
	;

	VALUE glab035_
		1 = 'Yes'
	;

	VALUE glab035a_
		0 = '0-None'
		1 = '1-Mild'
		2 = '2-Moderate'
		3 = '3-Severe'
		4 = '4-Extreme'
		8 = "8-Don't know"
	;

	VALUE zeno_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vicon_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE zenot1_
		0 = 'No'
		1 = 'Yes'
		2 = 'N/A Vicon used'
	;

	VALUE zenot2_
		0 = 'No'
		1 = 'Yes'
		2 = 'N/A Vicon used'
	;

	VALUE zenot3_
		0 = 'No'
		1 = 'Yes'
		2 = 'N/A Vicon used'
	;

	VALUE zenot4_
		0 = 'No'
		1 = 'Yes'
		2 = 'N/A Vicon used'
	;

	VALUE walkingaidused_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE animalfluency_
		1 = 'B'
		2 = 'L'
		3 = 'D'
		4 = 'C'
		5 = 'M'
	;

	VALUE glab002wa_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glab003wa_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glb004wa_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glb005wa_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glab024wa_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glab025wa_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glab026wa_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glab027wa_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glab004a_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab005a_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab006a_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004f_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004g_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004h_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004i_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004j_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004k_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004l_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004m_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004n_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004o_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004p_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004q_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb004r_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab004cw_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glab004rnd_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab004ms_
		1 = 'Small'
		2 = 'Medium'
		3 = 'Large'
	;

	VALUE glab008a_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab009a_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab010a_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005f_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005g_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005h_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005i_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005j_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005k_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005l_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005m_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005n_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005o_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005p_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005q_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb005r_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006a_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glb006b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab012b_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab013b_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab014b_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab015b_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006g_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006h_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006i_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006j_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006k_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006l_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006m_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006n_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006o_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006p_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006q_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb006r_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab016_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab016c_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab016d_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab017_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab017c_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab017d_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab018_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab018c_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab018d_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab019_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab019c_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab019d_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb011_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glb011d_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glb011c_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb012_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glb012d_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glb012c_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017a_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glb017b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab028a_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab029a_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017e_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017f_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017g_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017h_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017i_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017j_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017k_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017l_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017m_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017n_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017o_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017p_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017q_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glb017r_
		0 = 'None'
		1 = 'Right'
		2 = 'Left'
		3 = 'Both'
	;

	VALUE glab004_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab004b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab005_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab005b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab006_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab006b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab008_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab008b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab009_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab009b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab010_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab010b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab011_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE glab012_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab012a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab013_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab013a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab014_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab014a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab015_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab015a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab020_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab020a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab021_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab021a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab022_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab022a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab023_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab023a_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab028_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab028b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
	;

	VALUE glab029_
		0 = 'Incomplete/Not done'
		1 = 'Complete'
	;

	VALUE glab029b_
		1 = '1-Not enough time'
		2 = '2-No examiner/room available'
		3 = '3-Technical problem'
		4 = '4-Participant unable to understand instructions'
		5 = '5-Unable to stand/walk unaided'
		6 = '6-Examiner felt it was unsafe'
		7 = '7-Refused'
		8 = '8-Reason unknown'
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

	INFORMAT crf_version_GAI $8.;
	FORMAT crf_version_GAI $8.;

	INFORMAT obsdate_glabdate YYMMDD10.;
	FORMAT obsdate_glabdate YYMMDD10.;

	INFORMAT blank_GAI $1.;
	FORMAT blank_GAI $1.;

	INFORMAT glabtid BEST32.;
	FORMAT glabtid BEST12.;

	INFORMAT shoesworn BEST32.;
	FORMAT shoesworn BEST12.;

	INFORMAT glab001 BEST32.;
	FORMAT glab001 BEST12.;

	INFORMAT glab001a BEST32.;
	FORMAT glab001a BEST12.;

	INFORMAT glab001b BEST32.;
	FORMAT glab001b BEST12.;

	INFORMAT glab002 BEST32.;
	FORMAT glab002 BEST12.;

	INFORMAT glab002a BEST32.;
	FORMAT glab002a BEST12.;

	INFORMAT glab003 BEST32.;
	FORMAT glab003 BEST12.;

	INFORMAT glab003a BEST32.;
	FORMAT glab003a BEST12.;

	INFORMAT glb004a BEST32.;
	FORMAT glb004a BEST12.;

	INFORMAT glb004b BEST32.;
	FORMAT glb004b BEST12.;

	INFORMAT glb004 BEST32.;
	FORMAT glb004 BEST12.;

	INFORMAT glb005a BEST32.;
	FORMAT glb005a BEST12.;

	INFORMAT glb005b BEST32.;
	FORMAT glb005b BEST12.;

	INFORMAT glb005 BEST32.;
	FORMAT glb005 BEST12.;

	INFORMAT glab024 BEST32.;
	FORMAT glab024 BEST12.;

	INFORMAT glab024a BEST32.;
	FORMAT glab024a BEST12.;

	INFORMAT glab025 BEST32.;
	FORMAT glab025 BEST12.;

	INFORMAT glab025a BEST32.;
	FORMAT glab025a BEST12.;

	INFORMAT glab026 BEST32.;
	FORMAT glab026 BEST12.;

	INFORMAT glab026a BEST32.;
	FORMAT glab026a BEST12.;

	INFORMAT glab027 BEST32.;
	FORMAT glab027 BEST12.;

	INFORMAT glab027a BEST32.;
	FORMAT glab027a BEST12.;

	INFORMAT glab030 BEST32.;
	FORMAT glab030 BEST12.;

	INFORMAT glab031 BEST32.;
	FORMAT glab031 BEST12.;

	INFORMAT glab031a BEST32.;
	FORMAT glab031a BEST12.;

	INFORMAT glab031b BEST32.;
	FORMAT glab031b BEST12.;

	INFORMAT glab032 BEST32.;
	FORMAT glab032 BEST12.;

	INFORMAT glab032a BEST32.;
	FORMAT glab032a BEST12.;

	INFORMAT glab032b BEST32.;
	FORMAT glab032b BEST12.;

	INFORMAT glab033 BEST32.;
	FORMAT glab033 BEST12.;

	INFORMAT glab033a BEST32.;
	FORMAT glab033a BEST12.;

	INFORMAT glab033b BEST32.;
	FORMAT glab033b BEST12.;

	INFORMAT glab034 BEST32.;
	FORMAT glab034 BEST12.;

	INFORMAT glab034a BEST32.;
	FORMAT glab034a BEST12.;

	INFORMAT glab034b BEST32.;
	FORMAT glab034b BEST12.;

	INFORMAT glab035 BEST32.;
	FORMAT glab035 BEST12.;

	INFORMAT glab035a BEST32.;
	FORMAT glab035a BEST12.;

	INFORMAT comments_GAI $88.;
	FORMAT comments_GAI $88.;

	INFORMAT zeno BEST32.;
	FORMAT zeno BEST12.;

	INFORMAT vicon BEST32.;
	FORMAT vicon BEST12.;

	INFORMAT zenot1 BEST32.;
	FORMAT zenot1 BEST12.;

	INFORMAT zenot2 BEST32.;
	FORMAT zenot2 BEST12.;

	INFORMAT zenot3 BEST32.;
	FORMAT zenot3 BEST12.;

	INFORMAT zenot4 BEST32.;
	FORMAT zenot4 BEST12.;

	INFORMAT walkingaidused BEST32.;
	FORMAT walkingaidused BEST12.;

	INFORMAT typewalkingaid $14.;
	FORMAT typewalkingaid $14.;

	INFORMAT serial1scounted $1.;
	FORMAT serial1scounted $1.;

	INFORMAT serial1errors $1.;
	FORMAT serial1errors $1.;

	INFORMAT serial1ssub BEST32.;
	FORMAT serial1ssub BEST12.;

	INFORMAT serial1scorrect BEST32.;
	FORMAT serial1scorrect BEST12.;

	INFORMAT serial1stoterrors BEST32.;
	FORMAT serial1stoterrors BEST12.;

	INFORMAT animalfluency BEST32.;
	FORMAT animalfluency BEST12.;

	INFORMAT animaltotal BEST32.;
	FORMAT animaltotal BEST12.;

	INFORMAT animaldup BEST32.;
	FORMAT animaldup BEST12.;

	INFORMAT comments1 $97.;
	FORMAT comments1 $97.;

	INFORMAT glab002wa BEST32.;
	FORMAT glab002wa BEST12.;

	INFORMAT glab003wa BEST32.;
	FORMAT glab003wa BEST12.;

	INFORMAT glb004wa BEST32.;
	FORMAT glb004wa BEST12.;

	INFORMAT glb005wa BEST32.;
	FORMAT glb005wa BEST12.;

	INFORMAT glab024wa BEST32.;
	FORMAT glab024wa BEST12.;

	INFORMAT glab025wa BEST32.;
	FORMAT glab025wa BEST12.;

	INFORMAT glab026wa BEST32.;
	FORMAT glab026wa BEST12.;

	INFORMAT glab027wa BEST32.;
	FORMAT glab027wa BEST12.;

	INFORMAT glab004a BEST32.;
	FORMAT glab004a BEST12.;

	INFORMAT glab005a BEST32.;
	FORMAT glab005a BEST12.;

	INFORMAT glab006a BEST32.;
	FORMAT glab006a BEST12.;

	INFORMAT glb004f BEST32.;
	FORMAT glb004f BEST12.;

	INFORMAT glb004g BEST32.;
	FORMAT glb004g BEST12.;

	INFORMAT glb004h BEST32.;
	FORMAT glb004h BEST12.;

	INFORMAT glb004i BEST32.;
	FORMAT glb004i BEST12.;

	INFORMAT glb004j BEST32.;
	FORMAT glb004j BEST12.;

	INFORMAT glb004k BEST32.;
	FORMAT glb004k BEST12.;

	INFORMAT glb004l BEST32.;
	FORMAT glb004l BEST12.;

	INFORMAT glb004m BEST32.;
	FORMAT glb004m BEST12.;

	INFORMAT glb004n BEST32.;
	FORMAT glb004n BEST12.;

	INFORMAT glb004o BEST32.;
	FORMAT glb004o BEST12.;

	INFORMAT glb004p BEST32.;
	FORMAT glb004p BEST12.;

	INFORMAT glb004q BEST32.;
	FORMAT glb004q BEST12.;

	INFORMAT glb004r BEST32.;
	FORMAT glb004r BEST12.;

	INFORMAT glab004cw BEST32.;
	FORMAT glab004cw BEST12.;

	INFORMAT glab004rnd BEST32.;
	FORMAT glab004rnd BEST12.;

	INFORMAT glab004ms BEST32.;
	FORMAT glab004ms BEST12.;

	INFORMAT glab008a BEST32.;
	FORMAT glab008a BEST12.;

	INFORMAT glab009a BEST32.;
	FORMAT glab009a BEST12.;

	INFORMAT glab010a BEST32.;
	FORMAT glab010a BEST12.;

	INFORMAT glb005f BEST32.;
	FORMAT glb005f BEST12.;

	INFORMAT glb005g BEST32.;
	FORMAT glb005g BEST12.;

	INFORMAT glb005h BEST32.;
	FORMAT glb005h BEST12.;

	INFORMAT glb005i BEST32.;
	FORMAT glb005i BEST12.;

	INFORMAT glb005j BEST32.;
	FORMAT glb005j BEST12.;

	INFORMAT glb005k BEST32.;
	FORMAT glb005k BEST12.;

	INFORMAT glb005l BEST32.;
	FORMAT glb005l BEST12.;

	INFORMAT glb005m BEST32.;
	FORMAT glb005m BEST12.;

	INFORMAT glb005n BEST32.;
	FORMAT glb005n BEST12.;

	INFORMAT glb005o BEST32.;
	FORMAT glb005o BEST12.;

	INFORMAT glb005p BEST32.;
	FORMAT glb005p BEST12.;

	INFORMAT glb005q BEST32.;
	FORMAT glb005q BEST12.;

	INFORMAT glb005r BEST32.;
	FORMAT glb005r BEST12.;

	INFORMAT glb006a BEST32.;
	FORMAT glb006a BEST12.;

	INFORMAT glb006b BEST32.;
	FORMAT glb006b BEST12.;

	INFORMAT glb006 BEST32.;
	FORMAT glb006 BEST12.;

	INFORMAT glab012b BEST32.;
	FORMAT glab012b BEST12.;

	INFORMAT glab013b BEST32.;
	FORMAT glab013b BEST12.;

	INFORMAT glab014b BEST32.;
	FORMAT glab014b BEST12.;

	INFORMAT glab015b BEST32.;
	FORMAT glab015b BEST12.;

	INFORMAT glb006g BEST32.;
	FORMAT glb006g BEST12.;

	INFORMAT glb006h BEST32.;
	FORMAT glb006h BEST12.;

	INFORMAT glb006i BEST32.;
	FORMAT glb006i BEST12.;

	INFORMAT glb006j BEST32.;
	FORMAT glb006j BEST12.;

	INFORMAT glb006k BEST32.;
	FORMAT glb006k BEST12.;

	INFORMAT glb006l BEST32.;
	FORMAT glb006l BEST12.;

	INFORMAT glb006m BEST32.;
	FORMAT glb006m BEST12.;

	INFORMAT glb006n BEST32.;
	FORMAT glb006n BEST12.;

	INFORMAT glb006o BEST32.;
	FORMAT glb006o BEST12.;

	INFORMAT glb006p BEST32.;
	FORMAT glb006p BEST12.;

	INFORMAT glb006q BEST32.;
	FORMAT glb006q BEST12.;

	INFORMAT glb006r BEST32.;
	FORMAT glb006r BEST12.;

	INFORMAT glab016 BEST32.;
	FORMAT glab016 BEST12.;

	INFORMAT glab016c BEST32.;
	FORMAT glab016c BEST12.;

	INFORMAT glab016a BEST32.;
	FORMAT glab016a BEST12.;

	INFORMAT glab016b BEST32.;
	FORMAT glab016b BEST12.;

	INFORMAT glab016d BEST32.;
	FORMAT glab016d BEST12.;

	INFORMAT glab017 BEST32.;
	FORMAT glab017 BEST12.;

	INFORMAT glab017c BEST32.;
	FORMAT glab017c BEST12.;

	INFORMAT glab017a BEST32.;
	FORMAT glab017a BEST12.;

	INFORMAT glab017b BEST32.;
	FORMAT glab017b BEST12.;

	INFORMAT glab017d BEST32.;
	FORMAT glab017d BEST12.;

	INFORMAT glab018 BEST32.;
	FORMAT glab018 BEST12.;

	INFORMAT glab018c BEST32.;
	FORMAT glab018c BEST12.;

	INFORMAT glab018a BEST32.;
	FORMAT glab018a BEST12.;

	INFORMAT glab018b BEST32.;
	FORMAT glab018b BEST12.;

	INFORMAT glab018d BEST32.;
	FORMAT glab018d BEST12.;

	INFORMAT glab019 BEST32.;
	FORMAT glab019 BEST12.;

	INFORMAT glab019c BEST32.;
	FORMAT glab019c BEST12.;

	INFORMAT glab019a BEST32.;
	FORMAT glab019a BEST12.;

	INFORMAT glab019b BEST32.;
	FORMAT glab019b BEST12.;

	INFORMAT glab019d BEST32.;
	FORMAT glab019d BEST12.;

	INFORMAT glb011 BEST32.;
	FORMAT glb011 BEST12.;

	INFORMAT glb011d BEST32.;
	FORMAT glb011d BEST12.;

	INFORMAT glb011a BEST32.;
	FORMAT glb011a BEST12.;

	INFORMAT glb011b BEST32.;
	FORMAT glb011b BEST12.;

	INFORMAT glb011c BEST32.;
	FORMAT glb011c BEST12.;

	INFORMAT glb012 BEST32.;
	FORMAT glb012 BEST12.;

	INFORMAT glb012d BEST32.;
	FORMAT glb012d BEST12.;

	INFORMAT glb012a BEST32.;
	FORMAT glb012a BEST12.;

	INFORMAT glb012b BEST32.;
	FORMAT glb012b BEST12.;

	INFORMAT glb012c BEST32.;
	FORMAT glb012c BEST12.;

	INFORMAT glb017a BEST32.;
	FORMAT glb017a BEST12.;

	INFORMAT glb017b BEST32.;
	FORMAT glb017b BEST12.;

	INFORMAT glb017 BEST32.;
	FORMAT glb017 BEST12.;

	INFORMAT glab028a BEST32.;
	FORMAT glab028a BEST12.;

	INFORMAT glab029a BEST32.;
	FORMAT glab029a BEST12.;

	INFORMAT glb017e BEST32.;
	FORMAT glb017e BEST12.;

	INFORMAT glb017f BEST32.;
	FORMAT glb017f BEST12.;

	INFORMAT glb017g BEST32.;
	FORMAT glb017g BEST12.;

	INFORMAT glb017h BEST32.;
	FORMAT glb017h BEST12.;

	INFORMAT glb017i BEST32.;
	FORMAT glb017i BEST12.;

	INFORMAT glb017j BEST32.;
	FORMAT glb017j BEST12.;

	INFORMAT glb017k BEST32.;
	FORMAT glb017k BEST12.;

	INFORMAT glb017l BEST32.;
	FORMAT glb017l BEST12.;

	INFORMAT glb017m BEST32.;
	FORMAT glb017m BEST12.;

	INFORMAT glb017n BEST32.;
	FORMAT glb017n BEST12.;

	INFORMAT glb017o BEST32.;
	FORMAT glb017o BEST12.;

	INFORMAT glb017p BEST32.;
	FORMAT glb017p BEST12.;

	INFORMAT glb017q BEST32.;
	FORMAT glb017q BEST12.;

	INFORMAT glb017r BEST32.;
	FORMAT glb017r BEST12.;

	INFORMAT glab004 BEST32.;
	FORMAT glab004 BEST12.;

	INFORMAT glab004b BEST32.;
	FORMAT glab004b BEST12.;

	INFORMAT glab005 BEST32.;
	FORMAT glab005 BEST12.;

	INFORMAT glab005b BEST32.;
	FORMAT glab005b BEST12.;

	INFORMAT glab006 BEST32.;
	FORMAT glab006 BEST12.;

	INFORMAT glab006b BEST32.;
	FORMAT glab006b BEST12.;

	INFORMAT glab008 BEST32.;
	FORMAT glab008 BEST12.;

	INFORMAT glab008b BEST32.;
	FORMAT glab008b BEST12.;

	INFORMAT glab009 BEST32.;
	FORMAT glab009 BEST12.;

	INFORMAT glab009b BEST32.;
	FORMAT glab009b BEST12.;

	INFORMAT glab010 BEST32.;
	FORMAT glab010 BEST12.;

	INFORMAT glab010b BEST32.;
	FORMAT glab010b BEST12.;

	INFORMAT glab011 BEST32.;
	FORMAT glab011 BEST12.;

	INFORMAT glab012 BEST32.;
	FORMAT glab012 BEST12.;

	INFORMAT glab012a BEST32.;
	FORMAT glab012a BEST12.;

	INFORMAT glab013 BEST32.;
	FORMAT glab013 BEST12.;

	INFORMAT glab013a BEST32.;
	FORMAT glab013a BEST12.;

	INFORMAT glab014 BEST32.;
	FORMAT glab014 BEST12.;

	INFORMAT glab014a BEST32.;
	FORMAT glab014a BEST12.;

	INFORMAT glab015 BEST32.;
	FORMAT glab015 BEST12.;

	INFORMAT glab015a BEST32.;
	FORMAT glab015a BEST12.;

	INFORMAT glab1298 BEST32.;
	FORMAT glab1298 BEST12.;

	INFORMAT glab1299 BEST32.;
	FORMAT glab1299 BEST12.;

	INFORMAT glab020 BEST32.;
	FORMAT glab020 BEST12.;

	INFORMAT glab020a BEST32.;
	FORMAT glab020a BEST12.;

	INFORMAT glab021 BEST32.;
	FORMAT glab021 BEST12.;

	INFORMAT glab021a BEST32.;
	FORMAT glab021a BEST12.;

	INFORMAT glab022 BEST32.;
	FORMAT glab022 BEST12.;

	INFORMAT glab022a BEST32.;
	FORMAT glab022a BEST12.;

	INFORMAT glab023 BEST32.;
	FORMAT glab023 BEST12.;

	INFORMAT glab023a BEST32.;
	FORMAT glab023a BEST12.;

	INFORMAT glab028 BEST32.;
	FORMAT glab028 BEST12.;

	INFORMAT glab028b BEST32.;
	FORMAT glab028b BEST12.;

	INFORMAT glab029 BEST32.;
	FORMAT glab029 BEST12.;

	INFORMAT glab029b BEST32.;
	FORMAT glab029b BEST12.;

	INFORMAT auto_id_GAI BEST32.;
	FORMAT auto_id_GAI BEST12.;

	INFORMAT crf_parent_name_GAI $9.;
	FORMAT crf_parent_name_GAI $9.;

	INFORMAT item_group_repeat_GAI BEST32.;
	FORMAT item_group_repeat_GAI BEST12.;

	INFORMAT serial1errors_1 BEST32.;
	FORMAT serial1errors_1 BEST12.;

	INFORMAT serial1errors_2 BEST32.;
	FORMAT serial1errors_2 BEST12.;

	INFORMAT serial1errors_3 BEST32.;
	FORMAT serial1errors_3 BEST12.;

	INFORMAT serial1errors_4 $1.;
	FORMAT serial1errors_4 $1.;

	INFORMAT serial1errors_5 BEST32.;
	FORMAT serial1errors_5 BEST12.;

	INFORMAT serial1errors_6 BEST32.;
	FORMAT serial1errors_6 BEST12.;

	INFORMAT serial1scounted_1 BEST32.;
	FORMAT serial1scounted_1 BEST12.;

	INFORMAT serial1scounted_10 BEST32.;
	FORMAT serial1scounted_10 BEST12.;

	INFORMAT serial1scounted_11 BEST32.;
	FORMAT serial1scounted_11 BEST12.;

	INFORMAT serial1scounted_12 BEST32.;
	FORMAT serial1scounted_12 BEST12.;

	INFORMAT serial1scounted_13 BEST32.;
	FORMAT serial1scounted_13 BEST12.;

	INFORMAT serial1scounted_14 BEST32.;
	FORMAT serial1scounted_14 BEST12.;

	INFORMAT serial1scounted_15 BEST32.;
	FORMAT serial1scounted_15 BEST12.;

	INFORMAT serial1scounted_16 BEST32.;
	FORMAT serial1scounted_16 BEST12.;

	INFORMAT serial1scounted_17 BEST32.;
	FORMAT serial1scounted_17 BEST12.;

	INFORMAT serial1scounted_18 BEST32.;
	FORMAT serial1scounted_18 BEST12.;

	INFORMAT serial1scounted_19 BEST32.;
	FORMAT serial1scounted_19 BEST12.;

	INFORMAT serial1scounted_2 BEST32.;
	FORMAT serial1scounted_2 BEST12.;

	INFORMAT serial1scounted_20 BEST32.;
	FORMAT serial1scounted_20 BEST12.;

	INFORMAT serial1scounted_21 $1.;
	FORMAT serial1scounted_21 $1.;

	INFORMAT serial1scounted_22 $1.;
	FORMAT serial1scounted_22 $1.;

	INFORMAT serial1scounted_23 $1.;
	FORMAT serial1scounted_23 $1.;

	INFORMAT serial1scounted_24 $1.;
	FORMAT serial1scounted_24 $1.;

	INFORMAT serial1scounted_3 BEST32.;
	FORMAT serial1scounted_3 BEST12.;

	INFORMAT serial1scounted_4 BEST32.;
	FORMAT serial1scounted_4 BEST12.;

	INFORMAT serial1scounted_5 BEST32.;
	FORMAT serial1scounted_5 BEST12.;

	INFORMAT serial1scounted_6 BEST32.;
	FORMAT serial1scounted_6 BEST12.;

	INFORMAT serial1scounted_7 BEST32.;
	FORMAT serial1scounted_7 BEST12.;

	INFORMAT serial1scounted_8 BEST32.;
	FORMAT serial1scounted_8 BEST12.;

	INFORMAT study_name_GAI $4.;
	FORMAT study_name_GAI $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_GAI
		obsdate_glabdate
		blank_GAI
		glabtid
		shoesworn
		glab001
		glab001a
		glab001b
		glab002
		glab002a
		glab003
		glab003a
		glb004a
		glb004b
		glb004
		glb005a
		glb005b
		glb005
		glab024
		glab024a
		glab025
		glab025a
		glab026
		glab026a
		glab027
		glab027a
		glab030
		glab031
		glab031a
		glab031b
		glab032
		glab032a
		glab032b
		glab033
		glab033a
		glab033b
		glab034
		glab034a
		glab034b
		glab035
		glab035a
		comments_GAI
		zeno
		vicon
		zenot1
		zenot2
		zenot3
		zenot4
		walkingaidused
		typewalkingaid
		serial1scounted
		serial1errors
		serial1ssub
		serial1scorrect
		serial1stoterrors
		animalfluency
		animaltotal
		animaldup
		comments1
		glab002wa
		glab003wa
		glb004wa
		glb005wa
		glab024wa
		glab025wa
		glab026wa
		glab027wa
		glab004a
		glab005a
		glab006a
		glb004f
		glb004g
		glb004h
		glb004i
		glb004j
		glb004k
		glb004l
		glb004m
		glb004n
		glb004o
		glb004p
		glb004q
		glb004r
		glab004cw
		glab004rnd
		glab004ms
		glab008a
		glab009a
		glab010a
		glb005f
		glb005g
		glb005h
		glb005i
		glb005j
		glb005k
		glb005l
		glb005m
		glb005n
		glb005o
		glb005p
		glb005q
		glb005r
		glb006a
		glb006b
		glb006
		glab012b
		glab013b
		glab014b
		glab015b
		glb006g
		glb006h
		glb006i
		glb006j
		glb006k
		glb006l
		glb006m
		glb006n
		glb006o
		glb006p
		glb006q
		glb006r
		glab016
		glab016c
		glab016a
		glab016b
		glab016d
		glab017
		glab017c
		glab017a
		glab017b
		glab017d
		glab018
		glab018c
		glab018a
		glab018b
		glab018d
		glab019
		glab019c
		glab019a
		glab019b
		glab019d
		glb011
		glb011d
		glb011a
		glb011b
		glb011c
		glb012
		glb012d
		glb012a
		glb012b
		glb012c
		glb017a
		glb017b
		glb017
		glab028a
		glab029a
		glb017e
		glb017f
		glb017g
		glb017h
		glb017i
		glb017j
		glb017k
		glb017l
		glb017m
		glb017n
		glb017o
		glb017p
		glb017q
		glb017r
		glab004
		glab004b
		glab005
		glab005b
		glab006
		glab006b
		glab008
		glab008b
		glab009
		glab009b
		glab010
		glab010b
		glab011
		glab012
		glab012a
		glab013
		glab013a
		glab014
		glab014a
		glab015
		glab015a
		glab1298
		glab1299
		glab020
		glab020a
		glab021
		glab021a
		glab022
		glab022a
		glab023
		glab023a
		glab028
		glab028b
		glab029
		glab029b
		auto_id_GAI
		crf_parent_name_GAI
		item_group_repeat_GAI
		serial1errors_1
		serial1errors_2
		serial1errors_3
		serial1errors_4
		serial1errors_5
		serial1errors_6
		serial1scounted_1
		serial1scounted_10
		serial1scounted_11
		serial1scounted_12
		serial1scounted_13
		serial1scounted_14
		serial1scounted_15
		serial1scounted_16
		serial1scounted_17
		serial1scounted_18
		serial1scounted_19
		serial1scounted_2
		serial1scounted_20
		serial1scounted_21
		serial1scounted_22
		serial1scounted_23
		serial1scounted_24
		serial1scounted_3
		serial1scounted_4
		serial1scounted_5
		serial1scounted_6
		serial1scounted_7
		serial1scounted_8
		study_name_GAI
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
		crf_version_GAI = "CRF Version"
		obsdate_glabdate = "Date Completed"
		blank_GAI = "Blank Form"
		glabtid = "Tester ID"
		shoesworn = "Were shoes worn during this test"
		glab001 = "Status of Gait Lab testing"
		glab001a = "Reason Gait Lat testing not done"
		glab001b = "Was accelerometer worn during this test"
		glab002 = "Quiet Stance Static Stand Positive Trial"
		glab002a = "Quiet Stance Static Stand Positive Trial RND"
		glab003 = "Quiet Stance Static Stand Negative Trial"
		glab003a = "Quiet Stance Static Stand Negative Trial RND"
		glb004a = "Steady State Walks Normal Pace Status"
		glb004b = "Steady State Walks Normal Pace RND"
		glb004 = "Steady State Walks Normal Pace Number Of Trials"
		glb005a = "Steady State Walks Fast Pace Status"
		glb005b = "Steady State Walks Fast Pace RND"
		glb005 = "Steady State Walks Fast Pace Number Of Trials"
		glab024 = "Normal Pace Walk With Obstacle Status trial 1"
		glab024a = "Normal Pace Walk With Obstacle RND trial 1"
		glab025 = "Normal Pace Walk With Obstacle Status trial 2"
		glab025a = "Normal Pace Walk With Obstacle RND trial 2"
		glab026 = "Normal Pace Walk With Obstacle Status trial 3"
		glab026a = "Normal Pace Walk With Obstacle RND trial 3"
		glab027 = "Normal Pace Walk With Obstacle Status trial 4"
		glab027a = "Normal Pace Walk With Obstacle RND trial 4"
		glab030 = "Pain Assessment"
		glab031 = "Pain Assessment feet"
		glab031a = "Pain Feet Right"
		glab031b = "Pain Feet Left"
		glab032 = "Pain Assessment ankles"
		glab032a = "Pain Ankle Right"
		glab032b = "Pain Ankle Left"
		glab033 = "Pain Assessment knees"
		glab033a = "Pain Knee Right"
		glab033b = "Pain Knee Left"
		glab034 = "Pain Assessment hips"
		glab034a = "Pain Hip Right"
		glab034b = "Pain Hip Left"
		glab035 = "Pain Back"
		glab035a = "Pain Back intensity"
		comments_GAI = "Comments"
		zeno = "Was Zeno walkway used to record GAIT"
		vicon = "Was Vicon walkway used to record GAIT"
		zenot1 = "T1 If using Zeno was clicker used to mark heel strike before obstacle crossing"
		zenot2 = "T2 If using Zeno was clicker used to mark heel strike before obstacle crossing"
		zenot3 = "T3 If using Zeno was clicker used to mark heel strike before obstacle crossing"
		zenot4 = "T4 If using Zeno was clicker used to mark heel strike before obstacle crossing"
		walkingaidused = "Was a walking aid used"
		typewalkingaid = "Type of walking aid"
		serial1scounted = "Serial 1s counted"
		serial1errors = "Serial 1s errors"
		serial1ssub = "Serial 1s Subtractions"
		serial1scorrect = "Serial 1s total correct"
		serial1stoterrors = "Serial 1s total errors"
		animalfluency = "Animal fluency"
		animaltotal = "Total number of animal names"
		animaldup = "Total number of duplicate animal names"
		comments1 = "Comments"
		glab002wa = "Quiet Stance Static Stand Positive Trial Walking aid used"
		glab003wa = "Quiet Stance Static Stand Negative Trial Walking aid used"
		glb004wa = "Steady State Walks Normal Pace Walking aid used"
		glb005wa = "Steady State Walks Fast Pace Walking aid used"
		glab024wa = "Normal Pace Walk With Obstacle T1 Walking aid used"
		glab025wa = "Normal Pace Walk With Obstacle Status trial 2 Walking aid used"
		glab026wa = "Normal Pace Walk With Obstacle Status trial 3 Walking aid used"
		glab027wa = "Normal Pace Walk With Obstacle Status trial 4 Walking aid used"
		glab004a = "Steady State Walks Normal Pace Clear Foot Strikes 1"
		glab005a = "Steady State Walks Normal Pace Clear Foot Strikes 2"
		glab006a = "Steady State Walks Normal Pace Clear Foot Strikes 3"
		glb004f = "Steady State Walks Normal Pace Clear Foot Strikes 4"
		glb004g = "Steady State Walks Normal Pace Clear Foot Strikes 5"
		glb004h = "Steady State Walks Normal Pace Clear Foot Strikes 6"
		glb004i = "Steady State Walks Normal Pace Clear Foot Strikes 7"
		glb004j = "Steady State Walks Normal Pace Clear Foot Strikes 8"
		glb004k = "Steady State Walks Normal Pace Clear Foot Strikes 9"
		glb004l = "Steady State Walks Normal Pace Clear Foot Strikes 10"
		glb004m = "Steady State Walks Normal Pace Clear Foot Strikes 11"
		glb004n = "Steady State Walks Normal Pace Clear Foot Strikes 12"
		glb004o = "Steady State Walks Normal Pace Clear Foot Strikes 13"
		glb004p = "Steady State Walks Normal Pace Clear Foot Strikes 14"
		glb004q = "Steady State Walks Normal Pace Clear Foot Strikes 15"
		glb004r = "Steady State Walks Normal Pace Clear Foot Strikes 16"
		glab004cw = "Cosmed worn during this test"
		glab004rnd = "Cosmed mask reason not done"
		glab004ms = "Cosmed mask size"
		glab008a = "Steady State Walks Fast Pace Clear Foot Strikes 1"
		glab009a = "Steady State Walks Fast Pace Clear Foot Strikes 2"
		glab010a = "Steady State Walks Fast Pace Clear Foot Strikes 3"
		glb005f = "Steady State Walks Fast Pace Clear Foot Strikes 4"
		glb005g = "Steady State Walks Fast Pace Clear Foot Strikes 5"
		glb005h = "Steady State Walks Fast Pace Clear Foot Strikes 6"
		glb005i = "Steady State Walks Fast Pace Clear Foot Strikes 7"
		glb005j = "Steady State Walks Fast Pace Clear Foot Strikes 8"
		glb005k = "Steady State Walks Fast Pace Clear Foot Strikes 9"
		glb005l = "Steady State Walks Fast Pace Clear Foot Strikes 10"
		glb005m = "Steady State Walks Fast Pace Clear Foot Strikes 11"
		glb005n = "Steady State Walks Fast Pace Clear Foot Strikes 12"
		glb005o = "Steady State Walks Fast Pace Clear Foot Strikes 13"
		glb005p = "Steady State Walks Fast Pace Clear Foot Strikes 14"
		glb005q = "Steady State Walks Fast Pace Clear Foot Strikes 15"
		glb005r = "Steady State Walks Fast Pace Clear Foot Strikes 16"
		glb006a = "Single Task Narrow Walk Status"
		glb006b = "Single Task Narrow Walk RND"
		glb006 = "Single Task Narrow Walk Number Of Trials"
		glab012b = "Single Task Narrow Walk Clear Foot Strikes 1"
		glab013b = "Single Task Narrow Walk Clear Foot Strikes 2"
		glab014b = "Single Task Narrow Walk Clear Foot Strikes 3"
		glab015b = "Single Task Narrow Walk Clear Foot Strikes 4"
		glb006g = "Single Task Narrow Walk Clear Foot Strikes 5"
		glb006h = "Single Task Narrow Walk Clear Foot Strikes 6"
		glb006i = "Single Task Narrow Walk Clear Foot Strikes 7"
		glb006j = "Single Task Narrow Walk Clear Foot Strikes 8"
		glb006k = "Single Task Narrow Walk Clear Foot Strikes 9"
		glb006l = "Single Task Narrow Walk Clear Foot Strikes 10"
		glb006m = "Single Task Narrow Walk Clear Foot Strikes 11"
		glb006n = "Single Task Narrow Walk Clear Foot Strikes 12"
		glb006o = "Single Task Narrow Walk Clear Foot Strikes 13"
		glb006p = "Single Task Narrow Walk Clear Foot Strikes 14"
		glb006q = "Single Task Narrow Walk Clear Foot Strikes 15"
		glb006r = "Single Task Narrow Walk Clear Foot Strikes 16"
		glab016 = "Dual Task Narrow Walk Status trial 1"
		glab016c = "Dual Task Narrow Walk RND trial 1"
		glab016a = "Dual Task Narrow Walk Recitation Errors trial 1"
		glab016b = "Dual Task Narrow Walk Days trial 1"
		glab016d = "Dual Task Narrow Walk clean foot strike trial 1"
		glab017 = "Dual Task Narrow Walk Status trial 2"
		glab017c = "Dual Task Narrow Walk RND trial 2"
		glab017a = "Dual Task Narrow Walk Recitation Errors trial 2"
		glab017b = "Dual Task Narrow Walk Days trial 2"
		glab017d = "Dual Task Narrow Walk clean foot strike trial 2"
		glab018 = "Dual Task Narrow Walk Status trial 3"
		glab018c = "Dual Task Narrow Walk RND trial 3"
		glab018a = "Dual Task Narrow Walk Recitation Errors trial 3"
		glab018b = "Dual Task Narrow Walk Days trial 3"
		glab018d = "Dual Task Narrow Walk clean foot strike trial 3"
		glab019 = "Dual Task Narrow Walk Status trial 4"
		glab019c = "Dual Task Narrow Walk RND trial 4"
		glab019a = "Dual Task Narrow Walk Recitation Errors trial 4"
		glab019b = "Dual Task Narrow Walk Days trial 4"
		glab019d = "Dual Task Narrow Walk clean foot strike trial 4"
		glb011 = "Dual Task Narrow Walk Status trial 5"
		glb011d = "Dual Task Narrow Walk RND trial 5"
		glb011a = "Dual Task Narrow Walk Recitation Errors trial 5"
		glb011b = "Dual Task Narrow Walk Days trial 5"
		glb011c = "Dual Task Narrow Walk clean foot strike trial 5"
		glb012 = "Dual Task Narrow Walk Status trial 6"
		glb012d = "Dual Task Narrow Walk RND trial 6"
		glb012a = "Dual Task Narrow Walk Recitation Errors trial 6"
		glb012b = "Dual Task Narrow Walk Days trial 6"
		glb012c = "Dual Task Narrow Walk clean foot strike trial 6"
		glb017a = "Normal Pace Steady State Fatigue Test Status"
		glb017b = "Normal Pace Steady State Fatigue RND"
		glb017 = "Normal Pace Steady State Fatigue Number Of Trials"
		glab028a = "Normal Pace Steady State Fatigue Clear Foot Strikes 1"
		glab029a = "Normal Pace Steady State Fatigue Clear Foot Strikes 2"
		glb017e = "Normal Pace Steady State Fatigue Clear Foot Strikes 3"
		glb017f = "Normal Pace Steady State Fatigue Clear Foot Strikes 4"
		glb017g = "Normal Pace Steady State Fatigue Clear Foot Strikes 5"
		glb017h = "Normal Pace Steady State Fatigue Clear Foot Strikes 6"
		glb017i = "Normal Pace Steady State Fatigue Clear Foot Strikes 7"
		glb017j = "Normal Pace Steady State Fatigue Clear Foot Strikes 8"
		glb017k = "Normal Pace Steady State Fatigue Clear Foot Strikes 9"
		glb017l = "Normal Pace Steady State Fatigue Clear Foot Strikes 10"
		glb017m = "Normal Pace Steady State Fatigue Clear Foot Strikes 11"
		glb017n = "Normal Pace Steady State Fatigue Clear Foot Strikes 12"
		glb017o = "Normal Pace Steady State Fatigue Clear Foot Strikes 13"
		glb017p = "Normal Pace Steady State Fatigue Clear Foot Strikes 14"
		glb017q = "Normal Pace Steady State Fatigue Clear Foot Strikes 15"
		glb017r = "Normal Pace Steady State Fatigue Clear Foot Strikes 16"
		glab004 = "Normal Pace T1"
		glab004b = "Normal Pace T1 RND"
		glab005 = "Normal Pace T2"
		glab005b = "Normal Pace T2 RND"
		glab006 = "Normal Pace T3"
		glab006b = "Normal Pace T3 RND"
		glab008 = "Fast Pace T1"
		glab008b = "Fast Pace T1 RND"
		glab009 = "Fast Pace T2"
		glab009b = "Fast Pace T2 RND"
		glab010 = "Fast Pace T3"
		glab010b = "Fast Pace T3 RND"
		glab011 = "Recites days correctly"
		glab012 = "Normal pace narrow walk T1"
		glab012a = "Normal pace narrow walk T1 RND"
		glab013 = "Normal pace narrow walk T2"
		glab013a = "Normal pace narrow walk T2 RND"
		glab014 = "Normal pace narrow walk T3"
		glab014a = "Normal pace narrow walk T3 RND"
		glab015 = "Normal pace narrow walk T4"
		glab015a = "Normal pace narrow walk T4 RND"
		glab1298 = "Dual Task Narrow Walk Total Errors"
		glab1299 = "Dual Task Narrow Walk Total Recited"
		glab020 = "Fast pace narrow walk T1"
		glab020a = "Fast pace narrow walk T1 RND"
		glab021 = "Fast pace narrow walk T2"
		glab021a = "Fast pace narrow walk T2 RND"
		glab022 = "Fast pace narrow walk T3"
		glab022a = "Fast pace narrow walk T3 RND"
		glab023 = "Fast pace narrow walk T4"
		glab023a = "Fast pace narrow walk T4 RND"
		glab028 = "Normal pace steady state fatigue walk T1"
		glab028b = "Normal pace steady state fatigue walk T1 RND"
		glab029 = "Normal pace steady state fatigue walk T2"
		glab029b = "Normal pace steady state fatigue walk T2 RND"
		auto_id_GAI = "Unique Teleform Number"
		crf_parent_name_GAI = "CRF Parent Name"
		item_group_repeat_GAI = "Item Group Repeate"
		serial1errors_1 = "Serial 1s errors : 1 (Checkbox Indicator)"
		serial1errors_2 = "Serial 1s errors : 2 (Checkbox Indicator)"
		serial1errors_3 = "Serial 1s errors : 3 (Checkbox Indicator)"
		serial1errors_4 = "Serial 1s errors : 4 (Checkbox Indicator)"
		serial1errors_5 = "Serial 1s errors : 5 (Checkbox Indicator)"
		serial1errors_6 = "Serial 1s errors : 6 (Checkbox Indicator)"
		serial1scounted_1 = "Serial 1s counted : 200 (Checkbox Indicator)"
		serial1scounted_10 = "Serial 1s counted : 191 (Checkbox Indicator)"
		serial1scounted_11 = "Serial 1s counted : 190 (Checkbox Indicator)"
		serial1scounted_12 = "Serial 1s counted : 189 (Checkbox Indicator)"
		serial1scounted_13 = "Serial 1s counted : 188 (Checkbox Indicator)"
		serial1scounted_14 = "Serial 1s counted : 187 (Checkbox Indicator)"
		serial1scounted_15 = "Serial 1s counted : 186 (Checkbox Indicator)"
		serial1scounted_16 = "Serial 1s counted : 185 (Checkbox Indicator)"
		serial1scounted_17 = "Serial 1s counted : 184 (Checkbox Indicator)"
		serial1scounted_18 = "Serial 1s counted : 183 (Checkbox Indicator)"
		serial1scounted_19 = "Serial 1s counted : 182 (Checkbox Indicator)"
		serial1scounted_2 = "Serial 1s counted : 199 (Checkbox Indicator)"
		serial1scounted_20 = "Serial 1s counted : 181 (Checkbox Indicator)"
		serial1scounted_21 = "Serial 1s counted : 180 (Checkbox Indicator)"
		serial1scounted_22 = "Serial 1s counted : 179 (Checkbox Indicator)"
		serial1scounted_23 = "Serial 1s counted : 178 (Checkbox Indicator)"
		serial1scounted_24 = "Serial 1s counted : 177 (Checkbox Indicator)"
		serial1scounted_3 = "Serial 1s counted : 198 (Checkbox Indicator)"
		serial1scounted_4 = "Serial 1s counted : 197 (Checkbox Indicator)"
		serial1scounted_5 = "Serial 1s counted : 196 (Checkbox Indicator)"
		serial1scounted_6 = "Serial 1s counted : 195 (Checkbox Indicator)"
		serial1scounted_7 = "Serial 1s counted : 194 (Checkbox Indicator)"
		serial1scounted_8 = "Serial 1s counted : 193 (Checkbox Indicator)"
		study_name_GAI = "Study Name"
	;
	FORMAT
		shoesworn shoesworn_.
		glab001 glab001_.
		glab001a glab001a_.
		glab001b glab001b_.
		glab002 glab002_.
		glab002a glab002a_.
		glab003 glab003_.
		glab003a glab003a_.
		glb004a glb004a_.
		glb004b glb004b_.
		glb005a glb005a_.
		glb005b glb005b_.
		glab024 glab024_.
		glab024a glab024a_.
		glab025 glab025_.
		glab025a glab025a_.
		glab026 glab026_.
		glab026a glab026a_.
		glab027 glab027_.
		glab027a glab027a_.
		glab030 glab030_.
		glab031 glab031_.
		glab031a glab031a_.
		glab031b glab031b_.
		glab032 glab032_.
		glab032a glab032a_.
		glab032b glab032b_.
		glab033 glab033_.
		glab033a glab033a_.
		glab033b glab033b_.
		glab034 glab034_.
		glab034a glab034a_.
		glab034b glab034b_.
		glab035 glab035_.
		glab035a glab035a_.
		zeno zeno_.
		vicon vicon_.
		zenot1 zenot1_.
		zenot2 zenot2_.
		zenot3 zenot3_.
		zenot4 zenot4_.
		walkingaidused walkingaidused_.
		animalfluency animalfluency_.
		glab002wa glab002wa_.
		glab003wa glab003wa_.
		glb004wa glb004wa_.
		glb005wa glb005wa_.
		glab024wa glab024wa_.
		glab025wa glab025wa_.
		glab026wa glab026wa_.
		glab027wa glab027wa_.
		glab004a glab004a_.
		glab005a glab005a_.
		glab006a glab006a_.
		glb004f glb004f_.
		glb004g glb004g_.
		glb004h glb004h_.
		glb004i glb004i_.
		glb004j glb004j_.
		glb004k glb004k_.
		glb004l glb004l_.
		glb004m glb004m_.
		glb004n glb004n_.
		glb004o glb004o_.
		glb004p glb004p_.
		glb004q glb004q_.
		glb004r glb004r_.
		glab004cw glab004cw_.
		glab004rnd glab004rnd_.
		glab004ms glab004ms_.
		glab008a glab008a_.
		glab009a glab009a_.
		glab010a glab010a_.
		glb005f glb005f_.
		glb005g glb005g_.
		glb005h glb005h_.
		glb005i glb005i_.
		glb005j glb005j_.
		glb005k glb005k_.
		glb005l glb005l_.
		glb005m glb005m_.
		glb005n glb005n_.
		glb005o glb005o_.
		glb005p glb005p_.
		glb005q glb005q_.
		glb005r glb005r_.
		glb006a glb006a_.
		glb006b glb006b_.
		glab012b glab012b_.
		glab013b glab013b_.
		glab014b glab014b_.
		glab015b glab015b_.
		glb006g glb006g_.
		glb006h glb006h_.
		glb006i glb006i_.
		glb006j glb006j_.
		glb006k glb006k_.
		glb006l glb006l_.
		glb006m glb006m_.
		glb006n glb006n_.
		glb006o glb006o_.
		glb006p glb006p_.
		glb006q glb006q_.
		glb006r glb006r_.
		glab016 glab016_.
		glab016c glab016c_.
		glab016d glab016d_.
		glab017 glab017_.
		glab017c glab017c_.
		glab017d glab017d_.
		glab018 glab018_.
		glab018c glab018c_.
		glab018d glab018d_.
		glab019 glab019_.
		glab019c glab019c_.
		glab019d glab019d_.
		glb011 glb011_.
		glb011d glb011d_.
		glb011c glb011c_.
		glb012 glb012_.
		glb012d glb012d_.
		glb012c glb012c_.
		glb017a glb017a_.
		glb017b glb017b_.
		glab028a glab028a_.
		glab029a glab029a_.
		glb017e glb017e_.
		glb017f glb017f_.
		glb017g glb017g_.
		glb017h glb017h_.
		glb017i glb017i_.
		glb017j glb017j_.
		glb017k glb017k_.
		glb017l glb017l_.
		glb017m glb017m_.
		glb017n glb017n_.
		glb017o glb017o_.
		glb017p glb017p_.
		glb017q glb017q_.
		glb017r glb017r_.
		glab004 glab004_.
		glab004b glab004b_.
		glab005 glab005_.
		glab005b glab005b_.
		glab006 glab006_.
		glab006b glab006b_.
		glab008 glab008_.
		glab008b glab008b_.
		glab009 glab009_.
		glab009b glab009b_.
		glab010 glab010_.
		glab010b glab010b_.
		glab011 glab011_.
		glab012 glab012_.
		glab012a glab012a_.
		glab013 glab013_.
		glab013a glab013a_.
		glab014 glab014_.
		glab014a glab014a_.
		glab015 glab015_.
		glab015a glab015a_.
		glab020 glab020_.
		glab020a glab020a_.
		glab021 glab021_.
		glab021a glab021a_.
		glab022 glab022_.
		glab022a glab022a_.
		glab023 glab023_.
		glab023a glab023a_.
		glab028 glab028_.
		glab028b glab028b_.
		glab029 glab029_.
		glab029b glab029b_.
	;
RUN;


DATA blsa_gait;
    SET WORK.IMPORT;
RUN;
