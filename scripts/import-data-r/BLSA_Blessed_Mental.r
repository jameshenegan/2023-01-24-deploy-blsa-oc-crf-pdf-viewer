#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Blessed_Mental.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_BleMen)="CRF Version"
label(data$obsdate_bledate)="Date Completed"
label(data$blank_BleMen)="Blank Form"
label(data$bletid)="Tester ID"
label(data$yourname)="What is your name"
label(data$ble01)="What is your name Correct Incorrect"
label(data$yourage)="Can you tell me your age"
label(data$ble02)="Can you tell me your age correct incorrect"
label(data$whenwereyouborn)="When were you born"
label(data$ble03)="When were you born correct incorrect"
label(data$wherewereyouborn)="Where were you born"
label(data$ble04)="Where were you born correct incorrect"
label(data$whereareyourightnow)="Where are you right now"
label(data$ble05)="Where are you right now correct incorrect"
label(data$whatstreetisiton)="What street is it on"
label(data$ble06)="What street is it on correct incorrect"
label(data$hourssinceyouarrived)="How many hours has it been since you arrived on the unit correct incorrect"
label(data$ble07)="How many hours has it been since you arrived on the unit"
label(data$whatcityisitin)="What city is it in"
label(data$ble08)="What city is it in correct incorrect"
label(data$whatistodaysdate)="What is todays date"
label(data$ble09)="What is todays date correct incorrect"
label(data$whatisthecurrentmonth)="What is the current month"
label(data$ble10)="What is the current month correct incorrect"
label(data$whatisthecurrentyear)="What is the current year"
label(data$ble11)="What is the current year correct incorrect"
label(data$whatdayoftheweek)="What day of the week is today"
label(data$ble12)="What day of the week is today correct incorrect"
label(data$whatpartoftheday)="What part of the day is it"
label(data$ble13)="What part of the day is it correct incorrect"
label(data$aboutwhattimeisit)="About what time is it"
label(data$ble14)="About what time is it correct incorrect"
label(data$whatseasonisthis)="What season is this"
label(data$ble15)="What season is this correct incorrect"
label(data$ble16a)="When did the participant correctly repeat John Brown 42 Market Street Chicago"
label(data$mothersfirstname)="What is your mothers first name"
label(data$ble16)="What is your mothers first name correct incorrect"
label(data$howmuchschooling)="How much schooling did you have"
label(data$ble17)="How much schooling did you have correct incorrect"
label(data$namepecificschool)="Name of one specific school you attended"
label(data$ble18)="Name of one specific school you attended correct incorrect"
label(data$kindofworkdone)="Kind of work you have done"
label(data$ble19)="Kind of work you have done correct incorrect"
label(data$currentpresidentofus)="Can you tell me who the president of the United States is right now"
label(data$ble20)="Current President of the United states correct incorrect"
label(data$presidentbeforecurrent)="President before current president"
label(data$ble21)="President before current president correct incorrect"
label(data$yearsofworldwari)="Can you tell me one of the years of World War I"
label(data$ble22)="One of the years of World War I correct incorrect"
label(data$yearsofworldwarii)="Can you tell me one of the years of World War II"
label(data$ble23)="One of the years of World War II correct incorrect"
label(data$ble24)="Recite months of the year backwards"
label(data$ble25)="Count from 1 to 20"
label(data$ble26)="Count backwards from 20 to 1"
label(data$ble27a)="Recall John"
label(data$ble27b)="Recall Brown"
label(data$ble27c)="Recall 42"
label(data$ble27d)="Recall Market Street"
label(data$ble27e)="Recall Chicago"
label(data$preliminarytotal)="PreliminaryTotal"
label(data$bletotal)="ValidatedTotal"
label(data$auto_id_BleMen)="Unique Teleform Number"
label(data$crf_parent_name_BleMen)="CRF Parent Name"
label(data$study_name_BleMen)="Study Name"

#Create new variables for factors
data$ble01.factor = factor(data$ble01, levels = c("0","1"))
levels(data$ble01.factor) = c("Correct","Incorrect")

data$ble02.factor = factor(data$ble02, levels = c("0","1"))
levels(data$ble02.factor) = c("Correct","Incorrect")

data$ble03.factor = factor(data$ble03, levels = c("0","1"))
levels(data$ble03.factor) = c("Correct","Incorrect")

