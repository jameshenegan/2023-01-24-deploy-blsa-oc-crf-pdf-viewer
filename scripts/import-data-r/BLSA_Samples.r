#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Samples.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_Sam)="CRF Version"
label(data$obsdate_samdate)="Date Completed"
label(data$blank_Sam)="Blank Form"
label(data$sam3tid)="Stool Sample Tester ID"
label(data$sam03)="Was Stool Sample collected"
label(data$sam03a)="Stool Sample reason not cone"
label(data$sam03b)="Date Collected"
label(data$sam03c)="Time collected"
label(data$sam03d)="Time ampm"
label(data$sam4tid)="Stress Blood Sample Tester ID"
label(data$sam04)="Was stress blood sample collected"
label(data$sam04a)="Blood Sample reason not cone"
label(data$sam04b)="Date Collected"
label(data$sam04c)="Time collected"
label(data$sam04d)="Time pm"
label(data$sam04e)="What time did you have dinner"
label(data$sam04f)="Anything to eat or drink after dinner"
label(data$sam04g)="Time you last consumed anything"
label(data$sam04h)="Time pm"
label(data$sam04i)="Comment"
label(data$sam2tid)="Saliva Tester ID"
label(data$sam02)="Was Saliva collected"
label(data$sam02a)="Saliva reason not cone"
label(data$sam1tid)="Nail Clippings Tester ID"
label(data$sam01c)="Were nail clippings collected right"
label(data$sam01d)="Nail Clippings reason not done right"
label(data$sam01r)="Nail clippings right"
label(data$sam01a)="Were nail clippings collected left"
label(data$sam01b)="Nail Clippings reason not done left"
label(data$sam01l)="Nail clippings left"
label(data$auto_id_Sam)="Unique Teleform Number"
label(data$crf_parent_name_Sam)="CRF Parent Name"
label(data$item_group_repeat_Sam)="Item Group Repeate"
label(data$sam04d_2)="Time pm : Pm (Checkbox Indicator)"
label(data$study_name_Sam)="Study Name"

#Create new variables for factors
data$sam03.factor = factor(data$sam03, levels = c("0","1"))
levels(data$sam03.factor) = c("No","Yes")

data$sam03a.factor = factor(data$sam03a, levels = c("3","4","5","6","7","8","9"))
levels(data$sam03a.factor) = c("3-No Time","4-Refused","5-Unable (Physical or Mental)","6-Equipment problems","7-No Tester","8-Not Eligible","9-Not Scheduled/Not Applicable")

data$sam03d.factor = factor(data$sam03d, levels = c("1","2"))
levels(data$sam03d.factor) = c("Am","Pm")

data$sam04.factor = factor(data$sam04, levels = c("0","1"))
levels(data$sam04.factor) = c("No","Yes")

data$sam04a.factor = factor(data$sam04a, levels = c("3","4","5","6","7","8","9"))
levels(data$sam04a.factor) = c("3-No Time","4-Refused","5-Unable (Physical or Mental)","6-Equipment problems","7-No Tester","8-Not Eligible","9-Not Scheduled/Not Applicable")

data$sam04f.factor = factor(data$sam04f, levels = c("0","1"))
levels(data$sam04f.factor) = c("No","Yes")

data$sam02.factor = factor(data$sam02, levels = c("0","1"))
levels(data$sam02.factor) = c("No","Yes")

data$sam02a.factor = factor(data$sam02a, levels = c("3","4","5","6","7","8","9"))
levels(data$sam02a.factor) = c("3-No Time","4-Refused","5-Unable (Physical or Mental)","6-Equipment problems","7-No Tester","8-Not Eligible","9-Not Scheduled/Not Applicable")

data$sam01c.factor = factor(data$sam01c, levels = c("0","1"))
levels(data$sam01c.factor) = c("No","Yes")

data$sam01d.factor = factor(data$sam01d, levels = c("3","4","5","6","7","8","9"))
levels(data$sam01d.factor) = c("3-No Time","4-Refused","5-Unable (Physical or Mental)","6-Equipment problems","7-No Tester","8-Not Eligible","9-Not Scheduled/Not Applicable")

data$sam01r.factor = factor(data$sam01r, levels = c("1","2","3","4","5"))
levels(data$sam01r.factor) = c("1","2","3","4","5")

data$sam01a.factor = factor(data$sam01a, levels = c("0","1"))
levels(data$sam01a.factor) = c("No","Yes")

data$sam01b.factor = factor(data$sam01b, levels = c("3","4","5","6","7","8","9"))
levels(data$sam01b.factor) = c("3-No Time","4-Refused","5-Unable (Physical or Mental)","6-Equipment problems","7-No Tester","8-Not Eligible","9-Not Scheduled/Not Applicable")

data$sam01l.factor = factor(data$sam01l, levels = c("1","2","3","4","5"))
levels(data$sam01l.factor) = c("1","2","3","4","5")

