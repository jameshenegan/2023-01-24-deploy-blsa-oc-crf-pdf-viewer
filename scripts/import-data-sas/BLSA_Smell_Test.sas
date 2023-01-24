%let path_to_file = '../data-csv/BLSA_Smell_Test.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE stdone_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE strnd_
		3 = 'No Time'
		4 = 'Refused'
		5 = 'Unable: Physical/Mental'
		6 = 'Equipment Problem'
		7 = 'No Tester'
		8 = 'Not Eligible'
		9 = 'Not Scheduled'
	;

	VALUE stver_
		1 = 'Blue'
		2 = 'Purple'
	;

	VALUE stsmell_
		1 = 'Poor'
		2 = 'Fair'
		3 = 'Good'
		4 = 'Excellent'
	;

	VALUE stnasal_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE $stcard1_
		_0 = '2-Blackberry'
		_00 = '3-Strawberry'
		_000 = '4-Pineapple'
		_1 = '1-Orange'
	;

	VALUE $stcard2_
		_0 = '1-Smoke'
		_00 = '2-Glue'
		_000 = '4-Grass'
		_1 = '3-Leather'
	;

	VALUE $stcard3_
		_0 = '1-Honey'
		_00 = '2-Vanilla'
		_000 = '3-Chocolate'
		_1 = '4-Cinnamon'
	;

	VALUE $stcard4_
		_0 = '1-Chive'
		_00 = '3-Fir'
		_000 = '4-Onion'
		_1 = '2-Peppermint'
	;

	VALUE $stcard5_
		_0 = '1-Coconut'
		_00 = '3-Walnut'
		_000 = '4-Cherry'
		_1 = '2-Banana'
	;

	VALUE $stcard6_
		_0 = '1-Peach'
		_00 = '2-Apple'
		_000 = '4-Grapefruit'
		_1 = '3-Lemon'
	;

	VALUE $stcard7_
		_0 = '2-Cherry'
		_00 = '3-Spearmint'
		_000 = '4-Cookies'
		_1 = '1-Liquorice'
	;

	VALUE $stcard8_
		_0 = '1-Mustard'
		_00 = '2-Rubber'
		_000 = '3-Menthol'
		_1 = '4-Turpentine'
	;

	VALUE $stcard9_
		_0 = '1-Onion'
		_00 = '2-Sauerkraut'
		_000 = '4-Carrot'
		_1 = '3-Garlic'
	;

	VALUE $stcard10_
		_0 = '1-Cigarettes'
		_00 = '3-Wine'
		_000 = '4-Smoke'
		_1 = '2-Coffee'
	;

	VALUE $stcard11_
		_0 = '1-Melon'
		_00 = '2-Peach'
		_000 = '3-Orange'
		_1 = '4-Apple'
	;

	VALUE $stcard12_
		_0 = '2-Pepper'
		_00 = '3-Cinnamon'
		_000 = '4-Mustard'
		_1 = '1-Clove'
	;

	VALUE $stcard13_
		_0 = '1-Pear'
		_00 = '2-Plum'
		_000 = '3-Peach'
		_1 = '4-Pineapple'
	;

	VALUE $stcard14_
		_0 = '1-Chamomile'
		_00 = '2-Raspberry'
		_000 = '4-Cherry'
		_1 = '3-Rose'
	;

	VALUE $stcard15_
		_0 = '2-Rum'
		_00 = '3-Honey'
		_000 = '4-Fir'
		_1 = '1-Anise'
	;

	VALUE $stcard16_
		_0 = '1-Bread'
		_00 = '3-Cheese'
		_000 = '4-Ham'
		_1 = '2-Fish'
	;

	VALUE $stcard1p_
		_0 = '1-Peppermint'
		_00 = '3-Parsley'
		_000 = '4-Orange'
		_1 = '2-Pear'
	;

	VALUE $stcard2p_
		_0 = '2-Apple'
		_00 = '3-Wine gum'
		_000 = '4-Lemon'
		_1 = '1-Coke'
	;

	VALUE $stcard3p_
		_0 = '1-Mint'
		_00 = '2-Fir'
		_000 = '4-Chive'
		_1 = '3-Lilac'
	;

	VALUE $stcard4p_
		_0 = '1-Peach'
		_00 = '3-Grape'
		_000 = '4-Strawberry'
		_1 = '2-Grapefruit'
	;

	VALUE $stcard5p_
		_0 = '1-Rose'
		_00 = '2-Sauerkraut'
		_000 = '3-Carrot'
		_1 = '4-Grass'
	;

	VALUE $stcard6p_
		_0 = '1-Plum'
		_00 = '2-Melon'
		_000 = '4-Orange'
		_1 = '3-Raspberry'
	;

	VALUE $stcard7p_
		_0 = '2-Lemon'
		_00 = '3-Liquorice'
		_000 = '4-Fir'
		_1 = '1-Eucalyptus'
	;

	VALUE $stcard8p_
		_0 = '1-Paprika'
		_00 = '2-Vanilla'
		_000 = '4-Pepper'
		_1 = '3-Ginger'
	;

	VALUE $stcard9p_
		_0 = '1-Cinnamon'
		_00 = '2-Chocolate'
		_000 = '3-Peanut'
		_1 = '4-Coconut'
	;

	VALUE $stcard10p_
		_0 = '1-Grass'
		_00 = 'Fir'
		_000 = 'Rose'
		_1 = 'Lavender'
	;

	VALUE $stcard11p_
		_0 = '1-Lemon'
		_00 = '2-Currant'
		_000 = '3-Orange'
		_1 = '4-Melon'
	;

	VALUE $stcard12p_
		_0 = '1-Cherry'
		_00 = '3-Apple'
		_000 = '4-Strawberry'
		_1 = '2-Peach'
	;

	VALUE $stcard13p_
		_0 = '1-Garlic'
		_00 = '3-Ham'
		_000 = '4-Wood'
		_1 = '2-Mushroom'
	;

	VALUE $stcard14p_
		_0 = '2-Leather'
		_00 = '3-Cigarette'
		_000 = '4-Salami'
		_1 = '1-Smoked meat'
	;

	VALUE $stcard15p_
		_0 = '1-Cookies'
		_00 = '2-Orange'
		_000 = '3-Wine gum'
		_1 = '4-Caramel'
	;

	VALUE $stcard16p_
		_0 = '1-Pepper'
		_00 = '2-Nutmeg'
		_000 = '4-Mustart'
		_1 = '3-Onion'
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

	INFORMAT crf_version_SmeTes $7.;
	FORMAT crf_version_SmeTes $7.;

	INFORMAT obsdate_stdate YYMMDD10.;
	FORMAT obsdate_stdate YYMMDD10.;

	INFORMAT blank_SmeTes $1.;
	FORMAT blank_SmeTes $1.;

	INFORMAT sttid BEST32.;
	FORMAT sttid BEST12.;

	INFORMAT stdone BEST32.;
	FORMAT stdone BEST12.;

	INFORMAT strnd BEST32.;
	FORMAT strnd BEST12.;

	INFORMAT stver BEST32.;
	FORMAT stver BEST12.;

	INFORMAT stsmell BEST32.;
	FORMAT stsmell BEST12.;

	INFORMAT stnasal BEST32.;
	FORMAT stnasal BEST12.;

	INFORMAT stcard1 $4.;
	FORMAT stcard1 $4.;

	INFORMAT stcard2 $4.;
	FORMAT stcard2 $4.;

	INFORMAT stcard3 $4.;
	FORMAT stcard3 $4.;

	INFORMAT stcard4 $4.;
	FORMAT stcard4 $4.;

	INFORMAT stcard5 $4.;
	FORMAT stcard5 $4.;

	INFORMAT stcard6 $4.;
	FORMAT stcard6 $4.;

	INFORMAT stcard7 $4.;
	FORMAT stcard7 $4.;

	INFORMAT stcard8 $4.;
	FORMAT stcard8 $4.;

	INFORMAT stcard9 $4.;
	FORMAT stcard9 $4.;

	INFORMAT stcard10 $4.;
	FORMAT stcard10 $4.;

	INFORMAT stcard11 $4.;
	FORMAT stcard11 $4.;

	INFORMAT stcard12 $4.;
	FORMAT stcard12 $4.;

	INFORMAT stcard13 $4.;
	FORMAT stcard13 $4.;

	INFORMAT stcard14 $4.;
	FORMAT stcard14 $4.;

	INFORMAT stcard15 $4.;
	FORMAT stcard15 $4.;

	INFORMAT stcard16 $4.;
	FORMAT stcard16 $4.;

	INFORMAT stcard1p $4.;
	FORMAT stcard1p $4.;

	INFORMAT stcard2p $4.;
	FORMAT stcard2p $4.;

	INFORMAT stcard3p $4.;
	FORMAT stcard3p $4.;

	INFORMAT stcard4p $4.;
	FORMAT stcard4p $4.;

	INFORMAT stcard5p $4.;
	FORMAT stcard5p $4.;

	INFORMAT stcard6p $4.;
	FORMAT stcard6p $4.;

	INFORMAT stcard7p $4.;
	FORMAT stcard7p $4.;

	INFORMAT stcard8p $4.;
	FORMAT stcard8p $4.;

	INFORMAT stcard9p $4.;
	FORMAT stcard9p $4.;

	INFORMAT stcard10p $4.;
	FORMAT stcard10p $4.;

	INFORMAT stcard11p $4.;
	FORMAT stcard11p $4.;

	INFORMAT stcard12p $4.;
	FORMAT stcard12p $4.;

	INFORMAT stcard13p $4.;
	FORMAT stcard13p $4.;

	INFORMAT stcard14p $4.;
	FORMAT stcard14p $4.;

	INFORMAT stcard15p $4.;
	FORMAT stcard15p $4.;

	INFORMAT stcard16p $4.;
	FORMAT stcard16p $4.;

	INFORMAT auto_id_SmeTes BEST32.;
	FORMAT auto_id_SmeTes BEST12.;

	INFORMAT crf_parent_name_SmeTes $15.;
	FORMAT crf_parent_name_SmeTes $15.;

	INFORMAT study_name_SmeTes $4.;
	FORMAT study_name_SmeTes $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_SmeTes
		obsdate_stdate
		blank_SmeTes
		sttid
		stdone
		strnd
		stver
		stsmell
		stnasal
		stcard1
		stcard2
		stcard3
		stcard4
		stcard5
		stcard6
		stcard7
		stcard8
		stcard9
		stcard10
		stcard11
		stcard12
		stcard13
		stcard14
		stcard15
		stcard16
		stcard1p
		stcard2p
		stcard3p
		stcard4p
		stcard5p
		stcard6p
		stcard7p
		stcard8p
		stcard9p
		stcard10p
		stcard11p
		stcard12p
		stcard13p
		stcard14p
		stcard15p
		stcard16p
		auto_id_SmeTes
		crf_parent_name_SmeTes
		study_name_SmeTes
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
		crf_version_SmeTes = "CRF Version"
		obsdate_stdate = "Date Completed"
		blank_SmeTes = "Blank Form"
		sttid = "Tester ID"
		stdone = "Was smell test completed"
		strnd = "Reason not done"
		stver = "Smell test version"
		stsmell = "Sense of smell"
		stnasal = "Do you have nasal congestion today"
		stcard1 = "Card 1"
		stcard2 = "Card 2"
		stcard3 = "Card 3"
		stcard4 = "Card 4"
		stcard5 = "Card 5"
		stcard6 = "Card 6"
		stcard7 = "Card 7"
		stcard8 = "Card 8"
		stcard9 = "Card 9"
		stcard10 = "Card 10"
		stcard11 = "Card 11"
		stcard12 = "Card 12"
		stcard13 = "Card 13"
		stcard14 = "Card 14"
		stcard15 = "Card 15"
		stcard16 = "Card 16"
		stcard1p = "Card 1"
		stcard2p = "Card 2"
		stcard3p = "Card 3"
		stcard4p = "Card 4"
		stcard5p = "Card 5"
		stcard6p = "Card 6"
		stcard7p = "Card 7"
		stcard8p = "Card 8"
		stcard9p = "Card 9"
		stcard10p = "Card 10"
		stcard11p = "Card 11"
		stcard12p = "Card 12"
		stcard13p = "Card 13"
		stcard14p = "Card 14"
		stcard15p = "Card 15"
		stcard16p = "Card 16"
		auto_id_SmeTes = "Unique Teleform Number"
		crf_parent_name_SmeTes = "CRF Parent Name"
		study_name_SmeTes = "Study Name"
	;
	FORMAT
		stdone stdone_.
		strnd strnd_.
		stver stver_.
		stsmell stsmell_.
		stnasal stnasal_.
		stcard1 $stcard1_.
		stcard2 $stcard2_.
		stcard3 $stcard3_.
		stcard4 $stcard4_.
		stcard5 $stcard5_.
		stcard6 $stcard6_.
		stcard7 $stcard7_.
		stcard8 $stcard8_.
		stcard9 $stcard9_.
		stcard10 $stcard10_.
		stcard11 $stcard11_.
		stcard12 $stcard12_.
		stcard13 $stcard13_.
		stcard14 $stcard14_.
		stcard15 $stcard15_.
		stcard16 $stcard16_.
		stcard1p $stcard1p_.
		stcard2p $stcard2p_.
		stcard3p $stcard3p_.
		stcard4p $stcard4p_.
		stcard5p $stcard5p_.
		stcard6p $stcard6p_.
		stcard7p $stcard7p_.
		stcard8p $stcard8p_.
		stcard9p $stcard9p_.
		stcard10p $stcard10p_.
		stcard11p $stcard11p_.
		stcard12p $stcard12p_.
		stcard13p $stcard13p_.
		stcard14p $stcard14p_.
		stcard15p $stcard15p_.
		stcard16p $stcard16p_.
	;
RUN;


DATA blsa_smell_test;
    SET WORK.IMPORT;
RUN;