data$ble04.factor = factor(data$ble04, levels = c("0","1"))
levels(data$ble04.factor) = c("Correct","Incorrect")

data$ble05.factor = factor(data$ble05, levels = c("0","1"))
levels(data$ble05.factor) = c("Correct","Incorrect")

data$ble06.factor = factor(data$ble06, levels = c("0","1"))
levels(data$ble06.factor) = c("Correct","Incorrect")

data$ble07.factor = factor(data$ble07, levels = c("0","1"))
levels(data$ble07.factor) = c("Correct","Incorrect")

data$ble08.factor = factor(data$ble08, levels = c("0","1"))
levels(data$ble08.factor) = c("Correct","Incorrect")

data$ble09.factor = factor(data$ble09, levels = c("0","1"))
levels(data$ble09.factor) = c("Correct","Incorrect")

data$ble10.factor = factor(data$ble10, levels = c("0","1"))
levels(data$ble10.factor) = c("Correct","Incorrect")

data$ble11.factor = factor(data$ble11, levels = c("0","1"))
levels(data$ble11.factor) = c("Correct","Incorrect")

data$ble12.factor = factor(data$ble12, levels = c("0","1"))
levels(data$ble12.factor) = c("Correct","Incorrect")

data$ble13.factor = factor(data$ble13, levels = c("0","1"))
levels(data$ble13.factor) = c("Correct","Incorrect")

data$ble14.factor = factor(data$ble14, levels = c("0","1"))
levels(data$ble14.factor) = c("Correct","Incorrect")

data$ble15.factor = factor(data$ble15, levels = c("0","1"))
levels(data$ble15.factor) = c("Correct","Incorrect")

data$ble16a.factor = factor(data$ble16a, levels = c("0","1","2","3"))
levels(data$ble16a.factor) = c("First time","When given in 3 phrases","When given in single words","Could not repeat")

data$ble16.factor = factor(data$ble16, levels = c("0","1"))
levels(data$ble16.factor) = c("Correct","Incorrect")

data$ble17.factor = factor(data$ble17, levels = c("0","1"))
levels(data$ble17.factor) = c("Correct","Incorrect")

data$ble18.factor = factor(data$ble18, levels = c("0","1"))
levels(data$ble18.factor) = c("Correct","Incorrect")

data$ble19.factor = factor(data$ble19, levels = c("0","1"))
levels(data$ble19.factor) = c("Correct","Incorrect")

data$ble20.factor = factor(data$ble20, levels = c("0","1"))
levels(data$ble20.factor) = c("Correct","Incorrect")

data$ble21.factor = factor(data$ble21, levels = c("0","1"))
levels(data$ble21.factor) = c("Correct","Incorrect")

data$ble22.factor = factor(data$ble22, levels = c("0","1"))
levels(data$ble22.factor) = c("Correct","Incorrect")

data$ble23.factor = factor(data$ble23, levels = c("0","1"))
levels(data$ble23.factor) = c("Correct","Incorrect")

data$ble24.factor = factor(data$ble24, levels = c("0","1","2"))
levels(data$ble24.factor) = c("Correct","Self-corrected error","Incorrect")

data$ble25.factor = factor(data$ble25, levels = c("0","1","2"))
levels(data$ble25.factor) = c("Correct","Self-corrected error","Incorrect")

data$ble26.factor = factor(data$ble26, levels = c("0","1","2"))
levels(data$ble26.factor) = c("Correct","Self-corrected error","Incorrect")

data$ble27a.factor = factor(data$ble27a, levels = c("0","1"))
levels(data$ble27a.factor) = c("Correct","Incorrect/Omitted")

data$ble27b.factor = factor(data$ble27b, levels = c("0","1"))
levels(data$ble27b.factor) = c("Correct","Incorrect/Omitted")

data$ble27c.factor = factor(data$ble27c, levels = c("0","1"))
levels(data$ble27c.factor) = c("Correct","Incorrect/Omitted")

data$ble27d.factor = factor(data$ble27d, levels = c("0","1"))
levels(data$ble27d.factor) = c("Correct","Incorrect/Omitted")

data$ble27e.factor = factor(data$ble27e, levels = c("0","1"))
levels(data$ble27e.factor) = c("Correct","Incorrect/Omitted")

