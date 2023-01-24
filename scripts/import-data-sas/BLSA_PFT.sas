%let path_to_file = '../data-csv/BLSA_PFT.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE pft01a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01c_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01d_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01e_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01f_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01g_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01h_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01i_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01j_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft02_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft03_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft03a_
		0 = 'Other (please specify)'
		1 = 'Contraindication'
		5 = 'Physical problems'
		6 = 'Cognitive'
		7 = 'Physical and Cognitive'
		8 = 'Refused to perform the test'
		9 = 'Technical problems'
	;

	VALUE pft04_
		0 = 'None good trials were achieved'
		1 = 'Only one good trial was achieved'
		2 = 'Two good trials were achieved'
		3 = 'Yes (3)'
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

	INFORMAT crf_version_PFT $8.;
	FORMAT crf_version_PFT $8.;

	INFORMAT obsdate_pftdate YYMMDD10.;
	FORMAT obsdate_pftdate YYMMDD10.;

	INFORMAT blank_PFT $1.;
	FORMAT blank_PFT $1.;

	INFORMAT pfttid BEST32.;
	FORMAT pfttid BEST12.;

	INFORMAT pft01a BEST32.;
	FORMAT pft01a BEST12.;

	INFORMAT pft01b BEST32.;
	FORMAT pft01b BEST12.;

	INFORMAT pft01c BEST32.;
	FORMAT pft01c BEST12.;

	INFORMAT pft01d BEST32.;
	FORMAT pft01d BEST12.;

	INFORMAT pft01e BEST32.;
	FORMAT pft01e BEST12.;

	INFORMAT pft01f BEST32.;
	FORMAT pft01f BEST12.;

	INFORMAT pft01g BEST32.;
	FORMAT pft01g BEST12.;

	INFORMAT pft01h BEST32.;
	FORMAT pft01h BEST12.;

	INFORMAT pft01i BEST32.;
	FORMAT pft01i BEST12.;

	INFORMAT pft01j BEST32.;
	FORMAT pft01j BEST12.;

	INFORMAT pft02 BEST32.;
	FORMAT pft02 BEST12.;

	INFORMAT pft02a BEST32.;
	FORMAT pft02a BEST12.;

	INFORMAT pft03 BEST32.;
	FORMAT pft03 BEST12.;

	INFORMAT pft03a BEST32.;
	FORMAT pft03a BEST12.;

	INFORMAT pft03c $70.;
	FORMAT pft03c $70.;

	INFORMAT pft04 BEST32.;
	FORMAT pft04 BEST12.;

	INFORMAT auto_id_PFT BEST32.;
	FORMAT auto_id_PFT BEST12.;

	INFORMAT pft01 $1.;
	FORMAT pft01 $1.;

	INFORMAT crf_parent_name_PFT $8.;
	FORMAT crf_parent_name_PFT $8.;

	INFORMAT item_group_repeat_PFT BEST32.;
	FORMAT item_group_repeat_PFT BEST12.;

	INFORMAT pft01_pft01a $6.;
	FORMAT pft01_pft01a $6.;

	INFORMAT pft01_pft01b $1.;
	FORMAT pft01_pft01b $1.;

	INFORMAT pft01_pft01c $1.;
	FORMAT pft01_pft01c $1.;

	INFORMAT pft01_pft01d $6.;
	FORMAT pft01_pft01d $6.;

	INFORMAT pft01_pft01e $1.;
	FORMAT pft01_pft01e $1.;

	INFORMAT pft01_pft01f $6.;
	FORMAT pft01_pft01f $6.;

	INFORMAT pft01_pft01g $1.;
	FORMAT pft01_pft01g $1.;

	INFORMAT pft01_pft01h $1.;
	FORMAT pft01_pft01h $1.;

	INFORMAT pft01_pft01i $6.;
	FORMAT pft01_pft01i $6.;

	INFORMAT study_name_PFT $4.;
	FORMAT study_name_PFT $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_PFT
		obsdate_pftdate
		blank_PFT
		pfttid
		pft01a
		pft01b
		pft01c
		pft01d
		pft01e
		pft01f
		pft01g
		pft01h
		pft01i
		pft01j
		pft02
		pft02a
		pft03
		pft03a
		pft03c
		pft04
		auto_id_PFT
		pft01
		crf_parent_name_PFT
		item_group_repeat_PFT
		pft01_pft01a
		pft01_pft01b
		pft01_pft01c
		pft01_pft01d
		pft01_pft01e
		pft01_pft01f
		pft01_pft01g
		pft01_pft01h
		pft01_pft01i
		study_name_PFT
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
		crf_version_PFT = "CRF Version"
		obsdate_pftdate = "Date Completed"
		blank_PFT = "Blank Form"
		pfttid = "Tester ID"
		pft01a = "Myocardial infarcaion"
		pft01b = "Unstable Angina"
		pft01c = "Surgery abdomen thorax past 3 months"
		pft01d = "surgery eye past 3 months"
		pft01e = "Syncope with forced exhalation"
		pft01f = "Recent upper respiratory infection"
		pft01g = "Poulmonary embolus within past 3 months"
		pft01h = "Thoratic abdominal or cerebral aneurysm"
		pft01i = "Uncontrolled hypertension"
		pft01j = "Acute disease processes e g nausea vomiting etc"
		pft02 = "Is participant on a bronchodilator"
		pft02a = "How long ago was it taken"
		pft03 = "Was PFT performed"
		pft03a = "Reason test not performed or unsatisfactory"
		pft03c = "Other reason test not performed or unsatisfactory"
		pft04 = "All 3 good trials were achieved"
		auto_id_PFT = "Unique Teleform Number"
		pft01 = "Contraindications"
		crf_parent_name_PFT = "CRF Parent Name"
		item_group_repeat_PFT = "Item Group Repeate"
		pft01_pft01a = "Contraindications : Myocardial infarction within past 3 months (Checkbox Indicator)"
		pft01_pft01b = "Contraindications : Unstable angina (Checkbox Indicator)"
		pft01_pft01c = "Contraindications : Surgery (abdomen thorax) within past 3 months (Checkbox Indicator)"
		pft01_pft01d = "Contraindications : Surgery (eye) within past 3 months (Checkbox Indicator)"
		pft01_pft01e = "Contraindications : Syncope with forced exhalation (Checkbox Indicator)"
		pft01_pft01f = "Contraindications : Recent URI (upper respiratory infection) (Checkbox Indicator)"
		pft01_pft01g = "Contraindications : Pulmonary Embolus within past 3 mo (Checkbox Indicator)"
		pft01_pft01h = "Contraindications : Thoracic Abdominal or Cerebral aneurysm (Checkbox Indicator)"
		pft01_pft01i = "Contraindications : Uncontrolled Hypertension (Checkbox Indicator)"
		study_name_PFT = "Study Name"
	;
	FORMAT
		pft01a pft01a_.
		pft01b pft01b_.
		pft01c pft01c_.
		pft01d pft01d_.
		pft01e pft01e_.
		pft01f pft01f_.
		pft01g pft01g_.
		pft01h pft01h_.
		pft01i pft01i_.
		pft01j pft01j_.
		pft02 pft02_.
		pft03 pft03_.
		pft03a pft03a_.
		pft04 pft04_.
	;
RUN;


DATA blsa_pft;
    SET WORK.IMPORT;
RUN;
