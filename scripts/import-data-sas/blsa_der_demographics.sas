%let path_to_file = '../data-csv/blsa_der_demographics.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE $sex_
		Female = 'Female'
		Male = 'Male'
	;

	VALUE male_
		0 = 'Female'
		1 = 'Male'
	;

	VALUE race3cat_
		1 = 'White'
		2 = 'Black or African American'
		3 = 'Other'
	;

	VALUE black_
		0 = 'NonBlack'
		1 = 'Black'
	;

	VALUE ethnicity_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE maritalstatus_
		1 = 'Married'
		2 = 'Living with a partner'
		3 = 'Separated'
		4 = 'Divorced'
		5 = 'Widowed'
		6 = 'Never married'
	;

	VALUE householdsize_
		0 = 'Lives alone'
		1 = '1 other'
		2 = '2 others'
		3 = '3 or more others'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE housingtype_
		1 = 'Single family home'
		2 = 'Co-op, condominium, apartment'
		3 = 'Continuing care community'
		4 = 'Assisted living'
		5 = 'Long term care facility'
		7 = 'refused'
		8 = "Don't know"
	;

	VALUE borninus_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE englishfirstlang_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE education_
		0 = 'no formal schooling'
		12 = 'high school (or GED equivalent)'
		14 = "two year college / Associate's degree"
		16 = 'four year college'
		18 = "Master's degree"
		19 = 'Law degree'
		20 = 'MD or PhD'
		21 = 'multiple graduate degrees'
		77 = 'refused'
		88 = 'unknown'
	;

	VALUE educ3cat_
		0 = '<High School'
		1 = 'High School/GED'
		2 = '>High School'
	;

	VALUE educ5cat_
		0 = 'Less than high school'
		1 = 'High school'
		2 = 'Some college'
		3 = 'College grad'
		4 = 'Post college'
	;

	VALUE smkstat_
		0 = 'Never smoked'
		1 = 'Former Smoker'
		2 = 'Current Smoker'
	;

	VALUE smokehx_
		0 = 'Never smoked'
		1 = 'Quit 10+ yrs ago'
		2 = 'Quit <10 yrs ago'
		3 = 'Current smoker'
	;

	VALUE smoker_
		0 = 'Non-Smoker'
		1 = 'Smoker'
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

	INFORMAT brthyr BEST32.;
	FORMAT brthyr BEST12.;

	INFORMAT brthmo BEST32.;
	FORMAT brthmo BEST12.;

	INFORMAT age BEST32.;
	FORMAT age BEST12.;

	INFORMAT baselineage BEST32.;
	FORMAT baselineage BEST12.;

	INFORMAT sex $6.;
	FORMAT sex $6.;

	INFORMAT male BEST32.;
	FORMAT male BEST12.;

	INFORMAT race3cat BEST32.;
	FORMAT race3cat BEST12.;

	INFORMAT black BEST32.;
	FORMAT black BEST12.;

	INFORMAT ethnicity BEST32.;
	FORMAT ethnicity BEST12.;

	INFORMAT maritalstatus BEST32.;
	FORMAT maritalstatus BEST12.;

	INFORMAT householdsize BEST32.;
	FORMAT householdsize BEST12.;

	INFORMAT housingtype BEST32.;
	FORMAT housingtype BEST12.;

	INFORMAT borninus BEST32.;
	FORMAT borninus BEST12.;

	INFORMAT englishfirstlang BEST32.;
	FORMAT englishfirstlang BEST12.;

	INFORMAT education BEST32.;
	FORMAT education BEST12.;

	INFORMAT educ3cat BEST32.;
	FORMAT educ3cat BEST12.;

	INFORMAT educ5cat BEST32.;
	FORMAT educ5cat BEST12.;

	INFORMAT smkstat BEST32.;
	FORMAT smkstat BEST12.;

	INFORMAT smokehx BEST32.;
	FORMAT smokehx BEST12.;

	INFORMAT smoker BEST32.;
	FORMAT smoker BEST12.;

	INPUT
		idno
		visit
		brthyr
		brthmo
		age
		baselineage
		sex
		male
		race3cat
		black
		ethnicity
		maritalstatus
		householdsize
		housingtype
		borninus
		englishfirstlang
		education
		educ3cat
		educ5cat
		smkstat
		smokehx
		smoker
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		idno = "BLSA ID"
		visit = "Visit Number"
		brthyr = "Year of Birth"
		brthmo = "Month of Birth"
		age = "Age at time of visit (years)"
		baselineage = "Age at baseline visit (years)"
		sex = "Sex"
		male = "Male Indicator"
		race3cat = "Race Category (White, Black, Other)"
		black = "Black Race Indicator"
		ethnicity = "Spanish Hispanic or Latino Ethnicity"
		maritalstatus = "Marital Status"
		householdsize = "Size of Household"
		housingtype = "Type of Housing"
		borninus = "Born in the United States"
		englishfirstlang = "English was First Language"
		education = "Years of Education"
		educ3cat = "Education Category (<HS, HS, HS+)"
		educ5cat = "Education Category (5-Level)"
		smkstat = "Current smoking status (3-level)"
		smokehx = "Smoking history (4-level)"
		smoker = "Current smoking status (2-level)"
	;
	FORMAT
		male male_.
		race3cat race3cat_.
		black black_.
		ethnicity ethnicity_.
		maritalstatus maritalstatus_.
		householdsize householdsize_.
		housingtype housingtype_.
		borninus borninus_.
		englishfirstlang englishfirstlang_.
		education education_.
		educ3cat educ3cat_.
		educ5cat educ5cat_.
		smkstat smkstat_.
		smokehx smokehx_.
		smoker smoker_.
		sex $sex_.
	;
RUN;


DATA blsa_der_demographics;
    SET WORK.IMPORT;
RUN;
