#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/blsa_der_bloodpressure.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="BLSA ID"
label(data$visit)="Visit Number"
label(data$hbp_hx)="Self-Reported History of High Blood Pressure"
label(data$bpmeds_self)="Self-Reported BP Medication Use"
label(data$htn_self)="Hypertension Status (using self-reported physician DX and BP medication use)"
label(data$sbp)="Systolic Blood Pressure (mmHg)"
label(data$dbp)="Diastolic Blood Pressure (mmHg)"
label(data$bpjnc7)="JNC 7 BP Classification"
label(data$bpmeds_file)="BP Medication Brought to Clinic"
label(data$bpmeds)="BP Medication Use"
label(data$bp2cat)="Elevated BP Classification"
label(data$htn)="Hypertension Status"
label(data$abi)="Ankle-Brachial Index"
label(data$abi2cat)="Peripheral Artery Disease ABI Classification"
label(data$icrose)="Classic Symptoms of Intermittent Claudication as Defined by Rose"
label(data$pad)="Peripheral Artery Disease"

#Create new variables for factors
data$hbp_hx.factor = factor(data$hbp_hx, levels = c("0","1"))
levels(data$hbp_hx.factor) = c("No","Yes")

data$bpmeds_self.factor = factor(data$bpmeds_self, levels = c("0","1"))
levels(data$bpmeds_self.factor) = c("No","Yes")

data$htn_self.factor = factor(data$htn_self, levels = c("0","1"))
levels(data$htn_self.factor) = c("No","Yes")

data$bpjnc7.factor = factor(data$bpjnc7, levels = c("0","1","2","3"))
levels(data$bpjnc7.factor) = c("Normal","Pre-HTN","Stage I HTN","Stage II HTN")

data$bpmeds_file.factor = factor(data$bpmeds_file, levels = c("0","1"))
levels(data$bpmeds_file.factor) = c("No","Yes")

data$bpmeds.factor = factor(data$bpmeds, levels = c("0","1"))
levels(data$bpmeds.factor) = c("Yes","Not Listed")

data$bp2cat.factor = factor(data$bp2cat, levels = c("0","1"))
levels(data$bp2cat.factor) = c("No","Yes")

data$htn.factor = factor(data$htn, levels = c("0","1"))
levels(data$htn.factor) = c("Non-Hypertensive","Hypertensive")

data$icrose.factor = factor(data$icrose, levels = c("0","1"))
levels(data$icrose.factor) = c("Symptoms Absent","Symptoms Present")

data$pad.factor = factor(data$pad, levels = c("0","1"))
levels(data$pad.factor) = c("PAD Absent","PAD Present")

