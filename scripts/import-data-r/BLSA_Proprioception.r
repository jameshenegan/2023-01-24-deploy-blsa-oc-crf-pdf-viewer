#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Proprioception.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_Pro)="CRF Version"
label(data$obsdate_prodate)="Date Completed"
label(data$blank_Pro)="Blank Form"
label(data$protid)="Tester ID"
label(data$pro01)="Status of Proprioception test"
label(data$pro01a)="Reason test not performed"
label(data$pro02)="Accuracy in threshold test"
label(data$pro02a)="Partially correct threshold"
label(data$pro03)="Comments"
label(data$auto_id_Pro)="Unique Teleform Number"
label(data$crf_parent_name_Pro)="CRF Parent Name"
label(data$item_group_repeat_Pro)="Item Group Repeate"
label(data$pro02a_1)="Partially correct threshold : Threshold 1 (Checkbox Indicator)"
label(data$pro02a_2)="Partially correct threshold : Threshold 2 (Checkbox Indicator)"
label(data$pro02a_3)="Partially correct threshold : Threshold 3 (Checkbox Indicator)"
label(data$study_name_Pro)="Study Name"

#Create new variables for factors
data$pro01.factor = factor(data$pro01, levels = c("0","1"))
levels(data$pro01.factor) = c("Not attempted","Attempted")

data$pro01a.factor = factor(data$pro01a, levels = c("1","10","11","12","2","3","4","5","6","7","8","9"))
levels(data$pro01a.factor) = c("Not enough time/not scheduled","Lower limb braces ambulatory","Severely limited ankle range of motion (<10 degree dorsiflexion or plantar flexion)","Unable to follow directions","No examiner available","Technical/equipment problem","Cognitively impaired","Unable to stand/walk","Examiner felt unsafe","Participant refused","Other Physical problems","Lower limb amputations")

data$pro02.factor = factor(data$pro02, levels = c("1","2"))
levels(data$pro02.factor) = c("All Correct","Partially Correct")

