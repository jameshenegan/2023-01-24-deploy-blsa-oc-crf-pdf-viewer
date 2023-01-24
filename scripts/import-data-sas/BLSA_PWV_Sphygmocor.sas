%let path_to_file = '../data-csv/BLSA_PWV_Sphygmocor.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE pwran_PWVSph_
		1 = 'Complior first SphygmoCor second'
		2 = 'SphgmoCor first Complior second'
		3 = 'Complior Only'
	;

	VALUE pwv01_PWVSph_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pwv01a_PWVSph_
		0 = 'Other'
		1 = 'Contraindication'
		555 = 'Physical'
		666 = 'Cognitive'
		777 = 'Physical and Cognitive'
		888 = 'Refused'
		999 = 'Technical problems'
	;

	VALUE pwv01b_PWVSph_
		1 = 'TIA or CVA within past 6 months'
		2 = 'Bilateral carotid bruits'
		3 = 'Hardware on neck precluding access to carotid pulse'
	;

	VALUE agi01_PWVSph_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE agi01a_PWVSph_
		0 = 'Other'
		1 = 'Contraindication'
		555 = 'Physical'
		666 = 'Cognitive'
		777 = 'Physical and Cognitive'
		888 = 'Refused'
		999 = 'Technical problems'
	;

	VALUE abi01_PWVSph_
		0 = 'No'
		1 = 'Yes both sides'
		2 = 'Right only'
		3 = 'Left only'
	;

	VALUE abi01a_PWVSph_
		0 = 'Other'
		1 = 'Contraindication'
		555 = 'Physical'
		666 = 'Cognitive'
		777 = 'Physical and Cognitive'
		888 = 'Refused'
		999 = 'Technical problems'
	;

	VALUE pwbp01_PWVSph_
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

	INFORMAT crf_version_PWVSph $8.;
	FORMAT crf_version_PWVSph $8.;

	INFORMAT obsdate_pwvdate_PWVSph YYMMDD10.;
	FORMAT obsdate_pwvdate_PWVSph YYMMDD10.;

	INFORMAT blank_PWVSph $1.;
	FORMAT blank_PWVSph $1.;

	INFORMAT pwvttrid_PWVSph BEST32.;
	FORMAT pwvttrid_PWVSph BEST12.;

	INFORMAT pwran_PWVSph BEST32.;
	FORMAT pwran_PWVSph BEST12.;

	INFORMAT pwv01_PWVSph BEST32.;
	FORMAT pwv01_PWVSph BEST12.;

	INFORMAT pwv01a_PWVSph BEST32.;
	FORMAT pwv01a_PWVSph BEST12.;

	INFORMAT pwv01b_PWVSph BEST32.;
	FORMAT pwv01b_PWVSph BEST12.;

	INFORMAT pwv01c_PWVSph $30.;
	FORMAT pwv01c_PWVSph $30.;

	INFORMAT agi01_PWVSph BEST32.;
	FORMAT agi01_PWVSph BEST12.;

	INFORMAT agi01a_PWVSph BEST32.;
	FORMAT agi01a_PWVSph BEST12.;

	INFORMAT agi01b_PWVSph $1.;
	FORMAT agi01b_PWVSph $1.;

	INFORMAT agi01c_PWVSph $24.;
	FORMAT agi01c_PWVSph $24.;

	INFORMAT abi01_PWVSph BEST32.;
	FORMAT abi01_PWVSph BEST12.;

	INFORMAT abi01a_PWVSph BEST32.;
	FORMAT abi01a_PWVSph BEST12.;

	INFORMAT abi01b_PWVSph $9.;
	FORMAT abi01b_PWVSph $9.;

	INFORMAT pwbp01_PWVSph BEST32.;
	FORMAT pwbp01_PWVSph BEST12.;

	INFORMAT pwsbp_PWVSph BEST32.;
	FORMAT pwsbp_PWVSph BEST12.;

	INFORMAT pwdbp_PWVSph BEST32.;
	FORMAT pwdbp_PWVSph BEST12.;

	INFORMAT pwmap_PWVSph BEST32.;
	FORMAT pwmap_PWVSph BEST12.;

	INFORMAT auto_id_PWVSph BEST32.;
	FORMAT auto_id_PWVSph BEST12.;

	INFORMAT crf_parent_name_PWVSph $19.;
	FORMAT crf_parent_name_PWVSph $19.;

	INFORMAT study_name_PWVSph $4.;
	FORMAT study_name_PWVSph $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_PWVSph
		obsdate_pwvdate_PWVSph
		blank_PWVSph
		pwvttrid_PWVSph
		pwran_PWVSph
		pwv01_PWVSph
		pwv01a_PWVSph
		pwv01b_PWVSph
		pwv01c_PWVSph
		agi01_PWVSph
		agi01a_PWVSph
		agi01b_PWVSph
		agi01c_PWVSph
		abi01_PWVSph
		abi01a_PWVSph
		abi01b_PWVSph
		pwbp01_PWVSph
		pwsbp_PWVSph
		pwdbp_PWVSph
		pwmap_PWVSph
		auto_id_PWVSph
		crf_parent_name_PWVSph
		study_name_PWVSph
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
		crf_version_PWVSph = "CRF Version"
		obsdate_pwvdate_PWVSph = "Date Completed"
		blank_PWVSph = "Blank Form"
		pwvttrid_PWVSph = "Tester ID"
		pwran_PWVSph = "Randomization list"
		pwv01_PWVSph = "Was PWV performed"
		pwv01a_PWVSph = "PWV reason not done"
		pwv01b_PWVSph = "PWV Contraindications"
		pwv01c_PWVSph = "PWV reason not done Other"
		agi01_PWVSph = "Was AGI performed"
		agi01a_PWVSph = "AGI reason not done"
		agi01b_PWVSph = "AGI Contraindications"
		agi01c_PWVSph = "AGI reason not done Other"
		abi01_PWVSph = "Was ABI performed"
		abi01a_PWVSph = "ABI reason not done"
		abi01b_PWVSph = "ABI reason not done Other"
		pwbp01_PWVSph = "Blood pressure"
		pwsbp_PWVSph = "BP systolic"
		pwdbp_PWVSph = "BP diastolic"
		pwmap_PWVSph = "BP MAP"
		auto_id_PWVSph = "Unique Teleform Number"
		crf_parent_name_PWVSph = "CRF Parent Name"
		study_name_PWVSph = "Study Name"
	;
	FORMAT
		pwran_PWVSph pwran_PWVSph_.
		pwv01_PWVSph pwv01_PWVSph_.
		pwv01a_PWVSph pwv01a_PWVSph_.
		pwv01b_PWVSph pwv01b_PWVSph_.
		agi01_PWVSph agi01_PWVSph_.
		agi01a_PWVSph agi01a_PWVSph_.
		abi01_PWVSph abi01_PWVSph_.
		abi01a_PWVSph abi01a_PWVSph_.
		pwbp01_PWVSph pwbp01_PWVSph_.
	;
RUN;


DATA blsa_pwv_sphygmocor;
    SET WORK.IMPORT;
RUN;
