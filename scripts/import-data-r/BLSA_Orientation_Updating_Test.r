#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Orientation_Updating_Test.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_OriUpdTes)="CRF Version"
label(data$obsdate_outdate)="Date Completed"
label(data$blank_OriUpdTes)="Blank Form"
label(data$outtid)="Tester ID"
label(data$outt1a)="Trial 1 direction of rotation"
label(data$outt1b)="Trial 1 angle or rotation"
label(data$outt1c)="Trial 1 error of angle estimation"
label(data$outt1d)="Trial 1 how confident is the subject"
label(data$outt2a)="Trial 2 direction of rotation"
label(data$outt2b)="Trial 2 angle or rotation"
label(data$outt2c)="Trial 2 error of angle estimation"
label(data$outt2d)="Trial 2 how confident is the subject"
label(data$outt3a)="Trial 3 direction of rotation"
label(data$outt3b)="Trial 3 angle or rotation"
label(data$outt3c)="Trial 3 error of angle estimation"
label(data$outt3d)="Trial 3 how confident is the subject"
label(data$outt4a)="Trial 4 direction of rotation"
label(data$outt4b)="Trial 4 angle or rotation"
label(data$outt4c)="Trial 4 error of angle estimation"
label(data$outt4d)="Trial 4 how confident is the subject"
label(data$outt5a)="Trial 5 direction of rotation"
label(data$outt5b)="Trial 5 angle or rotation"
label(data$outt5c)="Trial 5 error of angle estimation"
label(data$outt5d)="Trial 5 how confident is the subject"
label(data$outt6a)="Trial 6 direction of rotation"
label(data$outt6b)="Trial 6 angle or rotation"
label(data$outt6c)="Trial 6 error of angle estimation"
label(data$outt6d)="Trial 6 how confident is the subject"
label(data$outt7a)="Trial 7 direction of rotation"
label(data$outt7b)="Trial 7 angle or rotation"
label(data$outt7c)="Trial 7 error of angle estimation"
label(data$outt7d)="Trial 7 how confident is the subject"
label(data$outt8a)="Trial 8 direction of rotation"
label(data$outt8b)="Trial 8 angle or rotation"
label(data$outt8c)="Trial 8 error of angle estimation"
label(data$outt8d)="Trial 8 how confident is the subject"
label(data$outt9a)="Trial 9 direction of rotation"
label(data$outt9b)="Trial 9 angle or rotation"
label(data$outt9c)="Trial 9 error of angle estimation"
label(data$outt9d)="Trial 9 how confident is the subject"
label(data$outt10a)="Trial 10 direction of rotation"
label(data$outt10b)="Trial 10 angle or rotation"
label(data$outt10c)="Trial 10 error of angle estimation"
label(data$outt10d)="Trial 10 how confident is the subject"
label(data$outt11a)="Trial 11 direction of rotation"
label(data$outt11b)="Trial 11 angle or rotation"
label(data$outt11c)="Trial 11 error of angle estimation"
label(data$outt11d)="Trial 11 how confident is the subject"
label(data$outt12a)="Trial 12 direction of rotation"
label(data$outt12b)="Trial 12 angle or rotation"
label(data$outt12c)="Trial 12 error of angle estimation"
label(data$outt12d)="Trial 12 how confident is the subject"
label(data$outdone)="Did participant complete testing"
label(data$outpilot)="Pilot"
label(data$auto_id_OriUpdTes)="Unique Teleform Number"
label(data$outrnd2)="Reason not done"
label(data$outrnd)="Reason not done"
label(data$crf_parent_name_OriUpdTes)="CRF Parent Name"
label(data$study_name_OriUpdTes)="Study Name"

#Create new variables for factors
data$outt1a.factor = factor(data$outt1a, levels = c("1","2"))
levels(data$outt1a.factor) = c("Left turn","Right turn")

data$outt1d.factor = factor(data$outt1d, levels = c("0","1","2"))
levels(data$outt1d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outt2a.factor = factor(data$outt2a, levels = c("1","2"))
levels(data$outt2a.factor) = c("Left turn","Right turn")

data$outt2d.factor = factor(data$outt2d, levels = c("0","1","2"))
levels(data$outt2d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outt3a.factor = factor(data$outt3a, levels = c("1","2"))
levels(data$outt3a.factor) = c("Left turn","Right turn")

data$outt3d.factor = factor(data$outt3d, levels = c("0","1","2"))
levels(data$outt3d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outt4a.factor = factor(data$outt4a, levels = c("1","2"))
levels(data$outt4a.factor) = c("Left turn","Right turn")

data$outt4d.factor = factor(data$outt4d, levels = c("0","1","2"))
levels(data$outt4d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outt5a.factor = factor(data$outt5a, levels = c("1","2"))
levels(data$outt5a.factor) = c("Left turn","Right turn")

data$outt5d.factor = factor(data$outt5d, levels = c("0","1","2"))
levels(data$outt5d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outt6a.factor = factor(data$outt6a, levels = c("1","2"))
levels(data$outt6a.factor) = c("Left turn","Right turn")

data$outt6d.factor = factor(data$outt6d, levels = c("0","1","2"))
levels(data$outt6d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outt7a.factor = factor(data$outt7a, levels = c("1","2"))
levels(data$outt7a.factor) = c("Left turn","Right turn")

data$outt7d.factor = factor(data$outt7d, levels = c("0","1","2"))
levels(data$outt7d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outt8a.factor = factor(data$outt8a, levels = c("1","2"))
levels(data$outt8a.factor) = c("Left turn","Right turn")

data$outt8d.factor = factor(data$outt8d, levels = c("0","1","2"))
levels(data$outt8d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outt9a.factor = factor(data$outt9a, levels = c("1","2"))
levels(data$outt9a.factor) = c("Left turn","Right turn")

data$outt9d.factor = factor(data$outt9d, levels = c("0","1","2"))
levels(data$outt9d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outt10a.factor = factor(data$outt10a, levels = c("1","2"))
levels(data$outt10a.factor) = c("Left turn","Right turn")

data$outt10d.factor = factor(data$outt10d, levels = c("0","1","2"))
levels(data$outt10d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outt11a.factor = factor(data$outt11a, levels = c("1","2"))
levels(data$outt11a.factor) = c("Left turn","Right turn")

data$outt11d.factor = factor(data$outt11d, levels = c("0","1","2"))
levels(data$outt11d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outt12a.factor = factor(data$outt12a, levels = c("1","2"))
levels(data$outt12a.factor) = c("Left turn","Right turn")

data$outt12d.factor = factor(data$outt12d, levels = c("0","1","2"))
levels(data$outt12d.factor) = c("I am sure","I am somewhat sure","I am randomly guessing/very unsure")

data$outdone.factor = factor(data$outdone, levels = c("0","1"))
levels(data$outdone.factor) = c("Yes","No")

data$outpilot.factor = factor(data$outpilot, levels = c("0","1"))
levels(data$outpilot.factor) = c("No","Yes")

data$outrnd2.factor = factor(data$outrnd2, levels = c("1","2","3","4","5","6"))
levels(data$outrnd2.factor) = c("Do not understand test instructions","Got too disoriented or dizzy during the test","Refused participation during the test","Refused the entire test","Time constraints","Not Scheduled")

data$outrnd.factor = factor(data$outrnd, levels = c("1","2","3","4","5"))
levels(data$outrnd.factor) = c("Do not understand test instructions","Got too disoriented or dizzy during the test","Refused participation during the test","Refused the entire test","Time constraints")

