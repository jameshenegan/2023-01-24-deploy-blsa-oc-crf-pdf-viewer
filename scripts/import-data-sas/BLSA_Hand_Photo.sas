%let path_to_file = '../data-csv/BLSA_Hand_Photo.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE hphdone_
		0 = 'None'
		1 = 'Both'
		2 = 'Left only'
		3 = 'Right only'
	;

	VALUE hphrnd_
		555 = 'Physical problems'
		666 = 'Cognitive problems'
		888 = 'Refused'
		999 = 'Technical problems'
	;

	VALUE hphqa1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hphqb1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hphqa2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hphqb2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hphqa3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hphqb3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hphqa4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hphqb4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hphqa5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hphqb5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hphqa6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hphqb6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hpha0b_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha1ab_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha1bb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha1cb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha2ab_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha2bb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha2cb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha3ab_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha3bb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha3cb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha4ab_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha4bb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha4cb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha5ab_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha5bb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha5cb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha0e_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha1ae_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha1be_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha1ce_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha2ae_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha2be_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha2ce_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha3ae_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha3be_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha3ce_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha4ae_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha4be_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha4ce_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha5ae_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha5be_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha5ce_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha0d_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha1ad_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha1bd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha1cd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha2ad_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha2bd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha2cd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha3ad_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha3bd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha3cd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha4ad_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha4bd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha4cd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha5ad_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha5bd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hpha5cd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb0b_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb1ab_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb1bb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb1cb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb2ab_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb2bb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb2cb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb3ab_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb3bb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb3cb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb4ab_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb4bb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb4cb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb5ab_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb5bb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb5cb_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb0e_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb1ae_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb1be_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb1ce_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb2ae_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb2be_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb2ce_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb3ae_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb3be_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb3ce_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb4ae_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb4be_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb4ce_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb5ae_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb5be_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb5ce_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb0d_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb1ad_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb1bd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb1cd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb2ad_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb2bd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb2cd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb3ad_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb3bd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb3cd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb4ad_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb4bd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb4cd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb5ad_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb5bd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
	;

	VALUE hphb5cd_
		0 = 'Absent'
		1 = 'Possible'
		2 = 'Present'
		9 = 'Unknown'
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

	INFORMAT crf_version_HanPho $7.;
	FORMAT crf_version_HanPho $7.;

	INFORMAT obsdate_hphdate YYMMDD10.;
	FORMAT obsdate_hphdate YYMMDD10.;

	INFORMAT hphqdat YYMMDD10.;
	FORMAT hphqdat YYMMDD10.;

	INFORMAT blank_HanPho $1.;
	FORMAT blank_HanPho $1.;

	INFORMAT hphqtid BEST32.;
	FORMAT hphqtid BEST12.;

	INFORMAT hphdone BEST32.;
	FORMAT hphdone BEST12.;

	INFORMAT hphrnd BEST32.;
	FORMAT hphrnd BEST12.;

	INFORMAT hphqa1 BEST32.;
	FORMAT hphqa1 BEST12.;

	INFORMAT hphqb1 BEST32.;
	FORMAT hphqb1 BEST12.;

	INFORMAT hphqa2 BEST32.;
	FORMAT hphqa2 BEST12.;

	INFORMAT hphqb2 BEST32.;
	FORMAT hphqb2 BEST12.;

	INFORMAT hphqa3 BEST32.;
	FORMAT hphqa3 BEST12.;

	INFORMAT hphqb3 BEST32.;
	FORMAT hphqb3 BEST12.;

	INFORMAT hphqa4 BEST32.;
	FORMAT hphqa4 BEST12.;

	INFORMAT hphqb4 BEST32.;
	FORMAT hphqb4 BEST12.;

	INFORMAT hphqa5 BEST32.;
	FORMAT hphqa5 BEST12.;

	INFORMAT hphqb5 BEST32.;
	FORMAT hphqb5 BEST12.;

	INFORMAT hphqa6 BEST32.;
	FORMAT hphqa6 BEST12.;

	INFORMAT hphqb6 BEST32.;
	FORMAT hphqb6 BEST12.;

	INFORMAT hphitd BEST32.;
	FORMAT hphitd BEST12.;

	INFORMAT hpha0b BEST32.;
	FORMAT hpha0b BEST12.;

	INFORMAT hpha1ab BEST32.;
	FORMAT hpha1ab BEST12.;

	INFORMAT hpha1bb BEST32.;
	FORMAT hpha1bb BEST12.;

	INFORMAT hpha1cb BEST32.;
	FORMAT hpha1cb BEST12.;

	INFORMAT hpha2ab BEST32.;
	FORMAT hpha2ab BEST12.;

	INFORMAT hpha2bb BEST32.;
	FORMAT hpha2bb BEST12.;

	INFORMAT hpha2cb BEST32.;
	FORMAT hpha2cb BEST12.;

	INFORMAT hpha3ab BEST32.;
	FORMAT hpha3ab BEST12.;

	INFORMAT hpha3bb BEST32.;
	FORMAT hpha3bb BEST12.;

	INFORMAT hpha3cb BEST32.;
	FORMAT hpha3cb BEST12.;

	INFORMAT hpha4ab BEST32.;
	FORMAT hpha4ab BEST12.;

	INFORMAT hpha4bb BEST32.;
	FORMAT hpha4bb BEST12.;

	INFORMAT hpha4cb BEST32.;
	FORMAT hpha4cb BEST12.;

	INFORMAT hpha5ab BEST32.;
	FORMAT hpha5ab BEST12.;

	INFORMAT hpha5bb BEST32.;
	FORMAT hpha5bb BEST12.;

	INFORMAT hpha5cb BEST32.;
	FORMAT hpha5cb BEST12.;

	INFORMAT hpha0e BEST32.;
	FORMAT hpha0e BEST12.;

	INFORMAT hpha1ae BEST32.;
	FORMAT hpha1ae BEST12.;

	INFORMAT hpha1be BEST32.;
	FORMAT hpha1be BEST12.;

	INFORMAT hpha1ce BEST32.;
	FORMAT hpha1ce BEST12.;

	INFORMAT hpha2ae BEST32.;
	FORMAT hpha2ae BEST12.;

	INFORMAT hpha2be BEST32.;
	FORMAT hpha2be BEST12.;

	INFORMAT hpha2ce BEST32.;
	FORMAT hpha2ce BEST12.;

	INFORMAT hpha3ae BEST32.;
	FORMAT hpha3ae BEST12.;

	INFORMAT hpha3be BEST32.;
	FORMAT hpha3be BEST12.;

	INFORMAT hpha3ce BEST32.;
	FORMAT hpha3ce BEST12.;

	INFORMAT hpha4ae BEST32.;
	FORMAT hpha4ae BEST12.;

	INFORMAT hpha4be BEST32.;
	FORMAT hpha4be BEST12.;

	INFORMAT hpha4ce BEST32.;
	FORMAT hpha4ce BEST12.;

	INFORMAT hpha5ae BEST32.;
	FORMAT hpha5ae BEST12.;

	INFORMAT hpha5be BEST32.;
	FORMAT hpha5be BEST12.;

	INFORMAT hpha5ce BEST32.;
	FORMAT hpha5ce BEST12.;

	INFORMAT hpha0d BEST32.;
	FORMAT hpha0d BEST12.;

	INFORMAT hpha1ad BEST32.;
	FORMAT hpha1ad BEST12.;

	INFORMAT hpha1bd BEST32.;
	FORMAT hpha1bd BEST12.;

	INFORMAT hpha1cd BEST32.;
	FORMAT hpha1cd BEST12.;

	INFORMAT hpha2ad BEST32.;
	FORMAT hpha2ad BEST12.;

	INFORMAT hpha2bd BEST32.;
	FORMAT hpha2bd BEST12.;

	INFORMAT hpha2cd BEST32.;
	FORMAT hpha2cd BEST12.;

	INFORMAT hpha3ad BEST32.;
	FORMAT hpha3ad BEST12.;

	INFORMAT hpha3bd BEST32.;
	FORMAT hpha3bd BEST12.;

	INFORMAT hpha3cd BEST32.;
	FORMAT hpha3cd BEST12.;

	INFORMAT hpha4ad BEST32.;
	FORMAT hpha4ad BEST12.;

	INFORMAT hpha4bd BEST32.;
	FORMAT hpha4bd BEST12.;

	INFORMAT hpha4cd BEST32.;
	FORMAT hpha4cd BEST12.;

	INFORMAT hpha5ad BEST32.;
	FORMAT hpha5ad BEST12.;

	INFORMAT hpha5bd BEST32.;
	FORMAT hpha5bd BEST12.;

	INFORMAT hpha5cd BEST32.;
	FORMAT hpha5cd BEST12.;

	INFORMAT hphb0b BEST32.;
	FORMAT hphb0b BEST12.;

	INFORMAT hphb1ab BEST32.;
	FORMAT hphb1ab BEST12.;

	INFORMAT hphb1bb BEST32.;
	FORMAT hphb1bb BEST12.;

	INFORMAT hphb1cb BEST32.;
	FORMAT hphb1cb BEST12.;

	INFORMAT hphb2ab BEST32.;
	FORMAT hphb2ab BEST12.;

	INFORMAT hphb2bb BEST32.;
	FORMAT hphb2bb BEST12.;

	INFORMAT hphb2cb BEST32.;
	FORMAT hphb2cb BEST12.;

	INFORMAT hphb3ab BEST32.;
	FORMAT hphb3ab BEST12.;

	INFORMAT hphb3bb BEST32.;
	FORMAT hphb3bb BEST12.;

	INFORMAT hphb3cb BEST32.;
	FORMAT hphb3cb BEST12.;

	INFORMAT hphb4ab BEST32.;
	FORMAT hphb4ab BEST12.;

	INFORMAT hphb4bb BEST32.;
	FORMAT hphb4bb BEST12.;

	INFORMAT hphb4cb BEST32.;
	FORMAT hphb4cb BEST12.;

	INFORMAT hphb5ab BEST32.;
	FORMAT hphb5ab BEST12.;

	INFORMAT hphb5bb BEST32.;
	FORMAT hphb5bb BEST12.;

	INFORMAT hphb5cb BEST32.;
	FORMAT hphb5cb BEST12.;

	INFORMAT hphb0e BEST32.;
	FORMAT hphb0e BEST12.;

	INFORMAT hphb1ae BEST32.;
	FORMAT hphb1ae BEST12.;

	INFORMAT hphb1be BEST32.;
	FORMAT hphb1be BEST12.;

	INFORMAT hphb1ce BEST32.;
	FORMAT hphb1ce BEST12.;

	INFORMAT hphb2ae BEST32.;
	FORMAT hphb2ae BEST12.;

	INFORMAT hphb2be BEST32.;
	FORMAT hphb2be BEST12.;

	INFORMAT hphb2ce BEST32.;
	FORMAT hphb2ce BEST12.;

	INFORMAT hphb3ae BEST32.;
	FORMAT hphb3ae BEST12.;

	INFORMAT hphb3be BEST32.;
	FORMAT hphb3be BEST12.;

	INFORMAT hphb3ce BEST32.;
	FORMAT hphb3ce BEST12.;

	INFORMAT hphb4ae BEST32.;
	FORMAT hphb4ae BEST12.;

	INFORMAT hphb4be BEST32.;
	FORMAT hphb4be BEST12.;

	INFORMAT hphb4ce BEST32.;
	FORMAT hphb4ce BEST12.;

	INFORMAT hphb5ae BEST32.;
	FORMAT hphb5ae BEST12.;

	INFORMAT hphb5be BEST32.;
	FORMAT hphb5be BEST12.;

	INFORMAT hphb5ce BEST32.;
	FORMAT hphb5ce BEST12.;

	INFORMAT hphb0d BEST32.;
	FORMAT hphb0d BEST12.;

	INFORMAT hphb1ad BEST32.;
	FORMAT hphb1ad BEST12.;

	INFORMAT hphb1bd BEST32.;
	FORMAT hphb1bd BEST12.;

	INFORMAT hphb1cd BEST32.;
	FORMAT hphb1cd BEST12.;

	INFORMAT hphb2ad BEST32.;
	FORMAT hphb2ad BEST12.;

	INFORMAT hphb2bd BEST32.;
	FORMAT hphb2bd BEST12.;

	INFORMAT hphb2cd BEST32.;
	FORMAT hphb2cd BEST12.;

	INFORMAT hphb3ad BEST32.;
	FORMAT hphb3ad BEST12.;

	INFORMAT hphb3bd BEST32.;
	FORMAT hphb3bd BEST12.;

	INFORMAT hphb3cd BEST32.;
	FORMAT hphb3cd BEST12.;

	INFORMAT hphb4ad BEST32.;
	FORMAT hphb4ad BEST12.;

	INFORMAT hphb4bd BEST32.;
	FORMAT hphb4bd BEST12.;

	INFORMAT hphb4cd BEST32.;
	FORMAT hphb4cd BEST12.;

	INFORMAT hphb5ad BEST32.;
	FORMAT hphb5ad BEST12.;

	INFORMAT hphb5bd BEST32.;
	FORMAT hphb5bd BEST12.;

	INFORMAT hphb5cd BEST32.;
	FORMAT hphb5cd BEST12.;

	INFORMAT auto_id_HanPho BEST32.;
	FORMAT auto_id_HanPho BEST12.;

	INFORMAT crf_parent_name_HanPho $15.;
	FORMAT crf_parent_name_HanPho $15.;

	INFORMAT study_name_HanPho $4.;
	FORMAT study_name_HanPho $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_HanPho
		obsdate_hphdate
		hphqdat
		blank_HanPho
		hphqtid
		hphdone
		hphrnd
		hphqa1
		hphqb1
		hphqa2
		hphqb2
		hphqa3
		hphqb3
		hphqa4
		hphqb4
		hphqa5
		hphqb5
		hphqa6
		hphqb6
		hphitd
		hpha0b
		hpha1ab
		hpha1bb
		hpha1cb
		hpha2ab
		hpha2bb
		hpha2cb
		hpha3ab
		hpha3bb
		hpha3cb
		hpha4ab
		hpha4bb
		hpha4cb
		hpha5ab
		hpha5bb
		hpha5cb
		hpha0e
		hpha1ae
		hpha1be
		hpha1ce
		hpha2ae
		hpha2be
		hpha2ce
		hpha3ae
		hpha3be
		hpha3ce
		hpha4ae
		hpha4be
		hpha4ce
		hpha5ae
		hpha5be
		hpha5ce
		hpha0d
		hpha1ad
		hpha1bd
		hpha1cd
		hpha2ad
		hpha2bd
		hpha2cd
		hpha3ad
		hpha3bd
		hpha3cd
		hpha4ad
		hpha4bd
		hpha4cd
		hpha5ad
		hpha5bd
		hpha5cd
		hphb0b
		hphb1ab
		hphb1bb
		hphb1cb
		hphb2ab
		hphb2bb
		hphb2cb
		hphb3ab
		hphb3bb
		hphb3cb
		hphb4ab
		hphb4bb
		hphb4cb
		hphb5ab
		hphb5bb
		hphb5cb
		hphb0e
		hphb1ae
		hphb1be
		hphb1ce
		hphb2ae
		hphb2be
		hphb2ce
		hphb3ae
		hphb3be
		hphb3ce
		hphb4ae
		hphb4be
		hphb4ce
		hphb5ae
		hphb5be
		hphb5ce
		hphb0d
		hphb1ad
		hphb1bd
		hphb1cd
		hphb2ad
		hphb2bd
		hphb2cd
		hphb3ad
		hphb3bd
		hphb3cd
		hphb4ad
		hphb4bd
		hphb4cd
		hphb5ad
		hphb5bd
		hphb5cd
		auto_id_HanPho
		crf_parent_name_HanPho
		study_name_HanPho
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
		crf_version_HanPho = "CRF Version"
		obsdate_hphdate = "Date Completed"
		hphqdat = "Date Completed"
		blank_HanPho = "Blank"
		hphqtid = "Tester ID"
		hphdone = "Hand Photo which hand"
		hphrnd = "Reason not done"
		hphqa1 = "R resolution maximized"
		hphqb1 = "L resolution maximized"
		hphqa2 = "R background non reflective"
		hphqb2 = "L background non reflective"
		hphqa3 = "R ID and visit clearly legible"
		hphqb3 = "L ID and visit clearly legible"
		hphqa4 = "R fingers slightly spread apart and thumb slightly extended"
		hphqb4 = "L fingers slightly spread apart and thumb slightly extended"
		hphqa5 = "R are all DIPs visible in the photo"
		hphqb5 = "L are all DIPs visible in the photo"
		hphqa6 = "R Is the wrist visible"
		hphqb6 = "L Is the wrist visible"
		hphitd = "Tester ID"
		hpha0b = "R Bony prominence wrist"
		hpha1ab = "R Bony prominence CMC 1st"
		hpha1bb = "R Bony prominence IP 1st"
		hpha1cb = "R Bony prominence MCP 1st"
		hpha2ab = "R Bony prominence DIP 2nd"
		hpha2bb = "R Bony prominence PIP 2nd"
		hpha2cb = "R Bony prominence MCP 2nd"
		hpha3ab = "R Bony prominence DIP 3rd"
		hpha3bb = "R Bony prominenceP IP 3rd"
		hpha3cb = "R Bony prominence MCP 3rd"
		hpha4ab = "R Bony prominence DIP 4th"
		hpha4bb = "R Bony prominence PIP 4th"
		hpha4cb = "R Bony prominence MCP 4th"
		hpha5ab = "R Bony prominence DIP 5th"
		hpha5bb = "R Bony prominence PIP 5th"
		hpha5cb = "R Bony prominence MCP 5th"
		hpha0e = "R Soft Tissue Enlargement"
		hpha1ae = "R Soft Tissue Enlargement CMC 1st"
		hpha1be = "R Soft Tissue Enlargement IP 1st"
		hpha1ce = "R Soft Tissue Enlargement MCP 1st"
		hpha2ae = "R Soft Tissue Enlargement DIP 2nd"
		hpha2be = "R Soft Tissue Enlargement PIP 2nd"
		hpha2ce = "R Soft Tissue Enlargement MCP 2nd"
		hpha3ae = "R Soft Tissue Enlargement DIP 3rd"
		hpha3be = "R Soft Tissue Enlargement PIP 3rd"
		hpha3ce = "R Soft Tissue Enlargement MCP 3rd"
		hpha4ae = "R Soft Tissue Enlargement DIP 4th"
		hpha4be = "R Soft Tissue Enlargement PIP 4th"
		hpha4ce = "R Soft Tissue Enlargement MCP 4th"
		hpha5ae = "R Soft Tissue Enlargement DIP 5th"
		hpha5be = "R Soft Tissue Enlargement PIP 5th"
		hpha5ce = "R Soft Tissue Enlargement MCP 5th"
		hpha0d = "R Deformity"
		hpha1ad = "R Deformity CMC1st"
		hpha1bd = "R Deformity IP 1st"
		hpha1cd = "R Deformity MCP 1st"
		hpha2ad = "R Deformity DIP 2nd"
		hpha2bd = "R Deformity PIP 2nd"
		hpha2cd = "R Deformity MCP 2nd"
		hpha3ad = "R Deformity DIP 3rd"
		hpha3bd = "R Deformity PIP 3rd"
		hpha3cd = "R Deformity MCP 3rd"
		hpha4ad = "R Deformity DIP 4th"
		hpha4bd = "R Deformity PIP 4th"
		hpha4cd = "R Deformity MCP 4th"
		hpha5ad = "R Deformity DIP 5th"
		hpha5bd = "R Deformity PIP 5th"
		hpha5cd = "R Deformity MCP 5th"
		hphb0b = "L Bony prominence wrist"
		hphb1ab = "L Bony prominence CMC 1st"
		hphb1bb = "L Bony prominence IP 1st"
		hphb1cb = "L Bony prominence MCP 1st"
		hphb2ab = "L Bony prominence DIP 2nd"
		hphb2bb = "L Bony prominence PIP 2nd"
		hphb2cb = "L Bony prominence MCP 2nd"
		hphb3ab = "L Bony prominence DIP 3rd"
		hphb3bb = "L Bony prominenceP IP 3rd"
		hphb3cb = "L Bony prominence MCP 3rd"
		hphb4ab = "L Bony prominence DIP 4th"
		hphb4bb = "L Bony prominence PIP 4th"
		hphb4cb = "L Bony prominence MCP 4th"
		hphb5ab = "L Bony prominence DIP 5th"
		hphb5bb = "L Bony prominence PIP 5th"
		hphb5cb = "L Bony prominence MCP 5th"
		hphb0e = "L Soft Tissue Enlargement"
		hphb1ae = "L Soft Tissue Enlargement CMC 1st"
		hphb1be = "L Soft Tissue Enlargement IP 1st"
		hphb1ce = "L Soft Tissue Enlargement MCP 1st"
		hphb2ae = "L Soft Tissue Enlargement DIP 2nd"
		hphb2be = "L Soft Tissue Enlargement PIP 2nd"
		hphb2ce = "L Soft Tissue Enlargement MCP 2nd"
		hphb3ae = "L Soft Tissue Enlargement DIP 3rd"
		hphb3be = "L Soft Tissue Enlargement PIP 3rd"
		hphb3ce = "L Soft Tissue Enlargement MCP 3rd"
		hphb4ae = "L Soft Tissue Enlargement DIP 4th"
		hphb4be = "L Soft Tissue Enlargement PIP 4th"
		hphb4ce = "L Soft Tissue Enlargement MCP 4th"
		hphb5ae = "L Soft Tissue Enlargement DIP 5th"
		hphb5be = "L Soft Tissue Enlargement PIP 5th"
		hphb5ce = "L Soft Tissue Enlargement MCP 5th"
		hphb0d = "L Deformity"
		hphb1ad = "L Deformity CMC1st"
		hphb1bd = "L Deformity IP 1st"
		hphb1cd = "L Deformity MCP 1st"
		hphb2ad = "L Deformity DIP 2nd"
		hphb2bd = "L Deformity PIP 2nd"
		hphb2cd = "L Deformity MCP 2nd"
		hphb3ad = "L Deformity DIP 3rd"
		hphb3bd = "L Deformity PIP 3rd"
		hphb3cd = "L Deformity MCP 3rd"
		hphb4ad = "L Deformity DIP 4th"
		hphb4bd = "L Deformity PIP 4th"
		hphb4cd = "L Deformity MCP 4th"
		hphb5ad = "L Deformity DIP 5th"
		hphb5bd = "L Deformity PIP 5th"
		hphb5cd = "L Deformity MCP 5th"
		auto_id_HanPho = "Unique Teleform Number"
		crf_parent_name_HanPho = "CRF Parent Name"
		study_name_HanPho = "Study Name"
	;
	FORMAT
		hphdone hphdone_.
		hphrnd hphrnd_.
		hphqa1 hphqa1_.
		hphqb1 hphqb1_.
		hphqa2 hphqa2_.
		hphqb2 hphqb2_.
		hphqa3 hphqa3_.
		hphqb3 hphqb3_.
		hphqa4 hphqa4_.
		hphqb4 hphqb4_.
		hphqa5 hphqa5_.
		hphqb5 hphqb5_.
		hphqa6 hphqa6_.
		hphqb6 hphqb6_.
		hpha0b hpha0b_.
		hpha1ab hpha1ab_.
		hpha1bb hpha1bb_.
		hpha1cb hpha1cb_.
		hpha2ab hpha2ab_.
		hpha2bb hpha2bb_.
		hpha2cb hpha2cb_.
		hpha3ab hpha3ab_.
		hpha3bb hpha3bb_.
		hpha3cb hpha3cb_.
		hpha4ab hpha4ab_.
		hpha4bb hpha4bb_.
		hpha4cb hpha4cb_.
		hpha5ab hpha5ab_.
		hpha5bb hpha5bb_.
		hpha5cb hpha5cb_.
		hpha0e hpha0e_.
		hpha1ae hpha1ae_.
		hpha1be hpha1be_.
		hpha1ce hpha1ce_.
		hpha2ae hpha2ae_.
		hpha2be hpha2be_.
		hpha2ce hpha2ce_.
		hpha3ae hpha3ae_.
		hpha3be hpha3be_.
		hpha3ce hpha3ce_.
		hpha4ae hpha4ae_.
		hpha4be hpha4be_.
		hpha4ce hpha4ce_.
		hpha5ae hpha5ae_.
		hpha5be hpha5be_.
		hpha5ce hpha5ce_.
		hpha0d hpha0d_.
		hpha1ad hpha1ad_.
		hpha1bd hpha1bd_.
		hpha1cd hpha1cd_.
		hpha2ad hpha2ad_.
		hpha2bd hpha2bd_.
		hpha2cd hpha2cd_.
		hpha3ad hpha3ad_.
		hpha3bd hpha3bd_.
		hpha3cd hpha3cd_.
		hpha4ad hpha4ad_.
		hpha4bd hpha4bd_.
		hpha4cd hpha4cd_.
		hpha5ad hpha5ad_.
		hpha5bd hpha5bd_.
		hpha5cd hpha5cd_.
		hphb0b hphb0b_.
		hphb1ab hphb1ab_.
		hphb1bb hphb1bb_.
		hphb1cb hphb1cb_.
		hphb2ab hphb2ab_.
		hphb2bb hphb2bb_.
		hphb2cb hphb2cb_.
		hphb3ab hphb3ab_.
		hphb3bb hphb3bb_.
		hphb3cb hphb3cb_.
		hphb4ab hphb4ab_.
		hphb4bb hphb4bb_.
		hphb4cb hphb4cb_.
		hphb5ab hphb5ab_.
		hphb5bb hphb5bb_.
		hphb5cb hphb5cb_.
		hphb0e hphb0e_.
		hphb1ae hphb1ae_.
		hphb1be hphb1be_.
		hphb1ce hphb1ce_.
		hphb2ae hphb2ae_.
		hphb2be hphb2be_.
		hphb2ce hphb2ce_.
		hphb3ae hphb3ae_.
		hphb3be hphb3be_.
		hphb3ce hphb3ce_.
		hphb4ae hphb4ae_.
		hphb4be hphb4be_.
		hphb4ce hphb4ce_.
		hphb5ae hphb5ae_.
		hphb5be hphb5be_.
		hphb5ce hphb5ce_.
		hphb0d hphb0d_.
		hphb1ad hphb1ad_.
		hphb1bd hphb1bd_.
		hphb1cd hphb1cd_.
		hphb2ad hphb2ad_.
		hphb2bd hphb2bd_.
		hphb2cd hphb2cd_.
		hphb3ad hphb3ad_.
		hphb3bd hphb3bd_.
		hphb3cd hphb3cd_.
		hphb4ad hphb4ad_.
		hphb4bd hphb4bd_.
		hphb4cd hphb4cd_.
		hphb5ad hphb5ad_.
		hphb5bd hphb5bd_.
		hphb5cd hphb5cd_.
	;
RUN;


DATA blsa_hand_photo;
    SET WORK.IMPORT;
RUN;
