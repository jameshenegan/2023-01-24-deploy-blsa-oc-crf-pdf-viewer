#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Parental_Longevity.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_ParLon)="CRF Version"
label(data$date_ParLon)="Date Completed"
label(data$blank_ParLon)="Blank Form"
label(data$tid_ParLon)="Tester ID"
label(data$pl1)="Were you adopted"
label(data$pl2)="Is your biological mother alive"
label(data$pl2a)="What is your mother's age now"
label(data$pl2b)="How old was your mother when she died"
label(data$pl2c)="Cause of death"
label(data$pl2cother)="Cause of death Other"
label(data$pl3)="Is your biological father alive"
label(data$pl3a)="What is your father's age now"
label(data$pl3b)="How old was your father when he died"
label(data$pl3c)="Cause of death"
label(data$pl3cother)="Cause of death Other"
label(data$pl4)="Is your adoptivel mother alive"
label(data$pl4a)="What is your mother's age now"
label(data$pl4b)="How old was your mother when she died"
label(data$pl4c)="Cause of death"
label(data$pl4cother)="Cause of death Other"
label(data$pl5)="Is your adoptive father alive"
label(data$pl5a)="What is your father's age now"
label(data$pl5b)="How old was your father when he died"
label(data$pl5c)="Cause of death"
label(data$pl5cother)="Cause of death Other"
label(data$crf_parent_name_ParLon)="CRF Parent Name"
label(data$study_name_ParLon)="Study Name"

#Create new variables for factors
data$pl1.factor = factor(data$pl1, levels = c("0","1","7","8"))
levels(data$pl1.factor) = c("No","Yes","Prefer not to answer","Dont know")

data$pl2.factor = factor(data$pl2, levels = c("0","1","7","8"))
levels(data$pl2.factor) = c("No","Yes","Prefer not to answer","Dont know")

data$pl2c.factor = factor(data$pl2c, levels = c("1","10","11","12","13","14","2","3","4","5","6","7","8","9"))
levels(data$pl2c.factor) = c("Myocardial infarction","Complications of fracture","Accident/trauma","Intentional self-harm (suicide)","Other (please specify)","Undetermined/unknown","Stroke","Other CVD","Cancer","COPD (emphysema chronic bronchitis)","Alzheimers disease/other dementia","Diabetes","Influenze or pneumonia","Kidney disease")

data$pl3.factor = factor(data$pl3, levels = c("0","1","7","8"))
levels(data$pl3.factor) = c("No","Yes","Prefer not to answer","Dont know")

data$pl3c.factor = factor(data$pl3c, levels = c("1","10","11","12","13","14","2","3","4","5","6","7","8","9"))
levels(data$pl3c.factor) = c("Myocardial infarction","Complications of fracture","Accident/trauma","Intentional self-harm (suicide)","Other (please specify)","Undetermined/unknown","Stroke","Other CVD","Cancer","COPD (emphysema chronic bronchitis)","Alzheimers disease/other dementia","Diabetes","Influenze or pneumonia","Kidney disease")

data$pl4.factor = factor(data$pl4, levels = c("0","1","7","8"))
levels(data$pl4.factor) = c("No","Yes","Prefer not to answer","Dont know")

data$pl4c.factor = factor(data$pl4c, levels = c("1","10","11","12","13","14","2","3","4","5","6","7","8","9"))
levels(data$pl4c.factor) = c("Myocardial infarction","Complications of fracture","Accident/trauma","Intentional self-harm (suicide)","Other (please specify)","Undetermined/unknown","Stroke","Other CVD","Cancer","COPD (emphysema chronic bronchitis)","Alzheimers disease/other dementia","Diabetes","Influenze or pneumonia","Kidney disease")

data$pl5.factor = factor(data$pl5, levels = c("0","1","7","8"))
levels(data$pl5.factor) = c("No","Yes","Prefer not to answer","Dont know")

data$pl5c.factor = factor(data$pl5c, levels = c("1","10","11","12","13","14","2","3","4","5","6","7","8","9"))
levels(data$pl5c.factor) = c("Myocardial infarction","Complications of fracture","Accident/trauma","Intentional self-harm (suicide)","Other (please specify)","Undetermined/unknown","Stroke","Other CVD","Cancer","COPD (emphysema chronic bronchitis)","Alzheimers disease/other dementia","Diabetes","Influenze or pneumonia","Kidney disease")

