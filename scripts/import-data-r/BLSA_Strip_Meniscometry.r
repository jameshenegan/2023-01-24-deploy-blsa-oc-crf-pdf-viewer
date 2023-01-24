#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Strip_Meniscometry.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_StrMen)="CRF Version"
label(data$obsdate_smdate1)="Date Completed"
label(data$blank_StrMen)="Blank Form"
label(data$smtid1)="Tester ID"
label(data$sm01)="Use eye drops"
label(data$sm01a)="If yes which eye"
label(data$sm02)="If yes how long ago were drops administered"
label(data$sm03)="Why do you use eye drops"
label(data$sm03a)="Other reason why use eye drops"
label(data$sm04)="Do you use makeup routinely"
label(data$sm05)="Was strip meniscometry test performed"
label(data$sm05a)="If yes which eye"
label(data$sm05b)="Reson not done"
label(data$sm06a)="R eye strip meniscometry blue dye distance"
label(data$sm06b)="L eye strip meniscometry blue dye distance"
label(data$sm06c)="Room temperature"
label(data$sm06d)="Room humidity"
label(data$sm06e)="Test time"
label(data$smdate2)="Date Completed"
label(data$smtid2)="Tester ID"
label(data$sm07a)="T2 If yes how long ago were drops administered"
label(data$sm07b)="Was strip meniscometry test 2 performed"
label(data$sm07c)="If yes which eye T2"
label(data$sm07d)="T2 Reson not done"
label(data$sm08a)="T2 R eye strip meniscometry blue dye distance"
label(data$sm08b)="T2 L eye strip meniscometry blue dye distance"
label(data$sm08c)="T2 Room temperature"
label(data$sm08d)="T2 Room humidity"
label(data$sm08e)="T2 Test time"
label(data$auto_id_StrMen)="Unique Teleform Number"
label(data$crf_parent_name_StrMen)="CRF Parent Name"
label(data$study_name_StrMen)="Study Name"

#Create new variables for factors
data$sm01.factor = factor(data$sm01, levels = c("0","1"))
levels(data$sm01.factor) = c("No","Yes")

data$sm01a.factor = factor(data$sm01a, levels = c("1","2","3","8"))
levels(data$sm01a.factor) = c("Both eyes","Right eye only","Left eye only","Unknown")

data$sm02.factor = factor(data$sm02, levels = c("0","1","2","3","4","8"))
levels(data$sm02.factor) = c("Do not use eye drops","Less than 1 hour ago","More than 1 hour ago but less than 12 hours ago","More than 12 hours ago but less than 24 hours ago","More than 24 hours ago","Unknown")

data$sm03.factor = factor(data$sm03, levels = c("1","2","3","4","5"))
levels(data$sm03.factor) = c("Chronic eye condition eg Glaucoma","Pre/Post Operative","Dry eye (prescription)","Comfort (non prescription","Other please specify")

data$sm04.factor = factor(data$sm04, levels = c("0","1","8"))
levels(data$sm04.factor) = c("No","Yes","Unknown")

data$sm05.factor = factor(data$sm05, levels = c("0","1"))
levels(data$sm05.factor) = c("No","Yes")

data$sm05a.factor = factor(data$sm05a, levels = c("1","2","3","8"))
levels(data$sm05a.factor) = c("Both eyes","Right eye only","Left eye only","Unknown")

data$sm05b.factor = factor(data$sm05b, levels = c("555","666","777","888","999"))
levels(data$sm05b.factor) = c("555 = Could not do due to physical problems","666 = Could not do due to mental problems","777 = Could not do due to both physical and mental problems","888 = Refused but theoretically could do","999 = Did not do due to technical problems")

data$sm07a.factor = factor(data$sm07a, levels = c("0","1","2","3","4","8"))
levels(data$sm07a.factor) = c("Do not use eye drops","Less than 1 hour ago","More than 1 hour ago but less than 12 hours ago","More than 12 hours ago but less than 24 hours ago","More than 24 hours ago","Unknown")

data$sm07b.factor = factor(data$sm07b, levels = c("0","1"))
levels(data$sm07b.factor) = c("No","Yes")

data$sm07c.factor = factor(data$sm07c, levels = c("1","2","3","8"))
levels(data$sm07c.factor) = c("Both eyes","Right eye only","Left eye only","Unknown")

data$sm07d.factor = factor(data$sm07d, levels = c("555","666","777","888","999"))
levels(data$sm07d.factor) = c("555 = Could not do due to physical problems","666 = Could not do due to mental problems","777 = Could not do due to both physical and mental problems","888 = Refused but theoretically could do","999 = Did not do due to technical problems")

