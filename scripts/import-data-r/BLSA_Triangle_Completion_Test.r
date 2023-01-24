#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Triangle_Completion_Test.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_TriComTes)="CRF Version"
label(data$obsdate_tricomdate)="Date Completed"
label(data$blank_TriComTes)="Blank Form"
label(data$tricomtid)="Tester ID"
label(data$tricom01a_TriComTes)="Able to stand unassisted"
label(data$tricom01b)="Use assistive device for standing or walking"
label(data$tricomt1dd)="Triangle 1 distance of deviation"
label(data$tricomt1ad)="Triangle 1 angle of deviation"
label(data$tricomt1dt)="Triangle 1 distance traveled"
label(data$tricomt1ar)="Triangle 1 angle rotated"
label(data$tricom1yn)="Triangle 1 think you reached original starting point"
label(data$tricom1lr)="Triangle 1 think you are to the left or right"
label(data$tricomt1i)="Triangle 1 interrupted by tester for safety"
label(data$tricomt2dd)="Triangle 2 distance of deviation"
label(data$tricomt2ad)="Triangle 2 angle of deviation"
label(data$tricomt2dt)="Triangle 2 distance traveled"
label(data$tricomt2ar)="Triangle 2 angle rotated"
label(data$tricom2yn)="Triangle 2 think you reached original starting point"
label(data$tricom2lr)="Triangle 2 think you are to the left or right"
label(data$tricomt2i)="Triangle 2 interrupted by tester for safety"
label(data$tricomt3dd)="Triangle 3 distance of deviation"
label(data$tricomt3ad)="Triangle 3 angle of deviation"
label(data$tricomt3dt)="Triangle 3 distance traveled"
label(data$tricomt3ar)="Triangle 3 angle rotated"
label(data$tricom3yn)="Triangle 3 think you reached original starting point"
label(data$tricom3lr)="Triangle 3 think you are to the left or right"
label(data$tricomt3i)="Triangle 3 interrupted by tester for safety"
label(data$tricomt4dd)="Triangle 4 distance of deviation"
label(data$tricomt4ad)="Triangle 4 angle of deviation"
label(data$tricomt4dt)="Triangle 4 distance traveled"
label(data$tricomt4ar)="Triangle 4 angle rotated"
label(data$tricom4yn)="Triangle 4 think you reached original starting point"
label(data$tricom4lr)="Triangle 4 think you are to the left or right"
label(data$tricomt4i)="Triangle 4 interrupted by tester for safety"
label(data$tricomdone)="Was triangle completion test done"
label(data$tricomrnd)="reason not done"
label(data$trisod)="Sense of Direction"
label(data$auto_id_TriComTes)="Unique Teleform Number"
label(data$crf_parent_name_TriComTes)="CRF Parent Name"
label(data$study_name_TriComTes)="Study Name"

#Create new variables for factors
data$tricom01a_TriComTes.factor = factor(data$tricom01a_TriComTes, levels = c("0","1"))
levels(data$tricom01a_TriComTes.factor) = c("No - DO NOT TEST","Yes")

data$tricom01b.factor = factor(data$tricom01b, levels = c("0","1"))
levels(data$tricom01b.factor) = c("No","Yes - DO NOT TEST")

data$tricom1yn.factor = factor(data$tricom1yn, levels = c("0","1"))
levels(data$tricom1yn.factor) = c("No","Yes")

data$tricom1lr.factor = factor(data$tricom1lr, levels = c("1","2"))
levels(data$tricom1lr.factor) = c("to its Left","to its right")

data$tricomt1i.factor = factor(data$tricomt1i, levels = c("1"))
levels(data$tricomt1i.factor) = c("Interrupted by tester for safety")

data$tricom2yn.factor = factor(data$tricom2yn, levels = c("0","1"))
levels(data$tricom2yn.factor) = c("No","Yes")

data$tricom2lr.factor = factor(data$tricom2lr, levels = c("1","2"))
levels(data$tricom2lr.factor) = c("to its Left","to its right")

data$tricomt2i.factor = factor(data$tricomt2i, levels = c("1"))
levels(data$tricomt2i.factor) = c("Interrupted by tester for safety")

data$tricom3yn.factor = factor(data$tricom3yn, levels = c("0","1"))
levels(data$tricom3yn.factor) = c("No","Yes")

data$tricom3lr.factor = factor(data$tricom3lr, levels = c("1","2"))
levels(data$tricom3lr.factor) = c("to its Left","to its right")

data$tricomt3i.factor = factor(data$tricomt3i, levels = c("1"))
levels(data$tricomt3i.factor) = c("Interrupted by tester for safety")

data$tricom4yn.factor = factor(data$tricom4yn, levels = c("0","1"))
levels(data$tricom4yn.factor) = c("No","Yes")

data$tricom4lr.factor = factor(data$tricom4lr, levels = c("1","2"))
levels(data$tricom4lr.factor) = c("to its Left","to its right")

data$tricomt4i.factor = factor(data$tricomt4i, levels = c("1"))
levels(data$tricomt4i.factor) = c("Interrupted by tester for safety")

data$tricomdone.factor = factor(data$tricomdone, levels = c("0","1"))
levels(data$tricomdone.factor) = c("No","Yes")

data$tricomrnd.factor = factor(data$tricomrnd, levels = c("3","4","5","6","7","8","9"))
levels(data$tricomrnd.factor) = c("3-No Time","4-Refused","5-Unable (Physical or Mental)","6-Equipment problem","7-No Tester","8-Not eligible","9-Not scheduled/Not applicable")

data$trisod.factor = factor(data$trisod, levels = c("1","2","3","4","5","6","7"))
levels(data$trisod.factor) = c("1 Poor","2","3","4","5","6","7 Good")

