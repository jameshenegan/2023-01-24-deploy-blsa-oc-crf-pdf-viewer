#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Lab_Processing.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_LabPro)="CRF Version"
label(data$obsdate_labdate)="Date Completed"
label(data$blank_LabPro)="Blank Form"
label(data$labtid)="Tester ID"
label(data$lab03)="Venipuncture done"
label(data$lab03c)="Venipuncture reason not done"
label(data$lab03d)="Venipuncture other RND"
label(data$lab03a)="Venipuncture require more than 2 sticks"
label(data$lab03b)="Veins quality assessment"
label(data$lab04)="Were all expected samples collected at first day"
label(data$lab04a)="Fasting"
label(data$auto_id_LabPro)="Unique Teleform Number"
label(data$comment_LabPro)="Comment"
label(data$lab01)="Have you donated blood within 56 days"
label(data$lab02)="Have history of anemia"
label(data$day2tubescoll)="Describe tubes collected second day"
label(data$lab07)="Was 24 hour urine collection obtained"
label(data$lab07a_LabPro)="24 hour urine begin time"
label(data$lab07b_LabPro)="24 hour urine end time"
label(data$lab05a)="3ml Lavender label"
label(data$lab05b)="8.5 ml Red"
label(data$lab05c)="4.5 ml Blue"
label(data$lab05d)="RPR 3.5ml Gold"
label(data$lab05e)="HIV 3.5 ml Gold"
label(data$lab06)="Urine specimen collected for UA"
label(data$lab06a)="Urine Fasting or Non Fasting"
label(data$lab06b)="HH Urine Sample label"
label(data$lab07d)="Total time for 24 hr urine"
label(data$lab07c)="24 hour urine label"
label(data$crf_parent_name_LabPro)="CRF Parent Name"
label(data$study_name_LabPro)="Study Name"

#Create new variables for factors
data$lab03.factor = factor(data$lab03, levels = c("0","1"))
levels(data$lab03.factor) = c("No","Yes")

data$lab03c.factor = factor(data$lab03c, levels = c("0","1","2","5","7","9"))
levels(data$lab03c.factor) = c("Other (please specify)","Exclusion criteria (includes lower hemoglobin)","Insufficient venous access","Physical problems","Refused","Technical problems")

data$lab03a.factor = factor(data$lab03a, levels = c("0","1"))
levels(data$lab03a.factor) = c("No","Yes")

data$lab03b.factor = factor(data$lab03b, levels = c("1","2","3","4"))
levels(data$lab03b.factor) = c("Poor (small veins could not thread IV difficult blood blow)","Fair (this veins slow blood flow)","Good (moderate thin veins adequate blood flow)","Excellent (large veins no problems all tubes collected)")

data$lab04.factor = factor(data$lab04, levels = c("0","1"))
levels(data$lab04.factor) = c("No","Yes")

data$lab04a.factor = factor(data$lab04a, levels = c("0","1"))
levels(data$lab04a.factor) = c("Not fasting","Fasting")

data$lab01.factor = factor(data$lab01, levels = c("0","1"))
levels(data$lab01.factor) = c("No","Yes")

data$lab02.factor = factor(data$lab02, levels = c("0","1"))
levels(data$lab02.factor) = c("No","Yes")

data$lab07.factor = factor(data$lab07, levels = c("0","1"))
levels(data$lab07.factor) = c("No","Yes")

data$lab06.factor = factor(data$lab06, levels = c("0","1"))
levels(data$lab06.factor) = c("No","Yes")

data$lab06a.factor = factor(data$lab06a, levels = c("0","1"))
levels(data$lab06a.factor) = c("Not fasting","Fasting")

