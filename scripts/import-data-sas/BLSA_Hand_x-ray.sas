%let path_to_file = '../data-csv/BLSA_Hand_x-ray.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE hdx000_
		0 = 'None'
		1 = 'Both'
		2 = 'Left only'
		3 = 'Right only'
	;

	VALUE hdxqa1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqb1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqa2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqb2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqa3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqb3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqa4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqb4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqa5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqb5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqa6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqb6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqa7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqb7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqa8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxqb8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hdxa0o_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa1ao_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa1bo_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa2ao_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa2bo_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa3ao_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa3bo_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa4ao_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa4bo_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa5ao_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa5bo_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa0n_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa1an_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa1bn_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa2an_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa2bn_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa3an_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa3bn_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa4an_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa4bn_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa5an_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa5bn_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxa0s_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa1as_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa1bs_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa2as_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa2bs_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa3as_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa3bs_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa4as_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa4bs_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa5as_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa5bs_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa0d_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa1ad_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa1bd_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa2ad_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa2bd_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa3ad_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa3bd_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa4ad_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa4bd_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa5ad_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa5bd_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa0c_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa1ac_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa1bc_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa2ac_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa2bc_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa3ac_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa3bc_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa4ac_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa4bc_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa5ac_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa5bc_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa0t_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa1at_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa1bt_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa2at_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa2bt_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa3at_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa3bt_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa4at_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa4bt_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa5at_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxa5bt_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb0o_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb1ao_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb1bo_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb2ao_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb2bo_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb3ao_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb3bo_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb4ao_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb4bo_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb5ao_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb5bo_
		0 = 'Normal (absent)'
		1 = 'Possible (detached)'
		2 = 'OARSI Grade 1'
		3 = 'OARSI Grade 2'
		4 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb0n_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb1an_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb1bn_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb2an_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb2bn_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb3an_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb3bn_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb4an_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb4bn_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb5an_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb5bn_
		0 = 'Normal'
		1 = 'OARSI Grade 1'
		2 = 'OARSI Grade 2'
		3 = 'OARSI Grade 3'
		9 = 'Unknown'
	;

	VALUE hdxb0s_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb1as_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb1bs_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb2as_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb2bs_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb3as_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb3bs_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb4as_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb4bs_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb5as_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb5bs_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb0d_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb1ad_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb1bd_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb2ad_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb2bd_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb3ad_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb3bd_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb4ad_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb4bd_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb5ad_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb5bd_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb0c_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb1ac_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb1bc_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb2ac_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb2bc_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb3ac_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb3bc_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb4ac_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb4bc_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb5ac_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb5bc_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb0t_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb1at_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb1bt_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb2at_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb2bt_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb3at_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb3bt_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb4at_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb4bt_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb5at_
		0 = 'Absent'
		1 = 'Present'
		9 = 'Unknown'
	;

	VALUE hdxb5bt_
		0 = 'Absent'
		1 = 'Present'
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

	INFORMAT crf_version_Hanxra $7.;
	FORMAT crf_version_Hanxra $7.;

	INFORMAT obsdate_hdxdat2 YYMMDD10.;
	FORMAT obsdate_hdxdat2 YYMMDD10.;

	INFORMAT hdxqdat YYMMDD10.;
	FORMAT hdxqdat YYMMDD10.;

	INFORMAT blank_Hanxra $1.;
	FORMAT blank_Hanxra $1.;

	INFORMAT hdxqtid BEST32.;
	FORMAT hdxqtid BEST12.;

	INFORMAT hdx000 BEST32.;
	FORMAT hdx000 BEST12.;

	INFORMAT hdxqa1 BEST32.;
	FORMAT hdxqa1 BEST12.;

	INFORMAT hdxqb1 BEST32.;
	FORMAT hdxqb1 BEST12.;

	INFORMAT hdxqa2 BEST32.;
	FORMAT hdxqa2 BEST12.;

	INFORMAT hdxqb2 BEST32.;
	FORMAT hdxqb2 BEST12.;

	INFORMAT hdxqa3 BEST32.;
	FORMAT hdxqa3 BEST12.;

	INFORMAT hdxqb3 BEST32.;
	FORMAT hdxqb3 BEST12.;

	INFORMAT hdxqa4 BEST32.;
	FORMAT hdxqa4 BEST12.;

	INFORMAT hdxqb4 BEST32.;
	FORMAT hdxqb4 BEST12.;

	INFORMAT hdxqa5 BEST32.;
	FORMAT hdxqa5 BEST12.;

	INFORMAT hdxqb5 BEST32.;
	FORMAT hdxqb5 BEST12.;

	INFORMAT hdxqa6 BEST32.;
	FORMAT hdxqa6 BEST12.;

	INFORMAT hdxqb6 BEST32.;
	FORMAT hdxqb6 BEST12.;

	INFORMAT hdxqa7 BEST32.;
	FORMAT hdxqa7 BEST12.;

	INFORMAT hdxqb7 BEST32.;
	FORMAT hdxqb7 BEST12.;

	INFORMAT hdxqa8 BEST32.;
	FORMAT hdxqa8 BEST12.;

	INFORMAT hdxqb8 BEST32.;
	FORMAT hdxqb8 BEST12.;

	INFORMAT hdxtid BEST32.;
	FORMAT hdxtid BEST12.;

	INFORMAT hdxdate YYMMDD10.;
	FORMAT hdxdate YYMMDD10.;

	INFORMAT hdxtid3 BEST32.;
	FORMAT hdxtid3 BEST12.;

	INFORMAT hdxdat3 YYMMDD10.;
	FORMAT hdxdat3 YYMMDD10.;

	INFORMAT hdxa0o BEST32.;
	FORMAT hdxa0o BEST12.;

	INFORMAT hdxa1ao BEST32.;
	FORMAT hdxa1ao BEST12.;

	INFORMAT hdxa1bo BEST32.;
	FORMAT hdxa1bo BEST12.;

	INFORMAT hdxa2ao BEST32.;
	FORMAT hdxa2ao BEST12.;

	INFORMAT hdxa2bo BEST32.;
	FORMAT hdxa2bo BEST12.;

	INFORMAT hdxa3ao BEST32.;
	FORMAT hdxa3ao BEST12.;

	INFORMAT hdxa3bo BEST32.;
	FORMAT hdxa3bo BEST12.;

	INFORMAT hdxa4ao BEST32.;
	FORMAT hdxa4ao BEST12.;

	INFORMAT hdxa4bo BEST32.;
	FORMAT hdxa4bo BEST12.;

	INFORMAT hdxa5ao BEST32.;
	FORMAT hdxa5ao BEST12.;

	INFORMAT hdxa5bo BEST32.;
	FORMAT hdxa5bo BEST12.;

	INFORMAT hdxa0n BEST32.;
	FORMAT hdxa0n BEST12.;

	INFORMAT hdxa1an BEST32.;
	FORMAT hdxa1an BEST12.;

	INFORMAT hdxa1bn BEST32.;
	FORMAT hdxa1bn BEST12.;

	INFORMAT hdxa2an BEST32.;
	FORMAT hdxa2an BEST12.;

	INFORMAT hdxa2bn BEST32.;
	FORMAT hdxa2bn BEST12.;

	INFORMAT hdxa3an BEST32.;
	FORMAT hdxa3an BEST12.;

	INFORMAT hdxa3bn BEST32.;
	FORMAT hdxa3bn BEST12.;

	INFORMAT hdxa4an BEST32.;
	FORMAT hdxa4an BEST12.;

	INFORMAT hdxa4bn BEST32.;
	FORMAT hdxa4bn BEST12.;

	INFORMAT hdxa5an BEST32.;
	FORMAT hdxa5an BEST12.;

	INFORMAT hdxa5bn BEST32.;
	FORMAT hdxa5bn BEST12.;

	INFORMAT hdxa0s BEST32.;
	FORMAT hdxa0s BEST12.;

	INFORMAT hdxa1as BEST32.;
	FORMAT hdxa1as BEST12.;

	INFORMAT hdxa1bs BEST32.;
	FORMAT hdxa1bs BEST12.;

	INFORMAT hdxa2as BEST32.;
	FORMAT hdxa2as BEST12.;

	INFORMAT hdxa2bs BEST32.;
	FORMAT hdxa2bs BEST12.;

	INFORMAT hdxa3as BEST32.;
	FORMAT hdxa3as BEST12.;

	INFORMAT hdxa3bs BEST32.;
	FORMAT hdxa3bs BEST12.;

	INFORMAT hdxa4as BEST32.;
	FORMAT hdxa4as BEST12.;

	INFORMAT hdxa4bs BEST32.;
	FORMAT hdxa4bs BEST12.;

	INFORMAT hdxa5as BEST32.;
	FORMAT hdxa5as BEST12.;

	INFORMAT hdxa5bs BEST32.;
	FORMAT hdxa5bs BEST12.;

	INFORMAT hdxa0d BEST32.;
	FORMAT hdxa0d BEST12.;

	INFORMAT hdxa1ad BEST32.;
	FORMAT hdxa1ad BEST12.;

	INFORMAT hdxa1bd BEST32.;
	FORMAT hdxa1bd BEST12.;

	INFORMAT hdxa2ad BEST32.;
	FORMAT hdxa2ad BEST12.;

	INFORMAT hdxa2bd BEST32.;
	FORMAT hdxa2bd BEST12.;

	INFORMAT hdxa3ad BEST32.;
	FORMAT hdxa3ad BEST12.;

	INFORMAT hdxa3bd BEST32.;
	FORMAT hdxa3bd BEST12.;

	INFORMAT hdxa4ad BEST32.;
	FORMAT hdxa4ad BEST12.;

	INFORMAT hdxa4bd BEST32.;
	FORMAT hdxa4bd BEST12.;

	INFORMAT hdxa5ad BEST32.;
	FORMAT hdxa5ad BEST12.;

	INFORMAT hdxa5bd BEST32.;
	FORMAT hdxa5bd BEST12.;

	INFORMAT hdxa0c BEST32.;
	FORMAT hdxa0c BEST12.;

	INFORMAT hdxa1ac BEST32.;
	FORMAT hdxa1ac BEST12.;

	INFORMAT hdxa1bc BEST32.;
	FORMAT hdxa1bc BEST12.;

	INFORMAT hdxa2ac BEST32.;
	FORMAT hdxa2ac BEST12.;

	INFORMAT hdxa2bc BEST32.;
	FORMAT hdxa2bc BEST12.;

	INFORMAT hdxa3ac BEST32.;
	FORMAT hdxa3ac BEST12.;

	INFORMAT hdxa3bc BEST32.;
	FORMAT hdxa3bc BEST12.;

	INFORMAT hdxa4ac BEST32.;
	FORMAT hdxa4ac BEST12.;

	INFORMAT hdxa4bc BEST32.;
	FORMAT hdxa4bc BEST12.;

	INFORMAT hdxa5ac BEST32.;
	FORMAT hdxa5ac BEST12.;

	INFORMAT hdxa5bc BEST32.;
	FORMAT hdxa5bc BEST12.;

	INFORMAT hdxa0t BEST32.;
	FORMAT hdxa0t BEST12.;

	INFORMAT hdxa1at BEST32.;
	FORMAT hdxa1at BEST12.;

	INFORMAT hdxa1bt BEST32.;
	FORMAT hdxa1bt BEST12.;

	INFORMAT hdxa2at BEST32.;
	FORMAT hdxa2at BEST12.;

	INFORMAT hdxa2bt BEST32.;
	FORMAT hdxa2bt BEST12.;

	INFORMAT hdxa3at BEST32.;
	FORMAT hdxa3at BEST12.;

	INFORMAT hdxa3bt BEST32.;
	FORMAT hdxa3bt BEST12.;

	INFORMAT hdxa4at BEST32.;
	FORMAT hdxa4at BEST12.;

	INFORMAT hdxa4bt BEST32.;
	FORMAT hdxa4bt BEST12.;

	INFORMAT hdxa5at BEST32.;
	FORMAT hdxa5at BEST12.;

	INFORMAT hdxa5bt BEST32.;
	FORMAT hdxa5bt BEST12.;

	INFORMAT hdxaks $1.;
	FORMAT hdxaks $1.;

	INFORMAT hdxtid2 BEST32.;
	FORMAT hdxtid2 BEST12.;

	INFORMAT hdxtid4 BEST32.;
	FORMAT hdxtid4 BEST12.;

	INFORMAT hdxdat4 YYMMDD10.;
	FORMAT hdxdat4 YYMMDD10.;

	INFORMAT hdxb0o BEST32.;
	FORMAT hdxb0o BEST12.;

	INFORMAT hdxb1ao BEST32.;
	FORMAT hdxb1ao BEST12.;

	INFORMAT hdxb1bo BEST32.;
	FORMAT hdxb1bo BEST12.;

	INFORMAT hdxb2ao BEST32.;
	FORMAT hdxb2ao BEST12.;

	INFORMAT hdxb2bo BEST32.;
	FORMAT hdxb2bo BEST12.;

	INFORMAT hdxb3ao BEST32.;
	FORMAT hdxb3ao BEST12.;

	INFORMAT hdxb3bo BEST32.;
	FORMAT hdxb3bo BEST12.;

	INFORMAT hdxb4ao BEST32.;
	FORMAT hdxb4ao BEST12.;

	INFORMAT hdxb4bo BEST32.;
	FORMAT hdxb4bo BEST12.;

	INFORMAT hdxb5ao BEST32.;
	FORMAT hdxb5ao BEST12.;

	INFORMAT hdxb5bo BEST32.;
	FORMAT hdxb5bo BEST12.;

	INFORMAT hdxb0n BEST32.;
	FORMAT hdxb0n BEST12.;

	INFORMAT hdxb1an BEST32.;
	FORMAT hdxb1an BEST12.;

	INFORMAT hdxb1bn BEST32.;
	FORMAT hdxb1bn BEST12.;

	INFORMAT hdxb2an BEST32.;
	FORMAT hdxb2an BEST12.;

	INFORMAT hdxb2bn BEST32.;
	FORMAT hdxb2bn BEST12.;

	INFORMAT hdxb3an BEST32.;
	FORMAT hdxb3an BEST12.;

	INFORMAT hdxb3bn BEST32.;
	FORMAT hdxb3bn BEST12.;

	INFORMAT hdxb4an BEST32.;
	FORMAT hdxb4an BEST12.;

	INFORMAT hdxb4bn BEST32.;
	FORMAT hdxb4bn BEST12.;

	INFORMAT hdxb5an BEST32.;
	FORMAT hdxb5an BEST12.;

	INFORMAT hdxb5bn BEST32.;
	FORMAT hdxb5bn BEST12.;

	INFORMAT hdxb0s BEST32.;
	FORMAT hdxb0s BEST12.;

	INFORMAT hdxb1as BEST32.;
	FORMAT hdxb1as BEST12.;

	INFORMAT hdxb1bs BEST32.;
	FORMAT hdxb1bs BEST12.;

	INFORMAT hdxb2as BEST32.;
	FORMAT hdxb2as BEST12.;

	INFORMAT hdxb2bs BEST32.;
	FORMAT hdxb2bs BEST12.;

	INFORMAT hdxb3as BEST32.;
	FORMAT hdxb3as BEST12.;

	INFORMAT hdxb3bs BEST32.;
	FORMAT hdxb3bs BEST12.;

	INFORMAT hdxb4as BEST32.;
	FORMAT hdxb4as BEST12.;

	INFORMAT hdxb4bs BEST32.;
	FORMAT hdxb4bs BEST12.;

	INFORMAT hdxb5as BEST32.;
	FORMAT hdxb5as BEST12.;

	INFORMAT hdxb5bs BEST32.;
	FORMAT hdxb5bs BEST12.;

	INFORMAT hdxb0d BEST32.;
	FORMAT hdxb0d BEST12.;

	INFORMAT hdxb1ad BEST32.;
	FORMAT hdxb1ad BEST12.;

	INFORMAT hdxb1bd BEST32.;
	FORMAT hdxb1bd BEST12.;

	INFORMAT hdxb2ad BEST32.;
	FORMAT hdxb2ad BEST12.;

	INFORMAT hdxb2bd BEST32.;
	FORMAT hdxb2bd BEST12.;

	INFORMAT hdxb3ad BEST32.;
	FORMAT hdxb3ad BEST12.;

	INFORMAT hdxb3bd BEST32.;
	FORMAT hdxb3bd BEST12.;

	INFORMAT hdxb4ad BEST32.;
	FORMAT hdxb4ad BEST12.;

	INFORMAT hdxb4bd BEST32.;
	FORMAT hdxb4bd BEST12.;

	INFORMAT hdxb5ad BEST32.;
	FORMAT hdxb5ad BEST12.;

	INFORMAT hdxb5bd BEST32.;
	FORMAT hdxb5bd BEST12.;

	INFORMAT hdxb0c BEST32.;
	FORMAT hdxb0c BEST12.;

	INFORMAT hdxb1ac BEST32.;
	FORMAT hdxb1ac BEST12.;

	INFORMAT hdxb1bc BEST32.;
	FORMAT hdxb1bc BEST12.;

	INFORMAT hdxb2ac BEST32.;
	FORMAT hdxb2ac BEST12.;

	INFORMAT hdxb2bc BEST32.;
	FORMAT hdxb2bc BEST12.;

	INFORMAT hdxb3ac BEST32.;
	FORMAT hdxb3ac BEST12.;

	INFORMAT hdxb3bc BEST32.;
	FORMAT hdxb3bc BEST12.;

	INFORMAT hdxb4ac BEST32.;
	FORMAT hdxb4ac BEST12.;

	INFORMAT hdxb4bc BEST32.;
	FORMAT hdxb4bc BEST12.;

	INFORMAT hdxb5ac BEST32.;
	FORMAT hdxb5ac BEST12.;

	INFORMAT hdxb5bc BEST32.;
	FORMAT hdxb5bc BEST12.;

	INFORMAT hdxb0t BEST32.;
	FORMAT hdxb0t BEST12.;

	INFORMAT hdxb1at BEST32.;
	FORMAT hdxb1at BEST12.;

	INFORMAT hdxb1bt BEST32.;
	FORMAT hdxb1bt BEST12.;

	INFORMAT hdxb2at BEST32.;
	FORMAT hdxb2at BEST12.;

	INFORMAT hdxb2bt BEST32.;
	FORMAT hdxb2bt BEST12.;

	INFORMAT hdxb3at BEST32.;
	FORMAT hdxb3at BEST12.;

	INFORMAT hdxb3bt BEST32.;
	FORMAT hdxb3bt BEST12.;

	INFORMAT hdxb4at BEST32.;
	FORMAT hdxb4at BEST12.;

	INFORMAT hdxb4bt BEST32.;
	FORMAT hdxb4bt BEST12.;

	INFORMAT hdxb5at BEST32.;
	FORMAT hdxb5at BEST12.;

	INFORMAT hdxb5bt BEST32.;
	FORMAT hdxb5bt BEST12.;

	INFORMAT hdxbks $1.;
	FORMAT hdxbks $1.;

	INFORMAT auto_id_Hanxra BEST32.;
	FORMAT auto_id_Hanxra BEST12.;

	INFORMAT crf_parent_name_Hanxra $15.;
	FORMAT crf_parent_name_Hanxra $15.;

	INFORMAT study_name_Hanxra $4.;
	FORMAT study_name_Hanxra $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_Hanxra
		obsdate_hdxdat2
		hdxqdat
		blank_Hanxra
		hdxqtid
		hdx000
		hdxqa1
		hdxqb1
		hdxqa2
		hdxqb2
		hdxqa3
		hdxqb3
		hdxqa4
		hdxqb4
		hdxqa5
		hdxqb5
		hdxqa6
		hdxqb6
		hdxqa7
		hdxqb7
		hdxqa8
		hdxqb8
		hdxtid
		hdxdate
		hdxtid3
		hdxdat3
		hdxa0o
		hdxa1ao
		hdxa1bo
		hdxa2ao
		hdxa2bo
		hdxa3ao
		hdxa3bo
		hdxa4ao
		hdxa4bo
		hdxa5ao
		hdxa5bo
		hdxa0n
		hdxa1an
		hdxa1bn
		hdxa2an
		hdxa2bn
		hdxa3an
		hdxa3bn
		hdxa4an
		hdxa4bn
		hdxa5an
		hdxa5bn
		hdxa0s
		hdxa1as
		hdxa1bs
		hdxa2as
		hdxa2bs
		hdxa3as
		hdxa3bs
		hdxa4as
		hdxa4bs
		hdxa5as
		hdxa5bs
		hdxa0d
		hdxa1ad
		hdxa1bd
		hdxa2ad
		hdxa2bd
		hdxa3ad
		hdxa3bd
		hdxa4ad
		hdxa4bd
		hdxa5ad
		hdxa5bd
		hdxa0c
		hdxa1ac
		hdxa1bc
		hdxa2ac
		hdxa2bc
		hdxa3ac
		hdxa3bc
		hdxa4ac
		hdxa4bc
		hdxa5ac
		hdxa5bc
		hdxa0t
		hdxa1at
		hdxa1bt
		hdxa2at
		hdxa2bt
		hdxa3at
		hdxa3bt
		hdxa4at
		hdxa4bt
		hdxa5at
		hdxa5bt
		hdxaks
		hdxtid2
		hdxtid4
		hdxdat4
		hdxb0o
		hdxb1ao
		hdxb1bo
		hdxb2ao
		hdxb2bo
		hdxb3ao
		hdxb3bo
		hdxb4ao
		hdxb4bo
		hdxb5ao
		hdxb5bo
		hdxb0n
		hdxb1an
		hdxb1bn
		hdxb2an
		hdxb2bn
		hdxb3an
		hdxb3bn
		hdxb4an
		hdxb4bn
		hdxb5an
		hdxb5bn
		hdxb0s
		hdxb1as
		hdxb1bs
		hdxb2as
		hdxb2bs
		hdxb3as
		hdxb3bs
		hdxb4as
		hdxb4bs
		hdxb5as
		hdxb5bs
		hdxb0d
		hdxb1ad
		hdxb1bd
		hdxb2ad
		hdxb2bd
		hdxb3ad
		hdxb3bd
		hdxb4ad
		hdxb4bd
		hdxb5ad
		hdxb5bd
		hdxb0c
		hdxb1ac
		hdxb1bc
		hdxb2ac
		hdxb2bc
		hdxb3ac
		hdxb3bc
		hdxb4ac
		hdxb4bc
		hdxb5ac
		hdxb5bc
		hdxb0t
		hdxb1at
		hdxb1bt
		hdxb2at
		hdxb2bt
		hdxb3at
		hdxb3bt
		hdxb4at
		hdxb4bt
		hdxb5at
		hdxb5bt
		hdxbks
		auto_id_Hanxra
		crf_parent_name_Hanxra
		study_name_Hanxra
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
		crf_version_Hanxra = "CRF Version"
		obsdate_hdxdat2 = "L date"
		hdxqdat = "Date checking completed"
		blank_Hanxra = "Blank"
		hdxqtid = "Checker Tester ID"
		hdx000 = "Which hand submitted for interpretation"
		hdxqa1 = "R markers on each film in location that does not obscure any structure"
		hdxqb1 = "L markers on each film in location that does not obscure any structure"
		hdxqa2 = "R index finger aligned with radius along the long axis of the cassette"
		hdxqb2 = "L index finger aligned with radius along the long axis of the cassette"
		hdxqa3 = "R fingers slightly spread apart and the thumb slightly extended"
		hdxqb3 = "L fingers slightly spread apart and the thumb slightly extended"
		hdxqa4 = "R ALL DIPs visible in the film"
		hdxqb4 = "L ALL DIPs visible in the film"
		hdxqa5 = "R wrist visible"
		hdxqb5 = "L wrist visible"
		hdxqa6 = "R any hardware or artifact visible"
		hdxqb6 = "L any hardware or artifact visible"
		hdxqa7 = "R film quality optimally depict the trabeculae and joints"
		hdxqb7 = "L film quality optimally depict the trabeculae and joints"
		hdxqa8 = "R soft tissue visible"
		hdxqb8 = "L soft tissue visible"
		hdxtid = "Tester 1 ID Right"
		hdxdate = "R date"
		hdxtid3 = "Tester 2 ID Right"
		hdxdat3 = "R date T2"
		hdxa0o = "R wrist Osteophytes"
		hdxa1ao = "R CMP 1st Osteophytes"
		hdxa1bo = "R IP 1st Osteophytes"
		hdxa2ao = "R DIP 2nd Osteophytes"
		hdxa2bo = "R PIP 2nd Osteophytes"
		hdxa3ao = "R DIP 3rd Osteophytes"
		hdxa3bo = "R PIP 3rd Osteophytes"
		hdxa4ao = "R DIP 4th Osteophytes"
		hdxa4bo = "R PIP 4th Osteophytes"
		hdxa5ao = "R DIP 5th Osteophytes"
		hdxa5bo = "R PIP 5th Osteophytes"
		hdxa0n = "R wrist Narrowing"
		hdxa1an = "R CMP 1st Narrowing"
		hdxa1bn = "R IP 1st Narrowing"
		hdxa2an = "R DIP 2nd Narrowing"
		hdxa2bn = "R PIP 2nd Narrowing"
		hdxa3an = "R DIP 3rd Narrowing"
		hdxa3bn = "R PIP 3rd Narrowing"
		hdxa4an = "R DIP 4th Narrowing"
		hdxa4bn = "R PIP 4th Narrowing"
		hdxa5an = "R DIP 5th Narrowing"
		hdxa5bn = "R PIP 5th Narrowing"
		hdxa0s = "R wrist Sclerosis"
		hdxa1as = "R CMP 1st Sclerosis"
		hdxa1bs = "R IP 1st Sclerosis"
		hdxa2as = "R DIP 2nd Sclerosis"
		hdxa2bs = "R PIP 2nd Sclerosis"
		hdxa3as = "R DIP 3rd Sclerosis"
		hdxa3bs = "R PIP 3rd Sclerosis"
		hdxa4as = "R DIP 4th Sclerosis"
		hdxa4bs = "R PIP 4th Sclerosis"
		hdxa5as = "R DIP 5th Sclerosis"
		hdxa5bs = "R PIP 5th Sclerosis"
		hdxa0d = "R wrist Deformity"
		hdxa1ad = "R CMP 1st Deformity"
		hdxa1bd = "R IP 1st Deformity"
		hdxa2ad = "R DIP 2nd Deformity"
		hdxa2bd = "R PIP 2nd Deformity"
		hdxa3ad = "R DIP 3rd Deformity"
		hdxa3bd = "R PIP 3rd Deformity"
		hdxa4ad = "R DIP 4th Deformity"
		hdxa4bd = "R PIP 4th Deformity"
		hdxa5ad = "R DIP 5th Deformity"
		hdxa5bd = "R PIP 5th Deformity"
		hdxa0c = "R wrist Chondro calcinosis"
		hdxa1ac = "R CMP 1st Chondro calcinosis"
		hdxa1bc = "R IP 1st Chondro calcinosis"
		hdxa2ac = "R DIP 2nd Chondro calcinosis"
		hdxa2bc = "R PIP 2nd Chondro calcinosis"
		hdxa3ac = "R DIP 3rd Chondro calcinosis"
		hdxa3bc = "R PIP 3rd Chondro calcinosis"
		hdxa4ac = "R DIP 4th Chondro calcinosis"
		hdxa4bc = "R PIP 4th Chondro calcinosis"
		hdxa5ac = "R DIP 5th Chondro calcinosis"
		hdxa5bc = "R PIP 5th Chondro calcinosis"
		hdxa0t = "R wrist Old trauma"
		hdxa1at = "R CMP 1st Old trauma"
		hdxa1bt = "R IP 1st Old trauma"
		hdxa2at = "R DIP 2nd Old trauma"
		hdxa2bt = "R PIP 2nd Old trauma"
		hdxa3at = "R DIP 3rd Old trauma"
		hdxa3bt = "R PIP 3rd Old trauma"
		hdxa4at = "R DIP 4th Old trauma"
		hdxa4bt = "R PIP 4th Old trauma"
		hdxa5at = "R DIP 5th Old trauma"
		hdxa5bt = "R PIP 5th Old trauma"
		hdxaks = "KL Grade for RIGHT hand"
		hdxtid2 = "Tester 1 ID Left"
		hdxtid4 = "Tester 2 ID Left"
		hdxdat4 = "L date T2"
		hdxb0o = "L wrist Osteophytes"
		hdxb1ao = "L CMP 1st Osteophytes"
		hdxb1bo = "L IP 1st Osteophytes"
		hdxb2ao = "L DIP 2nd Osteophytes"
		hdxb2bo = "L PIP 2nd Osteophytes"
		hdxb3ao = "L DIP 3rd Osteophytes"
		hdxb3bo = "L PIP 3rd Osteophytes"
		hdxb4ao = "L DIP 4th Osteophytes"
		hdxb4bo = "L PIP 4th Osteophytes"
		hdxb5ao = "L DIP 5th Osteophytes"
		hdxb5bo = "L PIP 5th Osteophytes"
		hdxb0n = "L wrist Narrowing"
		hdxb1an = "L CMP 1st Narrowing"
		hdxb1bn = "L IP 1st Narrowing"
		hdxb2an = "L DIP 2nd Narrowing"
		hdxb2bn = "L PIP 2nd Narrowing"
		hdxb3an = "L DIP 3rd Narrowing"
		hdxb3bn = "L PIP 3rd Narrowing"
		hdxb4an = "L DIP 4th Narrowing"
		hdxb4bn = "L PIP 4th Narrowing"
		hdxb5an = "L DIP 5th Narrowing"
		hdxb5bn = "L PIP 5th Narrowing"
		hdxb0s = "L wrist Sclerosis"
		hdxb1as = "L CMP 1st Sclerosis"
		hdxb1bs = "L IP 1st Sclerosis"
		hdxb2as = "L DIP 2nd Sclerosis"
		hdxb2bs = "L PIP 2nd Sclerosis"
		hdxb3as = "L DIP 3rd Sclerosis"
		hdxb3bs = "L PIP 3rd Sclerosis"
		hdxb4as = "L DIP 4th Sclerosis"
		hdxb4bs = "L PIP 4th Sclerosis"
		hdxb5as = "L DIP 5th Sclerosis"
		hdxb5bs = "L PIP 5th Sclerosis"
		hdxb0d = "L wrist Deformity"
		hdxb1ad = "L CMP 1st Deformity"
		hdxb1bd = "L IP 1st Deformity"
		hdxb2ad = "L DIP 2nd Deformity"
		hdxb2bd = "L PIP 2nd Deformity"
		hdxb3ad = "L DIP 3rd Deformity"
		hdxb3bd = "L PIP 3rd Deformity"
		hdxb4ad = "L DIP 4th Deformity"
		hdxb4bd = "L PIP 4th Deformity"
		hdxb5ad = "L DIP 5th Deformity"
		hdxb5bd = "L PIP 5th Deformity"
		hdxb0c = "L wrist Chondro calcinosis"
		hdxb1ac = "L CMP 1st Chondro calcinosis"
		hdxb1bc = "L IP 1st Chondro calcinosis"
		hdxb2ac = "L DIP 2nd Chondro calcinosis"
		hdxb2bc = "L PIP 2nd Chondro calcinosis"
		hdxb3ac = "L DIP 3rd Chondro calcinosis"
		hdxb3bc = "L PIP 3rd Chondro calcinosis"
		hdxb4ac = "L DIP 4th Chondro calcinosis"
		hdxb4bc = "L PIP 4th Chondro calcinosis"
		hdxb5ac = "L DIP 5th Chondro calcinosis"
		hdxb5bc = "L PIP 5th Chondro calcinosis"
		hdxb0t = "L wrist Old trauma"
		hdxb1at = "L CMP 1st Old trauma"
		hdxb1bt = "L IP 1st Old trauma"
		hdxb2at = "L DIP 2nd Old trauma"
		hdxb2bt = "L PIP 2nd Old trauma"
		hdxb3at = "L DIP 3rd Old trauma"
		hdxb3bt = "L PIP 3rd Old trauma"
		hdxb4at = "L DIP 4th Old trauma"
		hdxb4bt = "L PIP 4th Old trauma"
		hdxb5at = "L DIP 5th Old trauma"
		hdxb5bt = "L PIP 5th Old trauma"
		hdxbks = "KL Grade for LEFT hand"
		auto_id_Hanxra = "Unique Teleform Number"
		crf_parent_name_Hanxra = "CRF Parent Name"
		study_name_Hanxra = "Study Name"
	;
	FORMAT
		hdx000 hdx000_.
		hdxqa1 hdxqa1_.
		hdxqb1 hdxqb1_.
		hdxqa2 hdxqa2_.
		hdxqb2 hdxqb2_.
		hdxqa3 hdxqa3_.
		hdxqb3 hdxqb3_.
		hdxqa4 hdxqa4_.
		hdxqb4 hdxqb4_.
		hdxqa5 hdxqa5_.
		hdxqb5 hdxqb5_.
		hdxqa6 hdxqa6_.
		hdxqb6 hdxqb6_.
		hdxqa7 hdxqa7_.
		hdxqb7 hdxqb7_.
		hdxqa8 hdxqa8_.
		hdxqb8 hdxqb8_.
		hdxa0o hdxa0o_.
		hdxa1ao hdxa1ao_.
		hdxa1bo hdxa1bo_.
		hdxa2ao hdxa2ao_.
		hdxa2bo hdxa2bo_.
		hdxa3ao hdxa3ao_.
		hdxa3bo hdxa3bo_.
		hdxa4ao hdxa4ao_.
		hdxa4bo hdxa4bo_.
		hdxa5ao hdxa5ao_.
		hdxa5bo hdxa5bo_.
		hdxa0n hdxa0n_.
		hdxa1an hdxa1an_.
		hdxa1bn hdxa1bn_.
		hdxa2an hdxa2an_.
		hdxa2bn hdxa2bn_.
		hdxa3an hdxa3an_.
		hdxa3bn hdxa3bn_.
		hdxa4an hdxa4an_.
		hdxa4bn hdxa4bn_.
		hdxa5an hdxa5an_.
		hdxa5bn hdxa5bn_.
		hdxa0s hdxa0s_.
		hdxa1as hdxa1as_.
		hdxa1bs hdxa1bs_.
		hdxa2as hdxa2as_.
		hdxa2bs hdxa2bs_.
		hdxa3as hdxa3as_.
		hdxa3bs hdxa3bs_.
		hdxa4as hdxa4as_.
		hdxa4bs hdxa4bs_.
		hdxa5as hdxa5as_.
		hdxa5bs hdxa5bs_.
		hdxa0d hdxa0d_.
		hdxa1ad hdxa1ad_.
		hdxa1bd hdxa1bd_.
		hdxa2ad hdxa2ad_.
		hdxa2bd hdxa2bd_.
		hdxa3ad hdxa3ad_.
		hdxa3bd hdxa3bd_.
		hdxa4ad hdxa4ad_.
		hdxa4bd hdxa4bd_.
		hdxa5ad hdxa5ad_.
		hdxa5bd hdxa5bd_.
		hdxa0c hdxa0c_.
		hdxa1ac hdxa1ac_.
		hdxa1bc hdxa1bc_.
		hdxa2ac hdxa2ac_.
		hdxa2bc hdxa2bc_.
		hdxa3ac hdxa3ac_.
		hdxa3bc hdxa3bc_.
		hdxa4ac hdxa4ac_.
		hdxa4bc hdxa4bc_.
		hdxa5ac hdxa5ac_.
		hdxa5bc hdxa5bc_.
		hdxa0t hdxa0t_.
		hdxa1at hdxa1at_.
		hdxa1bt hdxa1bt_.
		hdxa2at hdxa2at_.
		hdxa2bt hdxa2bt_.
		hdxa3at hdxa3at_.
		hdxa3bt hdxa3bt_.
		hdxa4at hdxa4at_.
		hdxa4bt hdxa4bt_.
		hdxa5at hdxa5at_.
		hdxa5bt hdxa5bt_.
		hdxb0o hdxb0o_.
		hdxb1ao hdxb1ao_.
		hdxb1bo hdxb1bo_.
		hdxb2ao hdxb2ao_.
		hdxb2bo hdxb2bo_.
		hdxb3ao hdxb3ao_.
		hdxb3bo hdxb3bo_.
		hdxb4ao hdxb4ao_.
		hdxb4bo hdxb4bo_.
		hdxb5ao hdxb5ao_.
		hdxb5bo hdxb5bo_.
		hdxb0n hdxb0n_.
		hdxb1an hdxb1an_.
		hdxb1bn hdxb1bn_.
		hdxb2an hdxb2an_.
		hdxb2bn hdxb2bn_.
		hdxb3an hdxb3an_.
		hdxb3bn hdxb3bn_.
		hdxb4an hdxb4an_.
		hdxb4bn hdxb4bn_.
		hdxb5an hdxb5an_.
		hdxb5bn hdxb5bn_.
		hdxb0s hdxb0s_.
		hdxb1as hdxb1as_.
		hdxb1bs hdxb1bs_.
		hdxb2as hdxb2as_.
		hdxb2bs hdxb2bs_.
		hdxb3as hdxb3as_.
		hdxb3bs hdxb3bs_.
		hdxb4as hdxb4as_.
		hdxb4bs hdxb4bs_.
		hdxb5as hdxb5as_.
		hdxb5bs hdxb5bs_.
		hdxb0d hdxb0d_.
		hdxb1ad hdxb1ad_.
		hdxb1bd hdxb1bd_.
		hdxb2ad hdxb2ad_.
		hdxb2bd hdxb2bd_.
		hdxb3ad hdxb3ad_.
		hdxb3bd hdxb3bd_.
		hdxb4ad hdxb4ad_.
		hdxb4bd hdxb4bd_.
		hdxb5ad hdxb5ad_.
		hdxb5bd hdxb5bd_.
		hdxb0c hdxb0c_.
		hdxb1ac hdxb1ac_.
		hdxb1bc hdxb1bc_.
		hdxb2ac hdxb2ac_.
		hdxb2bc hdxb2bc_.
		hdxb3ac hdxb3ac_.
		hdxb3bc hdxb3bc_.
		hdxb4ac hdxb4ac_.
		hdxb4bc hdxb4bc_.
		hdxb5ac hdxb5ac_.
		hdxb5bc hdxb5bc_.
		hdxb0t hdxb0t_.
		hdxb1at hdxb1at_.
		hdxb1bt hdxb1bt_.
		hdxb2at hdxb2at_.
		hdxb2bt hdxb2bt_.
		hdxb3at hdxb3at_.
		hdxb3bt hdxb3bt_.
		hdxb4at hdxb4at_.
		hdxb4bt hdxb4bt_.
		hdxb5at hdxb5at_.
		hdxb5bt hdxb5bt_.
	;
RUN;


DATA blsa_hand_x-ray;
    SET WORK.IMPORT;
RUN;
