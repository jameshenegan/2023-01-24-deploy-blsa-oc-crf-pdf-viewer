#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Activity_Monitor.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_ActMon)="CRF Version"
label(data$obsdate_achqdat)="Date Completed"
label(data$blank_ActMon)="Blank Form"
label(data$achqtid)="Tester ID"
label(data$achq01)="Actiwatch or Actigraph done"
label(data$achq01a)="Other RND specify"
label(data$comment_ActMon)="Comment"
label(data$achq02a)="Hook up begin time"
label(data$achq02ap)="Hook up begin time am pm"
label(data$achq02b)="Hook up begin date"
label(data$achq02c)="Hook up end time"
label(data$achq02cp)="Hook up end time am pm"
label(data$achq02d)="Hook up end date"
label(data$achq03)="Was Actiheart data completed upon return of the monitor"
label(data$achq03a)="Data Other RND"
label(data$achq04)="Diary completed upon return"
label(data$achq04a)="Diary Other RND"
label(data$achq05)="Post Questionnaire completed upon return"
label(data$achq05a)="Post Questionnaire Other RND"
label(data$achq11)="Was the amount and intensity of your physical activity in the past seven days typical"
label(data$achq11a)="If not were you more or less active than usual"
label(data$achq12)="Was your physical activity limited by any temporary illness or injury?"
label(data$achq13)="Did you swim or engage in any other physical exercise without wearing the Activity"
label(data$achq13a)="Number of times without device"
label(data$achq13b)="Hours without device"
label(data$achq13c)="Intensity of activity without device"
label(data$achq14)="How much of the time during the past seven days did you feel you had a lot of energy"
label(data$achq15)="Past seven days how often have you felt unusually tired during the day"
label(data$achq16)="Rate how weak did you feel during the past seven days"
label(data$achq17)="Rate energy level during past seven days"
label(data$achq18)="In the past seven days did you ever exercise to the point of exhaustion"
label(data$achq18a)="Activity 1 date"
label(data$achq18b)="Activity 1 begin time"
label(data$achq18bp)="Activity 1 begin time am pm"
label(data$achq18c)="Activity 1 end time"
label(data$achq18cp)="Activity 1 end time am pm"
label(data$achq18d)="Activity 2 date"
label(data$achq18e)="Activity 2 begin time"
label(data$achq18ep)="Activity 2 begin time am pm"
label(data$achq18f)="Activity 2 end time"
label(data$achq18fp)="Activity 2 end time am pm"
label(data$achq18g)="Activity 3 date"
label(data$achq18h)="Activity 3 begin time"
label(data$achq18hp)="Activity 3 begin time am pm"
label(data$achq18i)="Activity 3 end time"
label(data$achq18ip)="Activity 3 end time am pm"
label(data$achq01a1a_2)="Which device"
label(data$achq01a1a)="Which device"
label(data$achq01a1b)="DLW Done"
label(data$auto_id_ActMon)="Unique Teleform Number"
label(data$crf_parent_name_ActMon)="CRF Parent Name"
label(data$study_name_ActMon)="Study Name"

#Create new variables for factors
data$achq01.factor = factor(data$achq01, levels = c("0","1","3","4","5","6","7","8","9"))
levels(data$achq01.factor) = c("Other reason not done","Yes","Technical Problem (Bad Data)","Not Completed (Less than 2 days)","Physical Problems","Cognitive Problems","Physical and Cognitive Problems","Refused (but could do)","Technical problems (no time or equipment problems)")

data$achq02ap.factor = factor(data$achq02ap, levels = c("1","2"))
levels(data$achq02ap.factor) = c("Am","Pm")

data$achq02cp.factor = factor(data$achq02cp, levels = c("1","2"))
levels(data$achq02cp.factor) = c("Am","Pm")

data$achq03.factor = factor(data$achq03, levels = c("0","1","2","3","4","5","6"))
levels(data$achq03.factor) = c("Other please specify","Yes","Participant refused","Participant forgot","Severe skin irritation occurred","Mechanical problems with the monitor","Improper attachment of monitor and/or electrodes")

data$achq04.factor = factor(data$achq04, levels = c("0","1","2","3"))
levels(data$achq04.factor) = c("Other please specify","Yes","Participant refused","Participant forgot")

data$achq05.factor = factor(data$achq05, levels = c("0","1","2","3"))
levels(data$achq05.factor) = c("Other please specify","Yes","Participant refused","Participant forgot")

data$achq11.factor = factor(data$achq11, levels = c("0","1"))
levels(data$achq11.factor) = c("No","Yes")

data$achq11a.factor = factor(data$achq11a, levels = c("0","1"))
levels(data$achq11a.factor) = c("Less","More")

data$achq12.factor = factor(data$achq12, levels = c("0","1"))
levels(data$achq12.factor) = c("No","Yes")

data$achq13.factor = factor(data$achq13, levels = c("0","1"))
levels(data$achq13.factor) = c("No","Yes")

data$achq13c.factor = factor(data$achq13c, levels = c("0","1","2"))
levels(data$achq13c.factor) = c("Light","Moderate","Vigorous")

data$achq14.factor = factor(data$achq14, levels = c("0","1","2","3","4","5"))
levels(data$achq14.factor) = c("None","A little","Some","A good bit","Most","All")

data$achq15.factor = factor(data$achq15, levels = c("0","1","2","3"))
levels(data$achq15.factor) = c("None","Some","Most","All")

data$achq16.factor = factor(data$achq16, levels = c("0","1","10","2","3","4","5","6","7","8","9"))
levels(data$achq16.factor) = c("0","1","10","2","3","4","5","6","7","8","9")

data$achq17.factor = factor(data$achq17, levels = c("0","1","10","2","3","4","5","6","7","8","9"))
levels(data$achq17.factor) = c("0","1","10","2","3","4","5","6","7","8","9")

data$achq18.factor = factor(data$achq18, levels = c("0","1"))
levels(data$achq18.factor) = c("No","Yes")

data$achq18bp.factor = factor(data$achq18bp, levels = c("1","2"))
levels(data$achq18bp.factor) = c("Am","Pm")

data$achq18cp.factor = factor(data$achq18cp, levels = c("1","2"))
levels(data$achq18cp.factor) = c("Am","Pm")

data$achq18ep.factor = factor(data$achq18ep, levels = c("1","2"))
levels(data$achq18ep.factor) = c("Am","Pm")

data$achq18fp.factor = factor(data$achq18fp, levels = c("1","2"))
levels(data$achq18fp.factor) = c("Am","Pm")

data$achq18hp.factor = factor(data$achq18hp, levels = c("1","2"))
levels(data$achq18hp.factor) = c("Am","Pm")

data$achq18ip.factor = factor(data$achq18ip, levels = c("1","2"))
levels(data$achq18ip.factor) = c("Am","Pm")

data$achq01a1a_2.factor = factor(data$achq01a1a_2, levels = c("2","3","4"))
levels(data$achq01a1a_2.factor) = c("Actigraph ","Both","Actiwatch")

data$achq01a1a.factor = factor(data$achq01a1a, levels = c("1","2","3","4"))
levels(data$achq01a1a.factor) = c("Actiheart","Actigraph ","Both","Actiwatch")

data$achq01a1b.factor = factor(data$achq01a1b, levels = c("0","1"))
levels(data$achq01a1b.factor) = c("No","Yes")

