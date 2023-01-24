#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Resting_Metabolic_Rate.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_ResMetRat)="CRF Version"
label(data$obsdate_rmrdate)="Date Completed"
label(data$blank_ResMetRat)="Blank Form"
label(data$rmrtid)="Tester ID"
label(data$rmr01)="Time"
label(data$rmr01a)="Bed Number"
label(data$rmr01b)="Did participant stay at unit last night"
label(data$rmr02)="Body temperature"
label(data$rmr03)="Room temperature"
label(data$rmr03a)="Humidity"
label(data$rmr03b)="Barometric Pressure"
label(data$rmr04a)="Have you been sitting or lying down in bed for at least 15 minutes"
label(data$rmr04b)="Have you been fasting for a minimum of 4 hours"
label(data$rmr04c)="Have you drunk water or other drinks in the past 4 hours"
label(data$rmr04d)="Have you strenuously exercised in the past 4 hours"
label(data$rmr04e)="Have you smoked in the last hour"
label(data$rmr04f)="Have you taken medications other than those you use on a regular basis in the last 12 hours"
label(data$rmr04g)="If yes to any of these questions specify"
label(data$rmrdone)="Was test done"
label(data$rmr05a)="Was participant sitting or lying down"
label(data$rmr06)="Resting metabolic rate"
label(data$repeat)="Just repeat same number"
label(data$auto_id_ResMetRat)="Unique Teleform Number"
label(data$crf_parent_name_ResMetRat)="CRF Parent Name"
label(data$study_name_ResMetRat)="Study Name"

#Create new variables for factors
data$rmr01b.factor = factor(data$rmr01b, levels = c("0","1"))
levels(data$rmr01b.factor) = c("No","Yes")

data$rmr04a.factor = factor(data$rmr04a, levels = c("0","1"))
levels(data$rmr04a.factor) = c("No","Yes")

data$rmr04b.factor = factor(data$rmr04b, levels = c("0","1"))
levels(data$rmr04b.factor) = c("No","Yes")

data$rmr04c.factor = factor(data$rmr04c, levels = c("0","1"))
levels(data$rmr04c.factor) = c("No","Yes")

data$rmr04d.factor = factor(data$rmr04d, levels = c("0","1"))
levels(data$rmr04d.factor) = c("No","Yes")

data$rmr04e.factor = factor(data$rmr04e, levels = c("0","1"))
levels(data$rmr04e.factor) = c("No","Yes")

data$rmr04f.factor = factor(data$rmr04f, levels = c("0","1"))
levels(data$rmr04f.factor) = c("No","Yes")

data$rmrdone.factor = factor(data$rmrdone, levels = c("1","555","666","777","888","999"))
levels(data$rmrdone.factor) = c("Yes","Physical problems","Mental problems","Physical & mental problems","Refused but could do","Technical problems")

data$rmr05a.factor = factor(data$rmr05a, levels = c("0","1","2"))
levels(data$rmr05a.factor) = c("0 - Bed lying flat","1 - Bed 45Â°","2 - Chair")

data$rmr01a.factor = factor(data$rmr01a, levels = c("Other","SM501","SM502","SM503","SM504","SM506","SM507","SM508","SM509","SM510","SM528A","SM528B","SM529","SM530A","SM530B","SM531","SM532A","SM532B","SM534","SM537"))
levels(data$rmr01a.factor) = c("Other","SM501","SM502","SM503","SM504","SM506","SM507","SM508","SM509","SM510","SM528A","SM528B","SM529","SM530A","SM530B","SM531","SM532A","SM532B","SM534","SM537")

