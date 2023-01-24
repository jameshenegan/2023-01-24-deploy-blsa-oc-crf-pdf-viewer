#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Knee_Strength.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_KneStr)="CRF Version"
label(data$obsdate_ksdate)="Date Completed"
label(data$blank_KneStr)="Blank Form"
label(data$kstid)="Tester ID"
label(data$ks001)="Does BP during PE exceed 220/115"
label(data$ks003)="Ever been told you had aneurysm in the brain"
label(data$ks004)="Told you had a cerebral hemmorage in the last 6 months"
label(data$ks005)="Have had knee surgery"
label(data$ks005a)="Surgery on right left or both"
label(data$ks005b)="Right knee surgery"
label(data$ks005c)="Left knee surgery"
label(data$ks006)="Had an injury that made one leg weaker than the other"
label(data$ks006a)="Which leg is stronger"
label(data$ks007)="Difficult to bend or straighten knee"
label(data$ks007a)="Which knee difficult to bend or straighten"
label(data$ks024)="Do you have any pain in your knee when you walk up or down stairs"
label(data$ks024a)="Which knee has pain when walking up or down stairs"
label(data$ks024b)="How often do you have pain when walking up or down stairs"
label(data$ks008)="Prior year which leg tested"
label(data$ks025)="Do you have any pain now"
label(data$ks025a)="Low back pain"
label(data$ks025b)="Right hip pain"
label(data$ks025c)="Left hip pain"
label(data$ks025d)="Right knee pain"
label(data$ks025e)="Left knee pain"
label(data$ks010a)="Right seat bottom depth"
label(data$ks010b)="Right lever arm"
label(data$ks010c)="Right limb weight"
label(data$ks011a)="Right leg concentric test YN"
label(data$ks011b)="Right leg concentric trials at 30 degree"
label(data$ks011brnd)="R concentric 30 degree test terminated"
label(data$ks011c)="Right leg concentric trials at 180 degree"
label(data$ks011crnd)="R concentric 180 degree test terminated"
label(data$ks011d)="Right leg concentric RND"
label(data$ks013a)="Right leg Isometric test YN"
label(data$ks013b)="Right leg Isometric trials at 120 degree"
label(data$ks013c)="Right leg Isometric trials at 140 degree"
label(data$ks013brnd)="R Isometric test terminated"
label(data$ks013d)="Right leg Isometric RND"
label(data$ks020a)="Left seat bottom depth"
label(data$ks020b)="Left lever arm"
label(data$ks020c)="Left limb weight"
label(data$ks021a)="Left leg concentric test YN"
label(data$ks021b)="Left leg concentric trials at 30 degree"
label(data$ks021brnd)="L concentric 30 degree test terminated"
label(data$ks021c)="Left leg concentric trials at 180 degree"
label(data$ks021crnd)="L concentric 180 degree test terminated"
label(data$ks021d)="Left leg concentric RND"
label(data$ks023a)="Left leg Isometric test YN"
label(data$ks023b)="Left leg Isometric trials at 120 degree"
label(data$ks023c)="Left leg Isometric trials at 140 degree"
label(data$ks023crnd)="L Isometric test terminated"
label(data$ks023d)="Left leg Isometric RND"
label(data$ks004a3m)="Past 3 months had low back pain that limited activity for 10 days"
label(data$ksrcom)="Right leg comment"
label(data$kslcom)="Left leg comment"
label(data$ks004a)="Past year had low back pain that limited activity for 10 days"
label(data$auto_id_KneStr)="Unique Teleform Number"
label(data$ks002)="From DXA is bone mineral density T score of either hip more than four standard deviations below the population mean or less than 0.5 g/cm-squared"
label(data$ks009)="Any pain in right left or both knees that stopped you from pushing hard"
label(data$ks009a)="Can other side be tested"
label(data$ks009b)="Pain in your knee stopped you from pushing hard"
label(data$ksdate2)="Date Completed"
label(data$kstid2)="Tester ID"
label(data$ks012a)="Right leg eccentric test YN"
label(data$ks012b)="Right leg eccentric trials at 30 degree"
label(data$ks012c)="Right leg eccentric trials at 180 degree"
label(data$ks012d)="Right leg eccentric RND"
label(data$ksdate3)="Date Completed"
label(data$kstid3)="Tester ID"
label(data$ks022a)="Right leg eccentric test YN"
label(data$ks022b)="Right leg eccentric trials at 30 degree"
label(data$ks022c)="Right leg eccentric trials at 180 degree"
label(data$ks022d)="Right leg eccentric RND"
label(data$crf_parent_name_KneStr)="CRF Parent Name"
label(data$study_name_KneStr)="Study Name"

#Create new variables for factors
data$ks001.factor = factor(data$ks001, levels = c("0","1","8"))
levels(data$ks001.factor) = c("No","Yes","Dont know")

