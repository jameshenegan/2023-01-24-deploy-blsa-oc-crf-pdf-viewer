#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_DEXA.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_DEX)="CRF Version"
label(data$obsdate_dxadate)="DEXA Date completed"
label(data$dxascdt)="Date Completed"
label(data$blank_DEX)="Blank Form"
label(data$dxascid)="Tester ID"
label(data$dxasc1)="Does weight exceed 350 lbs"
label(data$dxasc2)="Does height exceed 78 in (6ft 6In)"
label(data$dxasc3a)="Barrium Enema"
label(data$dxasc3b)="Upper GI series"
label(data$dxasc3c)="Lower GI series"
label(data$dxasc3d)="Nuclear medicine scan"
label(data$dxasc3e)="Other tests using contrast or radioactive materials"
label(data$dxasc4)="Had hip replacement surgery"
label(data$dxasc4a)="Which side hip replacement surgery"
label(data$dxasc6)="Core Body Temperature"
label(data$dxasc5)="Have any metal objects, pacemaker, staples, etc"
label(data$dxasc5a)="Head"
label(data$dxasc5b)="Left Arm"
label(data$dxasc5c)="Right Arm"
label(data$dxasc5d)="Left Ribs"
label(data$dxasc5e)="Right ribs"
label(data$dxasc5f)="Thoracic spine"
label(data$dxasc5g)="Lumbar spine"
label(data$dxasc5h)="Pelvis"
label(data$dxasc5i)="Left leg"
label(data$dxasc5j)="Right leg"
label(data$dxatecid)="DEXA technician ID"
label(data$dxack1)="Was femur scanned"
label(data$dxack2)="Lesser trochanter minimized"
label(data$dxack3)="Femur vertical"
label(data$dxack4)="Was spine scanned"
label(data$dxack5)="Four or more vertebrae visible"
label(data$dxack6)="Iliac crests visible"
label(data$dxack7)="Was total body scanned"
label(data$dxack8)="Both upper and lower limbs in view"
label(data$dxack9)="Total body fields appropriately placed"
label(data$dxareaid)="Reader Tester ID"
label(data$dxack11)="DXA Reader Lesser tronchanter minimized"
label(data$dxack12)="DXA Reader Femur vertical"
label(data$dxack13)="DXA Reader Head"
label(data$dxack14)="DXA Reader Left Arm"
label(data$dxack15)="DXA Reader Right Arm"
label(data$dxack16)="DXA Reader Left ribs"
label(data$dxack17)="DXA Reader Right ribs"
label(data$dxack18)="DXA Reader Pelvis"
label(data$dxack19)="DXA Reader Left Hip"
label(data$dxack20)="DXA Reader Left leg"
label(data$dxack21)="DXA Reader Right hip"
label(data$dxack22)="DXA Reader Right leg"
label(data$dxack23)="DXA Reader Thoracic spine"
label(data$dxack24)="DXA Reader Lumbar spine"
label(data$dxack24a)="Osteophyte"
label(data$dxack24b)="Compression"
label(data$dxack24c)="Scoliosis"
label(data$dxack24d)="Kyphosis"
label(data$auto_id_DEX)="Unique Teleform Number"
label(data$crf_parent_name_DEX)="CRF Parent Name"
label(data$crf_status_DEX)="CRF Status"
label(data$dxack24a_dexa_lumbar_osteophyte)="Osteophyte : Osteophyte (Checkbox Indicator)"
label(data$dxack24b_dexa_lumbar_compression)="Compression : Compression (Checkbox Indicator)"
label(data$dxack24c_dexa_lumbar_scoliosis)="Scoliosis : Scoliosis (Checkbox Indicator)"
label(data$study_name_DEX)="Study Name"

#Create new variables for factors
data$dxasc1.factor = factor(data$dxasc1, levels = c("0","1"))
levels(data$dxasc1.factor) = c("No","Yes")

data$dxasc2.factor = factor(data$dxasc2, levels = c("0","1"))
levels(data$dxasc2.factor) = c("No","Yes")

data$dxasc3a.factor = factor(data$dxasc3a, levels = c("0","1"))
levels(data$dxasc3a.factor) = c("No","Yes")

data$dxasc3b.factor = factor(data$dxasc3b, levels = c("0","1"))
levels(data$dxasc3b.factor) = c("No","Yes")

data$dxasc3c.factor = factor(data$dxasc3c, levels = c("0","1"))
levels(data$dxasc3c.factor) = c("No","Yes")

data$dxasc3d.factor = factor(data$dxasc3d, levels = c("0","1"))
levels(data$dxasc3d.factor) = c("No","Yes")

data$dxasc3e.factor = factor(data$dxasc3e, levels = c("0","1"))
levels(data$dxasc3e.factor) = c("No","Yes")

data$dxasc4.factor = factor(data$dxasc4, levels = c("0","1","7","8"))
levels(data$dxasc4.factor) = c("No","Yes","Refused","Dont know")

data$dxasc4a.factor = factor(data$dxasc4a, levels = c("1","2","3"))
levels(data$dxasc4a.factor) = c("Right","Left","Both")

data$dxasc6.factor = factor(data$dxasc6, levels = c("0","1","8"))
levels(data$dxasc6.factor) = c("No","Yes","Dont know")

data$dxasc5.factor = factor(data$dxasc5, levels = c("0","1","7","8"))
levels(data$dxasc5.factor) = c("No","Yes","Refused","Dont know")

