%let path_to_file = '../data-csv/BLSA_Pet_Questionnaire.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE hai01_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai02da_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai02ca_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai02sa_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai02ba_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai02fa_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai02ra_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai02oa_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai04_
		1 = 'Enjoy (love) animals'
		10 = 'Other'
		2 = 'Protection'
		3 = 'Companionship'
		4 = 'Playmate for child'
		5 = 'Want something I could take care of'
		6 = 'Want something to keep me busy (occupy the time)'
		7 = 'Want something to keep me active (get exercise)'
		8 = 'Therapy (eg: guide dog)'
		9 = 'Was given this pet'
		98 = "Don't know"
		99 = 'Refused'
	;

	VALUE hai05_
		1 = 'Less than 1 year'
		2 = '1-2 years'
		3 = '3-5 years'
		4 = '6-9 years'
		5 = '10+ years'
		6 = 'Always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai07_
		0 = 'Never'
		1 = 'Almost never'
		2 = 'Afew times'
		3 = 'Several times'
		4 = 'Often'
	;

	VALUE hai08_
		0 = 'Never'
		1 = 'Almost never'
		2 = 'Afew times'
		3 = 'Several times'
		4 = 'Often'
	;

	VALUE hai09_
		0 = 'Never'
		1 = 'Almost never'
		2 = 'Afew times'
		3 = 'Several times'
		4 = 'Often'
	;

	VALUE hai10_
		0 = 'Never'
		1 = 'Almost never'
		2 = 'Afew times'
		3 = 'Several times'
		4 = 'Often'
	;

	VALUE hai11_
		0 = 'No'
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
	;

	VALUE hai12_
		0 = 'No'
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
	;

	VALUE hai16_
		1 = 'Dog'
		2 = 'Cat'
		3 = 'Other'
	;

	VALUE hai13_
		1 = 'You alone'
		2 = 'You and someone else'
		3 = 'Someone else alone'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai14_
		1 = 'You alone'
		2 = 'You and someone else'
		3 = 'Someone else alone'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai15_
		1 = 'Excellent'
		2 = 'Very good'
		3 = 'Good'
		4 = 'Fair'
		5 = 'Poor'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai17a_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17b_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17c_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17d_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17e_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17f_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17g_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17h_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17i_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17j_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17k_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17l_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17m_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17n_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17o_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17p_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17q_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17r_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17s_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17t_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17u_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17v_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai17w_
		1 = 'Disagree Strongly'
		2 = 'Disagree Somewhat'
		3 = 'Agree Somewhat'
		4 = 'Agree Strongly'
		8 = "Don't know"
	;

	VALUE hai18_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai19_
		1 = 'Dog too old or unable to walk'
		10 = 'Dog too big/too strong'
		11 = 'Other'
		2 = 'Dog self-exercised goes out by him/herself'
		3 = 'Outdoor dog stays in pen'
		4 = "Dod not well behaved doesn't walk well on leash"
		5 = 'Respondent too old or unable to walk'
		6 = 'Someone else walks the dog'
		7 = 'Respondent has no time or interest'
		8 = 'Bad weather too cold/hot'
		9 = "Dog doesn't like to walk/exercise"
		98 = "Don't know"
		99 = 'Refused'
	;

	VALUE hai20b_
		1 = 'Less than once per day'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai21d_
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai22_
		1 = 'A lot more'
		2 = 'Somewhat more'
		3 = 'About the same'
		4 = 'Somewhat less'
		5 = 'A lot less'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai23_
		1 = 'A lot faster'
		2 = 'Somewhat faster'
		3 = 'About the same speed'
		4 = 'Somewhat slower'
		5 = 'A lot slower'
		6 = 'Never walk without my dog'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai24_
		1 = 'Much longer distance'
		2 = 'Somewhat longer distance'
		3 = 'About the same distance'
		4 = 'Somewhat shorter distance'
		5 = 'Much shorter distance'
		6 = 'Never walk without my dog'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai25_
		1 = 'No interest'
		2 = 'Too expensive'
		3 = 'Too much time or work to care for pet'
		4 = 'Allergies (own or household member)'
		5 = 'Health risks'
		6 = 'Other'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai26_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai27d_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai27c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai27s_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai27b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai74f_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai27r_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai27o_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai28_
		1 = 'Less than 1 year'
		2 = '1-2 years'
		3 = '3-5 years'
		4 = '6-9 years'
		5 = '10-19 years'
		6 = '20-29 years'
		7 = '30+ years'
		8 = "Don't know"
		9 = 'Refused'
	;

	VALUE hai29_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai30_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai31_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai32_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai33_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai34_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai35_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai36d_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai36c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai36s_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai36b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai36f_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai36r_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai36o_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai37_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE hai38_
		1 = 'Never'
		2 = 'Once a week or less'
		3 = 'Several times a week'
		4 = 'Once a day or more'
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

	INFORMAT crf_version_PetQue $8.;
	FORMAT crf_version_PetQue $8.;

	INFORMAT date_PetQue YYMMDD10.;
	FORMAT date_PetQue YYMMDD10.;

	INFORMAT blank_PetQue $1.;
	FORMAT blank_PetQue $1.;

	INFORMAT hai01 BEST32.;
	FORMAT hai01 BEST12.;

	INFORMAT hai02da BEST32.;
	FORMAT hai02da BEST12.;

	INFORMAT hai02db BEST32.;
	FORMAT hai02db BEST12.;

	INFORMAT hai02ca BEST32.;
	FORMAT hai02ca BEST12.;

	INFORMAT hai02cb $3.;
	FORMAT hai02cb $3.;

	INFORMAT hai02sa BEST32.;
	FORMAT hai02sa BEST12.;

	INFORMAT hai02sb BEST32.;
	FORMAT hai02sb BEST12.;

	INFORMAT hai02ba BEST32.;
	FORMAT hai02ba BEST12.;

	INFORMAT hai02bb $3.;
	FORMAT hai02bb $3.;

	INFORMAT hai02fa BEST32.;
	FORMAT hai02fa BEST12.;

	INFORMAT hai02fb $3.;
	FORMAT hai02fb $3.;

	INFORMAT hai02ra BEST32.;
	FORMAT hai02ra BEST12.;

	INFORMAT hai02rb BEST32.;
	FORMAT hai02rb BEST12.;

	INFORMAT hai02oa BEST32.;
	FORMAT hai02oa BEST12.;

	INFORMAT hai02ob BEST32.;
	FORMAT hai02ob BEST12.;

	INFORMAT hai03r1 $1.;
	FORMAT hai03r1 $1.;

	INFORMAT hai02r2 $1.;
	FORMAT hai02r2 $1.;

	INFORMAT hai02r3 $1.;
	FORMAT hai02r3 $1.;

	INFORMAT hai02r4 $1.;
	FORMAT hai02r4 $1.;

	INFORMAT hai02r5 $1.;
	FORMAT hai02r5 $1.;

	INFORMAT hai02r6 $1.;
	FORMAT hai02r6 $1.;

	INFORMAT hai02r7 $1.;
	FORMAT hai02r7 $1.;

	INFORMAT hai03r8 $1.;
	FORMAT hai03r8 $1.;

	INFORMAT hai03r9 $1.;
	FORMAT hai03r9 $1.;

	INFORMAT hai03r10 $1.;
	FORMAT hai03r10 $1.;

	INFORMAT hai03r11 $1.;
	FORMAT hai03r11 $1.;

	INFORMAT hai03r12 $1.;
	FORMAT hai03r12 $1.;

	INFORMAT hai04 BEST32.;
	FORMAT hai04 BEST12.;

	INFORMAT hai05 BEST32.;
	FORMAT hai05 BEST12.;

	INFORMAT poh1yr $1.;
	FORMAT poh1yr $1.;

	INFORMAT poh1yrother $14.;
	FORMAT poh1yrother $14.;

	INFORMAT poh2yr $1.;
	FORMAT poh2yr $1.;

	INFORMAT poh2yrother $15.;
	FORMAT poh2yrother $15.;

	INFORMAT poh3yr $1.;
	FORMAT poh3yr $1.;

	INFORMAT poh3yrother $17.;
	FORMAT poh3yrother $17.;

	INFORMAT poh4yr $1.;
	FORMAT poh4yr $1.;

	INFORMAT poh4yrother $14.;
	FORMAT poh4yrother $14.;

	INFORMAT poh5yr $1.;
	FORMAT poh5yr $1.;

	INFORMAT poh5yrother $14.;
	FORMAT poh5yrother $14.;

	INFORMAT poh6yr $1.;
	FORMAT poh6yr $1.;

	INFORMAT poh6yrother $16.;
	FORMAT poh6yrother $16.;

	INFORMAT poh7yr $1.;
	FORMAT poh7yr $1.;

	INFORMAT poh7yrother $16.;
	FORMAT poh7yrother $16.;

	INFORMAT poh8yr $1.;
	FORMAT poh8yr $1.;

	INFORMAT poh8yrother $16.;
	FORMAT poh8yrother $16.;

	INFORMAT poh9yr $1.;
	FORMAT poh9yr $1.;

	INFORMAT poh9yrother $16.;
	FORMAT poh9yrother $16.;

	INFORMAT poh10yr $1.;
	FORMAT poh10yr $1.;

	INFORMAT poh10yrother $16.;
	FORMAT poh10yrother $16.;

	INFORMAT hai07 BEST32.;
	FORMAT hai07 BEST12.;

	INFORMAT hai08 BEST32.;
	FORMAT hai08 BEST12.;

	INFORMAT hai09 BEST32.;
	FORMAT hai09 BEST12.;

	INFORMAT hai10 BEST32.;
	FORMAT hai10 BEST12.;

	INFORMAT hai11 BEST32.;
	FORMAT hai11 BEST12.;

	INFORMAT hai12 BEST32.;
	FORMAT hai12 BEST12.;

	INFORMAT hai16 BEST32.;
	FORMAT hai16 BEST12.;

	INFORMAT hai16com $17.;
	FORMAT hai16com $17.;

	INFORMAT hai13 BEST32.;
	FORMAT hai13 BEST12.;

	INFORMAT hai14 BEST32.;
	FORMAT hai14 BEST12.;

	INFORMAT hai15 BEST32.;
	FORMAT hai15 BEST12.;

	INFORMAT hai17a BEST32.;
	FORMAT hai17a BEST12.;

	INFORMAT hai17b BEST32.;
	FORMAT hai17b BEST12.;

	INFORMAT hai17c BEST32.;
	FORMAT hai17c BEST12.;

	INFORMAT hai17d BEST32.;
	FORMAT hai17d BEST12.;

	INFORMAT hai17e BEST32.;
	FORMAT hai17e BEST12.;

	INFORMAT hai17f BEST32.;
	FORMAT hai17f BEST12.;

	INFORMAT hai17g BEST32.;
	FORMAT hai17g BEST12.;

	INFORMAT hai17h BEST32.;
	FORMAT hai17h BEST12.;

	INFORMAT hai17i BEST32.;
	FORMAT hai17i BEST12.;

	INFORMAT hai17j BEST32.;
	FORMAT hai17j BEST12.;

	INFORMAT hai17k BEST32.;
	FORMAT hai17k BEST12.;

	INFORMAT hai17l BEST32.;
	FORMAT hai17l BEST12.;

	INFORMAT hai17m BEST32.;
	FORMAT hai17m BEST12.;

	INFORMAT hai17n BEST32.;
	FORMAT hai17n BEST12.;

	INFORMAT hai17o BEST32.;
	FORMAT hai17o BEST12.;

	INFORMAT hai17p BEST32.;
	FORMAT hai17p BEST12.;

	INFORMAT hai17q BEST32.;
	FORMAT hai17q BEST12.;

	INFORMAT hai17r BEST32.;
	FORMAT hai17r BEST12.;

	INFORMAT hai17s BEST32.;
	FORMAT hai17s BEST12.;

	INFORMAT hai17t BEST32.;
	FORMAT hai17t BEST12.;

	INFORMAT hai17u BEST32.;
	FORMAT hai17u BEST12.;

	INFORMAT hai17v BEST32.;
	FORMAT hai17v BEST12.;

	INFORMAT hai17w BEST32.;
	FORMAT hai17w BEST12.;

	INFORMAT hai18 BEST32.;
	FORMAT hai18 BEST12.;

	INFORMAT hai19 BEST32.;
	FORMAT hai19 BEST12.;

	INFORMAT hai20a BEST32.;
	FORMAT hai20a BEST12.;

	INFORMAT hai20b BEST32.;
	FORMAT hai20b BEST12.;

	INFORMAT hai21m BEST32.;
	FORMAT hai21m BEST12.;

	INFORMAT hai21h BEST32.;
	FORMAT hai21h BEST12.;

	INFORMAT hai21d BEST32.;
	FORMAT hai21d BEST12.;

	INFORMAT hai22 BEST32.;
	FORMAT hai22 BEST12.;

	INFORMAT hai23 BEST32.;
	FORMAT hai23 BEST12.;

	INFORMAT hai24 BEST32.;
	FORMAT hai24 BEST12.;

	INFORMAT hai25 BEST32.;
	FORMAT hai25 BEST12.;

	INFORMAT hai26 BEST32.;
	FORMAT hai26 BEST12.;

	INFORMAT hai27d BEST32.;
	FORMAT hai27d BEST12.;

	INFORMAT hai27c BEST32.;
	FORMAT hai27c BEST12.;

	INFORMAT hai27s BEST32.;
	FORMAT hai27s BEST12.;

	INFORMAT hai27b BEST32.;
	FORMAT hai27b BEST12.;

	INFORMAT hai74f BEST32.;
	FORMAT hai74f BEST12.;

	INFORMAT hai27r BEST32.;
	FORMAT hai27r BEST12.;

	INFORMAT hai27o BEST32.;
	FORMAT hai27o BEST12.;

	INFORMAT hai28 BEST32.;
	FORMAT hai28 BEST12.;

	INFORMAT hai29 BEST32.;
	FORMAT hai29 BEST12.;

	INFORMAT hai30 BEST32.;
	FORMAT hai30 BEST12.;

	INFORMAT hai31 BEST32.;
	FORMAT hai31 BEST12.;

	INFORMAT hai32 BEST32.;
	FORMAT hai32 BEST12.;

	INFORMAT hai33 BEST32.;
	FORMAT hai33 BEST12.;

	INFORMAT hai34 BEST32.;
	FORMAT hai34 BEST12.;

	INFORMAT hai35 BEST32.;
	FORMAT hai35 BEST12.;

	INFORMAT hai36d BEST32.;
	FORMAT hai36d BEST12.;

	INFORMAT hai36c BEST32.;
	FORMAT hai36c BEST12.;

	INFORMAT hai36s BEST32.;
	FORMAT hai36s BEST12.;

	INFORMAT hai36b BEST32.;
	FORMAT hai36b BEST12.;

	INFORMAT hai36f BEST32.;
	FORMAT hai36f BEST12.;

	INFORMAT hai36r BEST32.;
	FORMAT hai36r BEST12.;

	INFORMAT hai36o BEST32.;
	FORMAT hai36o BEST12.;

	INFORMAT hai37 BEST32.;
	FORMAT hai37 BEST12.;

	INFORMAT hai38 BEST32.;
	FORMAT hai38 BEST12.;

	INFORMAT crf_parent_name_PetQue $22.;
	FORMAT crf_parent_name_PetQue $22.;

	INFORMAT event_repeat BEST32.;
	FORMAT event_repeat BEST12.;

	INFORMAT hai02r2_1 BEST32.;
	FORMAT hai02r2_1 BEST12.;

	INFORMAT hai02r3_1 BEST32.;
	FORMAT hai02r3_1 BEST12.;

	INFORMAT hai02r4_1 BEST32.;
	FORMAT hai02r4_1 BEST12.;

	INFORMAT hai02r5_1 BEST32.;
	FORMAT hai02r5_1 BEST12.;

	INFORMAT hai02r6_1 BEST32.;
	FORMAT hai02r6_1 BEST12.;

	INFORMAT hai02r7_1 BEST32.;
	FORMAT hai02r7_1 BEST12.;

	INFORMAT hai03r10_1 BEST32.;
	FORMAT hai03r10_1 BEST12.;

	INFORMAT hai03r1_1 BEST32.;
	FORMAT hai03r1_1 BEST12.;

	INFORMAT hai03r11_8 BEST32.;
	FORMAT hai03r11_8 BEST12.;

	INFORMAT hai03r12_7 BEST32.;
	FORMAT hai03r12_7 BEST12.;

	INFORMAT hai03r8_1 BEST32.;
	FORMAT hai03r8_1 BEST12.;

	INFORMAT item_group_repeat_PetQue BEST32.;
	FORMAT item_group_repeat_PetQue BEST12.;

	INFORMAT poh10yr_1 BEST32.;
	FORMAT poh10yr_1 BEST12.;

	INFORMAT poh10yr_2 BEST32.;
	FORMAT poh10yr_2 BEST12.;

	INFORMAT poh10yr_3 BEST32.;
	FORMAT poh10yr_3 BEST12.;

	INFORMAT poh10yr_4 BEST32.;
	FORMAT poh10yr_4 BEST12.;

	INFORMAT poh10yr_5 BEST32.;
	FORMAT poh10yr_5 BEST12.;

	INFORMAT poh10yr_6 BEST32.;
	FORMAT poh10yr_6 BEST12.;

	INFORMAT poh10yr_7 BEST32.;
	FORMAT poh10yr_7 BEST12.;

	INFORMAT poh1yr_1 BEST32.;
	FORMAT poh1yr_1 BEST12.;

	INFORMAT poh1yr_2 BEST32.;
	FORMAT poh1yr_2 BEST12.;

	INFORMAT poh1yr_3 BEST32.;
	FORMAT poh1yr_3 BEST12.;

	INFORMAT poh1yr_4 BEST32.;
	FORMAT poh1yr_4 BEST12.;

	INFORMAT poh1yr_5 BEST32.;
	FORMAT poh1yr_5 BEST12.;

	INFORMAT poh1yr_6 BEST32.;
	FORMAT poh1yr_6 BEST12.;

	INFORMAT poh1yr_7 BEST32.;
	FORMAT poh1yr_7 BEST12.;

	INFORMAT poh2yr_1 BEST32.;
	FORMAT poh2yr_1 BEST12.;

	INFORMAT poh2yr_2 BEST32.;
	FORMAT poh2yr_2 BEST12.;

	INFORMAT poh2yr_3 BEST32.;
	FORMAT poh2yr_3 BEST12.;

	INFORMAT poh2yr_4 BEST32.;
	FORMAT poh2yr_4 BEST12.;

	INFORMAT poh2yr_5 BEST32.;
	FORMAT poh2yr_5 BEST12.;

	INFORMAT poh2yr_6 BEST32.;
	FORMAT poh2yr_6 BEST12.;

	INFORMAT poh2yr_7 BEST32.;
	FORMAT poh2yr_7 BEST12.;

	INFORMAT poh3yr_1 BEST32.;
	FORMAT poh3yr_1 BEST12.;

	INFORMAT poh3yr_2 BEST32.;
	FORMAT poh3yr_2 BEST12.;

	INFORMAT poh3yr_3 BEST32.;
	FORMAT poh3yr_3 BEST12.;

	INFORMAT poh3yr_4 BEST32.;
	FORMAT poh3yr_4 BEST12.;

	INFORMAT poh3yr_5 BEST32.;
	FORMAT poh3yr_5 BEST12.;

	INFORMAT poh3yr_6 BEST32.;
	FORMAT poh3yr_6 BEST12.;

	INFORMAT poh3yr_7 BEST32.;
	FORMAT poh3yr_7 BEST12.;

	INFORMAT poh4yr_1 BEST32.;
	FORMAT poh4yr_1 BEST12.;

	INFORMAT poh4yr_2 BEST32.;
	FORMAT poh4yr_2 BEST12.;

	INFORMAT poh4yr_3 BEST32.;
	FORMAT poh4yr_3 BEST12.;

	INFORMAT poh4yr_4 BEST32.;
	FORMAT poh4yr_4 BEST12.;

	INFORMAT poh4yr_5 BEST32.;
	FORMAT poh4yr_5 BEST12.;

	INFORMAT poh4yr_6 BEST32.;
	FORMAT poh4yr_6 BEST12.;

	INFORMAT poh4yr_7 BEST32.;
	FORMAT poh4yr_7 BEST12.;

	INFORMAT poh5yr_1 BEST32.;
	FORMAT poh5yr_1 BEST12.;

	INFORMAT poh5yr_2 BEST32.;
	FORMAT poh5yr_2 BEST12.;

	INFORMAT poh5yr_3 BEST32.;
	FORMAT poh5yr_3 BEST12.;

	INFORMAT poh5yr_4 BEST32.;
	FORMAT poh5yr_4 BEST12.;

	INFORMAT poh5yr_5 BEST32.;
	FORMAT poh5yr_5 BEST12.;

	INFORMAT poh5yr_6 BEST32.;
	FORMAT poh5yr_6 BEST12.;

	INFORMAT poh5yr_7 BEST32.;
	FORMAT poh5yr_7 BEST12.;

	INFORMAT poh6yr_1 BEST32.;
	FORMAT poh6yr_1 BEST12.;

	INFORMAT poh6yr_2 BEST32.;
	FORMAT poh6yr_2 BEST12.;

	INFORMAT poh6yr_3 BEST32.;
	FORMAT poh6yr_3 BEST12.;

	INFORMAT poh6yr_4 BEST32.;
	FORMAT poh6yr_4 BEST12.;

	INFORMAT poh6yr_5 BEST32.;
	FORMAT poh6yr_5 BEST12.;

	INFORMAT poh6yr_6 BEST32.;
	FORMAT poh6yr_6 BEST12.;

	INFORMAT poh6yr_7 BEST32.;
	FORMAT poh6yr_7 BEST12.;

	INFORMAT poh7yr_1 BEST32.;
	FORMAT poh7yr_1 BEST12.;

	INFORMAT poh7yr_2 BEST32.;
	FORMAT poh7yr_2 BEST12.;

	INFORMAT poh7yr_3 BEST32.;
	FORMAT poh7yr_3 BEST12.;

	INFORMAT poh7yr_4 BEST32.;
	FORMAT poh7yr_4 BEST12.;

	INFORMAT poh7yr_5 BEST32.;
	FORMAT poh7yr_5 BEST12.;

	INFORMAT poh7yr_6 BEST32.;
	FORMAT poh7yr_6 BEST12.;

	INFORMAT poh7yr_7 BEST32.;
	FORMAT poh7yr_7 BEST12.;

	INFORMAT poh8yr_1 BEST32.;
	FORMAT poh8yr_1 BEST12.;

	INFORMAT poh8yr_2 BEST32.;
	FORMAT poh8yr_2 BEST12.;

	INFORMAT poh8yr_3 BEST32.;
	FORMAT poh8yr_3 BEST12.;

	INFORMAT poh8yr_4 BEST32.;
	FORMAT poh8yr_4 BEST12.;

	INFORMAT poh8yr_5 BEST32.;
	FORMAT poh8yr_5 BEST12.;

	INFORMAT poh8yr_6 BEST32.;
	FORMAT poh8yr_6 BEST12.;

	INFORMAT poh8yr_7 BEST32.;
	FORMAT poh8yr_7 BEST12.;

	INFORMAT poh9yr_1 BEST32.;
	FORMAT poh9yr_1 BEST12.;

	INFORMAT poh9yr_2 BEST32.;
	FORMAT poh9yr_2 BEST12.;

	INFORMAT poh9yr_3 BEST32.;
	FORMAT poh9yr_3 BEST12.;

	INFORMAT poh9yr_4 BEST32.;
	FORMAT poh9yr_4 BEST12.;

	INFORMAT poh9yr_5 BEST32.;
	FORMAT poh9yr_5 BEST12.;

	INFORMAT poh9yr_6 BEST32.;
	FORMAT poh9yr_6 BEST12.;

	INFORMAT study_name_PetQue $4.;
	FORMAT study_name_PetQue $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_PetQue
		date_PetQue
		blank_PetQue
		hai01
		hai02da
		hai02db
		hai02ca
		hai02cb
		hai02sa
		hai02sb
		hai02ba
		hai02bb
		hai02fa
		hai02fb
		hai02ra
		hai02rb
		hai02oa
		hai02ob
		hai03r1
		hai02r2
		hai02r3
		hai02r4
		hai02r5
		hai02r6
		hai02r7
		hai03r8
		hai03r9
		hai03r10
		hai03r11
		hai03r12
		hai04
		hai05
		poh1yr
		poh1yrother
		poh2yr
		poh2yrother
		poh3yr
		poh3yrother
		poh4yr
		poh4yrother
		poh5yr
		poh5yrother
		poh6yr
		poh6yrother
		poh7yr
		poh7yrother
		poh8yr
		poh8yrother
		poh9yr
		poh9yrother
		poh10yr
		poh10yrother
		hai07
		hai08
		hai09
		hai10
		hai11
		hai12
		hai16
		hai16com
		hai13
		hai14
		hai15
		hai17a
		hai17b
		hai17c
		hai17d
		hai17e
		hai17f
		hai17g
		hai17h
		hai17i
		hai17j
		hai17k
		hai17l
		hai17m
		hai17n
		hai17o
		hai17p
		hai17q
		hai17r
		hai17s
		hai17t
		hai17u
		hai17v
		hai17w
		hai18
		hai19
		hai20a
		hai20b
		hai21m
		hai21h
		hai21d
		hai22
		hai23
		hai24
		hai25
		hai26
		hai27d
		hai27c
		hai27s
		hai27b
		hai74f
		hai27r
		hai27o
		hai28
		hai29
		hai30
		hai31
		hai32
		hai33
		hai34
		hai35
		hai36d
		hai36c
		hai36s
		hai36b
		hai36f
		hai36r
		hai36o
		hai37
		hai38
		crf_parent_name_PetQue
		event_repeat
		hai02r2_1
		hai02r3_1
		hai02r4_1
		hai02r5_1
		hai02r6_1
		hai02r7_1
		hai03r10_1
		hai03r1_1
		hai03r11_8
		hai03r12_7
		hai03r8_1
		item_group_repeat_PetQue
		poh10yr_1
		poh10yr_2
		poh10yr_3
		poh10yr_4
		poh10yr_5
		poh10yr_6
		poh10yr_7
		poh1yr_1
		poh1yr_2
		poh1yr_3
		poh1yr_4
		poh1yr_5
		poh1yr_6
		poh1yr_7
		poh2yr_1
		poh2yr_2
		poh2yr_3
		poh2yr_4
		poh2yr_5
		poh2yr_6
		poh2yr_7
		poh3yr_1
		poh3yr_2
		poh3yr_3
		poh3yr_4
		poh3yr_5
		poh3yr_6
		poh3yr_7
		poh4yr_1
		poh4yr_2
		poh4yr_3
		poh4yr_4
		poh4yr_5
		poh4yr_6
		poh4yr_7
		poh5yr_1
		poh5yr_2
		poh5yr_3
		poh5yr_4
		poh5yr_5
		poh5yr_6
		poh5yr_7
		poh6yr_1
		poh6yr_2
		poh6yr_3
		poh6yr_4
		poh6yr_5
		poh6yr_6
		poh6yr_7
		poh7yr_1
		poh7yr_2
		poh7yr_3
		poh7yr_4
		poh7yr_5
		poh7yr_6
		poh7yr_7
		poh8yr_1
		poh8yr_2
		poh8yr_3
		poh8yr_4
		poh8yr_5
		poh8yr_6
		poh8yr_7
		poh9yr_1
		poh9yr_2
		poh9yr_3
		poh9yr_4
		poh9yr_5
		poh9yr_6
		study_name_PetQue
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
		crf_version_PetQue = "CRF Version"
		date_PetQue = "Date Completed"
		blank_PetQue = "Blank Form"
		hai01 = "Do you currently have any pets"
		hai02da = "Currently have dog"
		hai02db = "How many dogs"
		hai02ca = "Currently have cat"
		hai02cb = "How many cats"
		hai02sa = "Currently have small mammal"
		hai02sb = "How many small mammals"
		hai02ba = "Currently have birds"
		hai02bb = "How many birds"
		hai02fa = "Currently have fish"
		hai02fb = "How many fish"
		hai02ra = "Currently have reptile"
		hai02rb = "How many reptiles"
		hai02oa = "Currently have Other pets"
		hai02ob = "How many other"
		hai03r1 = "Enjoy love animals"
		hai02r2 = "Protection"
		hai02r3 = "Companionship"
		hai02r4 = "Playmate for child"
		hai02r5 = "Something I could take care of"
		hai02r6 = "Something to keep me busy"
		hai02r7 = "Want something to keep me active"
		hai03r8 = "Therapy (eg guide dog)"
		hai03r9 = "Was given this pet"
		hai03r10 = "Other"
		hai03r11 = "Don't know"
		hai03r12 = "Refused"
		hai04 = "Most important reason for pet"
		hai05 = "How long have you had the pet you've had the longest"
		poh1yr = "Pet ownership 1 year"
		poh1yrother = "Pet ownership 1 year other"
		poh2yr = "Pet ownership 2 year"
		poh2yrother = "Pet ownership 2 year other"
		poh3yr = "Pet ownership 3 year"
		poh3yrother = "Pet ownership 3 year other"
		poh4yr = "Pet ownership 4 year"
		poh4yrother = "Pet ownership 4 year other"
		poh5yr = "Pet ownership 5 year"
		poh5yrother = "Pet ownership 5 year other"
		poh6yr = "Pet ownership 6 year"
		poh6yrother = "Pet ownership 6 year other"
		poh7yr = "Pet ownership 7 year"
		poh7yrother = "Pet ownership 7 year other"
		poh8yr = "Pet ownership 8 year"
		poh8yrother = "Pet ownership 8 year other"
		poh9yr = "Pet ownership 9 year"
		poh9yrother = "Pet ownership 9 year other"
		poh10yr = "Pet ownership 10 year"
		poh10yrother = "Pet ownership 19 year other"
		hai07 = "How often have you declined to visit family or friends"
		hai08 = "How often have you delayed refused medical care"
		hai09 = "How often have pet expenses impacted your ability to pay for necessities"
		hai10 = "How often have you needed medical attention because you were scratched bitten or tripped by pet"
		hai11 = "Pet encourages you to be more socially active"
		hai12 = "Does having a pet(s) encourage you to take better care of your health"
		hai16 = "What is your favorite pet"
		hai16com = "Favorite pet other comment"
		hai13 = "Whose decision was it to get the pet"
		hai14 = "Who is most responsible for the care and feeding of your pet"
		hai15 = "Rate pets overall health"
		hai17a = "My pet means more to me than any of my friends"
		hai17b = "Quite often I confide in my pet"
		hai17c = "Believe pets should have same rights privileges as family members"
		hai17d = "Believe my pet is my best friend"
		hai17e = "Often my feelings toward people are affected by the way they react to my pet"
		hai17f = "Love pet because it is more loyal than most people"
		hai17g = "Enjoy showing others pictures of pet"
		hai17h = "I think my pet is just a pet"
		hai17i = "I love my pet because it never judges me"
		hai17j = "My pet knows when I'm feeling bad"
		hai17k = "Often talk to other people about my pet"
		hai17l = "My pet understands me"
		hai17m = "Believe loving my pet helps me stay healthy"
		hai17n = "Pets deserve as much respect as humans do"
		hai17o = "My pet and I have a very close relationship"
		hai17p = "I would do almost anything to take care of my pet"
		hai17q = "I play with my pet quite often"
		hai17r = "I consider my pet to be a great companion"
		hai17s = "My pet makes me feel happy"
		hai17t = "I feel that my pet is a part of my family"
		hai17u = "I am not very attached to my pet"
		hai17v = "Owning a pet adds to my happiness"
		hai17w = "I consider my pet to be a friend"
		hai18 = "Do you walk your dog"
		hai19 = "What is the main reason you don't walk your dog"
		hai20a = "How many times per day numeric"
		hai20b = "Walk less than 1x day Dk Refused"
		hai21m = "How many minutes walk dog"
		hai21h = "How many hours walk dog"
		hai21d = "Walk dog Dk Refused"
		hai22 = "Walk more or less because you have dog"
		hai23 = "Do you walk faster or slower when you walk without your dog"
		hai24 = "Do you walk longer or shorter distance when you walk without your dog"
		hai25 = "Why don't you have a pet"
		hai26 = "Have you ever had a pet"
		hai27d = "Had a dog in the past"
		hai27c = "Had a Cat in the past"
		hai27s = "Had a small mammal"
		hai27b = "Had a Bird in the past"
		hai74f = "Had Fish in the past"
		hai27r = "Had a reptile in the past"
		hai27o = "Had Other pet in the past"
		hai28 = "How many years has it been since you last had a pet"
		hai29 = "Did you consider your pet a friend"
		hai30 = "Did you talk to your pet"
		hai31 = "Owning a pet added to your happiness"
		hai32 = "Did you talk to others about your pet"
		hai33 = "Did you play with your pet"
		hai34 = "Did your pet know how you felt about things"
		hai35 = "Do you have regular contact with other peoples pets"
		hai36d = "Have regular contact with Dog"
		hai36c = "Have regular contact with Cat"
		hai36s = "Have regular contact with small mammal"
		hai36b = "Have regular contact with Bird"
		hai36f = "Have regular contact with Fish"
		hai36r = "Have regular contact with Reptile"
		hai36o = "Have regular contact with Other pet"
		hai37 = "Do you help feed or care for any of these pets?"
		hai38 = "If answer to Q32 is a dog how often do you walk with someone else's dog"
		crf_parent_name_PetQue = "CRF Parent Name"
		event_repeat = "Event Repeat"
		hai02r2_1 = "Protection : Protection (Checkbox Indicator)"
		hai02r3_1 = "Companionship : Conpanionship (Checkbox Indicator)"
		hai02r4_1 = "Playmate for child : Playmate for child (Checkbox Indicator)"
		hai02r5_1 = "Something I could take care of : Want something I could take care of (Checkbox Indicator)"
		hai02r6_1 = "Something to keep me busy : Want something to keep me busy (occupy time) (Checkbox Indicator)"
		hai02r7_1 = "Want something to keep me active : Want something to keep me active (exercise) (Checkbox Indicator)"
		hai03r10_1 = "Other : Other (Checkbox Indicator)"
		hai03r1_1 = "Enjoy love animals : Enjoy (love) animals (Checkbox Indicator)"
		hai03r11_8 = "Don't know : Don't know (Checkbox Indicator)"
		hai03r12_7 = "Refused : Refused (Checkbox Indicator)"
		hai03r8_1 = "Therapy (eg guide dog) : Therapy (e.g. guide dog) (Checkbox Indicator)"
		item_group_repeat_PetQue = "Item Group Repeate"
		poh10yr_1 = "Pet ownership 10 year : Dog (Checkbox Indicator)"
		poh10yr_2 = "Pet ownership 10 year : Cat (Checkbox Indicator)"
		poh10yr_3 = "Pet ownership 10 year : Bird (Checkbox Indicator)"
		poh10yr_4 = "Pet ownership 10 year : Other (Checkbox Indicator)"
		poh10yr_5 = "Pet ownership 10 year : Small Mammal (Checkbox Indicator)"
		poh10yr_6 = "Pet ownership 10 year : Fish (Checkbox Indicator)"
		poh10yr_7 = "Pet ownership 10 year : Reptile (Checkbox Indicator)"
		poh1yr_1 = "Pet ownership 1 year : Dog (Checkbox Indicator)"
		poh1yr_2 = "Pet ownership 1 year : Cat (Checkbox Indicator)"
		poh1yr_3 = "Pet ownership 1 year : Bird (Checkbox Indicator)"
		poh1yr_4 = "Pet ownership 1 year : Other (Checkbox Indicator)"
		poh1yr_5 = "Pet ownership 1 year : Small Mammal (Checkbox Indicator)"
		poh1yr_6 = "Pet ownership 1 year : Fish (Checkbox Indicator)"
		poh1yr_7 = "Pet ownership 1 year : Reptile (Checkbox Indicator)"
		poh2yr_1 = "Pet ownership 2 year : Dog (Checkbox Indicator)"
		poh2yr_2 = "Pet ownership 2 year : Cat (Checkbox Indicator)"
		poh2yr_3 = "Pet ownership 2 year : Bird (Checkbox Indicator)"
		poh2yr_4 = "Pet ownership 2 year : Other (Checkbox Indicator)"
		poh2yr_5 = "Pet ownership 2 year : Small Mammal (Checkbox Indicator)"
		poh2yr_6 = "Pet ownership 2 year : Fish (Checkbox Indicator)"
		poh2yr_7 = "Pet ownership 2 year : Reptile (Checkbox Indicator)"
		poh3yr_1 = "Pet ownership 3 year : Dog (Checkbox Indicator)"
		poh3yr_2 = "Pet ownership 3 year : Cat (Checkbox Indicator)"
		poh3yr_3 = "Pet ownership 3 year : Bird (Checkbox Indicator)"
		poh3yr_4 = "Pet ownership 3 year : Other (Checkbox Indicator)"
		poh3yr_5 = "Pet ownership 3 year : Small Mammal (Checkbox Indicator)"
		poh3yr_6 = "Pet ownership 3 year : Fish (Checkbox Indicator)"
		poh3yr_7 = "Pet ownership 3 year : Reptile (Checkbox Indicator)"
		poh4yr_1 = "Pet ownership 4 year : Dog (Checkbox Indicator)"
		poh4yr_2 = "Pet ownership 4 year : Cat (Checkbox Indicator)"
		poh4yr_3 = "Pet ownership 4 year : Bird (Checkbox Indicator)"
		poh4yr_4 = "Pet ownership 4 year : Other (Checkbox Indicator)"
		poh4yr_5 = "Pet ownership 4 year : Small Mammal (Checkbox Indicator)"
		poh4yr_6 = "Pet ownership 4 year : Fish (Checkbox Indicator)"
		poh4yr_7 = "Pet ownership 4 year : Reptile (Checkbox Indicator)"
		poh5yr_1 = "Pet ownership 5 year : Dog (Checkbox Indicator)"
		poh5yr_2 = "Pet ownership 5 year : Cat (Checkbox Indicator)"
		poh5yr_3 = "Pet ownership 5 year : Bird (Checkbox Indicator)"
		poh5yr_4 = "Pet ownership 5 year : Other (Checkbox Indicator)"
		poh5yr_5 = "Pet ownership 5 year : Small Mammal (Checkbox Indicator)"
		poh5yr_6 = "Pet ownership 5 year : Fish (Checkbox Indicator)"
		poh5yr_7 = "Pet ownership 5 year : Reptile (Checkbox Indicator)"
		poh6yr_1 = "Pet ownership 6 year : Dog (Checkbox Indicator)"
		poh6yr_2 = "Pet ownership 6 year : Cat (Checkbox Indicator)"
		poh6yr_3 = "Pet ownership 6 year : Bird (Checkbox Indicator)"
		poh6yr_4 = "Pet ownership 6 year : Other (Checkbox Indicator)"
		poh6yr_5 = "Pet ownership 6 year : Small Mammal (Checkbox Indicator)"
		poh6yr_6 = "Pet ownership 6 year : Fish (Checkbox Indicator)"
		poh6yr_7 = "Pet ownership 6 year : Reptile (Checkbox Indicator)"
		poh7yr_1 = "Pet ownership 7 year : Dog (Checkbox Indicator)"
		poh7yr_2 = "Pet ownership 7 year : Cat (Checkbox Indicator)"
		poh7yr_3 = "Pet ownership 7 year : Bird (Checkbox Indicator)"
		poh7yr_4 = "Pet ownership 7 year : Other (Checkbox Indicator)"
		poh7yr_5 = "Pet ownership 7 year : Small Mammal (Checkbox Indicator)"
		poh7yr_6 = "Pet ownership 7 year : Fish (Checkbox Indicator)"
		poh7yr_7 = "Pet ownership 7 year : Reptile (Checkbox Indicator)"
		poh8yr_1 = "Pet ownership 8 year : Dog (Checkbox Indicator)"
		poh8yr_2 = "Pet ownership 8 year : Cat (Checkbox Indicator)"
		poh8yr_3 = "Pet ownership 8 year : Bird (Checkbox Indicator)"
		poh8yr_4 = "Pet ownership 8 year : Other (Checkbox Indicator)"
		poh8yr_5 = "Pet ownership 8 year : Small Mammal (Checkbox Indicator)"
		poh8yr_6 = "Pet ownership 8 year : Fish (Checkbox Indicator)"
		poh8yr_7 = "Pet ownership 8 year : Reptile (Checkbox Indicator)"
		poh9yr_1 = "Pet ownership 9 year : Dog (Checkbox Indicator)"
		poh9yr_2 = "Pet ownership 9 year : Cat (Checkbox Indicator)"
		poh9yr_3 = "Pet ownership 9 year : Bird (Checkbox Indicator)"
		poh9yr_4 = "Pet ownership 9 year : Other (Checkbox Indicator)"
		poh9yr_5 = "Pet ownership 9 year : Small Mammal (Checkbox Indicator)"
		poh9yr_6 = "Pet ownership 9 year : Fish (Checkbox Indicator)"
		study_name_PetQue = "Study Name"
	;
	FORMAT
		hai01 hai01_.
		hai02da hai02da_.
		hai02ca hai02ca_.
		hai02sa hai02sa_.
		hai02ba hai02ba_.
		hai02fa hai02fa_.
		hai02ra hai02ra_.
		hai02oa hai02oa_.
		hai04 hai04_.
		hai05 hai05_.
		hai07 hai07_.
		hai08 hai08_.
		hai09 hai09_.
		hai10 hai10_.
		hai11 hai11_.
		hai12 hai12_.
		hai16 hai16_.
		hai13 hai13_.
		hai14 hai14_.
		hai15 hai15_.
		hai17a hai17a_.
		hai17b hai17b_.
		hai17c hai17c_.
		hai17d hai17d_.
		hai17e hai17e_.
		hai17f hai17f_.
		hai17g hai17g_.
		hai17h hai17h_.
		hai17i hai17i_.
		hai17j hai17j_.
		hai17k hai17k_.
		hai17l hai17l_.
		hai17m hai17m_.
		hai17n hai17n_.
		hai17o hai17o_.
		hai17p hai17p_.
		hai17q hai17q_.
		hai17r hai17r_.
		hai17s hai17s_.
		hai17t hai17t_.
		hai17u hai17u_.
		hai17v hai17v_.
		hai17w hai17w_.
		hai18 hai18_.
		hai19 hai19_.
		hai20b hai20b_.
		hai21d hai21d_.
		hai22 hai22_.
		hai23 hai23_.
		hai24 hai24_.
		hai25 hai25_.
		hai26 hai26_.
		hai27d hai27d_.
		hai27c hai27c_.
		hai27s hai27s_.
		hai27b hai27b_.
		hai74f hai74f_.
		hai27r hai27r_.
		hai27o hai27o_.
		hai28 hai28_.
		hai29 hai29_.
		hai30 hai30_.
		hai31 hai31_.
		hai32 hai32_.
		hai33 hai33_.
		hai34 hai34_.
		hai35 hai35_.
		hai36d hai36d_.
		hai36c hai36c_.
		hai36s hai36s_.
		hai36b hai36b_.
		hai36f hai36f_.
		hai36r hai36r_.
		hai36o hai36o_.
		hai37 hai37_.
		hai38 hai38_.
	;
RUN;


DATA blsa_pet_questionnaire;
    SET WORK.IMPORT;
RUN;
