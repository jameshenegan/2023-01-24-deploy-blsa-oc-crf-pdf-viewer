%let path_to_file = '../data-csv/BLSA_Skin_Biopsy_Eligibility.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE provideinformedconsent_SkiBioEli_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE nohxbleedingdisorder_SkiBioEli_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE nomedsincrbleeding_SkiBioEli_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE nonsaids_SkiBioEli_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lessth81mgaspirin_SkiBioEli_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE noallergylocalanesthetic_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE noinfectionskincond_SkiBioEli_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE notpregnant_SkiBioEli_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eligibility_SkiBioEli_
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

	INFORMAT crf_version_SkiBioEli $8.;
	FORMAT crf_version_SkiBioEli $8.;

	INFORMAT obsdate_datecompleted_SkiBioEli YYMMDD10.;
	FORMAT obsdate_datecompleted_SkiBioEli YYMMDD10.;

	INFORMAT blank_SkiBioEli $1.;
	FORMAT blank_SkiBioEli $1.;

	INFORMAT testerid_SkiBioEli BEST32.;
	FORMAT testerid_SkiBioEli BEST12.;

	INFORMAT provideinformedconsent_SkiBioEli BEST32.;
	FORMAT provideinformedconsent_SkiBioEli BEST12.;

	INFORMAT nohxbleedingdisorder_SkiBioEli BEST32.;
	FORMAT nohxbleedingdisorder_SkiBioEli BEST12.;

	INFORMAT nomedsincrbleeding_SkiBioEli BEST32.;
	FORMAT nomedsincrbleeding_SkiBioEli BEST12.;

	INFORMAT nonsaids_SkiBioEli BEST32.;
	FORMAT nonsaids_SkiBioEli BEST12.;

	INFORMAT lessth81mgaspirin_SkiBioEli BEST32.;
	FORMAT lessth81mgaspirin_SkiBioEli BEST12.;

	INFORMAT noallergylocalanesthetic BEST32.;
	FORMAT noallergylocalanesthetic BEST12.;

	INFORMAT noinfectionskincond_SkiBioEli BEST32.;
	FORMAT noinfectionskincond_SkiBioEli BEST12.;

	INFORMAT notpregnant_SkiBioEli BEST32.;
	FORMAT notpregnant_SkiBioEli BEST12.;

	INFORMAT eligibility_SkiBioEli BEST32.;
	FORMAT eligibility_SkiBioEli BEST12.;

	INFORMAT tester_SkiBioEli $21.;
	FORMAT tester_SkiBioEli $21.;

	INFORMAT crf_parent_name_SkiBioEli $28.;
	FORMAT crf_parent_name_SkiBioEli $28.;

	INFORMAT study_name_SkiBioEli $4.;
	FORMAT study_name_SkiBioEli $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_SkiBioEli
		obsdate_datecompleted_SkiBioEli
		blank_SkiBioEli
		testerid_SkiBioEli
		provideinformedconsent_SkiBioEli
		nohxbleedingdisorder_SkiBioEli
		nomedsincrbleeding_SkiBioEli
		nonsaids_SkiBioEli
		lessth81mgaspirin_SkiBioEli
		noallergylocalanesthetic
		noinfectionskincond_SkiBioEli
		notpregnant_SkiBioEli
		eligibility_SkiBioEli
		tester_SkiBioEli
		crf_parent_name_SkiBioEli
		study_name_SkiBioEli
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
		crf_version_SkiBioEli = "CRF Version"
		obsdate_datecompleted_SkiBioEli = "Date Completed"
		blank_SkiBioEli = "Blank Form"
		testerid_SkiBioEli = "Tester ID"
		provideinformedconsent_SkiBioEli = "Able to provide informed consent"
		nohxbleedingdisorder_SkiBioEli = "Does not have history of bleeding disorder"
		nomedsincrbleeding_SkiBioEli = "Does not take medications that will increase bleeding"
		nonsaids_SkiBioEli = "Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
		lessth81mgaspirin_SkiBioEli = "Does not take more than 81 mg Aspirin a day"
		noallergylocalanesthetic = "Is not allergic to Lidocaine or other local anesthetic"
		noinfectionskincond_SkiBioEli = "Has no active infection or chronic skin condition around biopsy site"
		notpregnant_SkiBioEli = "Is not pregnant"
		eligibility_SkiBioEli = "Eligibility"
		tester_SkiBioEli = "Tester"
		crf_parent_name_SkiBioEli = "CRF Parent Name"
		study_name_SkiBioEli = "Study Name"
	;
	FORMAT
		provideinformedconsent_SkiBioEli provideinformedconsent_SkiBioEli_.
		nohxbleedingdisorder_SkiBioEli nohxbleedingdisorder_SkiBioEli_.
		nomedsincrbleeding_SkiBioEli nomedsincrbleeding_SkiBioEli_.
		nonsaids_SkiBioEli nonsaids_SkiBioEli_.
		lessth81mgaspirin_SkiBioEli lessth81mgaspirin_SkiBioEli_.
		noallergylocalanesthetic noallergylocalanesthetic_.
		noinfectionskincond_SkiBioEli noinfectionskincond_SkiBioEli_.
		notpregnant_SkiBioEli notpregnant_SkiBioEli_.
		eligibility_SkiBioEli eligibility_SkiBioEli_.
	;
RUN;


DATA blsa_skin_biopsy_eligibility;
    SET WORK.IMPORT;
RUN;
