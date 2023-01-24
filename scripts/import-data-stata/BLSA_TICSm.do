clear
import delimited "../data-csv/BLSA_TICSm.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_tic "CRF Version"

label variable obsdate_ticsmdate "Date Completed"

// Generate 'date version' of the 'obsdate_ticsmdate' variable
gen _obsdate_ticsmdate = date(obsdate_ticsmdate, "YMD")
format _obsdate_ticsmdate %td

label variable blank_tic "Blank Form"

label variable ticsmtid "Tester ID"

label variable ticsm1 "TICSm1 Score"

label variable ticsm2 "TICSm2 Score"

label variable ticsm3 "TICSm3 Score Recite words"

label variable ticsm4 "TICSm4 Score"

label variable ticsm5 "TICSm5 Score What do people cut paper with"

label variable ticsm6 "TICSm6 Score How many things in a dozen"

label variable ticsm7 "TICSm7 Score What do you call the prickly green plant that lives in the desert"

label variable ticsm8 "TICSm8 Score What animal does wool come from"

label variable ticsm9 "TICSm9 Score Say no ifs ands or buts"

label variable ticsm10 "TICSm10 Score Say Methodist Episcopal"

label variable ticsm11 "TICSm11 Score Who is the president of the United States"

label variable ticsm12 "TICSm12 Score Who is the vice president of the United States"

label variable ticsm13 "TICSm13 Score Tap with finger 5 times"

label variable ticsm14 "TICSm14 Score opposite of west"

label variable ticsm15 "TICSm15 Score opposite of generous"

label variable ticsm16 "TICSm16 Score Recall words from earlier"

label variable ticsm_subtot "Validated Score"

label variable auto_id_tic "Unique Teleform Number"

label variable crf_parent_name_tic "CRF Parent Name"

label variable study_name_tic "Study Name"

