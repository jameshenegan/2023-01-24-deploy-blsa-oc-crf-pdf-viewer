#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Knee_Extensor_Power.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_KneExtPow)="CRF Version"
label(data$obsdate_kepdate)="Date Completed"
label(data$blank_KneExtPow)="Blank Form"
label(data$keptid)="Tester ID"
label(data$tricom01a_KneExtPow)="Able to stand unassisted"
label(data$kep01)="Time from Kin-Com testing"
label(data$kep02)="Did participant complete knee strength testing"
label(data$kep02a)="Eligibility"
label(data$kep02b)="Was range of motion 155 degrees or better"
label(data$kep02c)="Record ROM below 155 degrees"
label(data$kep03)="Which leg was tested at most recent BLSA Kin-Com testing"
label(data$kep03a)="Which leg is to be tested"
label(data$kep03b)="Reason not tested"
label(data$kep04)="Predicted Initial Setting"
label(data$kep05)="1 RM"
label(data$kep40t1)="40% 1 RM Trial 1"
label(data$kep40t2)="40% 1 RM Trial 2"
label(data$kep40t3)="40% 1 RM Trial 3"
label(data$kep40t4)="40% 1 RM Trial 4"
label(data$kep40t5)="40% 1 RM Trial 5"
label(data$kep50t1)="50% 1 RM Trial 1"
label(data$kep50t2)="50% 1 RM Trial 2"
label(data$kep50t3)="50% 1 RM Trial 3"
label(data$kep50t4)="50% 1 RM Trial 4"
label(data$kep50t5)="50% 1 RM Trial 5"
label(data$kep60t1)="60% 1 RM Trial 1"
label(data$kep60t2)="60% 1 RM Trial 2"
label(data$kep60t3)="60% 1 RM Trial 3"
label(data$kep60t4)="60% 1 RM Trial 4"
label(data$kep60t5)="60% 1 RM Trial 5"
label(data$kep70t1)="70% 1 RM Trial 1"
label(data$kep70t2)="70% 1 RM Trial 2"
label(data$kep70t3)="70% 1 RM Trial 3"
label(data$kep70t4)="70% 1 RM Trial 4"
label(data$kep70t5)="70% 1 RM Trial 5"
label(data$auto_id_KneExtPow)="Unique Teleform Number"
label(data$crf_parent_name_KneExtPow)="CRF Parent Name"
label(data$study_name_KneExtPow)="Study Name"

#Create new variables for factors
data$kep01.factor = factor(data$kep01, levels = c("1","2","3"))
levels(data$kep01.factor) = c("Kin-Com preceded power testing","Kin-Com to follow power testing","Not scheduled for current visit")

data$kep02.factor = factor(data$kep02, levels = c("0","1","2","3"))
levels(data$kep02.factor) = c("No excluded do not test","Yes no discomfort test same leg","No technical issues check knee strength eligibility","Yes some discomfort test other leg unless contraindications")

data$kep02a.factor = factor(data$kep02a, levels = c("0","1"))
levels(data$kep02a.factor) = c("Not eligible","Eligible")

data$kep02b.factor = factor(data$kep02b, levels = c("0","1"))
levels(data$kep02b.factor) = c("No","Yes")

data$kep03.factor = factor(data$kep03, levels = c("1","2","3","8"))
levels(data$kep03.factor) = c("Right","First time","Left","Dont know")

data$kep03a.factor = factor(data$kep03a, levels = c("1","2","3"))
levels(data$kep03a.factor) = c("Right","Left","Neither (test not performed)")

data$kep03b.factor = factor(data$kep03b, levels = c("1","555","666","777","888","999"))
levels(data$kep03b.factor) = c("Not elegible","physical problems","cognitive problems","physical and cognitive","refused","technical problems")

