#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_EPPS_Sleep_Scale.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_EPPSleSca)="CRF Version"
label(data$obsdate_epssdate)="Date completed"
label(data$blank_EPPSleSca)="Blank Form"
label(data$epsstid)="Tester ID"
label(data$epss01)="Sitting and reading"
label(data$epss02)="Watching tv"
label(data$epss03)="Sitting, inactive in a public place"
label(data$epss04)="Passenger in a car for an hr without a break"
label(data$epss05)="Lying down to rest in the afternoon"
label(data$epss06)="Sitting and talking to someone"
label(data$epss07)="Sitting quitely after a lunch without alcohol"
label(data$epss08)="In a car while stopped for a few minutes in traffic"
label(data$auto_id_EPPSleSca)="Unique Teleform Number"
label(data$crf_parent_name_EPPSleSca)="CRF Parent Name"
label(data$study_name_EPPSleSca)="Study Name"

#Create new variables for factors
data$epss01.factor = factor(data$epss01, levels = c("0","1","2","3"))
levels(data$epss01.factor) = c("0-would never doze","1-slight chance of dozing","2-moderate chance of dozing","3-high chance of dozing")

data$epss02.factor = factor(data$epss02, levels = c("0","1","2","3"))
levels(data$epss02.factor) = c("0-would never doze","1-slight chance of dozing","2-moderate chance of dozing","3-high chance of dozing")

data$epss03.factor = factor(data$epss03, levels = c("0","1","2","3"))
levels(data$epss03.factor) = c("0-would never doze","1-slight chance of dozing","2-moderate chance of dozing","3-high chance of dozing")

data$epss04.factor = factor(data$epss04, levels = c("0","1","2","3"))
levels(data$epss04.factor) = c("0-would never doze","1-slight chance of dozing","2-moderate chance of dozing","3-high chance of dozing")

data$epss05.factor = factor(data$epss05, levels = c("0","1","2","3"))
levels(data$epss05.factor) = c("0-would never doze","1-slight chance of dozing","2-moderate chance of dozing","3-high chance of dozing")

data$epss06.factor = factor(data$epss06, levels = c("0","1","2","3"))
levels(data$epss06.factor) = c("0-would never doze","1-slight chance of dozing","2-moderate chance of dozing","3-high chance of dozing")

data$epss07.factor = factor(data$epss07, levels = c("0","1","2","3"))
levels(data$epss07.factor) = c("0-would never doze","1-slight chance of dozing","2-moderate chance of dozing","3-high chance of dozing")

data$epss08.factor = factor(data$epss08, levels = c("0","1","2","3"))
levels(data$epss08.factor) = c("0-would never doze","1-slight chance of dozing","2-moderate chance of dozing","3-high chance of dozing")

