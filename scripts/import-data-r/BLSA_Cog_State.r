#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Cog_State.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_CogSta)="CRF Version"
label(data$date_CogSta)="Date Completed"
label(data$blank_CogSta)="Blank Form"
label(data$tid_CogSta)="Tester ID"
label(data$randomizationid)="Randomization number"
label(data$handprob)="Does the participant have physical hand problems"
label(data$done_CogSta)="Was Cog State protocol completed"
label(data$rnd)="Reason test not performed or unsatisfactory"
label(data$rndother)="Other Reason test not done"
label(data$crf_parent_name_CogSta)="CRF Parent Name"
label(data$study_name_CogSta)="Study Name"

#Create new variables for factors
data$handprob.factor = factor(data$handprob, levels = c("0","1"))
levels(data$handprob.factor) = c("No","Yes")

data$done_CogSta.factor = factor(data$done_CogSta, levels = c("0","1"))
levels(data$done_CogSta.factor) = c("No","Yes")

data$rnd.factor = factor(data$rnd, levels = c("1","555","666","777","888","999"))
levels(data$rnd.factor) = c("Other (please specify)","Physical problems","Mental problems","Physical and mental problems","Refused","Technical problems (includes no time or no tester)")

