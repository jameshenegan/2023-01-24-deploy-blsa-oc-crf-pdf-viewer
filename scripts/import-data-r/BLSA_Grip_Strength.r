#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Grip_Strength.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_GriStr)="CRF Version"
label(data$obsdate_gripdate)="Date Completed"
label(data$blank_GriStr)="Blank Form"
label(data$griptid)="Tester ID"
label(data$grip1)="Do you have arthritis in either hand or wrist"
label(data$grip1a)="Is the pain or arthritis in your right left or both hands or wrists"
label(data$grip1b)="Has the pain or arthritis gotten worse recently"
label(data$grip1c)="Will the pain or arthritis keep you from squeezing as hard as you can"
label(data$grip2)="Have you had surgery on either hand or wrist in the past 3 months"
label(data$grip2a)="Was the surgery on your right left or both hands or wrists"
label(data$grip3r1)="Trial 1 right hand"
label(data$grip3r2)="Trial 2 right hand"
label(data$grip3r3)="Trial 3 right hand"
label(data$grip3r4)="Right hand completion status"
label(data$grip3l1)="Trial 1 left hand"
label(data$grip3l2)="Trial 2 left hand"
label(data$grip3l3)="Trial 3 left hand"
label(data$grip3l4)="Left hand completion status"
label(data$auto_id_GriStr)="Unique Teleform Number"
label(data$crf_parent_name_GriStr)="CRF Parent Name"
label(data$study_name_GriStr)="Study Name"

#Create new variables for factors
data$grip1.factor = factor(data$grip1, levels = c("0","1","7","8"))
levels(data$grip1.factor) = c("No","Yes","Refused","Dont know")

data$grip1a.factor = factor(data$grip1a, levels = c("1","2","3","7","8"))
levels(data$grip1a.factor) = c("Right","Left","Both","Refused","Dont know")

data$grip1b.factor = factor(data$grip1b, levels = c("0","1","7","8"))
levels(data$grip1b.factor) = c("No","Yes","Refused","Dont know")

data$grip1c.factor = factor(data$grip1c, levels = c("0","1","7","8"))
levels(data$grip1c.factor) = c("No","Yes","Refused","Dont know")

data$grip2.factor = factor(data$grip2, levels = c("0","1","7","8"))
levels(data$grip2.factor) = c("No","Yes","Refused","Dont know")

data$grip2a.factor = factor(data$grip2a, levels = c("1","2","3","8"))
levels(data$grip2a.factor) = c("Right (Test left side only)","Left (Test right side only)","Both (Do not test)","Dont know (Do not test)")

data$grip3r4.factor = factor(data$grip3r4, levels = c("0","1","2","3","4","7"))
levels(data$grip3r4.factor) = c("Excluded","Did 3 trials","Did 2 trials","Did 1 trial","Unable to do","Refused")

data$grip3l4.factor = factor(data$grip3l4, levels = c("0","1","2","3","4","7"))
levels(data$grip3l4.factor) = c("Excluded","Did 3 trials","Did 2 trials","Did 1 trial","Unable to do","Refused")

