#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_TICSm.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_TIC)="CRF Version"
label(data$obsdate_ticsmdate)="Date Completed"
label(data$blank_TIC)="Blank Form"
label(data$ticsmtid)="Tester ID"
label(data$ticsm1)="TICSm1 Score"
label(data$ticsm2)="TICSm2 Score"
label(data$ticsm3)="TICSm3 Score Recite words"
label(data$ticsm4)="TICSm4 Score"
label(data$ticsm5)="TICSm5 Score What do people cut paper with"
label(data$ticsm6)="TICSm6 Score How many things in a dozen"
label(data$ticsm7)="TICSm7 Score What do you call the prickly green plant that lives in the desert"
label(data$ticsm8)="TICSm8 Score What animal does wool come from"
label(data$ticsm9)="TICSm9 Score Say no ifs ands or buts"
label(data$ticsm10)="TICSm10 Score Say Methodist Episcopal"
label(data$ticsm11)="TICSm11 Score Who is the president of the United States"
label(data$ticsm12)="TICSm12 Score Who is the vice president of the United States"
label(data$ticsm13)="TICSm13 Score Tap with finger 5 times"
label(data$ticsm14)="TICSm14 Score opposite of west"
label(data$ticsm15)="TICSm15 Score opposite of generous"
label(data$ticsm16)="TICSm16 Score Recall words from earlier"
label(data$ticsm_subtot)="Validated Score"
label(data$auto_id_TIC)="Unique Teleform Number"
label(data$crf_parent_name_TIC)="CRF Parent Name"
label(data$study_name_TIC)="Study Name"
