#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Circadian_Core_Body_Temp.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_CirCorBodTem)="CRF Version"
label(data$obsdate_cctdate)="Date Completed"
label(data$blank_CirCorBodTem)="Blank Form"
label(data$ccttid)="Tester ID"
label(data$cct01)="Use pacemaker or other implanted electro medical device"
label(data$cct02)="Scheduled to receive an MRI within next 5 days"
label(data$cct03)="Have impaired gag reflex or trouble swallowing large pills"
label(data$cct04)="Hx or suspicion of gastrointestinal obstruction diverticulitis or IBS"
label(data$cct05)="Have severe constipation"
label(data$cct06)="Have had gastrointestinal surgery"
label(data$cct07)="Hx of reflux esophagitis esophageal food impaction or feninization of the esophagus"
label(data$cctstid)="Sensor administration tester ID"
label(data$cctsdate)="Sensor Administration Date Completed"
label(data$cctstime)="Sensor Administration time"
label(data$cctsm)="Senson Administration AmPm"
label(data$cctsn)="Sensor serial number"
label(data$cctcn)="Sensor calibration number"
label(data$cctrtid)="Recorder tester ID"
label(data$cctrn)="Recprder number"
label(data$cctrbdt)="Begin recording Date"
label(data$cctrbtm)="Begin recording time"
label(data$cctrbm)="Begin recording time AmPm"
label(data$cctredt)="End recording Date"
label(data$cctretm)="End recording time"
label(data$cctrem)="End recording time AmPm"
label(data$ccttma)="Treadmill start time"
label(data$ccttmam)="Treadmill start time AmPm"
label(data$ccttmb)="Treadmill stop time"
label(data$ccttmbm)="Treadmill stop time AmPm"
label(data$ccttmc)="Treadmill not done during monitoring"
label(data$cctla)="Long Distance Corridor Walk start"
label(data$cctlam)="LDCW start time AmPm"
label(data$cctlb)="Long Distance Corridor Walk stop"
label(data$cctlbm)="LDCW stop time AmPm"
label(data$cctlc)="Long Distance Corridor Walk not done during monitoring"
label(data$cctga)="GAIT start"
label(data$cctgam)="GAIT start time AmPm"
label(data$cctgb)="GAIT stop"
label(data$cctgbm)="GAIT stop time AmPm"
label(data$cctgc)="GAIT not done during monitoring"
label(data$cctca)="Cognitive Assessment start"
label(data$cctcam)="Cognitive start time AmPm"
label(data$cctcb)="Cognitive Assessment stop"
label(data$cctcbm)="Cognitive stop time AmPm"
label(data$cctcc)="Cognitive Assessment not done during monitoring"
label(data$cctst)="In bed for sleeping start"
label(data$cctstm)="In bed for sleeping start AmPm"
label(data$cctat)="Awake in the morning start"
label(data$cctatm)="Awake start AmPm"
label(data$auto_id_CirCorBodTem)="Unique Teleform Number"
label(data$blank_1_CirCorBodTem)="Blank"
label(data$cctcc_1)="Cognitive Assessment not done during monitoring : Not done during monitoring (Checkbox Indicator)"
label(data$cctgc_1)="GAIT not done during monitoring : Not done during monitoring (Checkbox Indicator)"
label(data$cctlc_1)="Long Distance Corridor Walk not done during monitoring : Not done during monitoring (Checkbox Indicator)"
label(data$crf_parent_name_CirCorBodTem)="CRF Parent Name"
label(data$study_name_CirCorBodTem)="Study Name"

#Create new variables for factors
data$cct01.factor = factor(data$cct01, levels = c("0","1","2"))
levels(data$cct01.factor) = c("No","Yes"," Dont know")

data$cct02.factor = factor(data$cct02, levels = c("0","1","2"))
levels(data$cct02.factor) = c("No","Yes"," Dont know")

data$cct03.factor = factor(data$cct03, levels = c("0","1","2"))
levels(data$cct03.factor) = c("No","Yes"," Dont know")

data$cct04.factor = factor(data$cct04, levels = c("0","1","2"))
levels(data$cct04.factor) = c("No","Yes"," Dont know")

data$cct05.factor = factor(data$cct05, levels = c("0","1","2"))
levels(data$cct05.factor) = c("No","Yes"," Dont know")

data$cct06.factor = factor(data$cct06, levels = c("0","1","2"))
levels(data$cct06.factor) = c("No","Yes"," Dont know")

data$cct07.factor = factor(data$cct07, levels = c("0","1","2"))
levels(data$cct07.factor) = c("No","Yes"," Dont know")

data$cctsm.factor = factor(data$cctsm, levels = c("1","2"))
levels(data$cctsm.factor) = c("Am","Pm")

data$cctrbm.factor = factor(data$cctrbm, levels = c("1","2"))
levels(data$cctrbm.factor) = c("Am","Pm")

data$cctrem.factor = factor(data$cctrem, levels = c("1","2"))
levels(data$cctrem.factor) = c("Am","Pm")

data$ccttmam.factor = factor(data$ccttmam, levels = c("1","2"))
levels(data$ccttmam.factor) = c("Am","Pm")

data$ccttmbm.factor = factor(data$ccttmbm, levels = c("1","2"))
levels(data$ccttmbm.factor) = c("Am","Pm")

data$cctlam.factor = factor(data$cctlam, levels = c("1","2"))
levels(data$cctlam.factor) = c("Am","Pm")

data$cctlbm.factor = factor(data$cctlbm, levels = c("1","2"))
levels(data$cctlbm.factor) = c("Am","Pm")

data$cctgam.factor = factor(data$cctgam, levels = c("1","2"))
levels(data$cctgam.factor) = c("Am","Pm")

data$cctgbm.factor = factor(data$cctgbm, levels = c("1","2"))
levels(data$cctgbm.factor) = c("Am","Pm")

data$cctcam.factor = factor(data$cctcam, levels = c("1","2"))
levels(data$cctcam.factor) = c("Am","Pm")

data$cctcbm.factor = factor(data$cctcbm, levels = c("1","2"))
levels(data$cctcbm.factor) = c("Am","Pm")

data$cctstm.factor = factor(data$cctstm, levels = c("1","2"))
levels(data$cctstm.factor) = c("Am","Pm")

data$cctatm.factor = factor(data$cctatm, levels = c("1","2"))
levels(data$cctatm.factor) = c("Am","Pm")

