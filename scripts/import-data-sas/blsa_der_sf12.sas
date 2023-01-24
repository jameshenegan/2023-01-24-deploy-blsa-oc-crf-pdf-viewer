%let path_to_file = '../data-csv/blsa_der_sf12.csv';
OPTIONS nofmterr;

    
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

	INFORMAT NMissSF BEST32.;
	FORMAT NMissSF BEST12.;

	INFORMAT SF12_PCScore BEST32.;
	FORMAT SF12_PCScore BEST12.;

	INFORMAT SF12_MCScore BEST32.;
	FORMAT SF12_MCScore BEST12.;

	INPUT
		idno
		visit
		NMissSF
		SF12_PCScore
		SF12_MCScore
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		idno = "BLSA ID"
		visit = "Visit Number"
		NMissSF = "Number of missing components in SF12"
		SF12_PCScore = "Physical health composite score"
		SF12_MCScore = "Mental health composite score"
	;
RUN;


DATA blsa_der_sf12;
    SET WORK.IMPORT;
RUN;
