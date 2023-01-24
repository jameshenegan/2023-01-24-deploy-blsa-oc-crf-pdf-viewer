%let path_to_file = '../data-csv/BLSA_Psychosocial_Stressors.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE currentlywork_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE yesworkq1_
		1 = 'a. All of the time'
		2 = 'b. Most of the time'
		3 = 'c. Sometimes'
		4 = 'd. Rarely'
		5 = 'e. Never'
	;

	VALUE yesworkq2_
		1 = 'a. All of the time'
		2 = 'b. Most of the time'
		3 = 'c. Sometimes'
		4 = 'd. Rarely'
		5 = 'e. Never'
	;

	VALUE yesworkq3_
		1 = 'a. All of the time'
		2 = 'b. Most of the time'
		3 = 'c. Sometimes'
		4 = 'd. Rarely'
		5 = 'e. Never'
	;

	VALUE yesworkq4_
		1 = 'a. All of the time'
		2 = 'b. Most of the time'
		3 = 'c. Sometimes'
		4 = 'd. Rarely'
		5 = 'e. Never'
	;

	VALUE noworkq1_
		1 = 'a. All of the time'
		2 = 'b. Most of the time'
		3 = 'c. Sometimes'
		4 = 'd. Rarely'
		5 = 'e. Never'
	;

	VALUE noworkq2_
		1 = 'a. All of the time'
		2 = 'b. Most of the time'
		3 = 'c. Sometimes'
		4 = 'd. Rarely'
		5 = 'e. Never'
	;

	VALUE noworkq3_
		1 = 'a. All of the time'
		2 = 'b. Most of the time'
		3 = 'c. Sometimes'
		4 = 'd. Rarely'
		5 = 'e. Never'
	;

	VALUE noworkq4_
		1 = 'a. All of the time'
		2 = 'b. Most of the time'
		3 = 'c. Sometimes'
		4 = 'd. Rarely'
		5 = 'e. Never'
	;

	VALUE discriminate5a_
		0 = '0 times'
		1 = '1 - 5 times '
		2 = '6 - 10 times'
		3 = '11 - 20 times'
		4 = '>20 times'
	;

	VALUE discriminate5b_
		0 = '0 times'
		1 = '1 - 5 times '
		2 = '6 - 10 times'
		3 = '11 - 20 times'
		4 = '>20 times'
	;

	VALUE discriminate5c_
		0 = '0 times'
		1 = '1 - 5 times '
		2 = '6 - 10 times'
		3 = '11 - 20 times'
		4 = '>20 times'
	;

	VALUE discriminate5d_
		0 = '0 times'
		1 = '1 - 5 times '
		2 = '6 - 10 times'
		3 = '11 - 20 times'
		4 = '>20 times'
	;

	VALUE discriminate5e_
		0 = '0 times'
		1 = '1 - 5 times '
		2 = '6 - 10 times'
		3 = '11 - 20 times'
		4 = '>20 times'
	;

	VALUE discriminate5f_
		0 = '0 times'
		1 = '1 - 5 times '
		2 = '6 - 10 times'
		3 = '11 - 20 times'
		4 = '>20 times'
	;

	VALUE discriminate5g_
		0 = '0 times'
		1 = '1 - 5 times '
		2 = '6 - 10 times'
		3 = '11 - 20 times'
		4 = '>20 times'
	;

	VALUE discriminate5h_
		0 = '0 times'
		1 = '1 - 5 times '
		2 = '6 - 10 times'
		3 = '11 - 20 times'
		4 = '>20 times'
	;

	VALUE eventsq6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq9_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq10_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq12_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq13_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq14_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq15_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq16_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq6a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq6ai_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq7a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq8a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq9a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq10a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq11a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq12a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq13a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq14a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq15a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq16a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq6b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq6bi_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq7b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq8b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq9b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq10b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq11b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq12b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq13b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq14b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq15b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eventsq16b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE childhoodq17_
		1 = 'Single'
		2 = 'Dual'
	;

	VALUE childhoodq17a_
		1 = '1. Woman'
		2 = '2. Man'
		3 = '3. Other'
	;

	VALUE childhoodq17b_
		1 = '1. Woman and Man'
		2 = '2. Woman and Woman'
		3 = '3. Man and Man'
		4 = '4. Other'
	;

	VALUE childhoodq18_
		1 = 'a. College or Higher'
		2 = 'b. Some College'
		3 = 'c. High School/GED'
		4 = 'd. Less than High School'
		5 = 'e. Unknown'
	;

	VALUE childhoodq19_
		1 = 'a. College or Higher'
		2 = 'b. Some College'
		3 = 'c. High School/GED'
		4 = 'd. Less than High School'
		5 = 'e. Unknown'
	;

	VALUE childhoodq20_
		1 = 'a. College or Higher'
		2 = 'b. Some College'
		3 = 'c. High School/GED'
		4 = 'd. Less than High School'
		5 = 'e. Unknown'
	;

	VALUE childhoodq21_
		1 = 'a. College or Higher'
		2 = 'b. Some College'
		3 = 'c. High School/GED'
		4 = 'd. Less than High School'
		5 = 'e. Unknown'
	;

	VALUE childhoodq22_
		1 = 'a. College or Higher'
		2 = 'b. Some College'
		3 = 'c. High School/GED'
		4 = 'd. Less than High School'
		5 = 'e. Unknown'
	;

	VALUE childhoodq23_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE childhoodq24_
		1 = 'Better off'
		2 = 'About the same as'
		3 = 'Worse off'
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

	INFORMAT crf_version_PsyStr $8.;
	FORMAT crf_version_PsyStr $8.;

	INFORMAT date_PsyStr YYMMDD10.;
	FORMAT date_PsyStr YYMMDD10.;

	INFORMAT currentlywork BEST32.;
	FORMAT currentlywork BEST12.;

	INFORMAT yesworkq1 BEST32.;
	FORMAT yesworkq1 BEST12.;

	INFORMAT yesworkq2 BEST32.;
	FORMAT yesworkq2 BEST12.;

	INFORMAT yesworkq3 BEST32.;
	FORMAT yesworkq3 BEST12.;

	INFORMAT yesworkq4 BEST32.;
	FORMAT yesworkq4 BEST12.;

	INFORMAT noworkq1 BEST32.;
	FORMAT noworkq1 BEST12.;

	INFORMAT noworkq2 BEST32.;
	FORMAT noworkq2 BEST12.;

	INFORMAT noworkq3 BEST32.;
	FORMAT noworkq3 BEST12.;

	INFORMAT noworkq4 BEST32.;
	FORMAT noworkq4 BEST12.;

	INFORMAT discriminate5a BEST32.;
	FORMAT discriminate5a BEST12.;

	INFORMAT discriminate5b BEST32.;
	FORMAT discriminate5b BEST12.;

	INFORMAT discriminate5c BEST32.;
	FORMAT discriminate5c BEST12.;

	INFORMAT discriminate5d BEST32.;
	FORMAT discriminate5d BEST12.;

	INFORMAT discriminate5e BEST32.;
	FORMAT discriminate5e BEST12.;

	INFORMAT discriminate5f BEST32.;
	FORMAT discriminate5f BEST12.;

	INFORMAT discriminate5g BEST32.;
	FORMAT discriminate5g BEST12.;

	INFORMAT discriminate5h BEST32.;
	FORMAT discriminate5h BEST12.;

	INFORMAT eventsq6 BEST32.;
	FORMAT eventsq6 BEST12.;

	INFORMAT eventsq7 BEST32.;
	FORMAT eventsq7 BEST12.;

	INFORMAT eventsq8 BEST32.;
	FORMAT eventsq8 BEST12.;

	INFORMAT eventsq9 BEST32.;
	FORMAT eventsq9 BEST12.;

	INFORMAT eventsq10 BEST32.;
	FORMAT eventsq10 BEST12.;

	INFORMAT eventsq11 BEST32.;
	FORMAT eventsq11 BEST12.;

	INFORMAT eventsq12 BEST32.;
	FORMAT eventsq12 BEST12.;

	INFORMAT eventsq13 BEST32.;
	FORMAT eventsq13 BEST12.;

	INFORMAT eventsq14 BEST32.;
	FORMAT eventsq14 BEST12.;

	INFORMAT eventsq15 BEST32.;
	FORMAT eventsq15 BEST12.;

	INFORMAT eventsq16 BEST32.;
	FORMAT eventsq16 BEST12.;

	INFORMAT eventsq6a BEST32.;
	FORMAT eventsq6a BEST12.;

	INFORMAT eventsq6ai BEST32.;
	FORMAT eventsq6ai BEST12.;

	INFORMAT eventsq7a BEST32.;
	FORMAT eventsq7a BEST12.;

	INFORMAT eventsq8a BEST32.;
	FORMAT eventsq8a BEST12.;

	INFORMAT eventsq9a BEST32.;
	FORMAT eventsq9a BEST12.;

	INFORMAT eventsq10a BEST32.;
	FORMAT eventsq10a BEST12.;

	INFORMAT eventsq11a BEST32.;
	FORMAT eventsq11a BEST12.;

	INFORMAT eventsq12a BEST32.;
	FORMAT eventsq12a BEST12.;

	INFORMAT eventsq13a BEST32.;
	FORMAT eventsq13a BEST12.;

	INFORMAT eventsq14a BEST32.;
	FORMAT eventsq14a BEST12.;

	INFORMAT eventsq15a BEST32.;
	FORMAT eventsq15a BEST12.;

	INFORMAT eventsq16a BEST32.;
	FORMAT eventsq16a BEST12.;

	INFORMAT eventsq6b BEST32.;
	FORMAT eventsq6b BEST12.;

	INFORMAT eventsq6bi BEST32.;
	FORMAT eventsq6bi BEST12.;

	INFORMAT eventsq7b BEST32.;
	FORMAT eventsq7b BEST12.;

	INFORMAT eventsq8b BEST32.;
	FORMAT eventsq8b BEST12.;

	INFORMAT eventsq9b BEST32.;
	FORMAT eventsq9b BEST12.;

	INFORMAT eventsq10b BEST32.;
	FORMAT eventsq10b BEST12.;

	INFORMAT eventsq11b BEST32.;
	FORMAT eventsq11b BEST12.;

	INFORMAT eventsq12b BEST32.;
	FORMAT eventsq12b BEST12.;

	INFORMAT eventsq13b BEST32.;
	FORMAT eventsq13b BEST12.;

	INFORMAT eventsq14b BEST32.;
	FORMAT eventsq14b BEST12.;

	INFORMAT eventsq15b BEST32.;
	FORMAT eventsq15b BEST12.;

	INFORMAT eventsq16b BEST32.;
	FORMAT eventsq16b BEST12.;

	INFORMAT childhoodq17 BEST32.;
	FORMAT childhoodq17 BEST12.;

	INFORMAT childhoodq17a BEST32.;
	FORMAT childhoodq17a BEST12.;

	INFORMAT childhoodq17b BEST32.;
	FORMAT childhoodq17b BEST12.;

	INFORMAT childhoodq18 BEST32.;
	FORMAT childhoodq18 BEST12.;

	INFORMAT childhoodq19 BEST32.;
	FORMAT childhoodq19 BEST12.;

	INFORMAT childhoodq20 BEST32.;
	FORMAT childhoodq20 BEST12.;

	INFORMAT childhoodq21 BEST32.;
	FORMAT childhoodq21 BEST12.;

	INFORMAT childhoodq22 BEST32.;
	FORMAT childhoodq22 BEST12.;

	INFORMAT childhoodq23 BEST32.;
	FORMAT childhoodq23 BEST12.;

	INFORMAT childhoodq24 BEST32.;
	FORMAT childhoodq24 BEST12.;

	INFORMAT eventsq16com $193.;
	FORMAT eventsq16com $193.;

	INFORMAT eventsq16acom $68.;
	FORMAT eventsq16acom $68.;

	INFORMAT crf_parent_name_PsyStr $27.;
	FORMAT crf_parent_name_PsyStr $27.;

	INFORMAT study_name_PsyStr $4.;
	FORMAT study_name_PsyStr $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_PsyStr
		date_PsyStr
		currentlywork
		yesworkq1
		yesworkq2
		yesworkq3
		yesworkq4
		noworkq1
		noworkq2
		noworkq3
		noworkq4
		discriminate5a
		discriminate5b
		discriminate5c
		discriminate5d
		discriminate5e
		discriminate5f
		discriminate5g
		discriminate5h
		eventsq6
		eventsq7
		eventsq8
		eventsq9
		eventsq10
		eventsq11
		eventsq12
		eventsq13
		eventsq14
		eventsq15
		eventsq16
		eventsq6a
		eventsq6ai
		eventsq7a
		eventsq8a
		eventsq9a
		eventsq10a
		eventsq11a
		eventsq12a
		eventsq13a
		eventsq14a
		eventsq15a
		eventsq16a
		eventsq6b
		eventsq6bi
		eventsq7b
		eventsq8b
		eventsq9b
		eventsq10b
		eventsq11b
		eventsq12b
		eventsq13b
		eventsq14b
		eventsq15b
		eventsq16b
		childhoodq17
		childhoodq17a
		childhoodq17b
		childhoodq18
		childhoodq19
		childhoodq20
		childhoodq21
		childhoodq22
		childhoodq23
		childhoodq24
		eventsq16com
		eventsq16acom
		crf_parent_name_PsyStr
		study_name_PsyStr
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
		crf_version_PsyStr = "CRF Version"
		date_PsyStr = "Date"
		currentlywork = "Are you currently employed"
		yesworkq1 = "How often does your job involve physical effort"
		yesworkq2 = "How often are you walking at your job"
		yesworkq3 = "How often do you sit for a long time at your job"
		yesworkq4 = "How often do you use your fingers to grasp/handle things at your job (excluding typing)"
		noworkq1 = "How often did your job involve physical effort"
		noworkq2 = "How often were you walking at your job"
		noworkq3 = "How often did you sit for a long time at your job"
		noworkq4 = "How often did you use your fingers to grasp/handle things at your job (excluding typing)"
		discriminate5a = "Were discouraged by a teacher from seeking higher education"
		discriminate5b = "You were not hired for a job"
		discriminate5c = "You were not given a promotion"
		discriminate5d = "You were fired"
		discriminate5e = "You were prevented from renting or buying a home in the neighborhood you wanted"
		discriminate5f = "You were hassled by the police"
		discriminate5g = "You were denied a bank loan"
		discriminate5h = "You were denied or provided inferior medical care"
		eventsq6 = "In the past year have you experienced a chronic disease or disability"
		eventsq7 = "In the past year have you experienced a frequent minor illnesses"
		eventsq8 = "In the past year have you experienced emotional problems"
		eventsq9 = "In the past year have you experienced alcohol/substance problems"
		eventsq10 = "In the past year have you experienced financial problems"
		eventsq11 = "In the past year have you experienced school/work problems"
		eventsq12 = "In the past year have you experienced difficulty finding/keeping a job"
		eventsq13 = "In the past year have you experienced marital/relationship problems"
		eventsq14 = "In the past year have you experienced legal problems"
		eventsq15 = "In the past year have you experienced difficulty getting along with others"
		eventsq16 = "In the past year have you experienced a difficulty not yet asked"
		eventsq6a = "Do you have a significant other"
		eventsq6ai = "Has your significant other experienced a chronic disease or disability in the past year"
		eventsq7a = "Has your significant other experienced frequent minor illnesses in the past year"
		eventsq8a = "Has your significant other experienced emotional problems in the past year"
		eventsq9a = "Has your significant other experienced alcohol/substance problems in the past year"
		eventsq10a = "Has your significant other experienced financial problems in the past year"
		eventsq11a = "Has your significant other experienced school/work problems in the past year"
		eventsq12a = "Has your significant other experienced difficulty finding/keeping a job in the past year"
		eventsq13a = "Has your significant other experienced marital/relationship problems in the past year"
		eventsq14a = "Has your significant other experienced legal problems in the past year"
		eventsq15a = "Has your significant other experienced difficulty getting along with others in the past year"
		eventsq16a = "Has your significant other experienced difficulty not yet asked in the past year"
		eventsq6b = "Do you have a child / children"
		eventsq6bi = "Has your child experienced a chronic disease or disability in the past year"
		eventsq7b = "Has our child experienced frequent minor illnesses in the past year"
		eventsq8b = "Has our child experienced emotional problems in the past year"
		eventsq9b = "Has our child experienced alcohol/substance problems in the past year"
		eventsq10b = "Has our child experienced financial problems in the past year"
		eventsq11b = "Has our child experienced school/work problems in the past year"
		eventsq12b = "Has our child experienced difficulty finding/keeping a job in the past year"
		eventsq13b = "Has our child experienced marital/relationship problems in the past year"
		eventsq14b = "Has our child experienced legal problems in the past year"
		eventsq15b = "Has our child experienced difficulty getting along with others in the past year"
		eventsq16b = "Has our child experienced difficulty not yet asked in the past year"
		childhoodq17 = "Were you raised in a single or dual parent/guardian household"
		childhoodq17a = "What is the gender of your parent/guardian"
		childhoodq17b = "What are the genders combinations of your parents/guardians"
		childhoodq18 = "What is the highest level of education your Mother/Stepmother/Female guardian completed"
		childhoodq19 = "What is the highest level of education your Father/Stepfather/Male guardian completed"
		childhoodq20 = "What is the highest level of education your parent/guardian completed"
		childhoodq21 = "What is the highest level of education your parent 1/guardian 1 completed"
		childhoodq22 = "What is the highest level of education your parent 2/guardian 2 completed"
		childhoodq23 = "As a child did your family ever receive government subsidies"
		childhoodq24 = "As a child how was your family's financial situation compared to other families"
		eventsq16com = "Explain yes You have experienced difficulty not yet asked"
		eventsq16acom = "Explain yes Your significant other experienced difficulty not yet asked"
		crf_parent_name_PsyStr = "CRF Parent Name"
		study_name_PsyStr = "Study Name"
	;
	FORMAT
		currentlywork currentlywork_.
		yesworkq1 yesworkq1_.
		yesworkq2 yesworkq2_.
		yesworkq3 yesworkq3_.
		yesworkq4 yesworkq4_.
		noworkq1 noworkq1_.
		noworkq2 noworkq2_.
		noworkq3 noworkq3_.
		noworkq4 noworkq4_.
		discriminate5a discriminate5a_.
		discriminate5b discriminate5b_.
		discriminate5c discriminate5c_.
		discriminate5d discriminate5d_.
		discriminate5e discriminate5e_.
		discriminate5f discriminate5f_.
		discriminate5g discriminate5g_.
		discriminate5h discriminate5h_.
		eventsq6 eventsq6_.
		eventsq7 eventsq7_.
		eventsq8 eventsq8_.
		eventsq9 eventsq9_.
		eventsq10 eventsq10_.
		eventsq11 eventsq11_.
		eventsq12 eventsq12_.
		eventsq13 eventsq13_.
		eventsq14 eventsq14_.
		eventsq15 eventsq15_.
		eventsq16 eventsq16_.
		eventsq6a eventsq6a_.
		eventsq6ai eventsq6ai_.
		eventsq7a eventsq7a_.
		eventsq8a eventsq8a_.
		eventsq9a eventsq9a_.
		eventsq10a eventsq10a_.
		eventsq11a eventsq11a_.
		eventsq12a eventsq12a_.
		eventsq13a eventsq13a_.
		eventsq14a eventsq14a_.
		eventsq15a eventsq15a_.
		eventsq16a eventsq16a_.
		eventsq6b eventsq6b_.
		eventsq6bi eventsq6bi_.
		eventsq7b eventsq7b_.
		eventsq8b eventsq8b_.
		eventsq9b eventsq9b_.
		eventsq10b eventsq10b_.
		eventsq11b eventsq11b_.
		eventsq12b eventsq12b_.
		eventsq13b eventsq13b_.
		eventsq14b eventsq14b_.
		eventsq15b eventsq15b_.
		eventsq16b eventsq16b_.
		childhoodq17 childhoodq17_.
		childhoodq17a childhoodq17a_.
		childhoodq17b childhoodq17b_.
		childhoodq18 childhoodq18_.
		childhoodq19 childhoodq19_.
		childhoodq20 childhoodq20_.
		childhoodq21 childhoodq21_.
		childhoodq22 childhoodq22_.
		childhoodq23 childhoodq23_.
		childhoodq24 childhoodq24_.
	;
RUN;


DATA blsa_psychosocial_stressors;
    SET WORK.IMPORT;
RUN;
