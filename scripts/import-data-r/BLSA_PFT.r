#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_PFT.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_PFT)="CRF Version"
label(data$obsdate_pftdate)="Date Completed"
label(data$blank_PFT)="Blank Form"
label(data$pfttid)="Tester ID"
label(data$pft01a)="Myocardial infarcaion"
label(data$pft01b)="Unstable Angina"
label(data$pft01c)="Surgery abdomen thorax past 3 months"
label(data$pft01d)="surgery eye past 3 months"
label(data$pft01e)="Syncope with forced exhalation"
label(data$pft01f)="Recent upper respiratory infection"
label(data$pft01g)="Poulmonary embolus within past 3 months"
label(data$pft01h)="Thoratic abdominal or cerebral aneurysm"
label(data$pft01i)="Uncontrolled hypertension"
label(data$pft01j)="Acute disease processes e g nausea vomiting etc"
label(data$pft02)="Is participant on a bronchodilator"
label(data$pft02a)="How long ago was it taken"
label(data$pft03)="Was PFT performed"
label(data$pft03a)="Reason test not performed or unsatisfactory"
label(data$pft03c)="Other reason test not performed or unsatisfactory"
label(data$pft04)="All 3 good trials were achieved"
label(data$auto_id_PFT)="Unique Teleform Number"
label(data$pft01)="Contraindications"
label(data$crf_parent_name_PFT)="CRF Parent Name"
label(data$item_group_repeat_PFT)="Item Group Repeate"
label(data$pft01_pft01a)="Contraindications : Myocardial infarction within past 3 months (Checkbox Indicator)"
label(data$pft01_pft01b)="Contraindications : Unstable angina (Checkbox Indicator)"
label(data$pft01_pft01c)="Contraindications : Surgery (abdomen thorax) within past 3 months (Checkbox Indicator)"
label(data$pft01_pft01d)="Contraindications : Surgery (eye) within past 3 months (Checkbox Indicator)"
label(data$pft01_pft01e)="Contraindications : Syncope with forced exhalation (Checkbox Indicator)"
label(data$pft01_pft01f)="Contraindications : Recent URI (upper respiratory infection) (Checkbox Indicator)"
label(data$pft01_pft01g)="Contraindications : Pulmonary Embolus within past 3 mo (Checkbox Indicator)"
label(data$pft01_pft01h)="Contraindications : Thoracic Abdominal or Cerebral aneurysm (Checkbox Indicator)"
label(data$pft01_pft01i)="Contraindications : Uncontrolled Hypertension (Checkbox Indicator)"
label(data$study_name_PFT)="Study Name"

#Create new variables for factors
data$pft01a.factor = factor(data$pft01a, levels = c("0","1"))
levels(data$pft01a.factor) = c("No","Yes")

data$pft01b.factor = factor(data$pft01b, levels = c("0","1"))
levels(data$pft01b.factor) = c("No","Yes")

data$pft01c.factor = factor(data$pft01c, levels = c("0","1"))
levels(data$pft01c.factor) = c("No","Yes")

data$pft01d.factor = factor(data$pft01d, levels = c("0","1"))
levels(data$pft01d.factor) = c("No","Yes")

data$pft01e.factor = factor(data$pft01e, levels = c("0","1"))
levels(data$pft01e.factor) = c("No","Yes")

data$pft01f.factor = factor(data$pft01f, levels = c("0","1"))
levels(data$pft01f.factor) = c("No","Yes")

data$pft01g.factor = factor(data$pft01g, levels = c("0","1"))
levels(data$pft01g.factor) = c("No","Yes")

data$pft01h.factor = factor(data$pft01h, levels = c("0","1"))
levels(data$pft01h.factor) = c("No","Yes")

data$pft01i.factor = factor(data$pft01i, levels = c("0","1"))
levels(data$pft01i.factor) = c("No","Yes")

data$pft01j.factor = factor(data$pft01j, levels = c("0","1"))
levels(data$pft01j.factor) = c("No","Yes")

data$pft02.factor = factor(data$pft02, levels = c("0","1"))
levels(data$pft02.factor) = c("No","Yes")

data$pft03.factor = factor(data$pft03, levels = c("0","1"))
levels(data$pft03.factor) = c("No","Yes")

data$pft03a.factor = factor(data$pft03a, levels = c("0","1","5","6","7","8","9"))
levels(data$pft03a.factor) = c("Other (please specify)","Contraindication","Physical problems","Cognitive","Physical and Cognitive","Refused to perform the test","Technical problems")

data$pft04.factor = factor(data$pft04, levels = c("0","1","2","3"))
levels(data$pft04.factor) = c("None good trials were achieved","Only one good trial was achieved","Two good trials were achieved","Yes (3)")

