#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Capacity_Assessment.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_CapAss)="CRF Version"
label(data$date_CapAss)="Date"
label(data$testerid_CapAss)="Tester ID"
label(data$q1purpose)="What is the purpose of this research"
label(data$q1comments)="Purpose Raters comments"
label(data$q1rating)="Purpose Raters Rating"
label(data$q2nametests)="Can you name 3 tests that you performed at your last visit"
label(data$q2comments)="Name tests comment"
label(data$q2rating)="Name tests Raters Rating"
label(data$q3riskfactors)="Based on your answer above can you name a risk factor for one of those tests"
label(data$q3comments)="Risk factor comment"
label(data$crf_parent_name_CapAss)="CRF Parent Name"
label(data$study_name_CapAss)="Study Name"

#Create new variables for factors
data$q1rating.factor = factor(data$q1rating, levels = c("1","2","3"))
levels(data$q1rating.factor) = c("1. Able to give informed consent at this time","2. Unable to give informed consent at this time","3. Questionable (unsure) ability to give informed consent at this time")

data$q2rating.factor = factor(data$q2rating, levels = c("1","2","3"))
levels(data$q2rating.factor) = c("1. Able to give informed consent at this time","2. Unable to give informed consent at this time","3. Questionable (unsure) ability to give informed consent at this time")