data$ks003.factor = factor(data$ks003, levels = c("0","1","8"))
levels(data$ks003.factor) = c("No","Yes","Dont know")

data$ks004.factor = factor(data$ks004, levels = c("0","1","8"))
levels(data$ks004.factor) = c("No","Yes","Dont know")

data$ks005.factor = factor(data$ks005, levels = c("0","1","8"))
levels(data$ks005.factor) = c("No","Yes","Dont know")

data$ks005a.factor = factor(data$ks005a, levels = c("1","2","3","8"))
levels(data$ks005a.factor) = c("Right","Left","Both","Dont know")

data$ks005b.factor = factor(data$ks005b, levels = c("1","2","3","4","5","6","7","8","9"))
levels(data$ks005b.factor) = c("Joint","Bone","Ligament","Meniscus","Cartilage","Knee cap","Tendon","Others","Dont know")

data$ks005c.factor = factor(data$ks005c, levels = c("1","2","3","4","5","6","7","8","9"))
levels(data$ks005c.factor) = c("Joint","Bone","Ligament","Meniscus","Cartilage","Knee cap","Tendon","Others","Dont know")

data$ks006.factor = factor(data$ks006, levels = c("0","1","8"))
levels(data$ks006.factor) = c("No","Yes","Dont know")

data$ks006a.factor = factor(data$ks006a, levels = c("1","2","8"))
levels(data$ks006a.factor) = c("Right","Left","Dont know")

data$ks007.factor = factor(data$ks007, levels = c("0","1","8"))
levels(data$ks007.factor) = c("No","Yes","Dont know")

data$ks007a.factor = factor(data$ks007a, levels = c("1","2","3","8"))
levels(data$ks007a.factor) = c("Right","Left","Both","Dont know")

data$ks024.factor = factor(data$ks024, levels = c("0","1","8"))
levels(data$ks024.factor) = c("No","Yes","Dont know")

data$ks024a.factor = factor(data$ks024a, levels = c("1","2","3","8"))
levels(data$ks024a.factor) = c("Right","Left","Both","Dont know")

data$ks024b.factor = factor(data$ks024b, levels = c("1","2","3","8"))
levels(data$ks024b.factor) = c("Occassionally","Weekly","Daily","Dont know")

data$ks008.factor = factor(data$ks008, levels = c("1","2","3","4","8"))
levels(data$ks008.factor) = c("Right","Left","First time","Both","Dont know")

data$ks025.factor = factor(data$ks025, levels = c("0","1","8"))
levels(data$ks025.factor) = c("No","Yes","Dont know")

data$ks025a.factor = factor(data$ks025a, levels = c("0","1","10","2","3","4","5","6","7","8","9"))
levels(data$ks025a.factor) = c("0","1","10","2","3","4","5","6","7","8","9")

data$ks025b.factor = factor(data$ks025b, levels = c("0","1","10","2","3","4","5","6","7","8","9"))
levels(data$ks025b.factor) = c("0","1","10","2","3","4","5","6","7","8","9")

data$ks025c.factor = factor(data$ks025c, levels = c("0","1","10","2","3","4","5","6","7","8","9"))
levels(data$ks025c.factor) = c("0","1","10","2","3","4","5","6","7","8","9")

data$ks025d.factor = factor(data$ks025d, levels = c("0","1","10","2","3","4","5","6","7","8","9"))
levels(data$ks025d.factor) = c("0","1","10","2","3","4","5","6","7","8","9")

data$ks025e.factor = factor(data$ks025e, levels = c("0","1","10","2","3","4","5","6","7","8","9"))
levels(data$ks025e.factor) = c("0","1","10","2","3","4","5","6","7","8","9")

data$ks011a.factor = factor(data$ks011a, levels = c("0","1"))
levels(data$ks011a.factor) = c("No","Yes")

data$ks011b.factor = factor(data$ks011b, levels = c("0","1","2","3","4"))
levels(data$ks011b.factor) = c("0","1","2","3","4+")

data$ks011brnd.factor = factor(data$ks011brnd, levels = c("1","2"))
levels(data$ks011brnd.factor) = c("Requested by Participant","Testers decision")

data$ks011c.factor = factor(data$ks011c, levels = c("0","1","2","3","4"))
levels(data$ks011c.factor) = c("0","1","2","3","4+")

data$ks011crnd.factor = factor(data$ks011crnd, levels = c("1","2"))
levels(data$ks011crnd.factor) = c("Requested by Participant","Testers decision")

data$ks011d.factor = factor(data$ks011d, levels = c("1","2","3","4","7","8"))
levels(data$ks011d.factor) = c("Ineligible","Technical","No Tester","Time","Refused","Dont know")

data$ks013a.factor = factor(data$ks013a, levels = c("0","1"))
levels(data$ks013a.factor) = c("No","Yes")

