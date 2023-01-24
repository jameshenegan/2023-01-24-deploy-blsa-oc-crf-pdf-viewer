#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Pulse_Wave_Velocity.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_PulWavVel)="CRF Version"
label(data$obsdate_pwvdate_PulWavVel)="Date Completed"
label(data$blank_PulWavVel)="Blank Form"
label(data$pwvttrid_PulWavVel)="Tester ID"
label(data$pwv01_PulWavVel)="Was PWV performed"
label(data$pwv01a_PulWavVel)="PWV reason not done"
label(data$pwv01b_PulWavVel)="PWV Contraindications"
label(data$pwv01c_PulWavVel)="PWV reason not done Other"
label(data$agi01_PulWavVel)="Was AGI performed"
label(data$agi01a_PulWavVel)="AGI reason not done"
label(data$agi01b_PulWavVel)="AGI Contraindications"
label(data$agi01c_PulWavVel)="AGI reason not done Other"
label(data$abi01_PulWavVel)="Was ABI performed"
label(data$abi01a_PulWavVel)="ABI reason not done"
label(data$abi01b_PulWavVel)="ABI reason not done Other"
label(data$pwbp01_PulWavVel)="Blood pressure"
label(data$pwsbp_PulWavVel)="BP systolic"
label(data$pwdbp_PulWavVel)="BP diastolic"
label(data$pwmap_PulWavVel)="BP MAP"
label(data$vaseracolin)="Was Vasera and Colin comparison study performed"
label(data$pwran_PulWavVel)="Randomization list"
label(data$auto_id_PulWavVel)="Unique Teleform Number"
label(data$crf_parent_name_PulWavVel)="CRF Parent Name"
label(data$study_name_PulWavVel)="Study Name"

#Create new variables for factors
data$pwv01_PulWavVel.factor = factor(data$pwv01_PulWavVel, levels = c("0","1"))
levels(data$pwv01_PulWavVel.factor) = c("No","Yes")

data$pwv01a_PulWavVel.factor = factor(data$pwv01a_PulWavVel, levels = c("000","1","555","666","777","888","999"))
levels(data$pwv01a_PulWavVel.factor) = c("Other","Contraindication","Physical","Cognitive","Physical and Cognitive","Refused","Technical problems")

data$pwv01b_PulWavVel.factor = factor(data$pwv01b_PulWavVel, levels = c("1","2","3"))
levels(data$pwv01b_PulWavVel.factor) = c("TIA or CVA within past 6 months","Bilateral carotid bruits","Hardware on neck precluding access to carotid pulse")

data$agi01_PulWavVel.factor = factor(data$agi01_PulWavVel, levels = c("0","1"))
levels(data$agi01_PulWavVel.factor) = c("No","Yes")

data$agi01a_PulWavVel.factor = factor(data$agi01a_PulWavVel, levels = c("000","1","555","666","777","888","999"))
levels(data$agi01a_PulWavVel.factor) = c("Other","Contraindication","Physical","Cognitive","Physical and Cognitive","Refused","Technical problems")

data$agi01b_PulWavVel.factor = factor(data$agi01b_PulWavVel, levels = c("1","2","3"))
levels(data$agi01b_PulWavVel.factor) = c("TIA or CVA within past 6 months","Bilateral carotid bruits","Hardware on neck precluding access to carotid pulse")

data$abi01_PulWavVel.factor = factor(data$abi01_PulWavVel, levels = c("0","1","2","3"))
levels(data$abi01_PulWavVel.factor) = c("No","Yes both sides","Right only","Left only")

data$abi01a_PulWavVel.factor = factor(data$abi01a_PulWavVel, levels = c("000","1","555","666","777","888","999"))
levels(data$abi01a_PulWavVel.factor) = c("Other","Contraindication","Physical","Cognitive","Physical and Cognitive","Refused","Technical problems")

data$pwbp01_PulWavVel.factor = factor(data$pwbp01_PulWavVel, levels = c("0","1"))
levels(data$pwbp01_PulWavVel.factor) = c("No","Yes")

data$vaseracolin.factor = factor(data$vaseracolin, levels = c("0","1"))
levels(data$vaseracolin.factor) = c("No","Yes")

data$pwran_PulWavVel.factor = factor(data$pwran_PulWavVel, levels = c("1","2","3"))
levels(data$pwran_PulWavVel.factor) = c("Complior first SphygmoCor second","SphgmoCor first Complior second","Complior Only")

