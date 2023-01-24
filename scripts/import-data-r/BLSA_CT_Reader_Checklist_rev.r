#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_CT_Reader_Checklist_rev.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_CTReaCherev)="CRF Version"
label(data$obsdate_ctdondt)="Date CT done"
label(data$blank_CTReaCherev)="Blank Form"
label(data$ctredid)="Tester ID"
label(data$ctred01)="CD received"
label(data$ctrecdt)="Date CT received"
label(data$ctred02)="Are there duplicate images"
label(data$ctred02a)="L1-L2 how many"
label(data$ctred02b)="L4-L5 how many"
label(data$ctred02c)="Thigh how many"
label(data$ctred02d)="Upper tibia how many"
label(data$ctred02e)="Lower tibia how many"
label(data$ctred02f)="Foot how many"
label(data$ctred02g)="Scout Film Torso how many"
label(data$ctred02h)="Scout Film - Legs how many"
label(data$ctred03a)="Image Missing"
label(data$ctred03b)="Hardware"
label(data$ctred03c)="Malalignment"
label(data$ctred03d)="Artifact"
label(data$auto_id_CTReaCherev)="Unique Teleform Number"
label(data$crf_parent_name_CTReaCherev)="CRF Parent Name"
label(data$crf_status_CTReaCherev)="CRF Status"
label(data$ctred03a_1)="Image Missing : L1-L2 (Checkbox Indicator)"
label(data$ctred03a_2)="Image Missing : L4-L5 (Checkbox Indicator)"
label(data$ctred03a_3)="Image Missing : Thigh (Checkbox Indicator)"
label(data$ctred03a_4)="Image Missing : Upper Tibia (Checkbox Indicator)"
label(data$ctred03a_5)="Image Missing : Lower Tibia (Checkbox Indicator)"
label(data$ctred03a_6)="Image Missing : Foot (Checkbox Indicator)"
label(data$ctred03b_1)="Hardware : L1-L2 (Checkbox Indicator)"
label(data$ctred03b_2)="Hardware : L4-L5 (Checkbox Indicator)"
label(data$ctred03b_3)="Hardware : Thigh (Checkbox Indicator)"
label(data$ctred03b_4)="Hardware : Upper Tibia (Checkbox Indicator)"
label(data$ctred03b_5)="Hardware : Lower Tibia (Checkbox Indicator)"
label(data$ctred03b_6)="Hardware : Foot (Checkbox Indicator)"
label(data$ctred03c_1)="Malalignment : L1-L2 (Checkbox Indicator)"
label(data$ctred03c_2)="Malalignment : L4-L5 (Checkbox Indicator)"
label(data$ctred03c_3)="Malalignment : Thigh (Checkbox Indicator)"
label(data$ctred03c_4)="Malalignment : Upper Tibia (Checkbox Indicator)"
label(data$ctred03c_5)="Malalignment : Lower Tibia (Checkbox Indicator)"
label(data$ctred03c_6)="Malalignment : Foot (Checkbox Indicator)"
label(data$ctred03d_1)="Artifact : L1-L2 (Checkbox Indicator)"
label(data$ctred03d_2)="Artifact : L4-L5 (Checkbox Indicator)"
label(data$ctred03d_3)="Artifact : Thigh (Checkbox Indicator)"
label(data$ctred03d_4)="Artifact : Upper Tibia (Checkbox Indicator)"
label(data$ctred03d_5)="Artifact : Lower Tibia (Checkbox Indicator)"
label(data$study_name_CTReaCherev)="Study Name"

#Create new variables for factors
data$ctred01.factor = factor(data$ctred01, levels = c("0","1"))
levels(data$ctred01.factor) = c("No","Yes")

data$ctred02.factor = factor(data$ctred02, levels = c("0","1"))
levels(data$ctred02.factor) = c("No","Yes")

