#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_PWV_Sphygmocor.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_PWVSph)="CRF Version"
label(data$obsdate_pwvdate_PWVSph)="Date Completed"
label(data$blank_PWVSph)="Blank Form"
label(data$pwvttrid_PWVSph)="Tester ID"
label(data$pwran_PWVSph)="Randomization list"
label(data$pwv01_PWVSph)="Was PWV performed"
label(data$pwv01a_PWVSph)="PWV reason not done"
label(data$pwv01b_PWVSph)="PWV Contraindications"
label(data$pwv01c_PWVSph)="PWV reason not done Other"
label(data$agi01_PWVSph)="Was AGI performed"
label(data$agi01a_PWVSph)="AGI reason not done"
label(data$agi01b_PWVSph)="AGI Contraindications"
label(data$agi01c_PWVSph)="AGI reason not done Other"
label(data$abi01_PWVSph)="Was ABI performed"
label(data$abi01a_PWVSph)="ABI reason not done"
label(data$abi01b_PWVSph)="ABI reason not done Other"
label(data$pwbp01_PWVSph)="Blood pressure"
label(data$pwsbp_PWVSph)="BP systolic"
label(data$pwdbp_PWVSph)="BP diastolic"
label(data$pwmap_PWVSph)="BP MAP"
label(data$auto_id_PWVSph)="Unique Teleform Number"
label(data$crf_parent_name_PWVSph)="CRF Parent Name"
label(data$study_name_PWVSph)="Study Name"

#Create new variables for factors
data$pwran_PWVSph.factor = factor(data$pwran_PWVSph, levels = c("1","2","3"))
levels(data$pwran_PWVSph.factor) = c("Complior first SphygmoCor second","SphgmoCor first Complior second","Complior Only")

data$pwv01_PWVSph.factor = factor(data$pwv01_PWVSph, levels = c("0","1"))
levels(data$pwv01_PWVSph.factor) = c("No","Yes")

data$pwv01a_PWVSph.factor = factor(data$pwv01a_PWVSph, levels = c("0","1","555","666","777","888","999"))
levels(data$pwv01a_PWVSph.factor) = c("Other","Contraindication","Physical","Cognitive","Physical and Cognitive","Refused","Technical problems")

data$pwv01b_PWVSph.factor = factor(data$pwv01b_PWVSph, levels = c("1","2","3"))
levels(data$pwv01b_PWVSph.factor) = c("TIA or CVA within past 6 months","Bilateral carotid bruits","Hardware on neck precluding access to carotid pulse")

data$agi01_PWVSph.factor = factor(data$agi01_PWVSph, levels = c("0","1"))
levels(data$agi01_PWVSph.factor) = c("No","Yes")

data$agi01a_PWVSph.factor = factor(data$agi01a_PWVSph, levels = c("0","1","555","666","777","888","999"))
levels(data$agi01a_PWVSph.factor) = c("Other","Contraindication","Physical","Cognitive","Physical and Cognitive","Refused","Technical problems")

data$abi01_PWVSph.factor = factor(data$abi01_PWVSph, levels = c("0","1","2","3"))
levels(data$abi01_PWVSph.factor) = c("No","Yes both sides","Right only","Left only")

data$abi01a_PWVSph.factor = factor(data$abi01a_PWVSph, levels = c("0","1","555","666","777","888","999"))
levels(data$abi01a_PWVSph.factor) = c("Other","Contraindication","Physical","Cognitive","Physical and Cognitive","Refused","Technical problems")

data$pwbp01_PWVSph.factor = factor(data$pwbp01_PWVSph, levels = c("0","1"))
levels(data$pwbp01_PWVSph.factor) = c("No","Yes")

