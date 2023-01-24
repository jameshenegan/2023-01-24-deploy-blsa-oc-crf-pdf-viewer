#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Vision_Test.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_VisTes)="CRF Version"
label(data$obsdate_visdate)="Vision Date Completed"
label(data$visscdt)="Date Completed"
label(data$blank_VisTes)="Blank Form"
label(data$visscid)="Tester ID"
label(data$vissc1_VisTes)="Do you wear glasses or contact lenses"
label(data$vissc2_VisTes)="Did you bring your glasses"
label(data$vissc2a_VisTes)="Type of glasses or contact lenses"
label(data$vissc2a1_VisTes)="Glasses"
label(data$vissc2b_VisTes)="Contact Lenses"
label(data$vissc2b1_VisTes)="Contact lenses for distance bifocal or monovision"
label(data$vissc2b2_VisTes)="Which eye distance"
label(data$vistid)="VisionTester ID"
label(data$visst1)="Stereopsis Line 1"
label(data$visst2)="Stereopsis Line 2"
label(data$visst3)="Stereopsis Line 3"
label(data$visst4)="Stereopsis Line 4"
label(data$visst5)="Stereopsis Line 5"
label(data$visst6)="Stereopsis Line 6"
label(data$visst7)="Stereopsis Line 7"
label(data$visst8)="Stereopsis Line 8"
label(data$visst9)="Stereopsis Line 9"
label(data$visstdon)="Stereopsis test completed"
label(data$visstrnd)="Stereopsis reason not done"
label(data$visstgls)="Did participant wear glasses"
label(data$visva11)="Glare lights off column 1 high contrast"
label(data$visva12)="Glare lights off column 2 medium contrast"
label(data$visva13)="Glare lights off column 3 low contrast"
label(data$viscsdis)="Test distance"
label(data$viscs1b0)="Do you see the bars in the first circles see line B"
label(data$viscs1b1)="Glare lights off Line B1"
label(data$viscs1b2)="Glare lights off Line B2"
label(data$viscs1b3)="Glare lights off Line B3"
label(data$viscs1b4)="Glare lights off Line B4"
label(data$viscs1b5)="Glare lights off Line B5"
label(data$viscs1b6)="Glare lights off Line B6"
label(data$viscs1b7)="Glare lights off Line B7"
label(data$viscs1b8)="Glare lights off Line B8"
label(data$viscs1c0)="Lights off Do you see the bars in the first circles see line C"
label(data$viscs1c1)="Glare lights off Line C1"
label(data$viscs1c2)="Glare lights off Line C2"
label(data$viscs1c3)="Glare lights off Line C3"
label(data$viscs1c4)="Glare lights off Line C4"
label(data$viscs1c5)="Glare lights off Line C5"
label(data$viscs1c6)="Glare lights off Line C6"
label(data$viscs1c7)="Glare lights off Line C7"
label(data$viscs1c8)="Glare lights off Line C8"
label(data$visva21)="Glare lights on column 1 high contrast"
label(data$visva22)="Glare lights on column 2 medium contrast"
label(data$visva23)="Glare lights on column 3 low contrast"
label(data$viscs2b0)="Light on Do you see the bars in the first circles see line B"
label(data$viscs2b1)="Glare lights on Line B1"
label(data$viscs2b2)="Glare lights on Line B2"
label(data$viscs2b3)="Glare lights on Line B3"
label(data$viscs2b4)="Glare lights on Line B4"
label(data$viscs2b5)="Glare lights on Line B5"
label(data$viscs2b6)="Glare lights on Line B6"
label(data$viscs2b7)="Glare lights on Line B7"
label(data$viscs2b8)="Glare lights on Line B8"
label(data$viscs2c0)="Lights on Do you see the bars in the first circles see line C"
label(data$viscs2c1)="Glare lights on Line C1"
label(data$viscs2c2)="Glare lights on Line C2"
label(data$viscs2c3)="Glare lights on Line C3"
label(data$viscs2c4)="Glare lights on Line C4"
label(data$viscs2c5)="Glare lights on Line C5"
label(data$viscs2c6)="Glare lights on Line C6"
label(data$viscs2c7)="Glare lights on Line C7"
label(data$viscs2c8)="Glare lights on Line C8"
label(data$visvadon)="Was visual acuity completed"
label(data$visvarnd)="Visual acuity reason not done"
label(data$visvagls)="Visual acuity did particpant wear glasses"
label(data$viscsdon)="Was contrast sensitivity completed"
label(data$viscsrnd)="Contrast sensitivity reason not done"
label(data$viscsgls)="Contrast sensitivity did particpant wear glasses"
label(data$visvalta)="Visual Acuity and Visual Field Alerts YN"
label(data$visvaltb)="Alerts"
label(data$visvfid)="Visual Field Tester ID"
label(data$visvfdt)="Visual Field Date"
label(data$visvfdis_VisTes)="Does participant have marked discrepency of vision between eyes"
label(data$vissc3a1_VisTes)="Right eye sphere Rx"
label(data$vissc3a2_VisTes)="Right eye cylinder Rx"
label(data$vissc3a3_VisTes)="Right eye Axis Rx"
label(data$vissc3a4_VisTes)="Right eye sphere Rx final"
label(data$vissc3b1_VisTes)="Left eye sphere Rx"
label(data$vissc3b2_VisTes)="Left eye cylinder Rx"
label(data$vissc3b3_VisTes)="Left eye Axis Rx"
label(data$vissc3b4_VisTes)="Left eye sphere Rx final"
label(data$vissc3c_VisTes)="Near add"
label(data$visvfdon_VisTes)="Was visual field assessment completed"
label(data$visvfrnd_VisTes)="Why visual field not done"
label(data$auto_id_VisTes)="Unique Teleform Number"
label(data$crf_parent_name_VisTes)="CRF Parent Name"
label(data$study_name_VisTes)="Study Name"

