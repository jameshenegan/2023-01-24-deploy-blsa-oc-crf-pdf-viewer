#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Skin_Biopsy.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_SkiBio)="CRF Version"
label(data$obsdate_datecompleted_SkiBio)="Date Completed"
label(data$sbdate)="Date Completed"
label(data$blank_SkiBio)="Blank Form"
label(data$sbtid)="Biopsy tester ID"
label(data$sb01)="Skin Biopsy consent reviewed"
label(data$sb02)="Eligibility criteria reviewed"
label(data$sb03)="Pre procedure body temperature"
label(data$sb04)="Pre procedure pulse"
label(data$sb05)="Pre procedure respirations"
label(data$sb06s)="Pre procedure BP systolic"
label(data$sb06d)="Pre procedure BP diastolic"
label(data$sb07)="Brief History and Physical performed"
label(data$sb09)="Total amount of Anesthesia given"
label(data$sb11)="Biopsy performed"
label(data$sb11com)="Biopsy comment"
label(data$sb12)="Dressing applied"
label(data$sb12com)="Dressing comment"
label(data$sb13)="Post procedure instructions reviewed"
label(data$sb13com)="Comment"
label(data$sbneedle)="Skin Biopsy needle size"
label(data$sbpostpulse)="Post procedure pulse"
label(data$sbpostresp)="Post procedure respirations"
label(data$sbpostsystolic)="Post procedure BP systolic"
label(data$sbpostdiastolic)="Post procedure BP diastolic"
label(data$sbsamples)="All samples collected"
label(data$testerid_SkiBio)="Tester ID"
label(data$provideinformedconsent_SkiBio)="Able to provide informed consent"
label(data$nohxbleedingdisorder_SkiBio)="Does not have history of bleeding disorder"
label(data$nomedsincrbleeding_SkiBio)="Does not take medications that will increase bleeding"
label(data$nonsaids_SkiBio)="Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
label(data$lessth81mgaspirin_SkiBio)="Does not take more than 81 mg Aspirin a day"
label(data$noallergylocanesthetic)="Is not allergic to Lidocaine or other local anesthetic"
label(data$noinfectionskincond_SkiBio)="Has no active infection or chronic skin condition around biopsy site"
label(data$notpregnant_SkiBio)="Is not pregnant"
label(data$eligibility_SkiBio)="Eligibility"
label(data$tester_SkiBio)="Tester"
label(data$anesthesiastart)="Anesthesia start time"
label(data$ampm1)="Anesthesia start time AmPm"
label(data$biopsystart)="Biopsy started"
label(data$ampm2)="Biopsy started AmPm"
label(data$biopsycomplete)="Biopsy completed"
label(data$ampm3)="Biopsy completed AmPm"
label(data$sb08)="Anesthesia start time"
label(data$sb10s)="Biopsy started"
label(data$sb10c)="Biopsy completed"
label(data$sbtesterid)="Biopsy tester ID"
label(data$auto_id_SkiBio)="Unique Teleform Number"
label(data$crf_parent_name_SkiBio)="CRF Parent Name"
label(data$item_group_repeat_SkiBio)="Item Group Repeate"
label(data$study_name_SkiBio)="Study Name"

#Create new variables for factors
data$sb01.factor = factor(data$sb01, levels = c("0","1"))
levels(data$sb01.factor) = c("No","Yes")

data$sb02.factor = factor(data$sb02, levels = c("0","1"))
levels(data$sb02.factor) = c("No","Yes")

data$sb07.factor = factor(data$sb07, levels = c("0","1"))
levels(data$sb07.factor) = c("No","Yes")

data$sb11.factor = factor(data$sb11, levels = c("0","1"))
levels(data$sb11.factor) = c("No","Yes")

data$sb12.factor = factor(data$sb12, levels = c("0","1"))
levels(data$sb12.factor) = c("No","Yes")

data$sb13.factor = factor(data$sb13, levels = c("0","1"))
levels(data$sb13.factor) = c("No","Yes")

data$sbneedle.factor = factor(data$sbneedle, levels = c("1"))
levels(data$sbneedle.factor) = c("6mm")

data$sbsamples.factor = factor(data$sbsamples, levels = c("0","1"))
levels(data$sbsamples.factor) = c("No","Yes")

data$provideinformedconsent_SkiBio.factor = factor(data$provideinformedconsent_SkiBio, levels = c("0","1"))
levels(data$provideinformedconsent_SkiBio.factor) = c("No","Yes")

data$nohxbleedingdisorder_SkiBio.factor = factor(data$nohxbleedingdisorder_SkiBio, levels = c("0","1"))
levels(data$nohxbleedingdisorder_SkiBio.factor) = c("No","Yes")

data$nomedsincrbleeding_SkiBio.factor = factor(data$nomedsincrbleeding_SkiBio, levels = c("0","1"))
levels(data$nomedsincrbleeding_SkiBio.factor) = c("No","Yes")

data$nonsaids_SkiBio.factor = factor(data$nonsaids_SkiBio, levels = c("0","1"))
levels(data$nonsaids_SkiBio.factor) = c("No","Yes")

data$lessth81mgaspirin_SkiBio.factor = factor(data$lessth81mgaspirin_SkiBio, levels = c("0","1"))
levels(data$lessth81mgaspirin_SkiBio.factor) = c("No","Yes")

data$noallergylocanesthetic.factor = factor(data$noallergylocanesthetic, levels = c("0","1"))
levels(data$noallergylocanesthetic.factor) = c("No","Yes")

data$noinfectionskincond_SkiBio.factor = factor(data$noinfectionskincond_SkiBio, levels = c("0","1"))
levels(data$noinfectionskincond_SkiBio.factor) = c("No","Yes")

data$notpregnant_SkiBio.factor = factor(data$notpregnant_SkiBio, levels = c("0","1"))
levels(data$notpregnant_SkiBio.factor) = c("No","Yes")

data$eligibility_SkiBio.factor = factor(data$eligibility_SkiBio, levels = c("0","1"))
levels(data$eligibility_SkiBio.factor) = c("No","Yes")

data$ampm1.factor = factor(data$ampm1, levels = c("1","2"))
levels(data$ampm1.factor) = c("Am","Pm")

data$ampm2.factor = factor(data$ampm2, levels = c("1","2"))
levels(data$ampm2.factor) = c("Am","Pm")

data$ampm3.factor = factor(data$ampm3, levels = c("1","2"))
levels(data$ampm3.factor) = c("Am","Pm")

