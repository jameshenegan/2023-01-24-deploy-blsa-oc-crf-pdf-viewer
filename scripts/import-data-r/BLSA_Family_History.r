#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Family_History.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_FamHis)="CRF Version"
label(data$paternalbirthage)="Paternal age at birth"
label(data$fatheralive)="Is Father still alive"
label(data$paternalcurrentage)="Paternal current age"
label(data$crf_parent_name_FamHis)="CRF Parent Name"
label(data$study_name_FamHis)="Study Name"

#Create new variables for factors
data$fatheralive.factor = factor(data$fatheralive, levels = c("1","2"))
levels(data$fatheralive.factor) = c("Alive","Deceased")

