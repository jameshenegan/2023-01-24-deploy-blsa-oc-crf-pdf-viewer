#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/DEMOGRAPHY.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$event_name)="Visit Number"
label(data$crf_version_DEM)="CRF Version"
label(data$brthdat)="Date of Birth"
label(data$age_DEM)="Age"
label(data$ageu)="Age Units"
label(data$visdat)="Date of visit:"
label(data$sex)="Sex"
label(data$ethnic)="Ethnicity of Subject"
label(data$crf_parent_name_DEM)="CRF Parent Name"
label(data$item_group_repeat_DEM)="Item Group Repeate"
label(data$study_name_DEM)="Study Name"
label(data$race_6)="Race of Subject :  White (Checkbox Indicator)"
label(data$race_1)="Race of Subject : Asian or Pacific Islander (Checkbox Indicator)"
label(data$race_5)="Race of Subject :  Hispanic (Checkbox Indicator)"
label(data$race_2)="Race of Subject :  American Indian or Alaskan Native (Checkbox Indicator)"
label(data$race_3)="Race of Subject :  Black or African American (Checkbox Indicator)"
label(data$race_7)="Race of Subject :  More than one race (Checkbox Indicator)"
label(data$race_9)="Race of Subject :  Asian (Checkbox Indicator)"

#Create new variables for factors
data$ageu.factor = factor(data$ageu, levels = c("1","2","3","4"))
levels(data$ageu.factor) = c("Years"," Months"," Weeks"," Days")

data$ethnic.factor = factor(data$ethnic, levels = c("0","1","2"))
levels(data$ethnic.factor) = c("Not reported","Not Hispanic or Latino","Hispanic or Latino")

data$sex.factor = factor(data$sex, levels = c("F","M"))
levels(data$sex.factor) = c("Female"," Male")

