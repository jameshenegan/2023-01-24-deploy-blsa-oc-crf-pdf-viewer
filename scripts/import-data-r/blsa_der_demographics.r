#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/blsa_der_demographics.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="BLSA ID"
label(data$visit)="Visit Number"
label(data$brthyr)="Year of Birth"
label(data$brthmo)="Month of Birth"
label(data$age)="Age at time of visit (years)"
label(data$baselineage)="Age at baseline visit (years)"
label(data$sex)="Sex"
label(data$male)="Male Indicator"
label(data$race3cat)="Race Category (White, Black, Other)"
label(data$black)="Black Race Indicator"
label(data$ethnicity)="Spanish Hispanic or Latino Ethnicity"
label(data$maritalstatus)="Marital Status"
label(data$householdsize)="Size of Household"
label(data$housingtype)="Type of Housing"
label(data$borninus)="Born in the United States"
label(data$englishfirstlang)="English was First Language"
label(data$education)="Years of Education"
label(data$educ3cat)="Education Category (<HS, HS, HS+)"
label(data$educ5cat)="Education Category (5-Level)"
label(data$smkstat)="Current smoking status (3-level)"
label(data$smokehx)="Smoking history (4-level)"
label(data$smoker)="Current smoking status (2-level)"

#Create new variables for factors
data$male.factor = factor(data$male, levels = c("0","1"))
levels(data$male.factor) = c("Female","Male")

data$race3cat.factor = factor(data$race3cat, levels = c("1","2","3"))
levels(data$race3cat.factor) = c("White","Black or African American","Other")

data$black.factor = factor(data$black, levels = c("0","1"))
levels(data$black.factor) = c("NonBlack","Black")

data$ethnicity.factor = factor(data$ethnicity, levels = c("0","1"))
levels(data$ethnicity.factor) = c("No","Yes")

data$maritalstatus.factor = factor(data$maritalstatus, levels = c("1","2","3","4","5","6"))
levels(data$maritalstatus.factor) = c("Married","Living with a partner","Separated","Divorced","Widowed","Never married")

data$householdsize.factor = factor(data$householdsize, levels = c("0","1","2","3","7","8"))
levels(data$householdsize.factor) = c("Lives alone","1 other","2 others","3 or more others","Refused","Dont know")

data$housingtype.factor = factor(data$housingtype, levels = c("1","2","3","4","5","7","8"))
levels(data$housingtype.factor) = c("Single family home","Co-op, condominium, apartment","Continuing care community","Assisted living","Long term care facility","refused","Dont know")

data$borninus.factor = factor(data$borninus, levels = c("0","1"))
levels(data$borninus.factor) = c("No","Yes")

data$englishfirstlang.factor = factor(data$englishfirstlang, levels = c("0","1"))
levels(data$englishfirstlang.factor) = c("No","Yes")

data$education.factor = factor(data$education, levels = c("0","12","14","16","18","19","20","21","77","88"))
levels(data$education.factor) = c("no formal schooling","high school (or GED equivalent)","two year college / Associates degree","four year college","Masters degree","Law degree","MD or PhD","multiple graduate degrees","refused","unknown")

data$educ3cat.factor = factor(data$educ3cat, levels = c("0","1","2"))
levels(data$educ3cat.factor) = c("<High School","High School/GED",">High School")

data$educ5cat.factor = factor(data$educ5cat, levels = c("0","1","2","3","4"))
levels(data$educ5cat.factor) = c("Less than high school","High school","Some college","College grad","Post college")

data$smkstat.factor = factor(data$smkstat, levels = c("0","1","2"))
levels(data$smkstat.factor) = c("Never smoked","Former Smoker","Current Smoker")

data$smokehx.factor = factor(data$smokehx, levels = c("0","1","2","3"))
levels(data$smokehx.factor) = c("Never smoked","Quit 10+ yrs ago","Quit <10 yrs ago","Current smoker")

data$smoker.factor = factor(data$smoker, levels = c("0","1"))
levels(data$smoker.factor) = c("Non-Smoker","Smoker")

data$sex.factor = factor(data$sex, levels = c("Female","Male"))
levels(data$sex.factor) = c("Female","Male")

