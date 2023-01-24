#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Fitts_Task.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_FitTas)="CRF Version"
label(data$obsdate_fittsdate)="Date Completed"
label(data$blank_FitTas)="Blank Form"
label(data$fittstid)="Tester ID"
label(data$fittsa01)="Dominant Hand"
label(data$fittsa02)="Dominant Hand issues"
label(data$fittsacom)="Explain hand issues"
label(data$fittst01)="Test 1 complete"
label(data$fittst03)="Tester How easy did the participant perform this test"
label(data$fittst04)="Tester Did the participant have trouble understanding the instructions"
label(data$fittst05)="Tester Do you think the instructions help the participant perform the test"
label(data$fitts0p6)="Participant How easy was this test"
label(data$auto_id_FitTas)="Unique Teleform Number"
label(data$fittst01rnd2)="Test 1 reason not done"
label(data$lines)="Tester Did the participant have a very difficult time hitting the little rectangles"
label(data$stylus)="Participant Stylus movement"
label(data$linesparticipant)="Participant How difficult to touch the lines"
label(data$armofftablet)="How hard was it to hold your arm off the tablet"
label(data$cursonspeed)="Did you feel the cursor on screen moved at a comparable speed to your movement on the tablet?"
label(data$fittst01rnd)="Test 1 reason not done"
label(data$fittst02)="Tester Did the participant have a very difficult time hitting the little rectangles"
label(data$fitts0p7)="Participant Finger movement"
label(data$fitts0p8)="Participant How difficult to touch triangles"
label(data$fittst09)="Tester Compare how easy Test 1 Test 2"
label(data$fittsp10)="Participant Compare how easy Test 1 Test 2"
label(data$crf_parent_name_FitTas)="CRF Parent Name"
label(data$study_name_FitTas)="Study Name"

#Create new variables for factors
data$fittsa01.factor = factor(data$fittsa01, levels = c("1","2"))
levels(data$fittsa01.factor) = c("Left","Right")

data$fittsa02.factor = factor(data$fittsa02, levels = c("0","1"))
levels(data$fittsa02.factor) = c("No","Yes")

data$fittst01.factor = factor(data$fittst01, levels = c("0","1"))
levels(data$fittst01.factor) = c("No","Yes")

data$fittst03.factor = factor(data$fittst03, levels = c("1","2","3","4","5"))
levels(data$fittst03.factor) = c("Very Easy","Somewhat Easy","Neutral","Somewhat Difficult","Very Difficult")

data$fittst04.factor = factor(data$fittst04, levels = c("0","1","2"))
levels(data$fittst04.factor) = c("No","Yes","Unsure")

data$fittst05.factor = factor(data$fittst05, levels = c("0","1","2"))
levels(data$fittst05.factor) = c("No","Yes","Unsure")

data$fitts0p6.factor = factor(data$fitts0p6, levels = c("1","2","3","4","5"))
levels(data$fitts0p6.factor) = c("Very Easy","Somewhat Easy","Neutral","Somewhat Difficult","Very Difficult")

data$fittst01rnd2.factor = factor(data$fittst01rnd2, levels = c("1","2","3","4","5","6","7","8","9"))
levels(data$fittst01rnd2.factor) = c("Physical/sensory impairment","Emotional problems","Cognitive problems","Refused","Technical problems","Other","Joint or movement issues","Vision problems","Not Scheduled")

data$lines.factor = factor(data$lines, levels = c("0","1","2"))
levels(data$lines.factor) = c("No","Yes","Unsure")

data$stylus.factor = factor(data$stylus, levels = c("1","2","3","4","5"))
levels(data$stylus.factor) = c("Very Natural","Somewhat Natural","Neutral","Somewhat Unnatural","Very Unnatural")

data$linesparticipant.factor = factor(data$linesparticipant, levels = c("1","2","3","4","5"))
levels(data$linesparticipant.factor) = c("Very Easy","Somewhat Easy","Neutral","Somewhat Difficult","Very Difficult")

data$armofftablet.factor = factor(data$armofftablet, levels = c("1","2","3"))
levels(data$armofftablet.factor) = c("Not hard at all","Somewhat hard","Very hard")

data$cursonspeed.factor = factor(data$cursonspeed, levels = c("0","1"))
levels(data$cursonspeed.factor) = c("No","Yes")

data$fittst01rnd.factor = factor(data$fittst01rnd, levels = c("1","2","3","4","5","6"))
levels(data$fittst01rnd.factor) = c("Physical/sensory impairment","Emotional problems","Cognitive problems","Refused","Technical problems","Other")

data$fittst02.factor = factor(data$fittst02, levels = c("0","1","2"))
levels(data$fittst02.factor) = c("No","Yes","Unsure")

data$fitts0p7.factor = factor(data$fitts0p7, levels = c("1","2","3","4","5"))
levels(data$fitts0p7.factor) = c("Very Natural","Somewhat Natural","Neutral","Somewhat Unnatural","Very Unnatural")

data$fitts0p8.factor = factor(data$fitts0p8, levels = c("1","2","3","4","5"))
levels(data$fitts0p8.factor) = c("Very Easy","Somewhat Easy","Neutral","Somewhat Difficult","Very Difficult")

data$fittst09.factor = factor(data$fittst09, levels = c("1","2","3","4","5"))
levels(data$fittst09.factor) = c("Much Easier","Somewhat Easier","About the Same","With More Difficulty","With Much More Difficulty")

data$fittsp10.factor = factor(data$fittsp10, levels = c("1","2","3","4","5"))
levels(data$fittsp10.factor) = c("Much Easier","Somewhat Easier","About the Same","With More Difficulty","With Much More Difficulty")

