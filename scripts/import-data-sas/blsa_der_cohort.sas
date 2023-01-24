%let path_to_file = '../data-csv/blsa_der_cohort.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE visitmonth_
		1 = 'January'
		2 = 'February'
		3 = 'March'
		4 = 'April'
		5 = 'May'
		6 = 'June'
		7 = 'July'
		8 = 'August'
		9 = 'September'
		10 = 'October'
		11 = 'November'
		12 = 'December'
	;

	VALUE opendates_
		1 = 'Open'
		0 = 'Embargoed'
	;

	VALUE openrow_
		1 = 'Open'
		0 = 'Permissioned'
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

	INFORMAT v1visitdate BEST32.;
	FORMAT v1visitdate BEST12.;

	INFORMAT visitdate YYMMDD10.;
	FORMAT visitdate YYMMDD10.;

	INFORMAT visitmonth BEST32.;
	FORMAT visitmonth BEST12.;

	INFORMAT visityear BEST32.;
	FORMAT visityear BEST12.;

	INFORMAT daysfromv1 BEST32.;
	FORMAT daysfromv1 BEST12.;

	INFORMAT yearsfromv1 BEST32.;
	FORMAT yearsfromv1 BEST12.;

	INFORMAT yearsfromprevvisit BEST32.;
	FORMAT yearsfromprevvisit BEST12.;

	INFORMAT visitseq BEST32.;
	FORMAT visitseq BEST12.;

	INFORMAT numvisits BEST32.;
	FORMAT numvisits BEST12.;

	INFORMAT deathdate BEST32.;
	FORMAT deathdate BEST12.;

	INFORMAT v1todeathdays BEST32.;
	FORMAT v1todeathdays BEST12.;

	INFORMAT opendates BEST32.;
	FORMAT opendates BEST12.;

	INFORMAT openrow BEST32.;
	FORMAT openrow BEST12.;

	INPUT
		idno
		visit
		v1visitdate
		visitdate
		visitmonth
		visityear
		daysfromv1
		yearsfromv1
		yearsfromprevvisit
		visitseq
		numvisits
		deathdate
		v1todeathdays
		opendates
		openrow
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		idno = "BLSA ID"
		visit = "Visit Number"
		v1visitdate = "Visit Date"
		visitdate = "Visit Date"
		visitmonth = "Month of Visit"
		visityear = "Year of Visit"
		daysfromv1 = "Days Since Visit 1 Baseline"
		yearsfromv1 = "Years Since Visit 1 Baseline"
		yearsfromprevvisit = "Years Since Previous Visit"
		visitseq = "Sequential Visit Number"
		numvisits = "Number of Visits"
		deathdate = "Date of Death"
		v1todeathdays = "Days from Visit 1 to Death (if known death)"
	;
	FORMAT
		visitmonth visitmonth_.
		opendates opendates_.
		openrow openrow_.
	;
RUN;


DATA blsa_der_cohort;
    SET WORK.IMPORT;
RUN;
