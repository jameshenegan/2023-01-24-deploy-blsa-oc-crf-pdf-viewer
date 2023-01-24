%let path_to_file = '../data-csv/BLSA_Pulse_Wave_Velocity.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE pwv01_PulWavVel_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pwv01a_PulWavVel_
		000 = 'Other'
		1 = 'Contraindication'
		555 = 'Physical'
		666 = 'Cognitive'
		777 = 'Physical and Cognitive'
		888 = 'Refused'
		999 = 'Technical problems'
	;

	VALUE pwv01b_PulWavVel_
		1 = 'TIA or CVA within past 6 months'
		2 = 'Bilateral carotid bruits'
		3 = 'Hardware on neck precluding access to carotid pulse'
	;

	VALUE agi01_PulWavVel_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE agi01a_PulWavVel_
		000 = 'Other'
		1 = 'Contraindication'
		555 = 'Physical'
		666 = 'Cognitive'
		777 = 'Physical and Cognitive'
		888 = 'Refused'
		999 = 'Technical problems'
	;

	VALUE agi01b_PulWavVel_
		1 = 'TIA or CVA within past 6 months'
		2 = 'Bilateral carotid bruits'
		3 = 'Hardware on neck precluding access to carotid pulse'
	;

	VALUE abi01_PulWavVel_
		0 = 'No'
		1 = 'Yes both sides'
		2 = 'Right only'
		3 = 'Left only'
	;

	VALUE abi01a_PulWavVel_
		000 = 'Other'
		1 = 'Contraindication'
		555 = 'Physical'
		666 = 'Cognitive'
		777 = 'Physical and Cognitive'
		888 = 'Refused'
		999 = 'Technical problems'
	;

	VALUE pwbp01_PulWavVel_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vaseracolin_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pwran_PulWavVel_
		1 = 'Complior first SphygmoCor second'
		2 = 'SphgmoCor first Complior second'
		3 = 'Complior Only'
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

	INFORMAT crf_version_PulWavVel $8.;
	FORMAT crf_version_PulWavVel $8.;

	INFORMAT obsdate_pwvdate_PulWavVel YYMMDD10.;
	FORMAT obsdate_pwvdate_PulWavVel YYMMDD10.;

	INFORMAT blank_PulWavVel $1.;
	FORMAT blank_PulWavVel $1.;

	INFORMAT pwvttrid_PulWavVel $5.;
	FORMAT pwvttrid_PulWavVel $5.;

	INFORMAT pwv01_PulWavVel BEST32.;
	FORMAT pwv01_PulWavVel BEST12.;

	INFORMAT pwv01a_PulWavVel BEST32.;
	FORMAT pwv01a_PulWavVel BEST12.;

	INFORMAT pwv01b_PulWavVel BEST32.;
	FORMAT pwv01b_PulWavVel BEST12.;

	INFORMAT pwv01c_PulWavVel $78.;
	FORMAT pwv01c_PulWavVel $78.;

	INFORMAT agi01_PulWavVel BEST32.;
	FORMAT agi01_PulWavVel BEST12.;

	INFORMAT agi01a_PulWavVel BEST32.;
	FORMAT agi01a_PulWavVel BEST12.;

	INFORMAT agi01b_PulWavVel BEST32.;
	FORMAT agi01b_PulWavVel BEST12.;

	INFORMAT agi01c_PulWavVel $77.;
	FORMAT agi01c_PulWavVel $77.;

	INFORMAT abi01_PulWavVel BEST32.;
	FORMAT abi01_PulWavVel BEST12.;

	INFORMAT abi01a_PulWavVel BEST32.;
	FORMAT abi01a_PulWavVel BEST12.;

	INFORMAT abi01b_PulWavVel $64.;
	FORMAT abi01b_PulWavVel $64.;

	INFORMAT pwbp01_PulWavVel BEST32.;
	FORMAT pwbp01_PulWavVel BEST12.;

	INFORMAT pwsbp_PulWavVel BEST32.;
	FORMAT pwsbp_PulWavVel BEST12.;

	INFORMAT pwdbp_PulWavVel BEST32.;
	FORMAT pwdbp_PulWavVel BEST12.;

	INFORMAT pwmap_PulWavVel BEST32.;
	FORMAT pwmap_PulWavVel BEST12.;

	INFORMAT vaseracolin BEST32.;
	FORMAT vaseracolin BEST12.;

	INFORMAT pwran_PulWavVel BEST32.;
	FORMAT pwran_PulWavVel BEST12.;

	INFORMAT auto_id_PulWavVel BEST32.;
	FORMAT auto_id_PulWavVel BEST12.;

	INFORMAT crf_parent_name_PulWavVel $24.;
	FORMAT crf_parent_name_PulWavVel $24.;

	INFORMAT study_name_PulWavVel $4.;
	FORMAT study_name_PulWavVel $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_PulWavVel
		obsdate_pwvdate_PulWavVel
		blank_PulWavVel
		pwvttrid_PulWavVel
		pwv01_PulWavVel
		pwv01a_PulWavVel
		pwv01b_PulWavVel
		pwv01c_PulWavVel
		agi01_PulWavVel
		agi01a_PulWavVel
		agi01b_PulWavVel
		agi01c_PulWavVel
		abi01_PulWavVel
		abi01a_PulWavVel
		abi01b_PulWavVel
		pwbp01_PulWavVel
		pwsbp_PulWavVel
		pwdbp_PulWavVel
		pwmap_PulWavVel
		vaseracolin
		pwran_PulWavVel
		auto_id_PulWavVel
		crf_parent_name_PulWavVel
		study_name_PulWavVel
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
		crf_version_PulWavVel = "CRF Version"
		obsdate_pwvdate_PulWavVel = "Date Completed"
		blank_PulWavVel = "Blank Form"
		pwvttrid_PulWavVel = "Tester ID"
		pwv01_PulWavVel = "Was PWV performed"
		pwv01a_PulWavVel = "PWV reason not done"
		pwv01b_PulWavVel = "PWV Contraindications"
		pwv01c_PulWavVel = "PWV reason not done Other"
		agi01_PulWavVel = "Was AGI performed"
		agi01a_PulWavVel = "AGI reason not done"
		agi01b_PulWavVel = "AGI Contraindications"
		agi01c_PulWavVel = "AGI reason not done Other"
		abi01_PulWavVel = "Was ABI performed"
		abi01a_PulWavVel = "ABI reason not done"
		abi01b_PulWavVel = "ABI reason not done Other"
		pwbp01_PulWavVel = "Blood pressure"
		pwsbp_PulWavVel = "BP systolic"
		pwdbp_PulWavVel = "BP diastolic"
		pwmap_PulWavVel = "BP MAP"
		vaseracolin = "Was Vasera and Colin comparison study performed"
		pwran_PulWavVel = "Randomization list"
		auto_id_PulWavVel = "Unique Teleform Number"
		crf_parent_name_PulWavVel = "CRF Parent Name"
		study_name_PulWavVel = "Study Name"
	;
	FORMAT
		pwv01_PulWavVel pwv01_PulWavVel_.
		pwv01a_PulWavVel pwv01a_PulWavVel_.
		pwv01b_PulWavVel pwv01b_PulWavVel_.
		agi01_PulWavVel agi01_PulWavVel_.
		agi01a_PulWavVel agi01a_PulWavVel_.
		agi01b_PulWavVel agi01b_PulWavVel_.
		abi01_PulWavVel abi01_PulWavVel_.
		abi01a_PulWavVel abi01a_PulWavVel_.
		pwbp01_PulWavVel pwbp01_PulWavVel_.
		vaseracolin vaseracolin_.
		pwran_PulWavVel pwran_PulWavVel_.
	;
RUN;


DATA blsa_pulse_wave_velocity;
    SET WORK.IMPORT;
RUN;
