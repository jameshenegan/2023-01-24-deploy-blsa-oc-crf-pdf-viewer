#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_VEMP_and_VOG.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_VEMandVOG)="CRF Version"
label(data$obsdate_vemdate)="Date Completed"
label(data$blank_VEMandVOG)="Blank Form"
label(data$vemtid)="Tester ID"
label(data$vem0a)="WEBER sound the same in both ears"
label(data$vem0b)="WEBER sound heard louder"
label(data$vem0cr)="Mastoid process positive conduction Right"
label(data$vem0cl)="Mastoid process positive conduction Left"
label(data$vem0dr)="External auditory meatus positive perception Right"
label(data$vem0dl)="External auditory meatus positive perception Left"
label(data$vog0r)="Impacted Cerumen Right"
label(data$vog0l)="Impacted Cerumen Left"
label(data$vem01a)="OVEMP able to see target"
label(data$vem1la)="OVEMP Left Eye trace on top Ln1"
label(data$vem1lb)="OVEMP Left Eye trace on top Lp1"
label(data$vem1le)="OVEMP Left Eye trace on top Lamp"
label(data$vem1lg)="OVEMP Left Eye Calibration LpA"
label(data$vem1lh)="OVEMP Left Eye Calibration LnA"
label(data$vem1ra)="OVEMP Right Eye trace on top Ln1"
label(data$vem1rb)="OVEMP Right Eye trace on top Lp1"
label(data$vem1re)="OVEMP Right Eye trace on top Lamp"
label(data$vem1rg)="OVEMP Right Eye Calibration LpA"
label(data$vem1rh)="OVEMP Right Eye Calibration LnA"
label(data$vem2a)="CVEMP No conductive hearing loss"
label(data$vem2b)="CVEMP Can move the neck with no restriction or pain"
label(data$vem2ra)="CVEMP Right SCM Rp1"
label(data$vem2rb)="CVEMP Right SCM Rn1"
label(data$vem2rc)="CVEMP Right SCM Ramp"
label(data$vem2rd)="CVEMP Right SCM Rrec"
label(data$vem2la)="CVEMP Left SCM Lp1"
label(data$vem2lb)="CVEMP Left SCM Ln1"
label(data$vem2lc)="CVEMP Left SCM Lamp"
label(data$vem2ld)="CVEMP Left SCM Lrec"
label(data$vog31a)="VOG able to see target"
label(data$vog31b)="VOG can move neck without restriction or pain"
label(data$vog31c)="VOG No history of surgery in the blood vessels of the neck"
label(data$vog31d)="VOG Had had cervical spine surgery and can move the head from side to side without restriction or pain"
label(data$vog32almn)="VOG Left Horizontal neutral head position with 10 degree pitch MEAN"
label(data$vog32alsd)="VOG Left Horizontal neutral head position with 10 degree pitch Standard Deviation"
label(data$vog32armn)="VOG Right Horizontal neutral head position with 10 degree pitch MEAN"
label(data$vog32arsd)="VOG Right Horizontal neutral head position with 10 degree pitch Standard Deviation"
label(data$auto_id_VEMandVOG)="Unique Teleform Number"
label(data$vem1lf2)="OVEMP Left Eye trace on top Unknown"
label(data$vem1rf2)="OVEMP Right trace on top Unknown"
label(data$vem2re2)="CVEMP Right SCM Unknown"
label(data$vem2le2)="CVEMP Left SCM Unknown"
label(data$vog32auk2)="VOG Unknown"
label(data$vem1lc)="OVEMP Left Eye trace on top Ln1"
label(data$vem1ld)="OVEMP Left Eye trace on top Lp1"
label(data$vem1lf)="OVEMP Left Eye trace on top Unknown"
label(data$vem1rc)="OVEMP Right Eye trace on top Ln1"
label(data$vem1rd)="OVEMP Right Eye trace on top Lp1"
label(data$vem1rf)="OVEMP Right trace on top Unknown"
label(data$vem2re)="CVEMP Right SCM Unknown"
label(data$vem2le)="CVEMP Left SCM Unknown"
label(data$vog32auk)="VOG Unknown"
label(data$crf_parent_name_VEMandVOG)="CRF Parent Name"
label(data$study_name_VEMandVOG)="Study Name"

#Create new variables for factors
data$vem0a.factor = factor(data$vem0a, levels = c("0","1"))
levels(data$vem0a.factor) = c("No","Yes")

data$vem0b.factor = factor(data$vem0b, levels = c("0","1","2"))
levels(data$vem0b.factor) = c(" Unable to discern","Right Ear","Left Ear")

