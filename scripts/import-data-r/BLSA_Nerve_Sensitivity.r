#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Nerve_Sensitivity.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_NerSen)="CRF Version"
label(data$obsdate_nrvsdat)="Date Completed"
label(data$blank_NerSen)="Blank Form"
label(data$nrvstid)="Tester ID"
label(data$nrvs01a)="Foot temperature at start of study"
label(data$nrvs01b)="Foot temperature following heating:"
label(data$nrvs01c)="Foot temperature at end of tests:"
label(data$nrvs02)="Which leg was tested"
label(data$nrvs02a)="Why wasn't right let tested"
label(data$nrvs02b)="Other reason R leg not tested"
label(data$nrvsdon)="Was test done"
label(data$crf_parent_name_NerSen)="CRF Parent Name"
label(data$study_name_NerSen)="Study Name"

#Create new variables for factors
data$nrvs02.factor = factor(data$nrvs02, levels = c("0","1"))
levels(data$nrvs02.factor) = c("Right","Left")

data$nrvs02a.factor = factor(data$nrvs02a, levels = c("1","2","3","9"))
levels(data$nrvs02a.factor) = c("Amputation","Ulcer","Trauma or surgery (including knee replacement)","Other please specify")

data$nrvsdon.factor = factor(data$nrvsdon, levels = c("1","5","6","7","9"))
levels(data$nrvsdon.factor) = c("Yes","Physical problems","Cognitive problems","Refused","Technical problems")

