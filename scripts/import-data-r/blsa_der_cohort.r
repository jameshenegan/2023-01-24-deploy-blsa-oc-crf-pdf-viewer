#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/blsa_der_cohort.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="BLSA ID"
label(data$visit)="Visit Number"
label(data$v1visitdate)="Visit Date"
label(data$visitdate)="Visit Date"
label(data$visitmonth)="Month of Visit"
label(data$visityear)="Year of Visit"
label(data$daysfromv1)="Days Since Visit 1 Baseline"
label(data$yearsfromv1)="Years Since Visit 1 Baseline"
label(data$yearsfromprevvisit)="Years Since Previous Visit"
label(data$visitseq)="Sequential Visit Number"
label(data$numvisits)="Number of Visits"
label(data$deathdate)="Date of Death"
label(data$v1todeathdays)="Days from Visit 1 to Death (if known death)"

#Create new variables for factors
data$visitmonth.factor = factor(data$visitmonth, levels = c("1","2","3","4","5","6","7","8","9","10","11","12"))
levels(data$visitmonth.factor) = c("January","February","March","April","May","June","July","August","September","October","November","December")

data$opendates.factor = factor(data$opendates, levels = c("1","0"))
levels(data$opendates.factor) = c("Open","Embargoed")

data$openrow.factor = factor(data$openrow, levels = c("1","0"))
levels(data$openrow.factor) = c("Open","Permissioned")

