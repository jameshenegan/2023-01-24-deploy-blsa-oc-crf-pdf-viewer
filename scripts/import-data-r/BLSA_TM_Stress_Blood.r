#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_TM_Stress_Blood.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_TMStrBlo)="CRF Version"
label(data$obsdate_tmsb)="Date Completed"
label(data$tmsb_done)="Treadmill stress blood completed"
label(data$tmsb_rnd)="TMSB reason not done"
label(data$tmsb_comment2)="Comment"
label(data$tmsb_samples)="Were all blood draws completed"
label(data$tmsb_rnc)="Reason not completed"
label(data$crf_parent_name_TMStrBlo)="CRF Parent Name"
label(data$study_name_TMStrBlo)="Study Name"

#Create new variables for factors
data$tmsb_done.factor = factor(data$tmsb_done, levels = c("0","1"))
levels(data$tmsb_done.factor) = c("No","Yes")

data$tmsb_rnd.factor = factor(data$tmsb_rnd, levels = c("1","2","3","4"))
levels(data$tmsb_rnd.factor) = c("Refused","Unable","Not Scheduled","Other")

data$tmsb_samples.factor = factor(data$tmsb_samples, levels = c("0","1"))
levels(data$tmsb_samples.factor) = c("No","Yes")

data$tmsb_rnc.factor = factor(data$tmsb_rnc, levels = c("1","2","3"))
levels(data$tmsb_rnc.factor) = c("IV access","Refused","Other")

