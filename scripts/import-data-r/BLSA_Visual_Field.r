#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Visual_Field.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_VisFie)="CRF Version"
label(data$obsdate_vfdate)="Date Completed"
label(data$blank_VisFie)="Blank Form"
label(data$vftid)="Tester ID"
label(data$vissc1_VisFie)="Do you wear glasses or contact lenses"
label(data$vissc2_VisFie)="Did you bring your glasses"
label(data$vissc2a_VisFie)="Type of glasses or contact lenses"
label(data$vissc2a1_VisFie)="Glasses"
label(data$vissc2b_VisFie)="Contact Lenses"
label(data$vissc2b1_VisFie)="Contact lenses for distance bifocal or monovision"
label(data$vissc2b2_VisFie)="Which eye distance"
label(data$visvfdis_VisFie)="Does participant have marked discrepency of vision between eyes"
label(data$vissc3a1_VisFie)="Right eye sphere Rx"
label(data$vissc3a2_VisFie)="Right eye cylinder Rx"
label(data$vissc3a3_VisFie)="Right eye Axis Rx"
label(data$vissc3a4_VisFie)="Right eye sphere Rx final"
label(data$vissc3b1_VisFie)="Left eye sphere Rx"
label(data$vissc3b2_VisFie)="Left eye cylinder Rx"
label(data$vissc3b3_VisFie)="Left eye Axis Rx"
label(data$vissc3b4_VisFie)="Left eye sphere Rx final"
label(data$vissc3c_VisFie)="Near add"
label(data$visvfdon_VisFie)="Was visual field assessment completed"
label(data$visvfrnd_VisFie)="Why visual field not done"
label(data$comments_VisFie)="Comments"
label(data$auto_id_VisFie)="Unique Teleform Number"
label(data$crf_parent_name_VisFie)="CRF Parent Name"
label(data$study_name_VisFie)="Study Name"

#Create new variables for factors
data$vissc1_VisFie.factor = factor(data$vissc1_VisFie, levels = c("0","1","2","3"))
levels(data$vissc1_VisFie.factor) = c("Never","Near only (eg reading)","Distance only (eg driving watching TV)","For both distance and near")

data$vissc2_VisFie.factor = factor(data$vissc2_VisFie, levels = c("0","1"))
levels(data$vissc2_VisFie.factor) = c("No","Yes")

data$vissc2a_VisFie.factor = factor(data$vissc2a_VisFie, levels = c("1","2"))
levels(data$vissc2a_VisFie.factor) = c("Glasses","Contact Lenses")

data$vissc2a1_VisFie.factor = factor(data$vissc2a1_VisFie, levels = c("1","2","3","4"))
levels(data$vissc2a1_VisFie.factor) = c("Single vision","Bifocal","Trifocals","Progressives")

data$vissc2b_VisFie.factor = factor(data$vissc2b_VisFie, levels = c("1","2","8"))
levels(data$vissc2b_VisFie.factor) = c("Soft","RGP (hard)","Unknown")

data$vissc2b1_VisFie.factor = factor(data$vissc2b1_VisFie, levels = c("1","2","3"))
levels(data$vissc2b1_VisFie.factor) = c("Distance","Bifocal","Monovision")

data$vissc2b2_VisFie.factor = factor(data$vissc2b2_VisFie, levels = c("1","2","8"))
levels(data$vissc2b2_VisFie.factor) = c("Right","Left","Unknown")

data$visvfdis_VisFie.factor = factor(data$visvfdis_VisFie, levels = c("0","1"))
levels(data$visvfdis_VisFie.factor) = c("No","Yes")

data$visvfdon_VisFie.factor = factor(data$visvfdon_VisFie, levels = c("0","1"))
levels(data$visvfdon_VisFie.factor) = c("No","Yes")

data$visvfrnd_VisFie.factor = factor(data$visvfrnd_VisFie, levels = c("555","666","777","888","999"))
levels(data$visvfrnd_VisFie.factor) = c("Physical problems (*includes if participant has marked discrepancy of vision between eyes","Physical and cognitive","Cognitive problems","Refused","Technical problems")