data$ks013b.factor = factor(data$ks013b, levels = c("0","1","2","3","4"))
levels(data$ks013b.factor) = c("0","1","2","3","4+")

data$ks013c.factor = factor(data$ks013c, levels = c("0","1","2","3","4"))
levels(data$ks013c.factor) = c("0","1","2","3","4+")

data$ks013brnd.factor = factor(data$ks013brnd, levels = c("1","2"))
levels(data$ks013brnd.factor) = c("Requested by Participant","Testers decision")

data$ks013d.factor = factor(data$ks013d, levels = c("1","2","3","4","7","8"))
levels(data$ks013d.factor) = c("Ineligible","Technical","No Tester","Time","Refused","Dont know")

data$ks021a.factor = factor(data$ks021a, levels = c("0","1"))
levels(data$ks021a.factor) = c("No","Yes")

data$ks021b.factor = factor(data$ks021b, levels = c("0","1","2","3","4"))
levels(data$ks021b.factor) = c("0","1","2","3","4+")

data$ks021brnd.factor = factor(data$ks021brnd, levels = c("1","2"))
levels(data$ks021brnd.factor) = c("Requested by Participant","Testers decision")

data$ks021c.factor = factor(data$ks021c, levels = c("0","1","2","3","4"))
levels(data$ks021c.factor) = c("0","1","2","3","4+")

data$ks021crnd.factor = factor(data$ks021crnd, levels = c("1","2"))
levels(data$ks021crnd.factor) = c("Requested by Participant","Testers decision")

data$ks021d.factor = factor(data$ks021d, levels = c("1","2","3","4","7","8"))
levels(data$ks021d.factor) = c("Ineligible","Technical","No Tester","Time","Refused","Dont know")

data$ks023a.factor = factor(data$ks023a, levels = c("0","1"))
levels(data$ks023a.factor) = c("No","Yes")

data$ks023b.factor = factor(data$ks023b, levels = c("0","1","2","3","4"))
levels(data$ks023b.factor) = c("0","1","2","3","4+")

data$ks023c.factor = factor(data$ks023c, levels = c("0","1","2","3","4"))
levels(data$ks023c.factor) = c("0","1","2","3","4+")

data$ks023crnd.factor = factor(data$ks023crnd, levels = c("1","2"))
levels(data$ks023crnd.factor) = c("Requested by Participant","Testers decision")

data$ks023d.factor = factor(data$ks023d, levels = c("1","2","3","4","7","8"))
levels(data$ks023d.factor) = c("Ineligible","Technical","No Tester","Time","Refused","Dont know")

data$ks004a3m.factor = factor(data$ks004a3m, levels = c("0","1","8"))
levels(data$ks004a3m.factor) = c("No","Yes","Dont know")

data$ks004a.factor = factor(data$ks004a, levels = c("0","1","8"))
levels(data$ks004a.factor) = c("No","Yes","Dont know")

data$ks002.factor = factor(data$ks002, levels = c("0","1","8"))
levels(data$ks002.factor) = c("No","Yes","Dont know")

data$ks009.factor = factor(data$ks009, levels = c("0","1","2","3","8"))
levels(data$ks009.factor) = c("No test both sides","Right test left side only","Left test right side only","Both do NOT test"," Dont know go to Kin-Com exam")

data$ks009a.factor = factor(data$ks009a, levels = c("0","1"))
levels(data$ks009a.factor) = c("No","Yes")

data$ks009b.factor = factor(data$ks009b, levels = c("0","1","8"))
levels(data$ks009b.factor) = c("No","Yes","Dont know")

data$ks012a.factor = factor(data$ks012a, levels = c("0","1"))
levels(data$ks012a.factor) = c("No","Yes")

data$ks012b.factor = factor(data$ks012b, levels = c("0","1","2","3","4"))
levels(data$ks012b.factor) = c("0","1","2","3","4+")

data$ks012c.factor = factor(data$ks012c, levels = c("0","1","2","3","4"))
levels(data$ks012c.factor) = c("0","1","2","3","4+")

data$ks012d.factor = factor(data$ks012d, levels = c("1","2","3","4","7","8"))
levels(data$ks012d.factor) = c("Ineligible","Technical","No Tester","Time","Refused","Dont know")

data$ks022a.factor = factor(data$ks022a, levels = c("0","1"))
levels(data$ks022a.factor) = c("No","Yes")

data$ks022b.factor = factor(data$ks022b, levels = c("0","1","2","3","4"))
levels(data$ks022b.factor) = c("0","1","2","3","4+")

data$ks022c.factor = factor(data$ks022c, levels = c("0","1","2","3","4"))
levels(data$ks022c.factor) = c("0","1","2","3","4+")

data$ks022d.factor = factor(data$ks022d, levels = c("1","2","3","4","7","8"))
levels(data$ks022d.factor) = c("Ineligible","Technical","No Tester","Time","Refused","Dont know")

