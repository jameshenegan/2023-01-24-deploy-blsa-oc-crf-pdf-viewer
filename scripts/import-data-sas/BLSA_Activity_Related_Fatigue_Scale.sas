%let path_to_file = '../data-csv/BLSA_Activity_Related_Fatigue_Scale.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE lwalk30_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE lwalk30_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE lwalk30_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bwalk1hr_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE bwalk1hr_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE bwalk1hr_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lthouse_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE lthouse_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE lthouse_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hvygard_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE hvygard_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE hvygard_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tv_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE tv_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE tv_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sit_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE sit_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE sit_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE modhvystr_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE modhvystr_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE modhvystr_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pptsocial_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE pptsocial_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE pptsocial_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hostsocial_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE hostsocial_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE hostsocial_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE highactivity_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE highactivity_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE highactivity_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lwalk30_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE lwalk1hr_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE lwalk1hr_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE lwalk1hr_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE lwalk1hr_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bwalk30_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE bwalk30_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE bwalk30_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE bwalk30_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bwalk1hr_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE lthouse_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE modhouse_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE modhouse_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE modhouse_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE modhouse_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hvyhouse_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE hvyhouse_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE hvyhouse_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE hvyhouse_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hvygard_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE read_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE read_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE read_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE read_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tv_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE sit_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE paper_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE paper_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE paper_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE paper_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE comp_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE comp_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE comp_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE comp_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ltstrength_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE ltstrength_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE ltstrength_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE ltstrength_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE modhvystr_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE dance_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE dance_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE dance_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE dance_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE convo_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE convo_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE convo_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE convo_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE shop_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE shop_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE shop_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE shop_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE drive_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE drive_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE drive_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE drive_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE clbmtg_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE clbmtg_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE clbmtg_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE clbmtg_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE concert_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE concert_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE concert_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE concert_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pptsocial_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE hostsocial_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE ltactivity_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE ltactivity_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE ltactivity_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE ltactivity_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE modactivity_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE modactivity_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE modactivity_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE modactivity_yn_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE highactivity_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
	;

	VALUE pastmonth_e_
		0 = '0 no energy at all'
		1 = '1'
		10 = '10 most energy ever'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
		9 = '9'
	;

	VALUE quest_p_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE quest_m_
		0 = '0 No fatigue'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Extreme fatigue'
	;

	VALUE quest_e_
		-1 = '-1'
		-2 = '-2'
		-3 = '-3'
		-4 = '-4'
		-5 = '-5 Lost most energy'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5 Gained most energy'
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

	INFORMAT crf_version_ActRelFatSca $4.;
	FORMAT crf_version_ActRelFatSca $4.;

	INFORMAT obsdate_arfsdate YYMMDD10.;
	FORMAT obsdate_arfsdate YYMMDD10.;

	INFORMAT arfstid BEST32.;
	FORMAT arfstid BEST12.;

	INFORMAT blank_ActRelFatSca $1.;
	FORMAT blank_ActRelFatSca $1.;

	INFORMAT lwalk30_p BEST32.;
	FORMAT lwalk30_p BEST12.;

	INFORMAT lwalk30_m BEST32.;
	FORMAT lwalk30_m BEST12.;

	INFORMAT lwalk30_yn BEST32.;
	FORMAT lwalk30_yn BEST12.;

	INFORMAT bwalk1hr_p BEST32.;
	FORMAT bwalk1hr_p BEST12.;

	INFORMAT bwalk1hr_m BEST32.;
	FORMAT bwalk1hr_m BEST12.;

	INFORMAT bwalk1hr_yn BEST32.;
	FORMAT bwalk1hr_yn BEST12.;

	INFORMAT lthouse_p BEST32.;
	FORMAT lthouse_p BEST12.;

	INFORMAT lthouse_m BEST32.;
	FORMAT lthouse_m BEST12.;

	INFORMAT lthouse_yn BEST32.;
	FORMAT lthouse_yn BEST12.;

	INFORMAT hvygard_p BEST32.;
	FORMAT hvygard_p BEST12.;

	INFORMAT hvygard_m BEST32.;
	FORMAT hvygard_m BEST12.;

	INFORMAT hvygard_yn BEST32.;
	FORMAT hvygard_yn BEST12.;

	INFORMAT tv_p BEST32.;
	FORMAT tv_p BEST12.;

	INFORMAT tv_m BEST32.;
	FORMAT tv_m BEST12.;

	INFORMAT tv_yn BEST32.;
	FORMAT tv_yn BEST12.;

	INFORMAT sit_p BEST32.;
	FORMAT sit_p BEST12.;

	INFORMAT sit_m BEST32.;
	FORMAT sit_m BEST12.;

	INFORMAT sit_yn BEST32.;
	FORMAT sit_yn BEST12.;

	INFORMAT modhvystr_p BEST32.;
	FORMAT modhvystr_p BEST12.;

	INFORMAT modhvystr_m BEST32.;
	FORMAT modhvystr_m BEST12.;

	INFORMAT modhvystr_yn BEST32.;
	FORMAT modhvystr_yn BEST12.;

	INFORMAT pptsocial_p BEST32.;
	FORMAT pptsocial_p BEST12.;

	INFORMAT pptsocial_m BEST32.;
	FORMAT pptsocial_m BEST12.;

	INFORMAT pptsocial_yn BEST32.;
	FORMAT pptsocial_yn BEST12.;

	INFORMAT hostsocial_p BEST32.;
	FORMAT hostsocial_p BEST12.;

	INFORMAT hostsocial_m BEST32.;
	FORMAT hostsocial_m BEST12.;

	INFORMAT hostsocial_yn BEST32.;
	FORMAT hostsocial_yn BEST12.;

	INFORMAT highactivity_p BEST32.;
	FORMAT highactivity_p BEST12.;

	INFORMAT highactivity_m BEST32.;
	FORMAT highactivity_m BEST12.;

	INFORMAT highactivity_yn BEST32.;
	FORMAT highactivity_yn BEST12.;

	INFORMAT lwalk30_e BEST32.;
	FORMAT lwalk30_e BEST12.;

	INFORMAT lwalk1hr_p BEST32.;
	FORMAT lwalk1hr_p BEST12.;

	INFORMAT lwalk1hr_m BEST32.;
	FORMAT lwalk1hr_m BEST12.;

	INFORMAT lwalk1hr_e BEST32.;
	FORMAT lwalk1hr_e BEST12.;

	INFORMAT lwalk1hr_yn BEST32.;
	FORMAT lwalk1hr_yn BEST12.;

	INFORMAT bwalk30_p BEST32.;
	FORMAT bwalk30_p BEST12.;

	INFORMAT bwalk30_m BEST32.;
	FORMAT bwalk30_m BEST12.;

	INFORMAT bwalk30_e BEST32.;
	FORMAT bwalk30_e BEST12.;

	INFORMAT bwalk30_yn BEST32.;
	FORMAT bwalk30_yn BEST12.;

	INFORMAT bwalk1hr_e BEST32.;
	FORMAT bwalk1hr_e BEST12.;

	INFORMAT lthouse_e BEST32.;
	FORMAT lthouse_e BEST12.;

	INFORMAT modhouse_p BEST32.;
	FORMAT modhouse_p BEST12.;

	INFORMAT modhouse_m BEST32.;
	FORMAT modhouse_m BEST12.;

	INFORMAT modhouse_e BEST32.;
	FORMAT modhouse_e BEST12.;

	INFORMAT modhouse_yn BEST32.;
	FORMAT modhouse_yn BEST12.;

	INFORMAT hvyhouse_p BEST32.;
	FORMAT hvyhouse_p BEST12.;

	INFORMAT hvyhouse_m BEST32.;
	FORMAT hvyhouse_m BEST12.;

	INFORMAT hvyhouse_e BEST32.;
	FORMAT hvyhouse_e BEST12.;

	INFORMAT hvyhouse_yn BEST32.;
	FORMAT hvyhouse_yn BEST12.;

	INFORMAT hvygard_e BEST32.;
	FORMAT hvygard_e BEST12.;

	INFORMAT read_p BEST32.;
	FORMAT read_p BEST12.;

	INFORMAT read_m BEST32.;
	FORMAT read_m BEST12.;

	INFORMAT read_e BEST32.;
	FORMAT read_e BEST12.;

	INFORMAT read_yn BEST32.;
	FORMAT read_yn BEST12.;

	INFORMAT tv_e BEST32.;
	FORMAT tv_e BEST12.;

	INFORMAT sit_e BEST32.;
	FORMAT sit_e BEST12.;

	INFORMAT paper_p BEST32.;
	FORMAT paper_p BEST12.;

	INFORMAT paper_m BEST32.;
	FORMAT paper_m BEST12.;

	INFORMAT paper_e BEST32.;
	FORMAT paper_e BEST12.;

	INFORMAT paper_yn BEST32.;
	FORMAT paper_yn BEST12.;

	INFORMAT comp_p BEST32.;
	FORMAT comp_p BEST12.;

	INFORMAT comp_m BEST32.;
	FORMAT comp_m BEST12.;

	INFORMAT comp_e BEST32.;
	FORMAT comp_e BEST12.;

	INFORMAT comp_yn BEST32.;
	FORMAT comp_yn BEST12.;

	INFORMAT ltstrength_p BEST32.;
	FORMAT ltstrength_p BEST12.;

	INFORMAT ltstrength_m BEST32.;
	FORMAT ltstrength_m BEST12.;

	INFORMAT ltstrength_e BEST32.;
	FORMAT ltstrength_e BEST12.;

	INFORMAT ltstrength_yn BEST32.;
	FORMAT ltstrength_yn BEST12.;

	INFORMAT modhvystr_e BEST32.;
	FORMAT modhvystr_e BEST12.;

	INFORMAT dance_p BEST32.;
	FORMAT dance_p BEST12.;

	INFORMAT dance_m BEST32.;
	FORMAT dance_m BEST12.;

	INFORMAT dance_e BEST32.;
	FORMAT dance_e BEST12.;

	INFORMAT dance_yn BEST32.;
	FORMAT dance_yn BEST12.;

	INFORMAT convo_p BEST32.;
	FORMAT convo_p BEST12.;

	INFORMAT convo_m BEST32.;
	FORMAT convo_m BEST12.;

	INFORMAT convo_e BEST32.;
	FORMAT convo_e BEST12.;

	INFORMAT convo_yn BEST32.;
	FORMAT convo_yn BEST12.;

	INFORMAT shop_p BEST32.;
	FORMAT shop_p BEST12.;

	INFORMAT shop_m BEST32.;
	FORMAT shop_m BEST12.;

	INFORMAT shop_e BEST32.;
	FORMAT shop_e BEST12.;

	INFORMAT shop_yn BEST32.;
	FORMAT shop_yn BEST12.;

	INFORMAT drive_p BEST32.;
	FORMAT drive_p BEST12.;

	INFORMAT drive_m BEST32.;
	FORMAT drive_m BEST12.;

	INFORMAT drive_e BEST32.;
	FORMAT drive_e BEST12.;

	INFORMAT drive_yn BEST32.;
	FORMAT drive_yn BEST12.;

	INFORMAT clbmtg_p BEST32.;
	FORMAT clbmtg_p BEST12.;

	INFORMAT clbmtg_m BEST32.;
	FORMAT clbmtg_m BEST12.;

	INFORMAT clbmtg_e BEST32.;
	FORMAT clbmtg_e BEST12.;

	INFORMAT clbmtg_yn BEST32.;
	FORMAT clbmtg_yn BEST12.;

	INFORMAT concert_p BEST32.;
	FORMAT concert_p BEST12.;

	INFORMAT concert_m BEST32.;
	FORMAT concert_m BEST12.;

	INFORMAT concert_e BEST32.;
	FORMAT concert_e BEST12.;

	INFORMAT concert_yn BEST32.;
	FORMAT concert_yn BEST12.;

	INFORMAT pptsocial_e BEST32.;
	FORMAT pptsocial_e BEST12.;

	INFORMAT hostsocial_e BEST32.;
	FORMAT hostsocial_e BEST12.;

	INFORMAT ltactivity_p BEST32.;
	FORMAT ltactivity_p BEST12.;

	INFORMAT ltactivity_m BEST32.;
	FORMAT ltactivity_m BEST12.;

	INFORMAT ltactivity_e BEST32.;
	FORMAT ltactivity_e BEST12.;

	INFORMAT ltactivity_yn BEST32.;
	FORMAT ltactivity_yn BEST12.;

	INFORMAT modactivity_p BEST32.;
	FORMAT modactivity_p BEST12.;

	INFORMAT modactivity_m BEST32.;
	FORMAT modactivity_m BEST12.;

	INFORMAT modactivity_e BEST32.;
	FORMAT modactivity_e BEST12.;

	INFORMAT modactivity_yn BEST32.;
	FORMAT modactivity_yn BEST12.;

	INFORMAT highactivity_e BEST32.;
	FORMAT highactivity_e BEST12.;

	INFORMAT pastmonth_e BEST32.;
	FORMAT pastmonth_e BEST12.;

	INFORMAT quest_p BEST32.;
	FORMAT quest_p BEST12.;

	INFORMAT quest_m BEST32.;
	FORMAT quest_m BEST12.;

	INFORMAT quest_e BEST32.;
	FORMAT quest_e BEST12.;

	INFORMAT auto_id_ActRelFatSca BEST32.;
	FORMAT auto_id_ActRelFatSca BEST12.;

	INFORMAT crf_parent_name_ActRelFatSca $35.;
	FORMAT crf_parent_name_ActRelFatSca $35.;

	INFORMAT study_name_ActRelFatSca $4.;
	FORMAT study_name_ActRelFatSca $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_ActRelFatSca
		obsdate_arfsdate
		arfstid
		blank_ActRelFatSca
		lwalk30_p
		lwalk30_m
		lwalk30_yn
		bwalk1hr_p
		bwalk1hr_m
		bwalk1hr_yn
		lthouse_p
		lthouse_m
		lthouse_yn
		hvygard_p
		hvygard_m
		hvygard_yn
		tv_p
		tv_m
		tv_yn
		sit_p
		sit_m
		sit_yn
		modhvystr_p
		modhvystr_m
		modhvystr_yn
		pptsocial_p
		pptsocial_m
		pptsocial_yn
		hostsocial_p
		hostsocial_m
		hostsocial_yn
		highactivity_p
		highactivity_m
		highactivity_yn
		lwalk30_e
		lwalk1hr_p
		lwalk1hr_m
		lwalk1hr_e
		lwalk1hr_yn
		bwalk30_p
		bwalk30_m
		bwalk30_e
		bwalk30_yn
		bwalk1hr_e
		lthouse_e
		modhouse_p
		modhouse_m
		modhouse_e
		modhouse_yn
		hvyhouse_p
		hvyhouse_m
		hvyhouse_e
		hvyhouse_yn
		hvygard_e
		read_p
		read_m
		read_e
		read_yn
		tv_e
		sit_e
		paper_p
		paper_m
		paper_e
		paper_yn
		comp_p
		comp_m
		comp_e
		comp_yn
		ltstrength_p
		ltstrength_m
		ltstrength_e
		ltstrength_yn
		modhvystr_e
		dance_p
		dance_m
		dance_e
		dance_yn
		convo_p
		convo_m
		convo_e
		convo_yn
		shop_p
		shop_m
		shop_e
		shop_yn
		drive_p
		drive_m
		drive_e
		drive_yn
		clbmtg_p
		clbmtg_m
		clbmtg_e
		clbmtg_yn
		concert_p
		concert_m
		concert_e
		concert_yn
		pptsocial_e
		hostsocial_e
		ltactivity_p
		ltactivity_m
		ltactivity_e
		ltactivity_yn
		modactivity_p
		modactivity_m
		modactivity_e
		modactivity_yn
		highactivity_e
		pastmonth_e
		quest_p
		quest_m
		quest_e
		auto_id_ActRelFatSca
		crf_parent_name_ActRelFatSca
		study_name_ActRelFatSca
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
		crf_version_ActRelFatSca = "CRF Version"
		obsdate_arfsdate = "Visit Date"
		arfstid = "Tester ID"
		blank_ActRelFatSca = "Blank Form"
		lwalk30_p = "Leisurely walk for 30 min physical fatigue"
		lwalk30_m = "Leisurely Walk 30 Min Mental fatigue"
		lwalk30_yn = "Leisurely Walk 30 Min Done activity"
		bwalk1hr_p = "Brisk walk for 1 hr physical fatigue"
		bwalk1hr_m = "Brisk walk for 1 hr Mental fatigue"
		bwalk1hr_yn = "Brisk walk for 1 hr Done activity"
		lthouse_p = "Light Household Activity physical fatigue"
		lthouse_m = "Light Household Activity Mental fatigue"
		lthouse_yn = "Light Household Activity Done activity"
		hvygard_p = "Heavy Gardening Yard Work physical fatigue"
		hvygard_m = "Heavy Gardening Yard Work Mental fatigue"
		hvygard_yn = "Heavy Gardening Yard Work Done activity"
		tv_p = "Watching TV for 2Hr physical fatigue"
		tv_m = "Watching TV for 2Hr Mental fatigue"
		tv_yn = "Watching TV for 2Hr Done activity"
		sit_p = "Sit quietly for 1Hr physical fatigue"
		sit_m = "Sit quietly for 1Hr Mental fatigue"
		sit_yn = "Sit quietly for 1Hr Done activity"
		modhvystr_p = "Moderate to heavy intensity strength training for 30 min physical fatigue"
		modhvystr_m = "Moderate to heavy intensity strength training for 30 min Mental fatigue"
		modhvystr_yn = "Moderate to heavy intensity strength training for 30 min Done activity"
		pptsocial_p = "Participating in social activity for 1 hour physical fatigue"
		pptsocial_m = "Participating in social activity for 1 hour Mental fatigue"
		pptsocial_yn = "Participating in social activity for 1 hour Done activity"
		hostsocial_p = "Hosting a social event for 1 hour physical fatigue"
		hostsocial_m = "Hosting a social event for 1 hour Mental fatigue"
		hostsocial_yn = "Hosting a social event for 1 hour Done activity"
		highactivity_p = "High intensity activity for 30 min physical fatigue"
		highactivity_m = "High intensity activity for 30 min Mental fatigue"
		highactivity_yn = "High intensity activity for 30 min Done activity"
		lwalk30_e = "Leisurely Walk 30 Min Energy Level"
		lwalk1hr_p = "Leisurely walk for 1 hr physical fatigue"
		lwalk1hr_m = "Leisurely Walk 1 hr Mental fatigue"
		lwalk1hr_e = "Leisurely Walk 1 hr Energy Level"
		lwalk1hr_yn = "Leisurely Walk 1 hr Done activity"
		bwalk30_p = "Brisk walk for 30 min physical fatigue"
		bwalk30_m = "Brisk walk for 30 min Mental fatigue"
		bwalk30_e = "Brisk walk for 30 min Energy Level"
		bwalk30_yn = "Brisk walk for 30 min Done activity"
		bwalk1hr_e = "Brisk walk for 1 hr Energy Level"
		lthouse_e = "Light Household Activity Energy level"
		modhouse_p = "Moderate Household Activity 30 min physical fatigue"
		modhouse_m = "Moderate Household Activity 30 min Mental fatigue"
		modhouse_e = "Moderate Household Activity 30 min Energy level"
		modhouse_yn = "Moderate Household Activity 30 min Done activity"
		hvyhouse_p = "Heavy Household Activity physical fatigue"
		hvyhouse_m = "Heavy Household Activity Mental fatigue"
		hvyhouse_e = "Heavy Household Activity Energy level"
		hvyhouse_yn = "Heavy Household Activity Done activity"
		hvygard_e = "Heavy Gardening Yard Work energy level"
		read_p = "Reading 1 hour physical fatigue"
		read_m = "Reading 1 hour Mental fatigue"
		read_e = "Reading 1 hour Energy level"
		read_yn = "Reading 1 hour Done activity"
		tv_e = "Watch TV for 2 hours Energy level"
		sit_e = "Sit quietly for hour Energy level"
		paper_p = "Doing paper work 1 hour physical fatigue"
		paper_m = "Doing paper work 1 hour Mental fatigue"
		paper_e = "Doing paper work 1 hour Energy level"
		paper_yn = "Doing paper work 1 hour Done activity"
		comp_p = "Using a computer 1 hour physical fatigue"
		comp_m = "Using a computer 1 hour Mental fatigue"
		comp_e = "Using a computer 1 hour Energy level"
		comp_yn = "Using a computer 1 hour Done activity"
		ltstrength_p = "Light intensity strength training 30 min physical fatigue"
		ltstrength_m = "Light intensity strength training 30 min Mental fatigue"
		ltstrength_e = "Light intensity strength training 30 min Energy level"
		ltstrength_yn = "Light intensity strength training 30 min Done activity"
		modhvystr_e = "Moderate to heavy intensity strength training for 30 min Energy level"
		dance_p = "Dancing for 30 min physical fatigue"
		dance_m = "Dancing for 30 min Mental fatigue"
		dance_e = "Dancing for 30 min Energy level"
		dance_yn = "Dancing for 30 min Done activity"
		convo_p = "Having a verbal conversaton for 1 hour physical fatigue"
		convo_m = "Having a verbal conversaton for 1 hour Mental fatigue"
		convo_e = "Having a verbal conversaton for 1 hour Energy level"
		convo_yn = "Having a verbal conversaton for 1 hour Done activity"
		shop_p = "Shopping for 1 hr physical fatigue"
		shop_m = "Shopping for 1 hr Mental fatigue"
		shop_e = "Shopping for 1 hr Energy level"
		shop_yn = "Shopping for 1 hr Done activity"
		drive_p = "Drive a vehicle for 1 hr physical fatigue"
		drive_m = "Drive a vehicle for 1 hr Mental fatigue"
		drive_e = "Drive a vehicle for 1 hr Energy level"
		drive_yn = "Drive a vehicle for 1 hr Done activity"
		clbmtg_p = "Attend club mtg for 1 hr physical fatigue"
		clbmtg_m = "Attend club mtg for 1 hr Mental fatigue"
		clbmtg_e = "Attend club mtg for 1 hr Energy level"
		clbmtg_yn = "Attend club mtg for 1 hr Done activity"
		concert_p = "Attend concert lecture movie or sporting event 2 hr physical fatigue"
		concert_m = "Attend concert lecture movie or sporting event 2 hr Mental fatigue"
		concert_e = "Attend concert lecture movie or sporting event 2 hr Energy level"
		concert_yn = "Attend concert lecture movie or sporting event 2 hr Done activity"
		pptsocial_e = "Participating in social activity for 1 hour Energy level"
		hostsocial_e = "Hosting a social event for 1 hour Energy level"
		ltactivity_p = "Light intensity activity for 30 min physical fatigue"
		ltactivity_m = "Light intensity activity for 30 min Mental fatigue"
		ltactivity_e = "Light intensity activity for 30 min Energy level"
		ltactivity_yn = "Light intensity activity for 30 min Done activity"
		modactivity_p = "Moderate intensity activity for 30 min physical fatigue"
		modactivity_m = "Moderate intensity activity for 30 min Mental fatigue"
		modactivity_e = "Moderate intensity activity for 30 min Energy level"
		modactivity_yn = "Moderate intensity activity for 30 min Done activity"
		highactivity_e = "High intensity activity for 30 min Energy level"
		pastmonth_e = "Usual energy level past month on a scale of 1 to 10"
		quest_p = "Completing this questionnaire physical fatigue"
		quest_m = "Completing this questionnaire Mental fatigue"
		quest_e = "Completing this questionnaire Energy level"
		auto_id_ActRelFatSca = "Unique Teleform Number"
		crf_parent_name_ActRelFatSca = "CRF Parent Name"
		study_name_ActRelFatSca = "Study Name"
	;
	FORMAT
		lwalk30_p lwalk30_p_.
		lwalk30_m lwalk30_m_.
		lwalk30_yn lwalk30_yn_.
		bwalk1hr_p bwalk1hr_p_.
		bwalk1hr_m bwalk1hr_m_.
		bwalk1hr_yn bwalk1hr_yn_.
		lthouse_p lthouse_p_.
		lthouse_m lthouse_m_.
		lthouse_yn lthouse_yn_.
		hvygard_p hvygard_p_.
		hvygard_m hvygard_m_.
		hvygard_yn hvygard_yn_.
		tv_p tv_p_.
		tv_m tv_m_.
		tv_yn tv_yn_.
		sit_p sit_p_.
		sit_m sit_m_.
		sit_yn sit_yn_.
		modhvystr_p modhvystr_p_.
		modhvystr_m modhvystr_m_.
		modhvystr_yn modhvystr_yn_.
		pptsocial_p pptsocial_p_.
		pptsocial_m pptsocial_m_.
		pptsocial_yn pptsocial_yn_.
		hostsocial_p hostsocial_p_.
		hostsocial_m hostsocial_m_.
		hostsocial_yn hostsocial_yn_.
		highactivity_p highactivity_p_.
		highactivity_m highactivity_m_.
		highactivity_yn highactivity_yn_.
		lwalk30_e lwalk30_e_.
		lwalk1hr_p lwalk1hr_p_.
		lwalk1hr_m lwalk1hr_m_.
		lwalk1hr_e lwalk1hr_e_.
		lwalk1hr_yn lwalk1hr_yn_.
		bwalk30_p bwalk30_p_.
		bwalk30_m bwalk30_m_.
		bwalk30_e bwalk30_e_.
		bwalk30_yn bwalk30_yn_.
		bwalk1hr_e bwalk1hr_e_.
		lthouse_e lthouse_e_.
		modhouse_p modhouse_p_.
		modhouse_m modhouse_m_.
		modhouse_e modhouse_e_.
		modhouse_yn modhouse_yn_.
		hvyhouse_p hvyhouse_p_.
		hvyhouse_m hvyhouse_m_.
		hvyhouse_e hvyhouse_e_.
		hvyhouse_yn hvyhouse_yn_.
		hvygard_e hvygard_e_.
		read_p read_p_.
		read_m read_m_.
		read_e read_e_.
		read_yn read_yn_.
		tv_e tv_e_.
		sit_e sit_e_.
		paper_p paper_p_.
		paper_m paper_m_.
		paper_e paper_e_.
		paper_yn paper_yn_.
		comp_p comp_p_.
		comp_m comp_m_.
		comp_e comp_e_.
		comp_yn comp_yn_.
		ltstrength_p ltstrength_p_.
		ltstrength_m ltstrength_m_.
		ltstrength_e ltstrength_e_.
		ltstrength_yn ltstrength_yn_.
		modhvystr_e modhvystr_e_.
		dance_p dance_p_.
		dance_m dance_m_.
		dance_e dance_e_.
		dance_yn dance_yn_.
		convo_p convo_p_.
		convo_m convo_m_.
		convo_e convo_e_.
		convo_yn convo_yn_.
		shop_p shop_p_.
		shop_m shop_m_.
		shop_e shop_e_.
		shop_yn shop_yn_.
		drive_p drive_p_.
		drive_m drive_m_.
		drive_e drive_e_.
		drive_yn drive_yn_.
		clbmtg_p clbmtg_p_.
		clbmtg_m clbmtg_m_.
		clbmtg_e clbmtg_e_.
		clbmtg_yn clbmtg_yn_.
		concert_p concert_p_.
		concert_m concert_m_.
		concert_e concert_e_.
		concert_yn concert_yn_.
		pptsocial_e pptsocial_e_.
		hostsocial_e hostsocial_e_.
		ltactivity_p ltactivity_p_.
		ltactivity_m ltactivity_m_.
		ltactivity_e ltactivity_e_.
		ltactivity_yn ltactivity_yn_.
		modactivity_p modactivity_p_.
		modactivity_m modactivity_m_.
		modactivity_e modactivity_e_.
		modactivity_yn modactivity_yn_.
		highactivity_e highactivity_e_.
		pastmonth_e pastmonth_e_.
		quest_p quest_p_.
		quest_m quest_m_.
		quest_e quest_e_.
	;
RUN;


DATA blsa_activity_related_fatigue_sc;
    SET WORK.IMPORT;
RUN;
