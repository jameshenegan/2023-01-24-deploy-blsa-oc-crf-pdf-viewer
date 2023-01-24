%let path_to_file = '../data-csv/blsa_der_cohort_id.csv';
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

	INFORMAT id BEST32.;
	FORMAT id BEST12.;

	INFORMAT id_mock BEST32.;
	FORMAT id_mock BEST12.;

	INFORMAT id_addi BEST32.;
	FORMAT id_addi BEST12.;

	INFORMAT id_gaain BEST32.;
	FORMAT id_gaain BEST12.;

	INPUT
		idno
		visit
		id
		id_mock
		id_addi
		id_gaain
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		idno = "BLSA ID"
		visit = "Visit Number"
		id = "Participant ID"
		id_mock = "Masked Participant ID "
		id_addi = "Masked Participant ID for ADDI"
		id_gaain = "Masked Participant ID for GAAIN"
	;
RUN;


DATA blsa_der_cohort_id;
    SET WORK.IMPORT;
RUN;
