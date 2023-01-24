%let path_to_file = '../data-csv/BLSA_Flu_Vaccine.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE hla2a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE consent_FluVac_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE age_FluVac_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE agreefollowup_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE welltoday_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE notill_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eggallergy_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vaccinereaction_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE reaction2yr_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE toldnovaccine_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE guillainbarre_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE nomci_dementia_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE nofluvac8mo_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE afebrilepastmo_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE immunosuppressant_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dailyantiinflmeds_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ca_treatment_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE anemic_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eligibility_FluVac_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE day0reveligib_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE day0fasting_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE day0blood_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d0locationrl_
		1 = 'Right arm'
		2 = 'Left arm'
		3 = 'Both'
	;

	VALUE d0locationspecify_
		1 = 'Anticubital'
		2 = 'Upper arm'
		3 = 'Lower arm'
		4 = 'Hand'
	;

	VALUE day0bldrampm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE admvaccine_
		1 = 'Right arm'
		2 = 'Left arm'
	;

	VALUE instructions_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE day7fasting_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE day7blood_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d7locationrl_
		1 = 'Right arm'
		2 = 'Left arm'
		3 = 'Both'
	;

	VALUE d7locationspecify_
		1 = 'Anticubital'
		2 = 'Upper arm'
		3 = 'Lower arm'
		4 = 'Hand'
	;

	VALUE day7bldrampm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE d7chestpain_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d7vomiting_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d7headache_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d7sob_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d7fever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d7cough_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d7fatigue_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d7hospital_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE day21fasting_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE day21blood_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d21locationrl_
		1 = 'Right arm'
		2 = 'Left arm'
		3 = 'Both'
	;

	VALUE d21locationspecify_
		1 = 'Anticubital'
		2 = 'Upper arm'
		3 = 'Lower arm'
		4 = 'Hand'
	;

	VALUE day21bldrampm_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE d21chestpain_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d21vomiting_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d21headache_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d21sob_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d21fever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d21cough_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d21fatigue_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d21hospital_
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

	INFORMAT crf_version_FluVac $4.;
	FORMAT crf_version_FluVac $4.;

	INFORMAT obsdate_datecompleted_FluVac YYMMDD10.;
	FORMAT obsdate_datecompleted_FluVac YYMMDD10.;

	INFORMAT blank_FluVac $1.;
	FORMAT blank_FluVac $1.;

	INFORMAT testerid_FluVac BEST32.;
	FORMAT testerid_FluVac BEST12.;

	INFORMAT hla2a BEST32.;
	FORMAT hla2a BEST12.;

	INFORMAT consent_FluVac BEST32.;
	FORMAT consent_FluVac BEST12.;

	INFORMAT age_FluVac BEST32.;
	FORMAT age_FluVac BEST12.;

	INFORMAT agreefollowup BEST32.;
	FORMAT agreefollowup BEST12.;

	INFORMAT welltoday BEST32.;
	FORMAT welltoday BEST12.;

	INFORMAT notill BEST32.;
	FORMAT notill BEST12.;

	INFORMAT eggallergy BEST32.;
	FORMAT eggallergy BEST12.;

	INFORMAT vaccinereaction BEST32.;
	FORMAT vaccinereaction BEST12.;

	INFORMAT reaction2yr BEST32.;
	FORMAT reaction2yr BEST12.;

	INFORMAT toldnovaccine BEST32.;
	FORMAT toldnovaccine BEST12.;

	INFORMAT guillainbarre BEST32.;
	FORMAT guillainbarre BEST12.;

	INFORMAT nomci_dementia BEST32.;
	FORMAT nomci_dementia BEST12.;

	INFORMAT nofluvac8mo BEST32.;
	FORMAT nofluvac8mo BEST12.;

	INFORMAT afebrilepastmo BEST32.;
	FORMAT afebrilepastmo BEST12.;

	INFORMAT immunosuppressant BEST32.;
	FORMAT immunosuppressant BEST12.;

	INFORMAT dailyantiinflmeds BEST32.;
	FORMAT dailyantiinflmeds BEST12.;

	INFORMAT ca_treatment BEST32.;
	FORMAT ca_treatment BEST12.;

	INFORMAT anemic BEST32.;
	FORMAT anemic BEST12.;

	INFORMAT eligibility_FluVac BEST32.;
	FORMAT eligibility_FluVac BEST12.;

	INFORMAT completedby $24.;
	FORMAT completedby $24.;

	INFORMAT day0date YYMMDD10.;
	FORMAT day0date YYMMDD10.;

	INFORMAT day0reveligib BEST32.;
	FORMAT day0reveligib BEST12.;

	INFORMAT day0temp BEST32.;
	FORMAT day0temp BEST12.;

	INFORMAT day0pulse BEST32.;
	FORMAT day0pulse BEST12.;

	INFORMAT day0resp BEST32.;
	FORMAT day0resp BEST12.;

	INFORMAT day0bpsystolic BEST32.;
	FORMAT day0bpsystolic BEST12.;

	INFORMAT day0bpdiastolic BEST32.;
	FORMAT day0bpdiastolic BEST12.;

	INFORMAT day0fasting BEST32.;
	FORMAT day0fasting BEST12.;

	INFORMAT day0blood BEST32.;
	FORMAT day0blood BEST12.;

	INFORMAT day0bldrattempts BEST32.;
	FORMAT day0bldrattempts BEST12.;

	INFORMAT d0locationrl BEST32.;
	FORMAT d0locationrl BEST12.;

	INFORMAT d0locationspecify BEST32.;
	FORMAT d0locationspecify BEST12.;

	INFORMAT day0bldrawtime $5.;
	FORMAT day0bldrawtime $5.;

	INFORMAT day0bldrampm BEST32.;
	FORMAT day0bldrampm BEST12.;

	INFORMAT day0bldrcomment $54.;
	FORMAT day0bldrcomment $54.;

	INFORMAT vaccinetype $19.;
	FORMAT vaccinetype $19.;

	INFORMAT vaccinelotno $22.;
	FORMAT vaccinelotno $22.;

	INFORMAT dispensedby $11.;
	FORMAT dispensedby $11.;

	INFORMAT dispenseddate YYMMDD10.;
	FORMAT dispenseddate YYMMDD10.;

	INFORMAT testerid2 BEST32.;
	FORMAT testerid2 BEST12.;

	INFORMAT admvaccine BEST32.;
	FORMAT admvaccine BEST12.;

	INFORMAT instructions BEST32.;
	FORMAT instructions BEST12.;

	INFORMAT day7date YYMMDD10.;
	FORMAT day7date YYMMDD10.;

	INFORMAT day7temp BEST32.;
	FORMAT day7temp BEST12.;

	INFORMAT day7pulse BEST32.;
	FORMAT day7pulse BEST12.;

	INFORMAT day7resp BEST32.;
	FORMAT day7resp BEST12.;

	INFORMAT day7bpsystolic BEST32.;
	FORMAT day7bpsystolic BEST12.;

	INFORMAT day7bpdiastolic BEST32.;
	FORMAT day7bpdiastolic BEST12.;

	INFORMAT day7fasting BEST32.;
	FORMAT day7fasting BEST12.;

	INFORMAT day7blood BEST32.;
	FORMAT day7blood BEST12.;

	INFORMAT day7bldrattempts BEST32.;
	FORMAT day7bldrattempts BEST12.;

	INFORMAT d7locationrl BEST32.;
	FORMAT d7locationrl BEST12.;

	INFORMAT d7locationspecify BEST32.;
	FORMAT d7locationspecify BEST12.;

	INFORMAT day7bldrawtime $5.;
	FORMAT day7bldrawtime $5.;

	INFORMAT day7bldrampm BEST32.;
	FORMAT day7bldrampm BEST12.;

	INFORMAT day7bldrcomment $85.;
	FORMAT day7bldrcomment $85.;

	INFORMAT d7chestpain BEST32.;
	FORMAT d7chestpain BEST12.;

	INFORMAT d7chestpainstill $1.;
	FORMAT d7chestpainstill $1.;

	INFORMAT d7vomiting BEST32.;
	FORMAT d7vomiting BEST12.;

	INFORMAT d7vomitingstill $1.;
	FORMAT d7vomitingstill $1.;

	INFORMAT d7headache BEST32.;
	FORMAT d7headache BEST12.;

	INFORMAT d7headachestill $1.;
	FORMAT d7headachestill $1.;

	INFORMAT d7sob BEST32.;
	FORMAT d7sob BEST12.;

	INFORMAT d7sobstill $1.;
	FORMAT d7sobstill $1.;

	INFORMAT d7fever BEST32.;
	FORMAT d7fever BEST12.;

	INFORMAT d7feverstill $1.;
	FORMAT d7feverstill $1.;

	INFORMAT d7cough BEST32.;
	FORMAT d7cough BEST12.;

	INFORMAT d7coughstill $1.;
	FORMAT d7coughstill $1.;

	INFORMAT d7fatigue BEST32.;
	FORMAT d7fatigue BEST12.;

	INFORMAT d7fatiguestill $1.;
	FORMAT d7fatiguestill $1.;

	INFORMAT d7hospital BEST32.;
	FORMAT d7hospital BEST12.;

	INFORMAT d7comment $85.;
	FORMAT d7comment $85.;

	INFORMAT day21date YYMMDD10.;
	FORMAT day21date YYMMDD10.;

	INFORMAT day21temp BEST32.;
	FORMAT day21temp BEST12.;

	INFORMAT day21pulse BEST32.;
	FORMAT day21pulse BEST12.;

	INFORMAT day21resp BEST32.;
	FORMAT day21resp BEST12.;

	INFORMAT day21bpsystolic BEST32.;
	FORMAT day21bpsystolic BEST12.;

	INFORMAT day21bpdiastolic BEST32.;
	FORMAT day21bpdiastolic BEST12.;

	INFORMAT day21fasting BEST32.;
	FORMAT day21fasting BEST12.;

	INFORMAT day21blood BEST32.;
	FORMAT day21blood BEST12.;

	INFORMAT day21bldrattempts BEST32.;
	FORMAT day21bldrattempts BEST12.;

	INFORMAT d21locationrl BEST32.;
	FORMAT d21locationrl BEST12.;

	INFORMAT d21locationspecify BEST32.;
	FORMAT d21locationspecify BEST12.;

	INFORMAT day21bldrawtime $4.;
	FORMAT day21bldrawtime $4.;

	INFORMAT day21bldrampm BEST32.;
	FORMAT day21bldrampm BEST12.;

	INFORMAT day21bldrcomment $113.;
	FORMAT day21bldrcomment $113.;

	INFORMAT d21chestpain BEST32.;
	FORMAT d21chestpain BEST12.;

	INFORMAT d21chestpainstill $1.;
	FORMAT d21chestpainstill $1.;

	INFORMAT d21vomiting BEST32.;
	FORMAT d21vomiting BEST12.;

	INFORMAT d21vomitingstill $1.;
	FORMAT d21vomitingstill $1.;

	INFORMAT d21headache BEST32.;
	FORMAT d21headache BEST12.;

	INFORMAT d21headachestill $1.;
	FORMAT d21headachestill $1.;

	INFORMAT d21sob BEST32.;
	FORMAT d21sob BEST12.;

	INFORMAT d21sobstill $1.;
	FORMAT d21sobstill $1.;

	INFORMAT d21fever BEST32.;
	FORMAT d21fever BEST12.;

	INFORMAT d21feverstill $1.;
	FORMAT d21feverstill $1.;

	INFORMAT d21cough BEST32.;
	FORMAT d21cough BEST12.;

	INFORMAT d21coughstill $1.;
	FORMAT d21coughstill $1.;

	INFORMAT d21fatigue BEST32.;
	FORMAT d21fatigue BEST12.;

	INFORMAT d21fatiguestill $1.;
	FORMAT d21fatiguestill $1.;

	INFORMAT d21hospital BEST32.;
	FORMAT d21hospital BEST12.;

	INFORMAT d21comment $159.;
	FORMAT d21comment $159.;

	INFORMAT crf_parent_name_FluVac $16.;
	FORMAT crf_parent_name_FluVac $16.;

	INFORMAT study_name_FluVac $4.;
	FORMAT study_name_FluVac $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_FluVac
		obsdate_datecompleted_FluVac
		blank_FluVac
		testerid_FluVac
		hla2a
		consent_FluVac
		age_FluVac
		agreefollowup
		welltoday
		notill
		eggallergy
		vaccinereaction
		reaction2yr
		toldnovaccine
		guillainbarre
		nomci_dementia
		nofluvac8mo
		afebrilepastmo
		immunosuppressant
		dailyantiinflmeds
		ca_treatment
		anemic
		eligibility_FluVac
		completedby
		day0date
		day0reveligib
		day0temp
		day0pulse
		day0resp
		day0bpsystolic
		day0bpdiastolic
		day0fasting
		day0blood
		day0bldrattempts
		d0locationrl
		d0locationspecify
		day0bldrawtime
		day0bldrampm
		day0bldrcomment
		vaccinetype
		vaccinelotno
		dispensedby
		dispenseddate
		testerid2
		admvaccine
		instructions
		day7date
		day7temp
		day7pulse
		day7resp
		day7bpsystolic
		day7bpdiastolic
		day7fasting
		day7blood
		day7bldrattempts
		d7locationrl
		d7locationspecify
		day7bldrawtime
		day7bldrampm
		day7bldrcomment
		d7chestpain
		d7chestpainstill
		d7vomiting
		d7vomitingstill
		d7headache
		d7headachestill
		d7sob
		d7sobstill
		d7fever
		d7feverstill
		d7cough
		d7coughstill
		d7fatigue
		d7fatiguestill
		d7hospital
		d7comment
		day21date
		day21temp
		day21pulse
		day21resp
		day21bpsystolic
		day21bpdiastolic
		day21fasting
		day21blood
		day21bldrattempts
		d21locationrl
		d21locationspecify
		day21bldrawtime
		day21bldrampm
		day21bldrcomment
		d21chestpain
		d21chestpainstill
		d21vomiting
		d21vomitingstill
		d21headache
		d21headachestill
		d21sob
		d21sobstill
		d21fever
		d21feverstill
		d21cough
		d21coughstill
		d21fatigue
		d21fatiguestill
		d21hospital
		d21comment
		crf_parent_name_FluVac
		study_name_FluVac
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
		crf_version_FluVac = "CRF Version"
		obsdate_datecompleted_FluVac = "Date Completed"
		blank_FluVac = "Blank Form"
		testerid_FluVac = "Tester ID"
		hla2a = "Is the participant eligibility beed determined as HLA-2A"
		consent_FluVac = "Is the participant able to provide consent"
		age_FluVac = "Is the participant 70 to 85 yrs of age"
		agreefollowup = "Does the participant agree to the blood draws and follow up visits"
		welltoday = "Does the participant report feeling well today"
		notill = "Participant currently without evidence of illness"
		eggallergy = "Is the participant without allergy to eggs"
		vaccinereaction = "Does the participant deny any previous serious reactions to the flu vaccine"
		reaction2yr = "Is the past 2 years has the participant had a reaction to the flu vaccine"
		toldnovaccine = "Has the participant been told not to have flu vaccine"
		guillainbarre = "Is the participant without evidence or history of Guillain-Barre syndrome"
		nomci_dementia = "Is the participant without MCI or Dementia diagnosis"
		nofluvac8mo = "Did the participant receive a flu vaccine more than 8 months ago"
		afebrilepastmo = "Has the participant been afebrile with no reports of upper respiratory infection in the past month"
		immunosuppressant = "Does the participant deny using immunosuppressant medications every day"
		dailyantiinflmeds = "Does the participant deny using anti-inflammatory medications every day?Review current medication list"
		ca_treatment = "Does the participant deny current treatment for cancer"
		anemic = "Participant is not annemic per current visit CBC"
		eligibility_FluVac = "Participant satisfies all eligibility criteria"
		completedby = "Name of person completing eligibility"
		day0date = "Day 0 Date"
		day0reveligib = "Day 0 Confirm eligibility criteria and review side effects"
		day0temp = "Day 0 Body temperature"
		day0pulse = "Day 0 Pulse"
		day0resp = "Day 0 Respirations"
		day0bpsystolic = "Day 0 systolic BP"
		day0bpdiastolic = "Day 0 diastolic BP"
		day0fasting = "Day 0 Fasting"
		day0blood = "Day 0 blood draw"
		day0bldrattempts = "Day 0 Blood draw attempts"
		d0locationrl = "Day 0 Location RL"
		d0locationspecify = "Day 0 Location specify"
		day0bldrawtime = "Day 0 Blood draw time"
		day0bldrampm = "Day 0 Blood draw Am Pm"
		day0bldrcomment = "Day 0 Blood draw comment"
		vaccinetype = "Flu Vaccine type"
		vaccinelotno = "Flu Vaccine Lot number"
		dispensedby = "Flu Vaccine dispensed by"
		dispenseddate = "Date Flu vaccine dispensed"
		testerid2 = "Flu vaccine given TID"
		admvaccine = "Flu Vaccine injection site"
		instructions = "Post flu vaccine instructions provided"
		day7date = "Day 7 Date"
		day7temp = "Day 7 Body temperature"
		day7pulse = "Day 7 Pulse"
		day7resp = "Day 7 Respirations"
		day7bpsystolic = "Day 7 systolic BP"
		day7bpdiastolic = "Day 7 diastolic BP"
		day7fasting = "Day 7 Fasting"
		day7blood = "Day 7 blood draw"
		day7bldrattempts = "Day 7 Blood draw attempts"
		d7locationrl = "Day 7 Location RL"
		d7locationspecify = "Day 7 Location specify"
		day7bldrawtime = "Day 7 Blood draw time"
		day7bldrampm = "Day 7 Blood draw Am Pm"
		day7bldrcomment = "Day 7 Blood draw comment"
		d7chestpain = "Day 71 Chest Pain"
		d7chestpainstill = "Day 7 Chest Pain still present"
		d7vomiting = "Day 7 Vomiting"
		d7vomitingstill = "Day 7 Vomiting still present"
		d7headache = "Day 7 Headache"
		d7headachestill = "Day 7 Headache still present"
		d7sob = "Day 7 shortness of breath"
		d7sobstill = "Day 7 SOB still present"
		d7fever = "Day 7 Fever aches and or chills"
		d7feverstill = "Day 7 Fever aches and or chills still present"
		d7cough = "Day 7 Cough"
		d7coughstill = "Day 7 Cough still present"
		d7fatigue = "Day 7 severe fatigue"
		d7fatiguestill = "Day 7 severe fatigue still present"
		d7hospital = "Day 7 in the past week or since you last talked to staff have you been hospitalized or had an ER visit"
		d7comment = "Day 7 comments"
		day21date = "Day 21 Date"
		day21temp = "Day 21 Body temperature"
		day21pulse = "Day 21 Pulse"
		day21resp = "Day 21 Respirations"
		day21bpsystolic = "Day 21 systolic BP"
		day21bpdiastolic = "Day 21 diastolic BP"
		day21fasting = "Day 21 Fasting"
		day21blood = "Day 21 blood draw"
		day21bldrattempts = "Day 21 Blood draw attempts"
		d21locationrl = "Day 21 Location RL"
		d21locationspecify = "Day 21 Location specify"
		day21bldrawtime = "Day 21 Blood draw time"
		day21bldrampm = "Day 21 Blood draw Am Pm"
		day21bldrcomment = "Day 21 Blood draw comment"
		d21chestpain = "Day 21 Chest Pain"
		d21chestpainstill = "Day 21 Chest Pain still present"
		d21vomiting = "Day 21 Vomiting"
		d21vomitingstill = "Day 21 Vomiting still present"
		d21headache = "Day 21 Headache"
		d21headachestill = "Day 21 Headache still present"
		d21sob = "Day 21 shortness of breath"
		d21sobstill = "Day 21 SOB still present"
		d21fever = "Day 21 Fever aches and or chills"
		d21feverstill = "Day 21 Fever aches and or chills still present"
		d21cough = "Day 21 Cough"
		d21coughstill = "Day 21 Cough still present"
		d21fatigue = "Day 21 severe fatigue"
		d21fatiguestill = "Day 21 severe fatigue still present"
		d21hospital = "Day 21 in the past week or since you last talked to staff have you been hospitalized or had an ER visit"
		d21comment = "Day 21 comments"
		crf_parent_name_FluVac = "CRF Parent Name"
		study_name_FluVac = "Study Name"
	;
	FORMAT
		hla2a hla2a_.
		consent_FluVac consent_FluVac_.
		age_FluVac age_FluVac_.
		agreefollowup agreefollowup_.
		welltoday welltoday_.
		notill notill_.
		eggallergy eggallergy_.
		vaccinereaction vaccinereaction_.
		reaction2yr reaction2yr_.
		toldnovaccine toldnovaccine_.
		guillainbarre guillainbarre_.
		nomci_dementia nomci_dementia_.
		nofluvac8mo nofluvac8mo_.
		afebrilepastmo afebrilepastmo_.
		immunosuppressant immunosuppressant_.
		dailyantiinflmeds dailyantiinflmeds_.
		ca_treatment ca_treatment_.
		anemic anemic_.
		eligibility_FluVac eligibility_FluVac_.
		day0reveligib day0reveligib_.
		day0fasting day0fasting_.
		day0blood day0blood_.
		d0locationrl d0locationrl_.
		d0locationspecify d0locationspecify_.
		day0bldrampm day0bldrampm_.
		admvaccine admvaccine_.
		instructions instructions_.
		day7fasting day7fasting_.
		day7blood day7blood_.
		d7locationrl d7locationrl_.
		d7locationspecify d7locationspecify_.
		day7bldrampm day7bldrampm_.
		d7chestpain d7chestpain_.
		d7vomiting d7vomiting_.
		d7headache d7headache_.
		d7sob d7sob_.
		d7fever d7fever_.
		d7cough d7cough_.
		d7fatigue d7fatigue_.
		d7hospital d7hospital_.
		day21fasting day21fasting_.
		day21blood day21blood_.
		d21locationrl d21locationrl_.
		d21locationspecify d21locationspecify_.
		day21bldrampm day21bldrampm_.
		d21chestpain d21chestpain_.
		d21vomiting d21vomiting_.
		d21headache d21headache_.
		d21sob d21sob_.
		d21fever d21fever_.
		d21cough d21cough_.
		d21fatigue d21fatigue_.
		d21hospital d21hospital_.
	;
RUN;


DATA blsa_flu_vaccine;
    SET WORK.IMPORT;
RUN;
