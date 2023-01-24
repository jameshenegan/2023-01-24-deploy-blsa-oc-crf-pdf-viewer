%let path_to_file = '../data-csv/BLSA_Aging_and_Skin_Inflammation.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE rash6mo_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rash12mo_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rashlocation_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eczemadx_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dryskinhx_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE usemoisturizer_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sunexp1hr_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sunexp7days_
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

	INFORMAT subject_id BEST32.;
	FORMAT subject_id BEST12.;

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT event_name $8.;
	FORMAT event_name $8.;

	INFORMAT crf_version_AgiandSkiInf $7.;
	FORMAT crf_version_AgiandSkiInf $7.;

	INFORMAT date_AgiandSkiInf YYMMDD10.;
	FORMAT date_AgiandSkiInf YYMMDD10.;

	INFORMAT rash6mo BEST32.;
	FORMAT rash6mo BEST12.;

	INFORMAT rash12mo BEST32.;
	FORMAT rash12mo BEST12.;

	INFORMAT rashlocation BEST32.;
	FORMAT rashlocation BEST12.;

	INFORMAT eczemadx BEST32.;
	FORMAT eczemadx BEST12.;

	INFORMAT dryskinhx BEST32.;
	FORMAT dryskinhx BEST12.;

	INFORMAT usemoisturizer BEST32.;
	FORMAT usemoisturizer BEST12.;

	INFORMAT sunexp1hr BEST32.;
	FORMAT sunexp1hr BEST12.;

	INFORMAT sunexp7days BEST32.;
	FORMAT sunexp7days BEST12.;

	INFORMAT crf_parent_name_AgiandSkiInf $32.;
	FORMAT crf_parent_name_AgiandSkiInf $32.;

	INFORMAT study_name_AgiandSkiInf $4.;
	FORMAT study_name_AgiandSkiInf $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_AgiandSkiInf
		date_AgiandSkiInf
		rash6mo
		rash12mo
		rashlocation
		eczemadx
		dryskinhx
		usemoisturizer
		sunexp1hr
		sunexp7days
		crf_parent_name_AgiandSkiInf
		study_name_AgiandSkiInf
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
		crf_version_AgiandSkiInf = "CRF Version"
		date_AgiandSkiInf = "Date Completed"
		rash6mo = "Have you had an itchy rash that was coming and going for at least 6 months"
		rash12mo = "Have you had this itchy rash at any time in the past 12 months"
		rashlocation = "Has this rash affected the folds of the elbows behind knees front of ankles under buttocks or around neck ears or eyes"
		eczemadx = "Have you been diagnosed by a doctor with atopic dermatitis also known as eczema"
		dryskinhx = "Do you have a history of generally dry skin"
		usemoisturizer = "Have you regularly used a skin moisturizer emollient over the past year"
		sunexp1hr = "Outdoors for about 1 hr at noon without sunscreen would skin become ink red irritated tender or itchy"
		sunexp7days = "Over the next 7 days, would you then develop a tan or notice your skin becoming darker"
		crf_parent_name_AgiandSkiInf = "CRF Parent Name"
		study_name_AgiandSkiInf = "Study Name"
	;
	FORMAT
		rash6mo rash6mo_.
		rash12mo rash12mo_.
		rashlocation rashlocation_.
		eczemadx eczemadx_.
		dryskinhx dryskinhx_.
		usemoisturizer usemoisturizer_.
		sunexp1hr sunexp1hr_.
		sunexp7days sunexp7days_.
	;
RUN;


DATA blsa_aging_and_skin_inflammation;
    SET WORK.IMPORT;
RUN;
