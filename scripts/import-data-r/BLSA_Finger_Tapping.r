#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Finger_Tapping.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_FinTap)="CRF Version"
label(data$obsdate_fttdate)="Date Completed"
label(data$blank_FinTap)="Blank Form"
label(data$ftttid)="Tester ID"
label(data$ftt01)="Does the participant have physical hand problems"
label(data$fttdone)="Was finger tapping completed"
label(data$ftt02a)="Reason test not performed or unsatisfactory"
label(data$ftt02b)="Other Reason test not done"
label(data$auto_id_FinTap)="Unique Teleform Number"
label(data$crf_parent_name_FinTap)="CRF Parent Name"
label(data$study_name_FinTap)="Study Name"

#Create new variables for factors
data$ftt01.factor = factor(data$ftt01, levels = c("0","1"))
levels(data$ftt01.factor) = c("No","Yes")

data$fttdone.factor = factor(data$fttdone, levels = c("0","1"))
levels(data$fttdone.factor) = c("No","Yes")

data$ftt02a.factor = factor(data$ftt02a, levels = c("1","555","666","777","888","999"))
levels(data$ftt02a.factor) = c("Other (please specify)","Physical problems","Mental problems","Physical and mental problems","Refused","Technical problems (includes no time or no tester)")

