#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Echo_and_Carotid.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_EchandCar)="CRF Version"
label(data$obsdate_echodate)="Date Completed"
label(data$echotid)="Tester ID"
label(data$blank_EchandCar)="Blank Form"
label(data$echo01)="Echo done"
label(data$echo01a)="Echo reason not done"
label(data$echo01b)="Echo RND other"
label(data$ct01)="Carotid done"
label(data$ct01a)="Carotid reason not done"
label(data$ct01b)="Carotid RND other"
label(data$bp001)="Blood pressure measured"
label(data$bpsbp)="Systolic"
label(data$bpdbp)="Diastolic"
label(data$bpmap)="MAP"
label(data$auto_id_EchandCar)="Unique Teleform Number"
label(data$crf_parent_name_EchandCar)="CRF Parent Name"
label(data$study_name_EchandCar)="Study Name"

#Create new variables for factors
data$echo01.factor = factor(data$echo01, levels = c("0","1"))
levels(data$echo01.factor) = c("No","Yes")

data$echo01a.factor = factor(data$echo01a, levels = c("0","555","666","777","888","999"))
levels(data$echo01a.factor) = c("Other","Physical problems","Cognitive","Physical and cognitive","Refused","Technical problems")

data$ct01.factor = factor(data$ct01, levels = c("0","1"))
levels(data$ct01.factor) = c("No","Yes")

data$ct01a.factor = factor(data$ct01a, levels = c("1","555","666","777","888","999"))
levels(data$ct01a.factor) = c("Other","Physical problems","Cognitive","Physical and cognitive","Refused","Technical problems")

data$bp001.factor = factor(data$bp001, levels = c("0","1"))
levels(data$bp001.factor) = c("No","Yes")