data$vem0cr.factor = factor(data$vem0cr, levels = c("0","1"))
levels(data$vem0cr.factor) = c("No","Yes")

data$vem0cl.factor = factor(data$vem0cl, levels = c("0","1"))
levels(data$vem0cl.factor) = c("No","Yes")

data$vem0dr.factor = factor(data$vem0dr, levels = c("0","1"))
levels(data$vem0dr.factor) = c("No","Yes")

data$vem0dl.factor = factor(data$vem0dl, levels = c("0","1"))
levels(data$vem0dl.factor) = c("No","Yes")

data$vog0r.factor = factor(data$vog0r, levels = c("0","1"))
levels(data$vog0r.factor) = c("No","Yes")

data$vog0l.factor = factor(data$vog0l, levels = c("0","1"))
levels(data$vog0l.factor) = c("No","Yes")

data$vem01a.factor = factor(data$vem01a, levels = c("0","1"))
levels(data$vem01a.factor) = c("No","Yes")

data$vem2a.factor = factor(data$vem2a, levels = c("0","1"))
levels(data$vem2a.factor) = c("False","True")

data$vem2b.factor = factor(data$vem2b, levels = c("0","1"))
levels(data$vem2b.factor) = c("No","Yes")

data$vog31a.factor = factor(data$vog31a, levels = c("0","1"))
levels(data$vog31a.factor) = c("No","Yes")

data$vog31b.factor = factor(data$vog31b, levels = c("0","1"))
levels(data$vog31b.factor) = c("No","Yes")

data$vog31c.factor = factor(data$vog31c, levels = c("0","1"))
levels(data$vog31c.factor) = c("False","True")

data$vog31d.factor = factor(data$vog31d, levels = c("0","1"))
levels(data$vog31d.factor) = c("False","True")

data$vem1lf2.factor = factor(data$vem1lf2, levels = c("1","2","3","4","5","6","7"))
levels(data$vem1lf2.factor) = c("Not Eligible","Physical Problems","Mental Problems","Technical Difficulties","Refused but theoretically could do","Time constraints","Not Scheduled")

data$vem1rf2.factor = factor(data$vem1rf2, levels = c("1","2","3","4","5","6","7"))
levels(data$vem1rf2.factor) = c("Not Eligible","Physical Problems","Mental Problems","Technical Difficulties","Refused but theoretically could do","Time constraints","Not Scheduled")

data$vem2re2.factor = factor(data$vem2re2, levels = c("1","2","3","4","5","6","7"))
levels(data$vem2re2.factor) = c("Not Eligible","Physical Problems","Mental Problems","Technical Difficulties","Refused but theoretically could do","Time constraints","Not Scheduled")

data$vem2le2.factor = factor(data$vem2le2, levels = c("1","2","3","4","5","6","7"))
levels(data$vem2le2.factor) = c("Not Eligible","Physical Problems","Mental Problems","Technical Difficulties","Refused but theoretically could do","Time constraints","Not Scheduled")

data$vog32auk2.factor = factor(data$vog32auk2, levels = c("1","2","3","4","5","6","7"))
levels(data$vog32auk2.factor) = c("Not Eligible","Physical Problems","Mental Problems","Technical Difficulties","Refused but theoretically could do","Time constraints","Not Scheduled")

data$vem1lf.factor = factor(data$vem1lf, levels = c("1","2","3","4","5","6"))
levels(data$vem1lf.factor) = c("Not Eligible","Physical Problems","Mental Problems","Technical Difficulties","Refused but theoretically could do","Time constraints")

data$vem1rf.factor = factor(data$vem1rf, levels = c("1","2","3","4","5","6"))
levels(data$vem1rf.factor) = c("Not Eligible","Physical Problems","Mental Problems","Technical Difficulties","Refused but theoretically could do","Time constraints")

data$vem2re.factor = factor(data$vem2re, levels = c("1","2","3","4","5","6"))
levels(data$vem2re.factor) = c("Not Eligible","Physical Problems","Mental Problems","Technical Difficulties","Refused but theoretically could do","Time constraints")

data$vem2le.factor = factor(data$vem2le, levels = c("1","2","3","4","5","6"))
levels(data$vem2le.factor) = c("Not Eligible","Physical Problems","Mental Problems","Technical Difficulties","Refused but theoretically could do","Time constraints")

data$vog32auk.factor = factor(data$vog32auk, levels = c("1","2","3","4","5","6"))
levels(data$vog32auk.factor) = c("Not Eligible","Physical Problems","Mental Problems","Technical Difficulties","Refused but theoretically could do","Time constraints")

