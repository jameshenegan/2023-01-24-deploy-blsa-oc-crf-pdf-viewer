#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/blsa_der_cohort_id.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="BLSA ID"
label(data$visit)="Visit Number"
label(data$id)="Participant ID"
label(data$id_mock)="Masked Participant ID "
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$id_gaain)="Masked Participant ID for GAAIN"
