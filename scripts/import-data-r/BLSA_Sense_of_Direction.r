#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Sense_of_Direction.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_SenofDir)="CRF Version"
label(data$date_SenofDir)="Date"
label(data$blank_SenofDir)="Blank"
label(data$judgedistance)="I am very good at judging distances"
label(data$senseofdirection)="My sense of direction is very good"
label(data$losteasily)="I very easily get lost in a new city"
label(data$troubledirections)="I have trouble understanding directions"
label(data$routeswhenriding)="I don't remember routes very well while riding as a passenger in a car"
label(data$rememberroutes)="I can usually remember a new route after I have traveled it only once"
label(data$mentalmap)="I don't have a very good mental map of my environment"
label(data$crf_parent_name_SenofDir)="CRF Parent Name"
label(data$study_name_SenofDir)="Study Name"

#Create new variables for factors
data$judgedistance.factor = factor(data$judgedistance, levels = c("1","2","3","4","5","6","7"))
levels(data$judgedistance.factor) = c("(1) strongly agree","(2)","(3)","(4)","(5)","(6)","(7) strongly disagree")

data$senseofdirection.factor = factor(data$senseofdirection, levels = c("1","2","3","4","5","6","7"))
levels(data$senseofdirection.factor) = c("(1) strongly agree","(2)","(3)","(4)","(5)","(6)","(7) strongly disagree")

data$losteasily.factor = factor(data$losteasily, levels = c("1","2","3","4","5","6","7"))
levels(data$losteasily.factor) = c("(1) strongly agree","(2)","(3)","(4)","(5)","(6)","(7) strongly disagree")

data$troubledirections.factor = factor(data$troubledirections, levels = c("1","2","3","4","5","6","7"))
levels(data$troubledirections.factor) = c("(1) strongly agree","(2)","(3)","(4)","(5)","(6)","(7) strongly disagree")

data$routeswhenriding.factor = factor(data$routeswhenriding, levels = c("1","2","3","4","5","6","7"))
levels(data$routeswhenriding.factor) = c("(1) strongly agree","(2)","(3)","(4)","(5)","(6)","(7) strongly disagree")

data$rememberroutes.factor = factor(data$rememberroutes, levels = c("1","2","3","4","5","6","7"))
levels(data$rememberroutes.factor) = c("(1) strongly agree","(2)","(3)","(4)","(5)","(6)","(7) strongly disagree")

data$mentalmap.factor = factor(data$mentalmap, levels = c("1","2","3","4","5","6","7"))
levels(data$mentalmap.factor) = c("(1) strongly agree","(2)","(3)","(4)","(5)","(6)","(7) strongly disagree")

