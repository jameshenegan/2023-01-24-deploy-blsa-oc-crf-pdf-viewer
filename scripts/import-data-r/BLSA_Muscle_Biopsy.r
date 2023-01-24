#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Muscle_Biopsy.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_MusBio)="CRF Version"
label(data$obsdate_datecompleted_MusBio)="Date Completed"
label(data$mubdate)="Date Completed"
label(data$blank_MusBio)="Blank Form"
label(data$mubtid)="Tester ID"
label(data$mub0a)="Muscle Biopsy consent reviewed"
label(data$mub0b)="Eligibility criteria reviewed"
label(data$mub1a)="Pre procedure body temperature"
label(data$mub1c)="Pre procedure pulse"
label(data$mub1b)="Pre procedure respirations"
label(data$mub1d)="Pre procedure BP systolic"
label(data$mub1e)="Pre procedure BP diastolic"
label(data$mub2a)="Brief History and Physical performed by MD NP"
label(data$mubt1)="Anesthesia start time"
label(data$mubt2)="First biopsy needle inserted"
label(data$mubt3)="Leg pressure start"
label(data$mubt4)="Leg pressure stop"
label(data$muba)="Total amount of Anesthesia given"
label(data$mubi)="Incision closed"
label(data$mub2d)="Biopsy tester ID"
label(data$mub2b)="Biopsy performed"
label(data$mub2c)="Biopsy comment"
label(data$mub2e)="Dressing applied"
label(data$mub2f)="Dressing comment"
label(data$mub3b)="Post procedure pulse"
label(data$mub3a)="Post respirations"
label(data$mub3c)="Post procedure BP systolic"
label(data$mub3d)="Post procedure BP diastolic"
label(data$mub3e)="Post procedure instructions reviewed"
label(data$mub4p1)="Tissue pass 1"
label(data$mub4p2)="Tissue pass 2"
label(data$mub4p3)="Tissue pass 3"
label(data$mub4pt)="Tissue Total"
label(data$mub4a)="Oroboros respirometry"
label(data$mub4b)="Oroboros respirometry sample wt"
label(data$mub5a)="Extra tissue Cardiolipin"
label(data$mub5b)="Extra tissue Cardiolipin sample wt"
label(data$mub6a)="Electron Microscopy"
label(data$mub6b)="Electron Microscopy sample wt"
label(data$mub7a)="2D-PAGE & Complex I activity"
label(data$mub7b)="2D-PAGE & Complex I activity sample wt"
label(data$mub8a)="Cardiolipin 2"
label(data$mub8b)="Cardiolipin 2 sample wt"
label(data$mub9a)="Confocal sample 1"
label(data$mub9b)="Confocal sample 1 wt"
label(data$mub10a)="Confocal sample 2"
label(data$mub10b)="Confocal sample 2 wt"
label(data$mub11a)="Confocal sample 3"
label(data$mub11b)="Confocal sample 3 wt"
label(data$mub12b)="Confocal total wt"
label(data$mub13a)="RNA microarray mtDNA n DNA"
label(data$mub13b)="RNA microarray mtDNA n DNA sample wt"
label(data$mub14a)="SubQ"
label(data$mub14b)="SubQ sample wt"
label(data$testerid_MusBio)="Tester ID"
label(data$provideinformedconsent_MusBio)="Able to provide informed consent"
label(data$nohxbleedingdisorder_MusBio)="Does not have history of bleeding disorder"
label(data$nomedsthatincrbleeding)="Does not take medications that will increase bleeding"
label(data$nonsaids4dbefore3dafter)="Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
label(data$lessthan81mgaspirinday)="Does not take more than 81 mg Aspirin a day"
label(data$notallergiclocanesth)="Is not allergic to Lidocaine or other local anesthetic"
label(data$noinfectionaroundbxsite)="Has no active infection or chronic skin condition around biopsy site"
label(data$notpregnant_MusBio)="Is not pregnant"
label(data$eligibility_MusBio)="Eligibility"
label(data$tester_MusBio)="Tester"
label(data$auto_id_MusBio)="Unique Teleform Number"
label(data$crf_parent_name_MusBio)="CRF Parent Name"
label(data$study_name_MusBio)="Study Name"

#Create new variables for factors
data$mub0a.factor = factor(data$mub0a, levels = c("0","1"))
levels(data$mub0a.factor) = c("No","Yes")

data$mub0b.factor = factor(data$mub0b, levels = c("0","1"))
levels(data$mub0b.factor) = c("No","Yes")

data$mub2a.factor = factor(data$mub2a, levels = c("0","1"))
levels(data$mub2a.factor) = c("No","Yes")

data$mubi.factor = factor(data$mubi, levels = c("1","2"))
levels(data$mubi.factor) = c("Steri Strips","Self Absorbing Sutures")

data$mub2b.factor = factor(data$mub2b, levels = c("0","1"))
levels(data$mub2b.factor) = c("No","Yes")

data$mub2e.factor = factor(data$mub2e, levels = c("0","1"))
levels(data$mub2e.factor) = c("No","Yes")

data$mub3e.factor = factor(data$mub3e, levels = c("0","1"))
levels(data$mub3e.factor) = c("No","Yes")

data$mub4a.factor = factor(data$mub4a, levels = c("0","1"))
levels(data$mub4a.factor) = c("Quantity not sufficient","Sample Collected")

data$mub5a.factor = factor(data$mub5a, levels = c("0","1"))
levels(data$mub5a.factor) = c("Quantity not sufficient","Sample Collected")

data$mub6a.factor = factor(data$mub6a, levels = c("0","1"))
levels(data$mub6a.factor) = c("Quantity not sufficient","Sample Collected")

data$mub7a.factor = factor(data$mub7a, levels = c("0","1"))
levels(data$mub7a.factor) = c("Quantity not sufficient","Sample Collected")

data$mub8a.factor = factor(data$mub8a, levels = c("0","1"))
levels(data$mub8a.factor) = c("Quantity not sufficient","Sample Collected")

data$mub9a.factor = factor(data$mub9a, levels = c("0","1"))
levels(data$mub9a.factor) = c("Quantity not sufficient","Sample Collected")

data$mub10a.factor = factor(data$mub10a, levels = c("0","1"))
levels(data$mub10a.factor) = c("Quantity not sufficient","Sample Collected")

data$mub11a.factor = factor(data$mub11a, levels = c("0","1"))
levels(data$mub11a.factor) = c("Quantity not sufficient","Sample Collected")

data$mub13a.factor = factor(data$mub13a, levels = c("0","1"))
levels(data$mub13a.factor) = c("Quantity not sufficient","Sample Collected")

data$mub14a.factor = factor(data$mub14a, levels = c("0","1"))
levels(data$mub14a.factor) = c("Quantity not sufficient","Sample Collected")

