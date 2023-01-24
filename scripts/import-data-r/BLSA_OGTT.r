#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_OGTT.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_OGT)="CRF Version"
label(data$obsdate_ogttdate)="Date Completed"
label(data$blank_OGT)="Blank Form"
label(data$ogtttid_OGT)="Tester ID"
label(data$ogtt01_OGT)="Do you take insulin to controldiabetes"
label(data$ogtt02a)="Was glucose tolerance test done"
label(data$ogtt02b)="reason not done"
label(data$ogtt02c)="Exclusion criteria"
label(data$ogtt02d)="reason not done other"
label(data$ogtt04)="Was entire glucose drink consumed"
label(data$ogtt05)="Which protocol was performed"
label(data$ogtt05a)="Samples collected"
label(data$ogtt05b)="Reason all samples not colleted"
label(data$ogtt05c)="Other reason all samples not collected"
label(data$ogtt06)="Body temperature before OGTT"
label(data$ogtt07)="Body temperature after OGTT"
label(data$ogtt08)="Any steroid use the past 3 months"
label(data$ogtt08a1)="Oral steroid"
label(data$ogtt08b1)="Oral steroid recency"
label(data$ogtt08c1)="Duration of use oral steroid"
label(data$ogtt08a2)="Injectable steroid"
label(data$ogtt08b2)="Injectable steroid recency"
label(data$ogtt08c2)="Duration of use Injectable steroid"
label(data$ogtt08a3)="Topical steroid"
label(data$ogtt08b3)="Topical steroid recency"
label(data$ogtt08c3)="Duration of use Topical steroid"
label(data$ogtt08a4)="Nasal steroid"
label(data$ogtt08b4)="Nasal steroid recency"
label(data$ogtt08c4)="Duration of use Nasal steroid"
label(data$ogtt08a5)="Inhaled steroid"
label(data$ogtt08b5)="Inhaled steroid recency"
label(data$ogtt08c5)="Duration of use Inhaled steroid"
label(data$auto_id_OGT)="Unique Teleform Number"
label(data$crf_parent_name_OGT)="CRF Parent Name"
label(data$item_group_repeat_OGT)="Item Group Repeate"
label(data$ogtt05a_0)="Samples collected : 0 (Checkbox Indicator)"
label(data$ogtt05a_100)="Samples collected : 100 (Checkbox Indicator)"
label(data$ogtt05a_120)="Samples collected : 120 (Checkbox Indicator)"
label(data$ogtt05a_20)="Samples collected : 20 (Checkbox Indicator)"
label(data$ogtt05a_40)="Samples collected : 40 (Checkbox Indicator)"
label(data$ogtt05a_60)="Samples collected : 60 (Checkbox Indicator)"
label(data$study_name_OGT)="Study Name"

#Create new variables for factors
data$ogtt01_OGT.factor = factor(data$ogtt01_OGT, levels = c("0","1"))
levels(data$ogtt01_OGT.factor) = c("No","Yes")

data$ogtt02a.factor = factor(data$ogtt02a, levels = c("0","1"))
levels(data$ogtt02a.factor) = c("No","Yes")

data$ogtt02b.factor = factor(data$ogtt02b, levels = c("1","2","3","4","7"))
levels(data$ogtt02b.factor) = c("Exclusion criteria","Venous access difficult","Could not tolerate test beverage"," Other (please specify)","Refused")

data$ogtt02c.factor = factor(data$ogtt02c, levels = c("1","2","3","4","5"))
levels(data$ogtt02c.factor) = c("Exercised this morning","Taken any steroids in past 3 mo","Did not fast","Has fever (or infection within past 3 days)","Uses insulin")

data$ogtt04.factor = factor(data$ogtt04, levels = c("0","1"))
levels(data$ogtt04.factor) = c("No","Yes")

data$ogtt05.factor = factor(data$ogtt05, levels = c("0","1"))
levels(data$ogtt05.factor) = c("Short","Complete")

data$ogtt05b.factor = factor(data$ogtt05b, levels = c("2","3","4","7","9"))
levels(data$ogtt05b.factor) = c("Venous access difficult","Vasovagal reaction","Other","Refused","Technical problems")

data$ogtt08.factor = factor(data$ogtt08, levels = c("0","1","7","8"))
levels(data$ogtt08.factor) = c("No","Yes","Refused","Dont know")

data$ogtt08a1.factor = factor(data$ogtt08a1, levels = c("0","1"))
levels(data$ogtt08a1.factor) = c("No","Yes")

data$ogtt08b1.factor = factor(data$ogtt08b1, levels = c("1","2","3","4","7","8"))
levels(data$ogtt08b1.factor) = c("Within past one wk","Within past two wk","Within past 1 mo","Greater than 1 mo","Refused","Dont know")

data$ogtt08c1.factor = factor(data$ogtt08c1, levels = c("1","2","3","7","8"))
levels(data$ogtt08c1.factor) = c("One dose","Less than 2 weeks","Greater than 2 weeks","Refused","Dont know")

data$ogtt08a2.factor = factor(data$ogtt08a2, levels = c("0","1"))
levels(data$ogtt08a2.factor) = c("No","Yes")

data$ogtt08b2.factor = factor(data$ogtt08b2, levels = c("1","2","3","4","7","8"))
levels(data$ogtt08b2.factor) = c("Within past one wk","Within past two wk","Within past 1 mo","Greater than 1 mo","Refused","Dont know")

data$ogtt08c2.factor = factor(data$ogtt08c2, levels = c("1","2","3","7","8"))
levels(data$ogtt08c2.factor) = c("One dose","Less than 2 weeks","Greater than 2 weeks","Refused","Dont know")

data$ogtt08a3.factor = factor(data$ogtt08a3, levels = c("0","1"))
levels(data$ogtt08a3.factor) = c("No","Yes")

data$ogtt08b3.factor = factor(data$ogtt08b3, levels = c("1","2","3","4","7","8"))
levels(data$ogtt08b3.factor) = c("Within past one wk","Within past two wk","Within past 1 mo","Greater than 1 mo","Refused","Dont know")

data$ogtt08c3.factor = factor(data$ogtt08c3, levels = c("1","2","3","7","8"))
levels(data$ogtt08c3.factor) = c("One dose","Less than 2 weeks","Greater than 2 weeks","Refused","Dont know")

data$ogtt08a4.factor = factor(data$ogtt08a4, levels = c("0","1"))
levels(data$ogtt08a4.factor) = c("No","Yes")

data$ogtt08b4.factor = factor(data$ogtt08b4, levels = c("1","2","3","4","7","8"))
levels(data$ogtt08b4.factor) = c("Within past one wk","Within past two wk","Within past 1 mo","Greater than 1 mo","Refused","Dont know")

data$ogtt08c4.factor = factor(data$ogtt08c4, levels = c("1","2","3","7","8"))
levels(data$ogtt08c4.factor) = c("One dose","Less than 2 weeks","Greater than 2 weeks","Refused","Dont know")

data$ogtt08a5.factor = factor(data$ogtt08a5, levels = c("0","1"))
levels(data$ogtt08a5.factor) = c("No","Yes")

data$ogtt08b5.factor = factor(data$ogtt08b5, levels = c("1","2","3","4","7","8"))
levels(data$ogtt08b5.factor) = c("Within past one wk","Within past two wk","Within past 1 mo","Greater than 1 mo","Refused","Dont know")

data$ogtt08c5.factor = factor(data$ogtt08c5, levels = c("1","2","3","7","8"))
levels(data$ogtt08c5.factor) = c("One dose","Less than 2 weeks","Greater than 2 weeks","Refused","Dont know")

