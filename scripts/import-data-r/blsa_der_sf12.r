#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/blsa_der_sf12.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="BLSA ID"
label(data$visit)="Visit Number"
label(data$NMissSF)="Number of missing components in SF12"
label(data$SF12_PCScore)="Physical health composite score"
label(data$SF12_MCScore)="Mental health composite score"
