#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Lateral_Dominance.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_LatDom)="CRF Version"
label(data$obsdate_lhddate)="Date Completed"
label(data$blank_LatDom)="Blank Form"
label(data$lhdtid)="Tester ID"
label(data$lhd01)="Describe your handedness"
label(data$lhd02)="Did you ever change your writing hand"
label(data$lhd02age)="If yes at what change writing hand"
label(data$lhd04com)="Why did you change"
label(data$lhd04a)="Hand dominance writing"
label(data$lhd04b)="Hand dominance drawing"
label(data$lhd04c)="Hand dominance throwing"
label(data$lhd04d)="Hand dominance hammer"
label(data$lhd04e)="Hand dominance Scissors"
label(data$lhd04f)="Hand dominance toothbrush"
label(data$lhd04g)="Hand dominance knife without fork"
label(data$lhd04h)="Hand dominance spoon"
label(data$lhd04i)="Hand dominance screwdriver"
label(data$lhd04j)="Hand dominance broom upper hand"
label(data$lhd04k)="Hand dominance striking match"
label(data$lhd04l)="Hand dominance opening box lid"
label(data$auto_id_LatDom)="Unique Teleform Number"
label(data$crf_parent_name_LatDom)="CRF Parent Name"
label(data$study_name_LatDom)="Study Name"

#Create new variables for factors
data$lhd01.factor = factor(data$lhd01, levels = c("1","2","3"))
levels(data$lhd01.factor) = c("Right","Left","Ambidextrous")

data$lhd02.factor = factor(data$lhd02, levels = c("0","1"))
levels(data$lhd02.factor) = c("No","Yes")

data$lhd04a.factor = factor(data$lhd04a, levels = c("1","2","3","4","5"))
levels(data$lhd04a.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

data$lhd04b.factor = factor(data$lhd04b, levels = c("1","2","3","4","5"))
levels(data$lhd04b.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

data$lhd04c.factor = factor(data$lhd04c, levels = c("1","2","3","4","5"))
levels(data$lhd04c.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

data$lhd04d.factor = factor(data$lhd04d, levels = c("1","2","3","4","5"))
levels(data$lhd04d.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

data$lhd04e.factor = factor(data$lhd04e, levels = c("1","2","3","4","5"))
levels(data$lhd04e.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

data$lhd04f.factor = factor(data$lhd04f, levels = c("1","2","3","4","5"))
levels(data$lhd04f.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

data$lhd04g.factor = factor(data$lhd04g, levels = c("1","2","3","4","5"))
levels(data$lhd04g.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

data$lhd04h.factor = factor(data$lhd04h, levels = c("1","2","3","4","5"))
levels(data$lhd04h.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

data$lhd04i.factor = factor(data$lhd04i, levels = c("1","2","3","4","5"))
levels(data$lhd04i.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

data$lhd04j.factor = factor(data$lhd04j, levels = c("1","2","3","4","5"))
levels(data$lhd04j.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

data$lhd04k.factor = factor(data$lhd04k, levels = c("1","2","3","4","5"))
levels(data$lhd04k.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

data$lhd04l.factor = factor(data$lhd04l, levels = c("1","2","3","4","5"))
levels(data$lhd04l.factor) = c("Left Always","Left Usually","Equally","Right Usually","Right Always")

