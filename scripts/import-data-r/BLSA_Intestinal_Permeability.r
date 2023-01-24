#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Intestinal_Permeability.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_IntPer)="CRF Version"
label(data$obsdate_dategiven)="Date Given"
label(data$testerid_IntPer)="Tester ID"
label(data$blank_IntPer)="Blank Form"
label(data$amount)="Amount of PEG given"
label(data$timedispensed)="Time dispensed"
label(data$timeampm)="Time ampm"
label(data$done_IntPer)="Done not done"
label(data$reasonnd)="Reason not done"
label(data$ua_volume)="UA 24 hr Volume"
label(data$comment_IntPer)="Comment"
label(data$crf_parent_name_IntPer)="CRF Parent Name"
label(data$study_name_IntPer)="Study Name"

#Create new variables for factors
data$timeampm.factor = factor(data$timeampm, levels = c("1","2"))
levels(data$timeampm.factor) = c("Am","Pm")

data$done_IntPer.factor = factor(data$done_IntPer, levels = c("0","1"))
levels(data$done_IntPer.factor) = c("Not Done","Done")

data$reasonnd.factor = factor(data$reasonnd, levels = c("1","2","3"))
levels(data$reasonnd.factor) = c("Refused","Not Eligible","Technical")

