%let path_to_file = '../data-csv/BLSA_Epidermal_Aging.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE informedconsent_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE adhesiveallergy_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE fragileskin_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE skincondition_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE smoked_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE nocaffeine_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE notopicalprod_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE notpregnant_EpiAgi_
		0 = 'No'
		1 = 'Yes'
		2 = 'nan'
	;

	VALUE eligibilityyn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE consent_EpiAgi_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE reveligibility_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE day1photo_
		1 = 'Left'
		2 = 'Right'
	;

	VALUE d2ampm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE d2topicalprod_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d2caffeine_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE acclimate_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d3ampm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE d3topicalprod_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d3caffeine_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d3acclimate_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE day3photo_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE discsize_
		1 = 'D-Squame size 1.1875â€_x009d_ (D102 Large)'
		2 = 'D-Squame size 0.875â€_x009d_ (D100 Standard)'
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

	INFORMAT crf_version_EpiAgi $7.;
	FORMAT crf_version_EpiAgi $7.;

	INFORMAT obsdate_d1date YYMMDD10.;
	FORMAT obsdate_d1date YYMMDD10.;

	INFORMAT blank_EpiAgi $1.;
	FORMAT blank_EpiAgi $1.;

	INFORMAT testerid_EpiAgi BEST32.;
	FORMAT testerid_EpiAgi BEST12.;

	INFORMAT informedconsent BEST32.;
	FORMAT informedconsent BEST12.;

	INFORMAT adhesiveallergy BEST32.;
	FORMAT adhesiveallergy BEST12.;

	INFORMAT fragileskin BEST32.;
	FORMAT fragileskin BEST12.;

	INFORMAT skincondition BEST32.;
	FORMAT skincondition BEST12.;

	INFORMAT smoked BEST32.;
	FORMAT smoked BEST12.;

	INFORMAT nocaffeine BEST32.;
	FORMAT nocaffeine BEST12.;

	INFORMAT notopicalprod BEST32.;
	FORMAT notopicalprod BEST12.;

	INFORMAT notpregnant_EpiAgi BEST32.;
	FORMAT notpregnant_EpiAgi BEST12.;

	INFORMAT eligibilityyn BEST32.;
	FORMAT eligibilityyn BEST12.;

	INFORMAT tester_EpiAgi $16.;
	FORMAT tester_EpiAgi $16.;

	INFORMAT d1testerid BEST32.;
	FORMAT d1testerid BEST12.;

	INFORMAT consent_EpiAgi BEST32.;
	FORMAT consent_EpiAgi BEST12.;

	INFORMAT reveligibility BEST32.;
	FORMAT reveligibility BEST12.;

	INFORMAT day1photo BEST32.;
	FORMAT day1photo BEST12.;

	INFORMAT d2date YYMMDD10.;
	FORMAT d2date YYMMDD10.;

	INFORMAT d2time $5.;
	FORMAT d2time $5.;

	INFORMAT d2ampm BEST32.;
	FORMAT d2ampm BEST12.;

	INFORMAT d2testerid BEST32.;
	FORMAT d2testerid BEST12.;

	INFORMAT d2topicalprod BEST32.;
	FORMAT d2topicalprod BEST12.;

	INFORMAT d2caffeine BEST32.;
	FORMAT d2caffeine BEST12.;

	INFORMAT acclimate BEST32.;
	FORMAT acclimate BEST12.;

	INFORMAT temproom BEST32.;
	FORMAT temproom BEST12.;

	INFORMAT humidityrm BEST32.;
	FORMAT humidityrm BEST12.;

	INFORMAT baselinetewl BEST32.;
	FORMAT baselinetewl BEST12.;

	INFORMAT d3date YYMMDD10.;
	FORMAT d3date YYMMDD10.;

	INFORMAT d3time $4.;
	FORMAT d3time $4.;

	INFORMAT d3ampm BEST32.;
	FORMAT d3ampm BEST12.;

	INFORMAT d3testerid BEST32.;
	FORMAT d3testerid BEST12.;

	INFORMAT d3topicalprod BEST32.;
	FORMAT d3topicalprod BEST12.;

	INFORMAT d3caffeine BEST32.;
	FORMAT d3caffeine BEST12.;

	INFORMAT d3acclimate BEST32.;
	FORMAT d3acclimate BEST12.;

	INFORMAT d3rmtemp BEST32.;
	FORMAT d3rmtemp BEST12.;

	INFORMAT d3rmhumidity BEST32.;
	FORMAT d3rmhumidity BEST12.;

	INFORMAT d3tewl BEST32.;
	FORMAT d3tewl BEST12.;

	INFORMAT day3photo BEST32.;
	FORMAT day3photo BEST12.;

	INFORMAT d3tewlm2 BEST32.;
	FORMAT d3tewlm2 BEST12.;

	INFORMAT d3tewlm3 BEST32.;
	FORMAT d3tewlm3 BEST12.;

	INFORMAT d2tewlm2 BEST32.;
	FORMAT d2tewlm2 BEST12.;

	INFORMAT d2tewlm3 BEST32.;
	FORMAT d2tewlm3 BEST12.;

	INFORMAT discsize BEST32.;
	FORMAT discsize BEST12.;

	INFORMAT tewlavg $1.;
	FORMAT tewlavg $1.;

	INFORMAT crf_parent_name_EpiAgi $20.;
	FORMAT crf_parent_name_EpiAgi $20.;

	INFORMAT crf_status_EpiAgi $6.;
	FORMAT crf_status_EpiAgi $6.;

	INFORMAT study_name_EpiAgi $4.;
	FORMAT study_name_EpiAgi $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_EpiAgi
		obsdate_d1date
		blank_EpiAgi
		testerid_EpiAgi
		informedconsent
		adhesiveallergy
		fragileskin
		skincondition
		smoked
		nocaffeine
		notopicalprod
		notpregnant_EpiAgi
		eligibilityyn
		tester_EpiAgi
		d1testerid
		consent_EpiAgi
		reveligibility
		day1photo
		d2date
		d2time
		d2ampm
		d2testerid
		d2topicalprod
		d2caffeine
		acclimate
		temproom
		humidityrm
		baselinetewl
		d3date
		d3time
		d3ampm
		d3testerid
		d3topicalprod
		d3caffeine
		d3acclimate
		d3rmtemp
		d3rmhumidity
		d3tewl
		day3photo
		d3tewlm2
		d3tewlm3
		d2tewlm2
		d2tewlm3
		discsize
		tewlavg
		crf_parent_name_EpiAgi
		crf_status_EpiAgi
		study_name_EpiAgi
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
		crf_version_EpiAgi = "CRF Version"
		obsdate_d1date = "D1 Date"
		blank_EpiAgi = "Blank"
		testerid_EpiAgi = "Tester ID"
		informedconsent = "Able to provide informed consent"
		adhesiveallergy = "Does not have a known allergy to adhesive tape"
		fragileskin = "Does not have fragile skin"
		skincondition = "Does not have a wound or skin condition prone to excessive scarring"
		smoked = "Has not smoked 3 hours prior to the procedure"
		nocaffeine = "Has not drank any caffeinated beverages 3 hours prior to the procedure"
		notopicalprod = "Has not used any topical products 6 to 8 hrs before procedure"
		notpregnant_EpiAgi = "Is not pregnant"
		eligibilityyn = "Eligibility"
		tester_EpiAgi = "Tester"
		d1testerid = "D1 Tester ID"
		consent_EpiAgi = "Consent reviewed"
		reveligibility = "Eligibility criteria reviewed"
		day1photo = "Day 1 Forearm photographed"
		d2date = "D2 Date"
		d2time = "D2 Time"
		d2ampm = "D2 am pm"
		d2testerid = "D2 Tester ID"
		d2topicalprod = "Has the participant used topical products on the forearm in the last 6-8 hours"
		d2caffeine = "Has the participant drank any caffeine or smoked in the past 3 hours"
		acclimate = "Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
		temproom = "Room temperature"
		humidityrm = "Room Humidity"
		baselinetewl = "Baseline TEWL measurement"
		d3date = "D3 Date"
		d3time = "D3 Time"
		d3ampm = "D3 am pm"
		d3testerid = "D3 Tester ID"
		d3topicalprod = "D3 Has the participant used topical products on the forearm in the last 6-8 hours"
		d3caffeine = "D3 Has the participant drank any caffeine or smoked in the past 3 hours"
		d3acclimate = "D3 Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
		d3rmtemp = "D3 Room temperature"
		d3rmhumidity = "D3 Room Humidity"
		d3tewl = "D3 TEWL measurement"
		day3photo = "D3 Forearm photographed"
		d3tewlm2 = "D3 TEWL measurement 2"
		d3tewlm3 = "D3 TEWL measurement 3"
		d2tewlm2 = "D2 TEWL measurement 2"
		d2tewlm3 = "D2 TEWL measurement 3"
		discsize = "Stripping disc size"
		tewlavg = "TEWL average"
		crf_parent_name_EpiAgi = "CRF Parent Name"
		crf_status_EpiAgi = "CRF Status"
		study_name_EpiAgi = "Study Name"
	;
	FORMAT
		informedconsent informedconsent_.
		adhesiveallergy adhesiveallergy_.
		fragileskin fragileskin_.
		skincondition skincondition_.
		smoked smoked_.
		nocaffeine nocaffeine_.
		notopicalprod notopicalprod_.
		notpregnant_EpiAgi notpregnant_EpiAgi_.
		eligibilityyn eligibilityyn_.
		consent_EpiAgi consent_EpiAgi_.
		reveligibility reveligibility_.
		day1photo day1photo_.
		d2ampm d2ampm_.
		d2topicalprod d2topicalprod_.
		d2caffeine d2caffeine_.
		acclimate acclimate_.
		d3ampm d3ampm_.
		d3topicalprod d3topicalprod_.
		d3caffeine d3caffeine_.
		d3acclimate d3acclimate_.
		day3photo day3photo_.
		discsize discsize_.
	;
RUN;


DATA blsa_epidermal_aging;
    SET WORK.IMPORT;
RUN;
