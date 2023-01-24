%let path_to_file = '../data-csv/blsa_der_medications.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE antacidmed_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE anticoagmed_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE antihistaminemed_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE antipsychoticmeds_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE antiviralabxmeds_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE asthmameds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cholesterolmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE chfmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cancermeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE copdmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dementiameds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE depressionmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE diabetesmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE gerdmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bpmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE laxativemeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE aspirinmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE edmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE osteoporosismeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE painmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE parkinsonmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sleepmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE thyroidmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE topicalmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE triglyceridemeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vitaminmineralmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vitamindmeds_file_
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

	INFORMAT antacidmed_file BEST32.;
	FORMAT antacidmed_file BEST12.;

	INFORMAT anticoagmed_file BEST32.;
	FORMAT anticoagmed_file BEST12.;

	INFORMAT antihistaminemed_file BEST32.;
	FORMAT antihistaminemed_file BEST12.;

	INFORMAT antipsychoticmeds BEST32.;
	FORMAT antipsychoticmeds BEST12.;

	INFORMAT antiviralabxmeds BEST32.;
	FORMAT antiviralabxmeds BEST12.;

	INFORMAT asthmameds_file BEST32.;
	FORMAT asthmameds_file BEST12.;

	INFORMAT cholesterolmeds_file BEST32.;
	FORMAT cholesterolmeds_file BEST12.;

	INFORMAT chfmeds_file BEST32.;
	FORMAT chfmeds_file BEST12.;

	INFORMAT cancermeds_file BEST32.;
	FORMAT cancermeds_file BEST12.;

	INFORMAT copdmeds_file BEST32.;
	FORMAT copdmeds_file BEST12.;

	INFORMAT dementiameds_file BEST32.;
	FORMAT dementiameds_file BEST12.;

	INFORMAT depressionmeds_file BEST32.;
	FORMAT depressionmeds_file BEST12.;

	INFORMAT diabetesmeds_file BEST32.;
	FORMAT diabetesmeds_file BEST12.;

	INFORMAT gerdmeds_file BEST32.;
	FORMAT gerdmeds_file BEST12.;

	INFORMAT bpmeds_file BEST32.;
	FORMAT bpmeds_file BEST12.;

	INFORMAT laxativemeds_file BEST32.;
	FORMAT laxativemeds_file BEST12.;

	INFORMAT aspirinmeds_file BEST32.;
	FORMAT aspirinmeds_file BEST12.;

	INFORMAT edmeds_file BEST32.;
	FORMAT edmeds_file BEST12.;

	INFORMAT osteoporosismeds_file BEST32.;
	FORMAT osteoporosismeds_file BEST12.;

	INFORMAT painmeds_file BEST32.;
	FORMAT painmeds_file BEST12.;

	INFORMAT parkinsonmeds_file BEST32.;
	FORMAT parkinsonmeds_file BEST12.;

	INFORMAT sleepmeds_file BEST32.;
	FORMAT sleepmeds_file BEST12.;

	INFORMAT thyroidmeds_file BEST32.;
	FORMAT thyroidmeds_file BEST12.;

	INFORMAT topicalmeds_file BEST32.;
	FORMAT topicalmeds_file BEST12.;

	INFORMAT triglyceridemeds_file BEST32.;
	FORMAT triglyceridemeds_file BEST12.;

	INFORMAT vitaminmineralmeds_file BEST32.;
	FORMAT vitaminmineralmeds_file BEST12.;

	INFORMAT vitamindmeds_file BEST32.;
	FORMAT vitamindmeds_file BEST12.;

	INPUT
		idno
		visit
		antacidmed_file
		anticoagmed_file
		antihistaminemed_file
		antipsychoticmeds
		antiviralabxmeds
		asthmameds_file
		cholesterolmeds_file
		chfmeds_file
		cancermeds_file
		copdmeds_file
		dementiameds_file
		depressionmeds_file
		diabetesmeds_file
		gerdmeds_file
		bpmeds_file
		laxativemeds_file
		aspirinmeds_file
		edmeds_file
		osteoporosismeds_file
		painmeds_file
		parkinsonmeds_file
		sleepmeds_file
		thyroidmeds_file
		topicalmeds_file
		triglyceridemeds_file
		vitaminmineralmeds_file
		vitamindmeds_file
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		idno = "BLSA ID"
		visit = "Visit Number"
		antacidmed_file = "Antacid Medication Brought to Clinic"
		anticoagmed_file = "Anticoagulant Medication Brought to Clinic"
		antihistaminemed_file = "Antihistamine Medication Brought to Clinic"
		antipsychoticmeds = "Antipsychotic Medication Brought to Clinic"
		antiviralabxmeds = "Antivirals and Antibiotics Medication Brought to Clinic"
		asthmameds_file = "Asthma Medication Brought to Clinic"
		cholesterolmeds_file = "Cholesterol Medication Brought to Clinic"
		chfmeds_file = "Congestive Heart Failure Medication Brought to Clinic"
		cancermeds_file = "Chemotherapy Medication Brought to Clinic"
		copdmeds_file = "Chronic Obstructive Pulmonary Disease Medication Brought to Clinic"
		dementiameds_file = "Dementia Medication Brought to Clinic"
		depressionmeds_file = "Depression Medication Brought to Clinic"
		diabetesmeds_file = "Diabetes Medication Brought to Clinic"
		gerdmeds_file = "Gastro-Esophageal Reflux Medication Brought to Clinic"
		bpmeds_file = "BP Medication Brought to Clinic"
		laxativemeds_file = "Laxatives Medication Brought to Clinic"
		aspirinmeds_file = "Low Dose Aspirin Brought to Clinic"
		edmeds_file = "Male Impotence Medication Brought to Clinic"
		osteoporosismeds_file = "Osteoporosis Medication Brought to Clinic"
		painmeds_file = "Pain Medication Brought to Clinic"
		parkinsonmeds_file = "Parkinson's Medication Brought to Clinic"
		sleepmeds_file = "Sleep Medication Brought to Clinic"
		thyroidmeds_file = "Thyroid Hormone Medication Brought to Clinic"
		topicalmeds_file = "Topical Medication Brought to Clinic"
		triglyceridemeds_file = "Triglycerides Medication Brought to Clinic"
		vitaminmineralmeds_file = "Vitamin or Mineral Medication Brought to Clinic"
		vitamindmeds_file = "Vitamin D Medication Brought to Clinic"
	;
	FORMAT
		antacidmed_file antacidmed_file_.
		anticoagmed_file anticoagmed_file_.
		antihistaminemed_file antihistaminemed_file_.
		antipsychoticmeds antipsychoticmeds_.
		antiviralabxmeds antiviralabxmeds_.
		asthmameds_file asthmameds_file_.
		cholesterolmeds_file cholesterolmeds_file_.
		chfmeds_file chfmeds_file_.
		cancermeds_file cancermeds_file_.
		copdmeds_file copdmeds_file_.
		dementiameds_file dementiameds_file_.
		depressionmeds_file depressionmeds_file_.
		diabetesmeds_file diabetesmeds_file_.
		gerdmeds_file gerdmeds_file_.
		bpmeds_file bpmeds_file_.
		laxativemeds_file laxativemeds_file_.
		aspirinmeds_file aspirinmeds_file_.
		edmeds_file edmeds_file_.
		osteoporosismeds_file osteoporosismeds_file_.
		painmeds_file painmeds_file_.
		parkinsonmeds_file parkinsonmeds_file_.
		sleepmeds_file sleepmeds_file_.
		thyroidmeds_file thyroidmeds_file_.
		topicalmeds_file topicalmeds_file_.
		triglyceridemeds_file triglyceridemeds_file_.
		vitaminmineralmeds_file vitaminmineralmeds_file_.
		vitamindmeds_file vitamindmeds_file_.
	;
RUN;


DATA blsa_der_medications;
    SET WORK.IMPORT;
RUN;