data$dxasc5a.factor = factor(data$dxasc5a, levels = c("0","1","2"))
levels(data$dxasc5a.factor) = c("None","Hardware","Other Artifacts")

data$dxasc5b.factor = factor(data$dxasc5b, levels = c("0","1","2"))
levels(data$dxasc5b.factor) = c("None","Hardware","Other Artifacts")

data$dxasc5c.factor = factor(data$dxasc5c, levels = c("0","1","2"))
levels(data$dxasc5c.factor) = c("None","Hardware","Other Artifacts")

data$dxasc5d.factor = factor(data$dxasc5d, levels = c("0","1","2"))
levels(data$dxasc5d.factor) = c("None","Hardware","Other Artifacts")

data$dxasc5e.factor = factor(data$dxasc5e, levels = c("0","1","2"))
levels(data$dxasc5e.factor) = c("None","Hardware","Other Artifacts")

data$dxasc5f.factor = factor(data$dxasc5f, levels = c("0","1","2"))
levels(data$dxasc5f.factor) = c("None","Hardware","Other Artifacts")

data$dxasc5g.factor = factor(data$dxasc5g, levels = c("0","1","2"))
levels(data$dxasc5g.factor) = c("None","Hardware","Other Artifacts")

data$dxasc5h.factor = factor(data$dxasc5h, levels = c("0","1","2"))
levels(data$dxasc5h.factor) = c("None","Hardware","Other Artifacts")

data$dxasc5i.factor = factor(data$dxasc5i, levels = c("0","1","2"))
levels(data$dxasc5i.factor) = c("None","Hardware","Other Artifacts")

data$dxasc5j.factor = factor(data$dxasc5j, levels = c("0","1","2"))
levels(data$dxasc5j.factor) = c("None","Hardware","Other Artifacts")

data$dxack1.factor = factor(data$dxack1, levels = c("1","5","6","8","9"))
levels(data$dxack1.factor) = c("Yes","No - Physical problems","No - Cognitive problems","No - Refused","No - Technical problems")

data$dxack2.factor = factor(data$dxack2, levels = c("0","1"))
levels(data$dxack2.factor) = c("No","Yes")

data$dxack3.factor = factor(data$dxack3, levels = c("0","1"))
levels(data$dxack3.factor) = c("No","Yes")

data$dxack4.factor = factor(data$dxack4, levels = c("1","5","6","8","9"))
levels(data$dxack4.factor) = c("Yes","No - Physical problems","No - Cognitive problems","No - Refused","No - Technical problems")

data$dxack5.factor = factor(data$dxack5, levels = c("0","1"))
levels(data$dxack5.factor) = c("No","Yes")

data$dxack6.factor = factor(data$dxack6, levels = c("0","1"))
levels(data$dxack6.factor) = c("No","Yes")

data$dxack7.factor = factor(data$dxack7, levels = c("1","5","6","8","9"))
levels(data$dxack7.factor) = c("Yes","No - Physical problems","No - Cognitive problems","No - Refused","No - Technical problems")

data$dxack8.factor = factor(data$dxack8, levels = c("0","1"))
levels(data$dxack8.factor) = c("No","Yes")

data$dxack9.factor = factor(data$dxack9, levels = c("0","1"))
levels(data$dxack9.factor) = c("No","Yes")

data$dxack11.factor = factor(data$dxack11, levels = c("0","1"))
levels(data$dxack11.factor) = c("No","Yes")

data$dxack12.factor = factor(data$dxack12, levels = c("0","1"))
levels(data$dxack12.factor) = c("No","Yes")

data$dxack13.factor = factor(data$dxack13, levels = c("0","1","2"))
levels(data$dxack13.factor) = c("None","Hardware","Other Artifacts")

data$dxack14.factor = factor(data$dxack14, levels = c("0","1","2"))
levels(data$dxack14.factor) = c("None","Hardware","Other Artifacts")

data$dxack15.factor = factor(data$dxack15, levels = c("0","1","2"))
levels(data$dxack15.factor) = c("None","Hardware","Other Artifacts")

data$dxack16.factor = factor(data$dxack16, levels = c("0","1","2"))
levels(data$dxack16.factor) = c("None","Hardware","Other Artifacts")

data$dxack17.factor = factor(data$dxack17, levels = c("0","1","2"))
levels(data$dxack17.factor) = c("None","Hardware","Other Artifacts")

data$dxack18.factor = factor(data$dxack18, levels = c("0","1","2"))
levels(data$dxack18.factor) = c("None","Hardware","Other Artifacts")

data$dxack19.factor = factor(data$dxack19, levels = c("0","1","2"))
levels(data$dxack19.factor) = c("None","Hardware","Other Artifacts")

data$dxack20.factor = factor(data$dxack20, levels = c("0","1","2"))
levels(data$dxack20.factor) = c("None","Hardware","Other Artifacts")

data$dxack21.factor = factor(data$dxack21, levels = c("0","1","2"))
levels(data$dxack21.factor) = c("None","Hardware","Other Artifacts")

data$dxack22.factor = factor(data$dxack22, levels = c("0","1","2"))
levels(data$dxack22.factor) = c("None","Hardware","Other Artifacts")

data$dxack23.factor = factor(data$dxack23, levels = c("0","1","2"))
levels(data$dxack23.factor) = c("None","Hardware","Other Artifacts")

data$dxack24.factor = factor(data$dxack24, levels = c("0","1","2"))
levels(data$dxack24.factor) = c("None","Hardware","Other Artifacts")