#Create new variables for factors
data$vissc1_VisTes.factor = factor(data$vissc1_VisTes, levels = c("0","1","2","3"))
levels(data$vissc1_VisTes.factor) = c("Never","Near only (eg reading)","Distance only (eg driving watching TV)","For both distance and near")

data$vissc2_VisTes.factor = factor(data$vissc2_VisTes, levels = c("0","1"))
levels(data$vissc2_VisTes.factor) = c("No","Yes")

data$vissc2a_VisTes.factor = factor(data$vissc2a_VisTes, levels = c("1","2"))
levels(data$vissc2a_VisTes.factor) = c("Glasses","Contact Lenses")

data$vissc2a1_VisTes.factor = factor(data$vissc2a1_VisTes, levels = c("1","2","3","4"))
levels(data$vissc2a1_VisTes.factor) = c("Single vision","Bifocal","Trifocals","Progressives")

data$vissc2b_VisTes.factor = factor(data$vissc2b_VisTes, levels = c("1","2","8"))
levels(data$vissc2b_VisTes.factor) = c("Soft","RGP (hard)","Unknown")

data$vissc2b1_VisTes.factor = factor(data$vissc2b1_VisTes, levels = c("1","2","3"))
levels(data$vissc2b1_VisTes.factor) = c("Distance","Bifocal","Monovision")

data$vissc2b2_VisTes.factor = factor(data$vissc2b2_VisTes, levels = c("1","2","8"))
levels(data$vissc2b2_VisTes.factor) = c("Right","Left","Unknown")

data$visstdon.factor = factor(data$visstdon, levels = c("0","1"))
levels(data$visstdon.factor) = c("No","Yes")

data$visstrnd.factor = factor(data$visstrnd, levels = c("555","666","777","888","999"))
levels(data$visstrnd.factor) = c("Physical problems","Cognitive problems","Physical and cognitive","Refused*","Technical problems")

data$visstgls.factor = factor(data$visstgls, levels = c("0","1"))
levels(data$visstgls.factor) = c("No","Yes")

data$visva11.factor = factor(data$visva11, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$visva11.factor) = c(">100","100","80","63","50","40","32","25","20","16")

data$visva12.factor = factor(data$visva12, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$visva12.factor) = c(">100","100","80","63","50","40","32","25","20","16")

data$visva13.factor = factor(data$visva13, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$visva13.factor) = c(">100","100","80","63","50","40","32","25","20","16")

data$viscsdis.factor = factor(data$viscsdis, levels = c("4","8"))
levels(data$viscsdis.factor) = c("4","8")

data$viscs1b0.factor = factor(data$viscs1b0, levels = c("0","1"))
levels(data$viscs1b0.factor) = c("No","Yes")

data$viscs1b1.factor = factor(data$viscs1b1, levels = c("0","1","9"))
levels(data$viscs1b1.factor) = c("Top","Bottom","Blank")

data$viscs1b2.factor = factor(data$viscs1b2, levels = c("0","1","9"))
levels(data$viscs1b2.factor) = c("Top","Bottom","Blank")

data$viscs1b3.factor = factor(data$viscs1b3, levels = c("0","1","9"))
levels(data$viscs1b3.factor) = c("Bottom","Top","Blank")

data$viscs1b4.factor = factor(data$viscs1b4, levels = c("0","1","9"))
levels(data$viscs1b4.factor) = c("Top","Bottom","Blank")

