#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/blsa_der_medications.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="BLSA ID"
label(data$visit)="Visit Number"
label(data$antacidmed_file)="Antacid Medication Brought to Clinic"
label(data$anticoagmed_file)="Anticoagulant Medication Brought to Clinic"
label(data$antihistaminemed_file)="Antihistamine Medication Brought to Clinic"
label(data$antipsychoticmeds)="Antipsychotic Medication Brought to Clinic"
label(data$antiviralabxmeds)="Antivirals and Antibiotics Medication Brought to Clinic"
label(data$asthmameds_file)="Asthma Medication Brought to Clinic"
label(data$cholesterolmeds_file)="Cholesterol Medication Brought to Clinic"
label(data$chfmeds_file)="Congestive Heart Failure Medication Brought to Clinic"
label(data$cancermeds_file)="Chemotherapy Medication Brought to Clinic"
label(data$copdmeds_file)="Chronic Obstructive Pulmonary Disease Medication Brought to Clinic"
label(data$dementiameds_file)="Dementia Medication Brought to Clinic"
label(data$depressionmeds_file)="Depression Medication Brought to Clinic"
label(data$diabetesmeds_file)="Diabetes Medication Brought to Clinic"
label(data$gerdmeds_file)="Gastro-Esophageal Reflux Medication Brought to Clinic"
label(data$bpmeds_file)="BP Medication Brought to Clinic"
label(data$laxativemeds_file)="Laxatives Medication Brought to Clinic"
label(data$aspirinmeds_file)="Low Dose Aspirin Brought to Clinic"
label(data$edmeds_file)="Male Impotence Medication Brought to Clinic"
label(data$osteoporosismeds_file)="Osteoporosis Medication Brought to Clinic"
label(data$painmeds_file)="Pain Medication Brought to Clinic"
label(data$parkinsonmeds_file)="Parkinson's Medication Brought to Clinic"
label(data$sleepmeds_file)="Sleep Medication Brought to Clinic"
label(data$thyroidmeds_file)="Thyroid Hormone Medication Brought to Clinic"
label(data$topicalmeds_file)="Topical Medication Brought to Clinic"
label(data$triglyceridemeds_file)="Triglycerides Medication Brought to Clinic"
label(data$vitaminmineralmeds_file)="Vitamin or Mineral Medication Brought to Clinic"
label(data$vitamindmeds_file)="Vitamin D Medication Brought to Clinic"

#Create new variables for factors
data$antacidmed_file.factor = factor(data$antacidmed_file, levels = c("0","1"))
levels(data$antacidmed_file.factor) = c("No","Yes")

data$anticoagmed_file.factor = factor(data$anticoagmed_file, levels = c("0","1"))
levels(data$anticoagmed_file.factor) = c("No","Yes")

data$antihistaminemed_file.factor = factor(data$antihistaminemed_file, levels = c("0","1"))
levels(data$antihistaminemed_file.factor) = c("No","Yes")

data$antipsychoticmeds.factor = factor(data$antipsychoticmeds, levels = c("0","1"))
levels(data$antipsychoticmeds.factor) = c("No","Yes")

data$antiviralabxmeds.factor = factor(data$antiviralabxmeds, levels = c("0","1"))
levels(data$antiviralabxmeds.factor) = c("No","Yes")

data$asthmameds_file.factor = factor(data$asthmameds_file, levels = c("0","1"))
levels(data$asthmameds_file.factor) = c("No","Yes")

data$cholesterolmeds_file.factor = factor(data$cholesterolmeds_file, levels = c("0","1"))
levels(data$cholesterolmeds_file.factor) = c("No","Yes")

data$chfmeds_file.factor = factor(data$chfmeds_file, levels = c("0","1"))
levels(data$chfmeds_file.factor) = c("No","Yes")

data$cancermeds_file.factor = factor(data$cancermeds_file, levels = c("0","1"))
levels(data$cancermeds_file.factor) = c("No","Yes")

data$copdmeds_file.factor = factor(data$copdmeds_file, levels = c("0","1"))
levels(data$copdmeds_file.factor) = c("No","Yes")

data$dementiameds_file.factor = factor(data$dementiameds_file, levels = c("0","1"))
levels(data$dementiameds_file.factor) = c("No","Yes")

data$depressionmeds_file.factor = factor(data$depressionmeds_file, levels = c("0","1"))
levels(data$depressionmeds_file.factor) = c("No","Yes")

data$diabetesmeds_file.factor = factor(data$diabetesmeds_file, levels = c("0","1"))
levels(data$diabetesmeds_file.factor) = c("No","Yes")

data$gerdmeds_file.factor = factor(data$gerdmeds_file, levels = c("0","1"))
levels(data$gerdmeds_file.factor) = c("No","Yes")

data$bpmeds_file.factor = factor(data$bpmeds_file, levels = c("0","1"))
levels(data$bpmeds_file.factor) = c("No","Yes")

data$laxativemeds_file.factor = factor(data$laxativemeds_file, levels = c("0","1"))
levels(data$laxativemeds_file.factor) = c("No","Yes")

data$aspirinmeds_file.factor = factor(data$aspirinmeds_file, levels = c("0","1"))
levels(data$aspirinmeds_file.factor) = c("No","Yes")

data$edmeds_file.factor = factor(data$edmeds_file, levels = c("0","1"))
levels(data$edmeds_file.factor) = c("No","Yes")

data$osteoporosismeds_file.factor = factor(data$osteoporosismeds_file, levels = c("0","1"))
levels(data$osteoporosismeds_file.factor) = c("No","Yes")

data$painmeds_file.factor = factor(data$painmeds_file, levels = c("0","1"))
levels(data$painmeds_file.factor) = c("No","Yes")

data$parkinsonmeds_file.factor = factor(data$parkinsonmeds_file, levels = c("0","1"))
levels(data$parkinsonmeds_file.factor) = c("No","Yes")

data$sleepmeds_file.factor = factor(data$sleepmeds_file, levels = c("0","1"))
levels(data$sleepmeds_file.factor) = c("No","Yes")

data$thyroidmeds_file.factor = factor(data$thyroidmeds_file, levels = c("0","1"))
levels(data$thyroidmeds_file.factor) = c("No","Yes")

data$topicalmeds_file.factor = factor(data$topicalmeds_file, levels = c("0","1"))
levels(data$topicalmeds_file.factor) = c("No","Yes")

data$triglyceridemeds_file.factor = factor(data$triglyceridemeds_file, levels = c("0","1"))
levels(data$triglyceridemeds_file.factor) = c("No","Yes")

data$vitaminmineralmeds_file.factor = factor(data$vitaminmineralmeds_file, levels = c("0","1"))
levels(data$vitaminmineralmeds_file.factor) = c("No","Yes")

data$vitamindmeds_file.factor = factor(data$vitamindmeds_file, levels = c("0","1"))
levels(data$vitamindmeds_file.factor) = c("No","Yes")

