%let path_to_file = '../data-csv/blsa_der_physicalfunction.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ADL_trans_
		0 = 'none'
		1 = 'a little'
		2 = 'some'
		3 = 'a lot'
		4 = 'unable to do'
	;

	VALUE ADL_bathe_
		0 = 'none'
		1 = 'a little'
		2 = 'some'
		3 = 'a lot'
		4 = 'unable to do'
	;

	VALUE ADL_dress_
		0 = 'none'
		1 = 'a little'
		2 = 'some'
		3 = 'a lot'
		4 = 'unable to do'
	;

	VALUE ADL_eat_
		0 = 'none'
		1 = 'a little'
		2 = 'some'
		3 = 'a lot'
		4 = 'unable to do'
	;

	VALUE ADL_toilet_
		0 = 'none'
		1 = 'a little'
		2 = 'some'
		3 = 'a lot'
		4 = 'unable to do'
	;

	VALUE ADL_walk_
		0 = 'none'
		1 = 'a little'
		2 = 'some'
		3 = 'a lot'
		4 = 'unable to do'
	;

	VALUE walkquartermile_
		0 = 'unable to do'
		1 = 'a lot of difficulty'
		2 = 'some difficulty'
		3 = 'a little difficulty'
		4 = 'not so easy'
		5 = 'somewhat easy'
		6 = 'very easy'
	;

	VALUE walkonemile_
		0 = 'difficult'
		1 = 'not so easy'
		2 = 'somewhat easy'
		3 = 'very easy'
	;

	VALUE liftcarry10_
		0 = 'unable to do'
		1 = 'a lot of difficulty'
		2 = 'some difficulty'
		3 = 'a little difficulty'
		4 = 'not so easy'
		5 = 'somewhat easy'
		6 = 'very easy'
	;

	VALUE ADLH_trans_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ADLH_bathe_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ADLH_dress_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ADLH_eat_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ADLH_toilet_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ADLH_walk_
		0 = 'No'
		1 = 'Yes'
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

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT ADL_trans BEST32.;
	FORMAT ADL_trans BEST12.;

	INFORMAT ADL_bathe BEST32.;
	FORMAT ADL_bathe BEST12.;

	INFORMAT ADL_dress BEST32.;
	FORMAT ADL_dress BEST12.;

	INFORMAT ADL_eat BEST32.;
	FORMAT ADL_eat BEST12.;

	INFORMAT ADL_toilet BEST32.;
	FORMAT ADL_toilet BEST12.;

	INFORMAT ADL_walk BEST32.;
	FORMAT ADL_walk BEST12.;

	INFORMAT ADL_Total BEST32.;
	FORMAT ADL_Total BEST12.;

	INFORMAT handgripright BEST32.;
	FORMAT handgripright BEST12.;

	INFORMAT handgripleft BEST32.;
	FORMAT handgripleft BEST12.;

	INFORMAT handgripmax BEST32.;
	FORMAT handgripmax BEST12.;

	INFORMAT chairstandscore BEST32.;
	FORMAT chairstandscore BEST12.;

	INFORMAT standbalancescore BEST32.;
	FORMAT standbalancescore BEST12.;

	INFORMAT usualgaitspeed BEST32.;
	FORMAT usualgaitspeed BEST12.;

	INFORMAT gaitspeedscore BEST32.;
	FORMAT gaitspeedscore BEST12.;

	INFORMAT sppb BEST32.;
	FORMAT sppb BEST12.;

	INFORMAT walkquartermile BEST32.;
	FORMAT walkquartermile BEST12.;

	INFORMAT walkonemile BEST32.;
	FORMAT walkonemile BEST12.;

	INFORMAT walkcapacity BEST32.;
	FORMAT walkcapacity BEST12.;

	INFORMAT liftcarry10 BEST32.;
	FORMAT liftcarry10 BEST12.;

	INFORMAT ADL_NMiss BEST32.;
	FORMAT ADL_NMiss BEST12.;

	INFORMAT ADL_Number BEST32.;
	FORMAT ADL_Number BEST12.;

	INFORMAT ADLH_trans BEST32.;
	FORMAT ADLH_trans BEST12.;

	INFORMAT ADLH_bathe BEST32.;
	FORMAT ADLH_bathe BEST12.;

	INFORMAT ADLH_dress BEST32.;
	FORMAT ADLH_dress BEST12.;

	INFORMAT ADLH_eat BEST32.;
	FORMAT ADLH_eat BEST12.;

	INFORMAT ADLH_toilet BEST32.;
	FORMAT ADLH_toilet BEST12.;

	INFORMAT ADLH_walk BEST32.;
	FORMAT ADLH_walk BEST12.;

	INFORMAT WKINDEX BEST32.;
	FORMAT WKINDEX BEST12.;

	INFORMAT WKINDEXa BEST32.;
	FORMAT WKINDEXa BEST12.;

	INFORMAT WKINDEXb BEST32.;
	FORMAT WKINDEXb BEST12.;

	INFORMAT STINDEX BEST32.;
	FORMAT STINDEX BEST12.;

	INFORMAT STINDEXa BEST32.;
	FORMAT STINDEXa BEST12.;

	INFORMAT STINDEXb BEST32.;
	FORMAT STINDEXb BEST12.;

	INFORMAT LCINDEX BEST32.;
	FORMAT LCINDEX BEST12.;

	INFORMAT LCINDEXa BEST32.;
	FORMAT LCINDEXa BEST12.;

	INFORMAT LCINDEXb BEST32.;
	FORMAT LCINDEXb BEST12.;

	INPUT
		idno
		visit
		ADL_trans
		ADL_bathe
		ADL_dress
		ADL_eat
		ADL_toilet
		ADL_walk
		ADL_Total
		handgripright
		handgripleft
		handgripmax
		chairstandscore
		standbalancescore
		usualgaitspeed
		gaitspeedscore
		sppb
		walkquartermile
		walkonemile
		walkcapacity
		liftcarry10
		ADL_NMiss
		ADL_Number
		ADLH_trans
		ADLH_bathe
		ADLH_dress
		ADLH_eat
		ADLH_toilet
		ADLH_walk
		WKINDEX
		WKINDEXa
		WKINDEXb
		STINDEX
		STINDEXa
		STINDEXb
		LCINDEX
		LCINDEXa
		LCINDEXb
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		idno = "BLSA ID"
		visit = "Visit Number"
		ADL_trans = "ADL - any difficulty getting in and out of bed or chair"
		ADL_bathe = "ADL - any difficulty bathing or showering"
		ADL_dress = "ADL - any difficulty dressing"
		ADL_eat = "ADL - any difficulty eating"
		ADL_toilet = "ADL - any difficulty using the toilet"
		ADL_walk = "ADL - any difficulty walking across a small room"
		ADL_Total = "ADL - total score"
		handgripright = "Hand grip muscles right (kg)"
		handgripleft = "Hand grip muscles left (kg)"
		handgripmax = "Maximum hand grip (kg)"
		chairstandscore = "SPPB - chair stand score"
		standbalancescore = "SPPB - standing balance score"
		usualgaitspeed = "Usual gait speed (m/s)"
		gaitspeedscore = "SPPB - gait speed score"
		sppb = "SPPB - score"
		walkquartermile = "Difficulty/ease walking 1/4 mile"
		walkonemile = "Difficulty/ease walking 1 mile if no difficulty walking 1/4 mile"
		walkcapacity = "Walking ability summary score"
		liftcarry10 = "Difficulty/ease lifting/carrying 10 lbs"
		ADL_NMiss = "ADL - number missing"
		ADL_Number = "ADL - number with any difficulty (if all non-missing)"
		ADLH_trans = "ADL - need special equipment getting in and out of bed or chair"
		ADLH_bathe = "ADL - need special equipment bathing or showering"
		ADLH_dress = "ADL - need special equipment dressing"
		ADLH_eat = "ADL - need special equipment eating"
		ADLH_toilet = "ADL - need special equipment using the toilet"
		ADLH_walk = "ADL - need special equipment walking across a small room"
		WKINDEX = "ADL - Walking capacity summary score"
		WKINDEXa = "ADL - Difficulty walk quarter mile"
		WKINDEXb = "ADL - Difficulty walking one mile"
		STINDEX = "ADL - Climbing stairs capacity summary score"
		STINDEXa = "ADL - Difficulty walking up 10 steps"
		STINDEXb = "ADL - Difficulty walking up 20 steps"
		LCINDEX = "ADL - Lifting/carrying capacity summary score"
		LCINDEXa = "ADL - Difficulty lifting/carrying 10 lbs"
		LCINDEXb = "ADL - Difficulty lifting/carrying 20 lbs"
	;
	FORMAT
		ADL_trans ADL_trans_.
		ADL_bathe ADL_bathe_.
		ADL_dress ADL_dress_.
		ADL_eat ADL_eat_.
		ADL_toilet ADL_toilet_.
		ADL_walk ADL_walk_.
		walkquartermile walkquartermile_.
		walkonemile walkonemile_.
		liftcarry10 liftcarry10_.
		ADLH_trans ADLH_trans_.
		ADLH_bathe ADLH_bathe_.
		ADLH_dress ADLH_dress_.
		ADLH_eat ADLH_eat_.
		ADLH_toilet ADLH_toilet_.
		ADLH_walk ADLH_walk_.
	;
RUN;


DATA blsa_der_physicalfunction;
    SET WORK.IMPORT;
RUN;