data$viscs1b5.factor = factor(data$viscs1b5, levels = c("0","1","9"))
levels(data$viscs1b5.factor) = c("Bottom","Top","Blank")

data$viscs1b6.factor = factor(data$viscs1b6, levels = c("0","1","9"))
levels(data$viscs1b6.factor) = c("Bottom","Top","Blank")

data$viscs1b7.factor = factor(data$viscs1b7, levels = c("0","1","9"))
levels(data$viscs1b7.factor) = c("Top","Bottom","Blank")

data$viscs1b8.factor = factor(data$viscs1b8, levels = c("0","1","9"))
levels(data$viscs1b8.factor) = c("Top","Bottom","Blank")

data$viscs1c0.factor = factor(data$viscs1c0, levels = c("0","1"))
levels(data$viscs1c0.factor) = c("No","Yes")

data$viscs1c1.factor = factor(data$viscs1c1, levels = c("0","1","9"))
levels(data$viscs1c1.factor) = c("Top","Bottom","Blank")

data$viscs1c2.factor = factor(data$viscs1c2, levels = c("0","1","9"))
levels(data$viscs1c2.factor) = c("Bottom","Top","Blank")

data$viscs1c3.factor = factor(data$viscs1c3, levels = c("0","1","9"))
levels(data$viscs1c3.factor) = c("Top","Bottom","Blank")

data$viscs1c4.factor = factor(data$viscs1c4, levels = c("0","1","9"))
levels(data$viscs1c4.factor) = c("Bottom","Top","Blank")

data$viscs1c5.factor = factor(data$viscs1c5, levels = c("0","1","9"))
levels(data$viscs1c5.factor) = c("Top","Bottom","Blank")

data$viscs1c6.factor = factor(data$viscs1c6, levels = c("0","1","9"))
levels(data$viscs1c6.factor) = c("Top","Bottom","Blank")

data$viscs1c7.factor = factor(data$viscs1c7, levels = c("0","1","9"))
levels(data$viscs1c7.factor) = c("Bottom","Top","Blank")

data$viscs1c8.factor = factor(data$viscs1c8, levels = c("0","1","9"))
levels(data$viscs1c8.factor) = c("Bottom","Top","Blank")

data$visva21.factor = factor(data$visva21, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$visva21.factor) = c(">100","100","80","63","50","40","32","25","20","16")

data$visva22.factor = factor(data$visva22, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$visva22.factor) = c(">100","100","80","63","50","40","32","25","20","16")

data$visva23.factor = factor(data$visva23, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$visva23.factor) = c(">100","100","80","63","50","40","32","25","20","16")

data$viscs2b0.factor = factor(data$viscs2b0, levels = c("0","1"))
levels(data$viscs2b0.factor) = c("No","Yes")

data$viscs2b1.factor = factor(data$viscs2b1, levels = c("0","1","9"))
levels(data$viscs2b1.factor) = c("Top","Bottom","Blank")

data$viscs2b2.factor = factor(data$viscs2b2, levels = c("0","1","9"))
levels(data$viscs2b2.factor) = c("Top","Bottom","Blank")

data$viscs2b3.factor = factor(data$viscs2b3, levels = c("0","1","9"))
levels(data$viscs2b3.factor) = c("Bottom","Top","Blank")

data$viscs2b4.factor = factor(data$viscs2b4, levels = c("0","1","9"))
levels(data$viscs2b4.factor) = c("Top","Bottom","Blank")

data$viscs2b5.factor = factor(data$viscs2b5, levels = c("0","1","9"))
levels(data$viscs2b5.factor) = c("Bottom","Top","Blank")

data$viscs2b6.factor = factor(data$viscs2b6, levels = c("0","1","9"))
levels(data$viscs2b6.factor) = c("Bottom","Top","Blank")

data$viscs2b7.factor = factor(data$viscs2b7, levels = c("0","1","9"))
levels(data$viscs2b7.factor) = c("Top","Bottom","Blank")

data$viscs2b8.factor = factor(data$viscs2b8, levels = c("0","1","9"))
levels(data$viscs2b8.factor) = c("Top","Bottom","Blank")

data$viscs2c0.factor = factor(data$viscs2c0, levels = c("0","1"))
levels(data$viscs2c0.factor) = c("No","Yes")

data$viscs2c1.factor = factor(data$viscs2c1, levels = c("0","1","9"))
levels(data$viscs2c1.factor) = c("Top","Bottom","Blank")

data$viscs2c2.factor = factor(data$viscs2c2, levels = c("0","1","9"))
levels(data$viscs2c2.factor) = c("Bottom","Top","Blank")

