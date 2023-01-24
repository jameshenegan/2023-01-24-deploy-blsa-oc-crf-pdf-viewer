#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Skin_Biopsy_Eligibility.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_SkiBioEli)="CRF Version"
label(data$obsdate_datecompleted_SkiBioEli)="Date Completed"
label(data$blank_SkiBioEli)="Blank Form"
label(data$testerid_SkiBioEli)="Tester ID"
label(data$provideinformedconsent_SkiBioEli)="Able to provide informed consent"
label(data$nohxbleedingdisorder_SkiBioEli)="Does not have history of bleeding disorder"
label(data$nomedsincrbleeding_SkiBioEli)="Does not take medications that will increase bleeding"
label(data$nonsaids_SkiBioEli)="Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
label(data$lessth81mgaspirin_SkiBioEli)="Does not take more than 81 mg Aspirin a day"
label(data$noallergylocalanesthetic)="Is not allergic to Lidocaine or other local anesthetic"
label(data$noinfectionskincond_SkiBioEli)="Has no active infection or chronic skin condition around biopsy site"
label(data$notpregnant_SkiBioEli)="Is not pregnant"
label(data$eligibility_SkiBioEli)="Eligibility"
label(data$tester_SkiBioEli)="Tester"
label(data$crf_parent_name_SkiBioEli)="CRF Parent Name"
label(data$study_name_SkiBioEli)="Study Name"

#Create new variables for factors
data$provideinformedconsent_SkiBioEli.factor = factor(data$provideinformedconsent_SkiBioEli, levels = c("0","1"))
levels(data$provideinformedconsent_SkiBioEli.factor) = c("No","Yes")

data$nohxbleedingdisorder_SkiBioEli.factor = factor(data$nohxbleedingdisorder_SkiBioEli, levels = c("0","1"))
levels(data$nohxbleedingdisorder_SkiBioEli.factor) = c("No","Yes")

data$nomedsincrbleeding_SkiBioEli.factor = factor(data$nomedsincrbleeding_SkiBioEli, levels = c("0","1"))
levels(data$nomedsincrbleeding_SkiBioEli.factor) = c("No","Yes")

data$nonsaids_SkiBioEli.factor = factor(data$nonsaids_SkiBioEli, levels = c("0","1"))
levels(data$nonsaids_SkiBioEli.factor) = c("No","Yes")

data$lessth81mgaspirin_SkiBioEli.factor = factor(data$lessth81mgaspirin_SkiBioEli, levels = c("0","1"))
levels(data$lessth81mgaspirin_SkiBioEli.factor) = c("No","Yes")

data$noallergylocalanesthetic.factor = factor(data$noallergylocalanesthetic, levels = c("0","1"))
levels(data$noallergylocalanesthetic.factor) = c("No","Yes")

data$noinfectionskincond_SkiBioEli.factor = factor(data$noinfectionskincond_SkiBioEli, levels = c("0","1"))
levels(data$noinfectionskincond_SkiBioEli.factor) = c("No","Yes")

data$notpregnant_SkiBioEli.factor = factor(data$notpregnant_SkiBioEli, levels = c("0","1"))
levels(data$notpregnant_SkiBioEli.factor) = c("No","Yes")

data$eligibility_SkiBioEli.factor = factor(data$eligibility_SkiBioEli, levels = c("0","1"))
levels(data$eligibility_SkiBioEli.factor) = c("No","Yes")

