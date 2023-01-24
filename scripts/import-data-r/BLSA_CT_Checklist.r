#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_CT_Checklist.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_CTChe)="CRF Version"
label(data$obsdate_ctckdte)="Date Completed"
label(data$ctcktid)="Tester ID"
label(data$blank_CTChe)="Blank Form"
label(data$ct_er_scan)="ER Scanner"
label(data$ctckdne)="CT scan done"
label(data$ctchk1)="Initial time"
label(data$ctchk1a)="Initial time am pm"
label(data$ctchk8a)="Measurement A"
label(data$ctchk8b)="Measurement B"
label(data$ctchk8c)="Measurement C"
label(data$ctchk8d)="Measurement D"
label(data$ctchk8e)="Calculate E"
label(data$ctchk8f)="Calculate F"
label(data$ctchk8g)="Calculate G"
label(data$ctchk8h)="Calculate H"
label(data$ctchk14)="Completion of questioner final time"
label(data$ctchk14a)="Completion Of Questioner Final Time am pm"
label(data$comments_CTChe)="Comments"
label(data$ctchk_lr)="Which leg scanned"
label(data$auto_id_CTChe)="Unique Teleform Number"
label(data$crf_parent_name_CTChe)="CRF Parent Name"
label(data$crf_status_CTChe)="CRF Status"
label(data$study_name_CTChe)="Study Name"

#Create new variables for factors
data$ctckdne.factor = factor(data$ctckdne, levels = c("1","555","666","888","999"))
levels(data$ctckdne.factor) = c("Yes","Physical problems","Cognitive problems","Refused","Technical problems")

data$ctchk1a.factor = factor(data$ctchk1a, levels = c("1","2"))
levels(data$ctchk1a.factor) = c("am","pm")

data$ctchk14a.factor = factor(data$ctchk14a, levels = c("1","2"))
levels(data$ctchk14a.factor) = c("am","pm")

data$ctchk_lr.factor = factor(data$ctchk_lr, levels = c("1","2"))
levels(data$ctchk_lr.factor) = c("Right","Left")