data$viscs2c3.factor = factor(data$viscs2c3, levels = c("0","1","9"))
levels(data$viscs2c3.factor) = c("Top","Bottom","Blank")

data$viscs2c4.factor = factor(data$viscs2c4, levels = c("0","1","9"))
levels(data$viscs2c4.factor) = c("Bottom","Top","Blank")

data$viscs2c5.factor = factor(data$viscs2c5, levels = c("0","1","9"))
levels(data$viscs2c5.factor) = c("Top","Bottom","Blank")

data$viscs2c6.factor = factor(data$viscs2c6, levels = c("0","1","9"))
levels(data$viscs2c6.factor) = c("Top","Bottom","Blank")

data$viscs2c7.factor = factor(data$viscs2c7, levels = c("0","1","9"))
levels(data$viscs2c7.factor) = c("Bottom","Top","Blank")

data$viscs2c8.factor = factor(data$viscs2c8, levels = c("0","1","9"))
levels(data$viscs2c8.factor) = c("Bottom","Top","Blank")

data$visvadon.factor = factor(data$visvadon, levels = c("0","1"))
levels(data$visvadon.factor) = c("No","Yes")

data$visvarnd.factor = factor(data$visvarnd, levels = c("555","666","777","888","999"))
levels(data$visvarnd.factor) = c("Physical problems","Cognitive problems","Physical and cognitive","Refused*","Technical problems")

data$visvagls.factor = factor(data$visvagls, levels = c("0","1"))
levels(data$visvagls.factor) = c("No","Yes")

data$viscsdon.factor = factor(data$viscsdon, levels = c("0","1"))
levels(data$viscsdon.factor) = c("No","Yes")

data$viscsrnd.factor = factor(data$viscsrnd, levels = c("555","666","777","888","999"))
levels(data$viscsrnd.factor) = c("Physical problems","Cognitive problems","Physical and cognitive","Refused*","Technical problems")

data$viscsgls.factor = factor(data$viscsgls, levels = c("0","1"))
levels(data$viscsgls.factor) = c("No","Yes")

data$visvalta.factor = factor(data$visvalta, levels = c("0","1"))
levels(data$visvalta.factor) = c("No - Go to STANDARD ALERT","Yes - Go to B")

data$visvaltb.factor = factor(data$visvaltb, levels = c("1","2","3"))
levels(data$visvaltb.factor) = c("Within the past few days - EMERGENCY ALERT","Within the past few weeks - URGENT ALERT","More than a few weeks ago - STANDARD ALERT")

data$visvfdis_VisTes.factor = factor(data$visvfdis_VisTes, levels = c("0","1"))
levels(data$visvfdis_VisTes.factor) = c("No","Yes")

data$visvfdon_VisTes.factor = factor(data$visvfdon_VisTes, levels = c("0","1"))
levels(data$visvfdon_VisTes.factor) = c("No","Yes")

data$visvfrnd_VisTes.factor = factor(data$visvfrnd_VisTes, levels = c("555","666","777","888","999"))
levels(data$visvfrnd_VisTes.factor) = c("Physical problems (*includes if participant has marked discrepancy of vision between eyes)","Physical and cognitive","Cognitive problems","Refused","Technical problems")

data$visst1.factor = factor(data$visst1, levels = c("_0","_00","_000","_1"))
levels(data$visst1.factor) = c("Left","Right","Top","Bottom")

data$visst2.factor = factor(data$visst2, levels = c("_0","_00","_000","_1"))
levels(data$visst2.factor) = c("Right","Top","Bottom","Left")

data$visst3.factor = factor(data$visst3, levels = c("_0","_00","_000","_1"))
levels(data$visst3.factor) = c("Left","Right","Top","Bottom")

data$visst4.factor = factor(data$visst4, levels = c("_0","_00","_000","_1"))
levels(data$visst4.factor) = c("Left","Right","Bottom","Top")

data$visst5.factor = factor(data$visst5, levels = c("_0","_00","_000","_1"))
levels(data$visst5.factor) = c("Left","Right","Bottom","Top")

data$visst6.factor = factor(data$visst6, levels = c("_0","_00","_000","_1"))
levels(data$visst6.factor) = c("Right","Top","Bottom","Left")

data$visst7.factor = factor(data$visst7, levels = c("_0","_00","_000","_1"))
levels(data$visst7.factor) = c("Left","Top","Bottom","Right")

data$visst8.factor = factor(data$visst8, levels = c("_0","_00","_000","_1"))
levels(data$visst8.factor) = c("Right","Top","Bottom","Left")

data$visst9.factor = factor(data$visst9, levels = c("_0","_00","_000","_1"))
levels(data$visst9.factor) = c("Left","Top","Bottom","Right")

