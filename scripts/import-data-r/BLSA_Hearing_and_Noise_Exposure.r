#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Hearing_and_Noise_Exposure.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_HeaandNoiExp)="CRF Version"
label(data$obsdate_hneqdate)="Date Completed"
label(data$blank_HeaandNoiExp)="Blank Form"
label(data$hneqtid)="Tester ID"
label(data$hneq01)="Describe hearing without hearing aid"
label(data$hneq02)="Ever used firearms"
label(data$hneq03)="Had a job where you were exposed to loud nose for 5 or more hours a week"
label(data$hneq04)="Outside of a job have you been exposed to steady loud noise or music for 5 or more hours a week"
label(data$hneq05)="Do you currently use a hearing aid in your right ear"
label(data$hneq06)="How many years have you been using a hearing aid in your right ear"
label(data$hneq07)="How many hours per day have you worn hearing aid in your right ear over the past month"
label(data$hneq08)="Ever had surgery in yor right ear"
label(data$hneq09)="Do you currently use a hearing aid in your left ear"
label(data$hneq10)="How many years have you been using a hearing aid in your left ear"
label(data$hneq11)="How many hours per day have you worn hearing aid in your Left ear over the past month"
label(data$hneq12)="Ever had surgery in yor Left ear"
label(data$hneq13r)="Otoscopic Examination outcome right ear"
label(data$hneq13l)="Otoscopic Examination outcome left ear"
label(data$hneq14tid)="Tester ID Hearing Tests"
label(data$hneq14r)="Audiometric Thresholds Right Ear"
label(data$hneq14r0)="Audiometric Thresholds Right Ear 05 KHz"
label(data$hneq14r1)="Audiometric Thresholds Right Ear 1 KHz"
label(data$hneq14rt1)="Audiometric Thresholds Right Ear 1 KHz Retest"
label(data$hneq14r2)="Audiometric Thresholds Right Ear 2 KHz"
label(data$hneq14r4)="Audiometric Thresholds Right Ear 4 KHz"
label(data$hneq14r8)="Audiometric Thresholds Right Ear 8 KHz"
label(data$hneq14l)="Audiometric Thresholds Left Ear"
label(data$hneq14l0)="Audiometric Thresholds Left Ear 05 KHz"
label(data$hneq14l1)="Audiometric Thresholds Left Ear 1 KHz"
label(data$hneq14lt1)="Audiometric Thresholds Left Ear 1 KHz Retest"
label(data$hneq14l2)="Audiometric Thresholds Left Ear 2 KHz"
label(data$hneq14l4)="Audiometric Thresholds Left Ear 4 KHz"
label(data$hneq14l8)="Audiometric Thresholds Left Ear 8 KHz"
label(data$hneq15r)="Speech Discrimination Score Right Ear"
label(data$hneq15l)="Speech Discrimination Score Left Ear"
label(data$hneq16s1)="QuickSIN List 1 Track 3"
label(data$hneq16s2)="QuickSIN List 2 Track 4"
label(data$hneq17)="Patient reliability with Audiometric Testing"
label(data$hneq18)="Manual Audiometric Test performed"
label(data$hneq19)="Was hearing test completed"
label(data$hneq19a)="Hearing test RND"
label(data$auto_id_HeaandNoiExp)="Unique Teleform Number"
label(data$crf_parent_name_HeaandNoiExp)="CRF Parent Name"
label(data$study_name_HeaandNoiExp)="Study Name"

#Create new variables for factors
data$hneq01.factor = factor(data$hneq01, levels = c("1","2","3","4","7","8"))
levels(data$hneq01.factor) = c("Good","Little trouble","Lot of trouble","Deaf","Refused","Dont know")

data$hneq02.factor = factor(data$hneq02, levels = c("0","1","7","8"))
levels(data$hneq02.factor) = c("No","Yes","Refused","Dont know")

data$hneq03.factor = factor(data$hneq03, levels = c("0","1","7","8"))
levels(data$hneq03.factor) = c("No","Yes","Refused","Dont know")

data$hneq04.factor = factor(data$hneq04, levels = c("0","1","7","8"))
levels(data$hneq04.factor) = c("No","Yes","Refused","Dont know")

data$hneq05.factor = factor(data$hneq05, levels = c("0","1","7","8"))
levels(data$hneq05.factor) = c("No","Yes","Refused","Dont know")

data$hneq08.factor = factor(data$hneq08, levels = c("0","1","7","8"))
levels(data$hneq08.factor) = c("No","Yes","Refused","Dont know")

data$hneq09.factor = factor(data$hneq09, levels = c("0","1","7","8"))
levels(data$hneq09.factor) = c("No","Yes","Refused","Dont know")

data$hneq12.factor = factor(data$hneq12, levels = c("0","1","7","8"))
levels(data$hneq12.factor) = c("No","Yes","Refused","Dont know")

data$hneq13r.factor = factor(data$hneq13r, levels = c("0","1"))
levels(data$hneq13r.factor) = c("No","Yes")

data$hneq13l.factor = factor(data$hneq13l, levels = c("0","1"))
levels(data$hneq13l.factor) = c("No","Yes")

data$hneq14r.factor = factor(data$hneq14r, levels = c("1","2","3"))
levels(data$hneq14r.factor) = c("Auto","Manual","Both")

data$hneq14l.factor = factor(data$hneq14l, levels = c("1","2","3"))
levels(data$hneq14l.factor) = c("Auto","Manual","Both")

data$hneq17.factor = factor(data$hneq17, levels = c("1","2","3"))
levels(data$hneq17.factor) = c("Good","Fair","Poor")

data$hneq18.factor = factor(data$hneq18, levels = c("0","1"))
levels(data$hneq18.factor) = c("No","Yes")

data$hneq19.factor = factor(data$hneq19, levels = c("0","1"))
levels(data$hneq19.factor) = c("No","Yes")

data$hneq19a.factor = factor(data$hneq19a, levels = c("1","2","4","5","6","7","8","9"))
levels(data$hneq19a.factor) = c("Impacted cerumen","No time","Refused","Unable","Equipment problem","No tester","Not eligible","Not scheduled/Not applicable")

