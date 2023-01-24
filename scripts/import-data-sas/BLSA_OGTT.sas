%let path_to_file = '../data-csv/BLSA_OGTT.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ogtt01_OGT_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt02a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt02b_
		1 = 'Exclusion criteria'
		2 = 'Venous access difficult'
		3 = 'Could not tolerate test beverage'
		4 = ' Other (please specify)'
		7 = 'Refused'
	;

	VALUE ogtt02c_
		1 = 'Exercised this morning'
		2 = 'Taken any steroids in past 3 mo'
		3 = 'Did not fast'
		4 = 'Has fever (or infection within past 3 days)'
		5 = 'Uses insulin'
	;

	VALUE ogtt04_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt05_
		0 = 'Short'
		1 = 'Complete'
	;

	VALUE ogtt05b_
		2 = 'Venous access difficult'
		3 = 'Vasovagal reaction'
		4 = 'Other'
		7 = 'Refused'
		9 = 'Technical problems'
	;

	VALUE ogtt08_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08a1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt08b1_
		1 = 'Within past one wk'
		2 = 'Within past two wk'
		3 = 'Within past 1 mo'
		4 = 'Greater than 1 mo'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08c1_
		1 = 'One dose'
		2 = 'Less than 2 weeks'
		3 = 'Greater than 2 weeks'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08a2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt08b2_
		1 = 'Within past one wk'
		2 = 'Within past two wk'
		3 = 'Within past 1 mo'
		4 = 'Greater than 1 mo'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08c2_
		1 = 'One dose'
		2 = 'Less than 2 weeks'
		3 = 'Greater than 2 weeks'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08a3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt08b3_
		1 = 'Within past one wk'
		2 = 'Within past two wk'
		3 = 'Within past 1 mo'
		4 = 'Greater than 1 mo'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08c3_
		1 = 'One dose'
		2 = 'Less than 2 weeks'
		3 = 'Greater than 2 weeks'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08a4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt08b4_
		1 = 'Within past one wk'
		2 = 'Within past two wk'
		3 = 'Within past 1 mo'
		4 = 'Greater than 1 mo'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08c4_
		1 = 'One dose'
		2 = 'Less than 2 weeks'
		3 = 'Greater than 2 weeks'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08a5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt08b5_
		1 = 'Within past one wk'
		2 = 'Within past two wk'
		3 = 'Within past 1 mo'
		4 = 'Greater than 1 mo'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08c5_
		1 = 'One dose'
		2 = 'Less than 2 weeks'
		3 = 'Greater than 2 weeks'
		7 = 'Refused'
		8 = "Don't know"
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

	INFORMAT crf_version_OGT $8.;
	FORMAT crf_version_OGT $8.;

	INFORMAT obsdate_ogttdate YYMMDD10.;
	FORMAT obsdate_ogttdate YYMMDD10.;

	INFORMAT blank_OGT $1.;
	FORMAT blank_OGT $1.;

	INFORMAT ogtttid_OGT BEST32.;
	FORMAT ogtttid_OGT BEST12.;

	INFORMAT ogtt01_OGT BEST32.;
	FORMAT ogtt01_OGT BEST12.;

	INFORMAT ogtt02a BEST32.;
	FORMAT ogtt02a BEST12.;

	INFORMAT ogtt02b BEST32.;
	FORMAT ogtt02b BEST12.;

	INFORMAT ogtt02c BEST32.;
	FORMAT ogtt02c BEST12.;

	INFORMAT ogtt02d $102.;
	FORMAT ogtt02d $102.;

	INFORMAT ogtt04 BEST32.;
	FORMAT ogtt04 BEST12.;

	INFORMAT ogtt05 BEST32.;
	FORMAT ogtt05 BEST12.;

	INFORMAT ogtt05a $1.;
	FORMAT ogtt05a $1.;

	INFORMAT ogtt05b BEST32.;
	FORMAT ogtt05b BEST12.;

	INFORMAT ogtt05c $47.;
	FORMAT ogtt05c $47.;

	INFORMAT ogtt06 BEST32.;
	FORMAT ogtt06 BEST12.;

	INFORMAT ogtt07 BEST32.;
	FORMAT ogtt07 BEST12.;

	INFORMAT ogtt08 BEST32.;
	FORMAT ogtt08 BEST12.;

	INFORMAT ogtt08a1 BEST32.;
	FORMAT ogtt08a1 BEST12.;

	INFORMAT ogtt08b1 BEST32.;
	FORMAT ogtt08b1 BEST12.;

	INFORMAT ogtt08c1 BEST32.;
	FORMAT ogtt08c1 BEST12.;

	INFORMAT ogtt08a2 BEST32.;
	FORMAT ogtt08a2 BEST12.;

	INFORMAT ogtt08b2 BEST32.;
	FORMAT ogtt08b2 BEST12.;

	INFORMAT ogtt08c2 BEST32.;
	FORMAT ogtt08c2 BEST12.;

	INFORMAT ogtt08a3 BEST32.;
	FORMAT ogtt08a3 BEST12.;

	INFORMAT ogtt08b3 BEST32.;
	FORMAT ogtt08b3 BEST12.;

	INFORMAT ogtt08c3 BEST32.;
	FORMAT ogtt08c3 BEST12.;

	INFORMAT ogtt08a4 BEST32.;
	FORMAT ogtt08a4 BEST12.;

	INFORMAT ogtt08b4 BEST32.;
	FORMAT ogtt08b4 BEST12.;

	INFORMAT ogtt08c4 BEST32.;
	FORMAT ogtt08c4 BEST12.;

	INFORMAT ogtt08a5 BEST32.;
	FORMAT ogtt08a5 BEST12.;

	INFORMAT ogtt08b5 BEST32.;
	FORMAT ogtt08b5 BEST12.;

	INFORMAT ogtt08c5 BEST32.;
	FORMAT ogtt08c5 BEST12.;

	INFORMAT auto_id_OGT BEST32.;
	FORMAT auto_id_OGT BEST12.;

	INFORMAT crf_parent_name_OGT $9.;
	FORMAT crf_parent_name_OGT $9.;

	INFORMAT item_group_repeat_OGT BEST32.;
	FORMAT item_group_repeat_OGT BEST12.;

	INFORMAT ogtt05a_0 BEST32.;
	FORMAT ogtt05a_0 BEST12.;

	INFORMAT ogtt05a_100 BEST32.;
	FORMAT ogtt05a_100 BEST12.;

	INFORMAT ogtt05a_120 BEST32.;
	FORMAT ogtt05a_120 BEST12.;

	INFORMAT ogtt05a_20 BEST32.;
	FORMAT ogtt05a_20 BEST12.;

	INFORMAT ogtt05a_40 BEST32.;
	FORMAT ogtt05a_40 BEST12.;

	INFORMAT ogtt05a_60 BEST32.;
	FORMAT ogtt05a_60 BEST12.;

	INFORMAT study_name_OGT $4.;
	FORMAT study_name_OGT $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_OGT
		obsdate_ogttdate
		blank_OGT
		ogtttid_OGT
		ogtt01_OGT
		ogtt02a
		ogtt02b
		ogtt02c
		ogtt02d
		ogtt04
		ogtt05
		ogtt05a
		ogtt05b
		ogtt05c
		ogtt06
		ogtt07
		ogtt08
		ogtt08a1
		ogtt08b1
		ogtt08c1
		ogtt08a2
		ogtt08b2
		ogtt08c2
		ogtt08a3
		ogtt08b3
		ogtt08c3
		ogtt08a4
		ogtt08b4
		ogtt08c4
		ogtt08a5
		ogtt08b5
		ogtt08c5
		auto_id_OGT
		crf_parent_name_OGT
		item_group_repeat_OGT
		ogtt05a_0
		ogtt05a_100
		ogtt05a_120
		ogtt05a_20
		ogtt05a_40
		ogtt05a_60
		study_name_OGT
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
		crf_version_OGT = "CRF Version"
		obsdate_ogttdate = "Date Completed"
		blank_OGT = "Blank Form"
		ogtttid_OGT = "Tester ID"
		ogtt01_OGT = "Do you take insulin to controldiabetes"
		ogtt02a = "Was glucose tolerance test done"
		ogtt02b = "reason not done"
		ogtt02c = "Exclusion criteria"
		ogtt02d = "reason not done other"
		ogtt04 = "Was entire glucose drink consumed"
		ogtt05 = "Which protocol was performed"
		ogtt05a = "Samples collected"
		ogtt05b = "Reason all samples not colleted"
		ogtt05c = "Other reason all samples not collected"
		ogtt06 = "Body temperature before OGTT"
		ogtt07 = "Body temperature after OGTT"
		ogtt08 = "Any steroid use the past 3 months"
		ogtt08a1 = "Oral steroid"
		ogtt08b1 = "Oral steroid recency"
		ogtt08c1 = "Duration of use oral steroid"
		ogtt08a2 = "Injectable steroid"
		ogtt08b2 = "Injectable steroid recency"
		ogtt08c2 = "Duration of use Injectable steroid"
		ogtt08a3 = "Topical steroid"
		ogtt08b3 = "Topical steroid recency"
		ogtt08c3 = "Duration of use Topical steroid"
		ogtt08a4 = "Nasal steroid"
		ogtt08b4 = "Nasal steroid recency"
		ogtt08c4 = "Duration of use Nasal steroid"
		ogtt08a5 = "Inhaled steroid"
		ogtt08b5 = "Inhaled steroid recency"
		ogtt08c5 = "Duration of use Inhaled steroid"
		auto_id_OGT = "Unique Teleform Number"
		crf_parent_name_OGT = "CRF Parent Name"
		item_group_repeat_OGT = "Item Group Repeate"
		ogtt05a_0 = "Samples collected : 0 (Checkbox Indicator)"
		ogtt05a_100 = "Samples collected : 100 (Checkbox Indicator)"
		ogtt05a_120 = "Samples collected : 120 (Checkbox Indicator)"
		ogtt05a_20 = "Samples collected : 20 (Checkbox Indicator)"
		ogtt05a_40 = "Samples collected : 40 (Checkbox Indicator)"
		ogtt05a_60 = "Samples collected : 60 (Checkbox Indicator)"
		study_name_OGT = "Study Name"
	;
	FORMAT
		ogtt01_OGT ogtt01_OGT_.
		ogtt02a ogtt02a_.
		ogtt02b ogtt02b_.
		ogtt02c ogtt02c_.
		ogtt04 ogtt04_.
		ogtt05 ogtt05_.
		ogtt05b ogtt05b_.
		ogtt08 ogtt08_.
		ogtt08a1 ogtt08a1_.
		ogtt08b1 ogtt08b1_.
		ogtt08c1 ogtt08c1_.
		ogtt08a2 ogtt08a2_.
		ogtt08b2 ogtt08b2_.
		ogtt08c2 ogtt08c2_.
		ogtt08a3 ogtt08a3_.
		ogtt08b3 ogtt08b3_.
		ogtt08c3 ogtt08c3_.
		ogtt08a4 ogtt08a4_.
		ogtt08b4 ogtt08b4_.
		ogtt08c4 ogtt08c4_.
		ogtt08a5 ogtt08a5_.
		ogtt08b5 ogtt08b5_.
		ogtt08c5 ogtt08c5_.
	;
RUN;


DATA blsa_ogtt;
    SET WORK.IMPORT;
RUN;
