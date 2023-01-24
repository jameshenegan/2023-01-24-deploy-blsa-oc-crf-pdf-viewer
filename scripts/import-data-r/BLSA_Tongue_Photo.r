#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Tongue_Photo.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_TonPho)="CRF Version"
label(data$obsdate_tphdat)="Date Completed"
label(data$blank_TonPho)="Blank Form"
label(data$tphtid)="Tester ID"
label(data$tph01)="Were Tongue photos taken"
label(data$tph01c)="Comment"
label(data$tph02a)="Photo taken without food coloring Left"
label(data$tph02b)="Photo taken without food coloring Right"
label(data$tph02c)="Photo taken with food coloring Left"
label(data$tph02d)="Photo taken with food coloring Right"
label(data$tph03a)="Reason all photos not collected"
label(data$tph03b)="Other reason all photos not collected"
label(data$auto_id_TonPho)="Unique Teleform Number"
label(data$crf_parent_name_TonPho)="CRF Parent Name"
label(data$study_name_TonPho)="Study Name"

#Create new variables for factors
data$tph01.factor = factor(data$tph01, levels = c("0","1","4","6","7","9"))
levels(data$tph01.factor) = c("Other","Yes","Refused","Technical","No tester","Not scheduled")

data$tph02a.factor = factor(data$tph02a, levels = c("0","1"))
levels(data$tph02a.factor) = c("No","Yes")

data$tph02b.factor = factor(data$tph02b, levels = c("0","1"))
levels(data$tph02b.factor) = c("No","Yes")

data$tph02c.factor = factor(data$tph02c, levels = c("0","1"))
levels(data$tph02c.factor) = c("No","Yes")

data$tph02d.factor = factor(data$tph02d, levels = c("0","1"))
levels(data$tph02d.factor) = c("No","Yes")

data$tph03a.factor = factor(data$tph03a, levels = c("0","4","6"))
levels(data$tph03a.factor) = c("Other","Refused","Technical")

