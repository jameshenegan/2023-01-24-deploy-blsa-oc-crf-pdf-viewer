#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Hand_x-ray.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_Hanxra)="CRF Version"
label(data$obsdate_hdxdat2)="L date"
label(data$hdxqdat)="Date checking completed"
label(data$blank_Hanxra)="Blank"
label(data$hdxqtid)="Checker Tester ID"
label(data$hdx000)="Which hand submitted for interpretation"
label(data$hdxqa1)="R markers on each film in location that does not obscure any structure"
label(data$hdxqb1)="L markers on each film in location that does not obscure any structure"
label(data$hdxqa2)="R index finger aligned with radius along the long axis of the cassette"
label(data$hdxqb2)="L index finger aligned with radius along the long axis of the cassette"
label(data$hdxqa3)="R fingers slightly spread apart and the thumb slightly extended"
label(data$hdxqb3)="L fingers slightly spread apart and the thumb slightly extended"
label(data$hdxqa4)="R ALL DIPs visible in the film"
label(data$hdxqb4)="L ALL DIPs visible in the film"
label(data$hdxqa5)="R wrist visible"
label(data$hdxqb5)="L wrist visible"
label(data$hdxqa6)="R any hardware or artifact visible"
label(data$hdxqb6)="L any hardware or artifact visible"
label(data$hdxqa7)="R film quality optimally depict the trabeculae and joints"
label(data$hdxqb7)="L film quality optimally depict the trabeculae and joints"
label(data$hdxqa8)="R soft tissue visible"
label(data$hdxqb8)="L soft tissue visible"
label(data$hdxtid)="Tester 1 ID Right"
label(data$hdxdate)="R date"
label(data$hdxtid3)="Tester 2 ID Right"
label(data$hdxdat3)="R date T2"
label(data$hdxa0o)="R wrist Osteophytes"
label(data$hdxa1ao)="R CMP 1st Osteophytes"
label(data$hdxa1bo)="R IP 1st Osteophytes"
label(data$hdxa2ao)="R DIP 2nd Osteophytes"
label(data$hdxa2bo)="R PIP 2nd Osteophytes"
label(data$hdxa3ao)="R DIP 3rd Osteophytes"
label(data$hdxa3bo)="R PIP 3rd Osteophytes"
label(data$hdxa4ao)="R DIP 4th Osteophytes"
label(data$hdxa4bo)="R PIP 4th Osteophytes"
label(data$hdxa5ao)="R DIP 5th Osteophytes"
label(data$hdxa5bo)="R PIP 5th Osteophytes"
label(data$hdxa0n)="R wrist Narrowing"
label(data$hdxa1an)="R CMP 1st Narrowing"
label(data$hdxa1bn)="R IP 1st Narrowing"
label(data$hdxa2an)="R DIP 2nd Narrowing"
label(data$hdxa2bn)="R PIP 2nd Narrowing"
label(data$hdxa3an)="R DIP 3rd Narrowing"
label(data$hdxa3bn)="R PIP 3rd Narrowing"
label(data$hdxa4an)="R DIP 4th Narrowing"
label(data$hdxa4bn)="R PIP 4th Narrowing"
label(data$hdxa5an)="R DIP 5th Narrowing"
label(data$hdxa5bn)="R PIP 5th Narrowing"
label(data$hdxa0s)="R wrist Sclerosis"
label(data$hdxa1as)="R CMP 1st Sclerosis"
label(data$hdxa1bs)="R IP 1st Sclerosis"
label(data$hdxa2as)="R DIP 2nd Sclerosis"
label(data$hdxa2bs)="R PIP 2nd Sclerosis"
label(data$hdxa3as)="R DIP 3rd Sclerosis"
label(data$hdxa3bs)="R PIP 3rd Sclerosis"
label(data$hdxa4as)="R DIP 4th Sclerosis"
label(data$hdxa4bs)="R PIP 4th Sclerosis"
label(data$hdxa5as)="R DIP 5th Sclerosis"
label(data$hdxa5bs)="R PIP 5th Sclerosis"
label(data$hdxa0d)="R wrist Deformity"
label(data$hdxa1ad)="R CMP 1st Deformity"
label(data$hdxa1bd)="R IP 1st Deformity"
label(data$hdxa2ad)="R DIP 2nd Deformity"
label(data$hdxa2bd)="R PIP 2nd Deformity"
label(data$hdxa3ad)="R DIP 3rd Deformity"
label(data$hdxa3bd)="R PIP 3rd Deformity"
label(data$hdxa4ad)="R DIP 4th Deformity"
label(data$hdxa4bd)="R PIP 4th Deformity"
label(data$hdxa5ad)="R DIP 5th Deformity"
label(data$hdxa5bd)="R PIP 5th Deformity"
label(data$hdxa0c)="R wrist Chondro calcinosis"
label(data$hdxa1ac)="R CMP 1st Chondro calcinosis"
label(data$hdxa1bc)="R IP 1st Chondro calcinosis"
label(data$hdxa2ac)="R DIP 2nd Chondro calcinosis"
label(data$hdxa2bc)="R PIP 2nd Chondro calcinosis"
label(data$hdxa3ac)="R DIP 3rd Chondro calcinosis"
label(data$hdxa3bc)="R PIP 3rd Chondro calcinosis"
label(data$hdxa4ac)="R DIP 4th Chondro calcinosis"
label(data$hdxa4bc)="R PIP 4th Chondro calcinosis"
label(data$hdxa5ac)="R DIP 5th Chondro calcinosis"
label(data$hdxa5bc)="R PIP 5th Chondro calcinosis"
label(data$hdxa0t)="R wrist Old trauma"
label(data$hdxa1at)="R CMP 1st Old trauma"
label(data$hdxa1bt)="R IP 1st Old trauma"
label(data$hdxa2at)="R DIP 2nd Old trauma"
label(data$hdxa2bt)="R PIP 2nd Old trauma"
label(data$hdxa3at)="R DIP 3rd Old trauma"
label(data$hdxa3bt)="R PIP 3rd Old trauma"
label(data$hdxa4at)="R DIP 4th Old trauma"
label(data$hdxa4bt)="R PIP 4th Old trauma"
label(data$hdxa5at)="R DIP 5th Old trauma"
label(data$hdxa5bt)="R PIP 5th Old trauma"
label(data$hdxaks)="KL Grade for RIGHT hand"
label(data$hdxtid2)="Tester 1 ID Left"
label(data$hdxtid4)="Tester 2 ID Left"
label(data$hdxdat4)="L date T2"
label(data$hdxb0o)="L wrist Osteophytes"
label(data$hdxb1ao)="L CMP 1st Osteophytes"
label(data$hdxb1bo)="L IP 1st Osteophytes"
label(data$hdxb2ao)="L DIP 2nd Osteophytes"
label(data$hdxb2bo)="L PIP 2nd Osteophytes"
label(data$hdxb3ao)="L DIP 3rd Osteophytes"
label(data$hdxb3bo)="L PIP 3rd Osteophytes"
label(data$hdxb4ao)="L DIP 4th Osteophytes"
label(data$hdxb4bo)="L PIP 4th Osteophytes"
label(data$hdxb5ao)="L DIP 5th Osteophytes"
label(data$hdxb5bo)="L PIP 5th Osteophytes"
label(data$hdxb0n)="L wrist Narrowing"
label(data$hdxb1an)="L CMP 1st Narrowing"
label(data$hdxb1bn)="L IP 1st Narrowing"
label(data$hdxb2an)="L DIP 2nd Narrowing"
label(data$hdxb2bn)="L PIP 2nd Narrowing"
label(data$hdxb3an)="L DIP 3rd Narrowing"
label(data$hdxb3bn)="L PIP 3rd Narrowing"
label(data$hdxb4an)="L DIP 4th Narrowing"
label(data$hdxb4bn)="L PIP 4th Narrowing"
label(data$hdxb5an)="L DIP 5th Narrowing"
label(data$hdxb5bn)="L PIP 5th Narrowing"
label(data$hdxb0s)="L wrist Sclerosis"
label(data$hdxb1as)="L CMP 1st Sclerosis"
label(data$hdxb1bs)="L IP 1st Sclerosis"
label(data$hdxb2as)="L DIP 2nd Sclerosis"
label(data$hdxb2bs)="L PIP 2nd Sclerosis"
label(data$hdxb3as)="L DIP 3rd Sclerosis"
label(data$hdxb3bs)="L PIP 3rd Sclerosis"
label(data$hdxb4as)="L DIP 4th Sclerosis"
label(data$hdxb4bs)="L PIP 4th Sclerosis"
label(data$hdxb5as)="L DIP 5th Sclerosis"
label(data$hdxb5bs)="L PIP 5th Sclerosis"
label(data$hdxb0d)="L wrist Deformity"
label(data$hdxb1ad)="L CMP 1st Deformity"
label(data$hdxb1bd)="L IP 1st Deformity"
label(data$hdxb2ad)="L DIP 2nd Deformity"
label(data$hdxb2bd)="L PIP 2nd Deformity"
label(data$hdxb3ad)="L DIP 3rd Deformity"
label(data$hdxb3bd)="L PIP 3rd Deformity"
label(data$hdxb4ad)="L DIP 4th Deformity"
label(data$hdxb4bd)="L PIP 4th Deformity"
label(data$hdxb5ad)="L DIP 5th Deformity"
label(data$hdxb5bd)="L PIP 5th Deformity"
label(data$hdxb0c)="L wrist Chondro calcinosis"
label(data$hdxb1ac)="L CMP 1st Chondro calcinosis"
label(data$hdxb1bc)="L IP 1st Chondro calcinosis"
label(data$hdxb2ac)="L DIP 2nd Chondro calcinosis"
label(data$hdxb2bc)="L PIP 2nd Chondro calcinosis"
label(data$hdxb3ac)="L DIP 3rd Chondro calcinosis"
label(data$hdxb3bc)="L PIP 3rd Chondro calcinosis"
label(data$hdxb4ac)="L DIP 4th Chondro calcinosis"
label(data$hdxb4bc)="L PIP 4th Chondro calcinosis"
label(data$hdxb5ac)="L DIP 5th Chondro calcinosis"
label(data$hdxb5bc)="L PIP 5th Chondro calcinosis"
label(data$hdxb0t)="L wrist Old trauma"
label(data$hdxb1at)="L CMP 1st Old trauma"
label(data$hdxb1bt)="L IP 1st Old trauma"
label(data$hdxb2at)="L DIP 2nd Old trauma"
label(data$hdxb2bt)="L PIP 2nd Old trauma"
label(data$hdxb3at)="L DIP 3rd Old trauma"
label(data$hdxb3bt)="L PIP 3rd Old trauma"
label(data$hdxb4at)="L DIP 4th Old trauma"
label(data$hdxb4bt)="L PIP 4th Old trauma"
label(data$hdxb5at)="L DIP 5th Old trauma"
label(data$hdxb5bt)="L PIP 5th Old trauma"
label(data$hdxbks)="KL Grade for LEFT hand"
label(data$auto_id_Hanxra)="Unique Teleform Number"
label(data$crf_parent_name_Hanxra)="CRF Parent Name"
label(data$study_name_Hanxra)="Study Name"

#Create new variables for factors
data$hdx000.factor = factor(data$hdx000, levels = c("0","1","2","3"))
levels(data$hdx000.factor) = c("None","Both","Left only","Right only")

data$hdxqa1.factor = factor(data$hdxqa1, levels = c("0","1"))
levels(data$hdxqa1.factor) = c("No","Yes")

data$hdxqb1.factor = factor(data$hdxqb1, levels = c("0","1"))
levels(data$hdxqb1.factor) = c("No","Yes")

data$hdxqa2.factor = factor(data$hdxqa2, levels = c("0","1"))
levels(data$hdxqa2.factor) = c("No","Yes")

data$hdxqb2.factor = factor(data$hdxqb2, levels = c("0","1"))
levels(data$hdxqb2.factor) = c("No","Yes")

data$hdxqa3.factor = factor(data$hdxqa3, levels = c("0","1"))
levels(data$hdxqa3.factor) = c("No","Yes")

data$hdxqb3.factor = factor(data$hdxqb3, levels = c("0","1"))
levels(data$hdxqb3.factor) = c("No","Yes")

data$hdxqa4.factor = factor(data$hdxqa4, levels = c("0","1"))
levels(data$hdxqa4.factor) = c("No","Yes")

data$hdxqb4.factor = factor(data$hdxqb4, levels = c("0","1"))
levels(data$hdxqb4.factor) = c("No","Yes")

data$hdxqa5.factor = factor(data$hdxqa5, levels = c("0","1"))
levels(data$hdxqa5.factor) = c("No","Yes")

data$hdxqb5.factor = factor(data$hdxqb5, levels = c("0","1"))
levels(data$hdxqb5.factor) = c("No","Yes")

data$hdxqa6.factor = factor(data$hdxqa6, levels = c("0","1"))
levels(data$hdxqa6.factor) = c("No","Yes")

data$hdxqb6.factor = factor(data$hdxqb6, levels = c("0","1"))
levels(data$hdxqb6.factor) = c("No","Yes")

data$hdxqa7.factor = factor(data$hdxqa7, levels = c("0","1"))
levels(data$hdxqa7.factor) = c("No","Yes")

data$hdxqb7.factor = factor(data$hdxqb7, levels = c("0","1"))
levels(data$hdxqb7.factor) = c("No","Yes")

data$hdxqa8.factor = factor(data$hdxqa8, levels = c("0","1"))
levels(data$hdxqa8.factor) = c("No","Yes")

data$hdxqb8.factor = factor(data$hdxqb8, levels = c("0","1"))
levels(data$hdxqb8.factor) = c("No","Yes")

data$hdxa0o.factor = factor(data$hdxa0o, levels = c("0","1","2","3","4","9"))
levels(data$hdxa0o.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa1ao.factor = factor(data$hdxa1ao, levels = c("0","1","2","3","4","9"))
levels(data$hdxa1ao.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa1bo.factor = factor(data$hdxa1bo, levels = c("0","1","2","3","4","9"))
levels(data$hdxa1bo.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa2ao.factor = factor(data$hdxa2ao, levels = c("0","1","2","3","4","9"))
levels(data$hdxa2ao.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa2bo.factor = factor(data$hdxa2bo, levels = c("0","1","2","3","4","9"))
levels(data$hdxa2bo.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa3ao.factor = factor(data$hdxa3ao, levels = c("0","1","2","3","4","9"))
levels(data$hdxa3ao.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa3bo.factor = factor(data$hdxa3bo, levels = c("0","1","2","3","4","9"))
levels(data$hdxa3bo.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa4ao.factor = factor(data$hdxa4ao, levels = c("0","1","2","3","4","9"))
levels(data$hdxa4ao.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa4bo.factor = factor(data$hdxa4bo, levels = c("0","1","2","3","4","9"))
levels(data$hdxa4bo.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa5ao.factor = factor(data$hdxa5ao, levels = c("0","1","2","3","4","9"))
levels(data$hdxa5ao.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa5bo.factor = factor(data$hdxa5bo, levels = c("0","1","2","3","4","9"))
levels(data$hdxa5bo.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa0n.factor = factor(data$hdxa0n, levels = c("0","1","2","3","9"))
levels(data$hdxa0n.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa1an.factor = factor(data$hdxa1an, levels = c("0","1","2","3","9"))
levels(data$hdxa1an.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa1bn.factor = factor(data$hdxa1bn, levels = c("0","1","2","3","9"))
levels(data$hdxa1bn.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa2an.factor = factor(data$hdxa2an, levels = c("0","1","2","3","9"))
levels(data$hdxa2an.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa2bn.factor = factor(data$hdxa2bn, levels = c("0","1","2","3","9"))
levels(data$hdxa2bn.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa3an.factor = factor(data$hdxa3an, levels = c("0","1","2","3","9"))
levels(data$hdxa3an.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa3bn.factor = factor(data$hdxa3bn, levels = c("0","1","2","3","9"))
levels(data$hdxa3bn.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa4an.factor = factor(data$hdxa4an, levels = c("0","1","2","3","9"))
levels(data$hdxa4an.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa4bn.factor = factor(data$hdxa4bn, levels = c("0","1","2","3","9"))
levels(data$hdxa4bn.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa5an.factor = factor(data$hdxa5an, levels = c("0","1","2","3","9"))
levels(data$hdxa5an.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa5bn.factor = factor(data$hdxa5bn, levels = c("0","1","2","3","9"))
levels(data$hdxa5bn.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxa0s.factor = factor(data$hdxa0s, levels = c("0","1","9"))
levels(data$hdxa0s.factor) = c("Absent","Present","Unknown")

data$hdxa1as.factor = factor(data$hdxa1as, levels = c("0","1","9"))
levels(data$hdxa1as.factor) = c("Absent","Present","Unknown")

data$hdxa1bs.factor = factor(data$hdxa1bs, levels = c("0","1","9"))
levels(data$hdxa1bs.factor) = c("Absent","Present","Unknown")

data$hdxa2as.factor = factor(data$hdxa2as, levels = c("0","1","9"))
levels(data$hdxa2as.factor) = c("Absent","Present","Unknown")

data$hdxa2bs.factor = factor(data$hdxa2bs, levels = c("0","1","9"))
levels(data$hdxa2bs.factor) = c("Absent","Present","Unknown")

data$hdxa3as.factor = factor(data$hdxa3as, levels = c("0","1","9"))
levels(data$hdxa3as.factor) = c("Absent","Present","Unknown")

data$hdxa3bs.factor = factor(data$hdxa3bs, levels = c("0","1","9"))
levels(data$hdxa3bs.factor) = c("Absent","Present","Unknown")

data$hdxa4as.factor = factor(data$hdxa4as, levels = c("0","1","9"))
levels(data$hdxa4as.factor) = c("Absent","Present","Unknown")

data$hdxa4bs.factor = factor(data$hdxa4bs, levels = c("0","1","9"))
levels(data$hdxa4bs.factor) = c("Absent","Present","Unknown")

data$hdxa5as.factor = factor(data$hdxa5as, levels = c("0","1","9"))
levels(data$hdxa5as.factor) = c("Absent","Present","Unknown")

data$hdxa5bs.factor = factor(data$hdxa5bs, levels = c("0","1","9"))
levels(data$hdxa5bs.factor) = c("Absent","Present","Unknown")

data$hdxa0d.factor = factor(data$hdxa0d, levels = c("0","1","9"))
levels(data$hdxa0d.factor) = c("Absent","Present","Unknown")

data$hdxa1ad.factor = factor(data$hdxa1ad, levels = c("0","1","9"))
levels(data$hdxa1ad.factor) = c("Absent","Present","Unknown")

data$hdxa1bd.factor = factor(data$hdxa1bd, levels = c("0","1","9"))
levels(data$hdxa1bd.factor) = c("Absent","Present","Unknown")

data$hdxa2ad.factor = factor(data$hdxa2ad, levels = c("0","1","9"))
levels(data$hdxa2ad.factor) = c("Absent","Present","Unknown")

data$hdxa2bd.factor = factor(data$hdxa2bd, levels = c("0","1","9"))
levels(data$hdxa2bd.factor) = c("Absent","Present","Unknown")

data$hdxa3ad.factor = factor(data$hdxa3ad, levels = c("0","1","9"))
levels(data$hdxa3ad.factor) = c("Absent","Present","Unknown")

data$hdxa3bd.factor = factor(data$hdxa3bd, levels = c("0","1","9"))
levels(data$hdxa3bd.factor) = c("Absent","Present","Unknown")

data$hdxa4ad.factor = factor(data$hdxa4ad, levels = c("0","1","9"))
levels(data$hdxa4ad.factor) = c("Absent","Present","Unknown")

data$hdxa4bd.factor = factor(data$hdxa4bd, levels = c("0","1","9"))
levels(data$hdxa4bd.factor) = c("Absent","Present","Unknown")

data$hdxa5ad.factor = factor(data$hdxa5ad, levels = c("0","1","9"))
levels(data$hdxa5ad.factor) = c("Absent","Present","Unknown")

data$hdxa5bd.factor = factor(data$hdxa5bd, levels = c("0","1","9"))
levels(data$hdxa5bd.factor) = c("Absent","Present","Unknown")

data$hdxa0c.factor = factor(data$hdxa0c, levels = c("0","1","9"))
levels(data$hdxa0c.factor) = c("Absent","Present","Unknown")

data$hdxa1ac.factor = factor(data$hdxa1ac, levels = c("0","1","9"))
levels(data$hdxa1ac.factor) = c("Absent","Present","Unknown")

data$hdxa1bc.factor = factor(data$hdxa1bc, levels = c("0","1","9"))
levels(data$hdxa1bc.factor) = c("Absent","Present","Unknown")

data$hdxa2ac.factor = factor(data$hdxa2ac, levels = c("0","1","9"))
levels(data$hdxa2ac.factor) = c("Absent","Present","Unknown")

data$hdxa2bc.factor = factor(data$hdxa2bc, levels = c("0","1","9"))
levels(data$hdxa2bc.factor) = c("Absent","Present","Unknown")

data$hdxa3ac.factor = factor(data$hdxa3ac, levels = c("0","1","9"))
levels(data$hdxa3ac.factor) = c("Absent","Present","Unknown")

data$hdxa3bc.factor = factor(data$hdxa3bc, levels = c("0","1","9"))
levels(data$hdxa3bc.factor) = c("Absent","Present","Unknown")

data$hdxa4ac.factor = factor(data$hdxa4ac, levels = c("0","1","9"))
levels(data$hdxa4ac.factor) = c("Absent","Present","Unknown")

data$hdxa4bc.factor = factor(data$hdxa4bc, levels = c("0","1","9"))
levels(data$hdxa4bc.factor) = c("Absent","Present","Unknown")

data$hdxa5ac.factor = factor(data$hdxa5ac, levels = c("0","1","9"))
levels(data$hdxa5ac.factor) = c("Absent","Present","Unknown")

data$hdxa5bc.factor = factor(data$hdxa5bc, levels = c("0","1","9"))
levels(data$hdxa5bc.factor) = c("Absent","Present","Unknown")

data$hdxa0t.factor = factor(data$hdxa0t, levels = c("0","1","9"))
levels(data$hdxa0t.factor) = c("Absent","Present","Unknown")

data$hdxa1at.factor = factor(data$hdxa1at, levels = c("0","1","9"))
levels(data$hdxa1at.factor) = c("Absent","Present","Unknown")

data$hdxa1bt.factor = factor(data$hdxa1bt, levels = c("0","1","9"))
levels(data$hdxa1bt.factor) = c("Absent","Present","Unknown")

data$hdxa2at.factor = factor(data$hdxa2at, levels = c("0","1","9"))
levels(data$hdxa2at.factor) = c("Absent","Present","Unknown")

data$hdxa2bt.factor = factor(data$hdxa2bt, levels = c("0","1","9"))
levels(data$hdxa2bt.factor) = c("Absent","Present","Unknown")

data$hdxa3at.factor = factor(data$hdxa3at, levels = c("0","1","9"))
levels(data$hdxa3at.factor) = c("Absent","Present","Unknown")

data$hdxa3bt.factor = factor(data$hdxa3bt, levels = c("0","1","9"))
levels(data$hdxa3bt.factor) = c("Absent","Present","Unknown")

data$hdxa4at.factor = factor(data$hdxa4at, levels = c("0","1","9"))
levels(data$hdxa4at.factor) = c("Absent","Present","Unknown")

data$hdxa4bt.factor = factor(data$hdxa4bt, levels = c("0","1","9"))
levels(data$hdxa4bt.factor) = c("Absent","Present","Unknown")

data$hdxa5at.factor = factor(data$hdxa5at, levels = c("0","1","9"))
levels(data$hdxa5at.factor) = c("Absent","Present","Unknown")

data$hdxa5bt.factor = factor(data$hdxa5bt, levels = c("0","1","9"))
levels(data$hdxa5bt.factor) = c("Absent","Present","Unknown")

data$hdxb0o.factor = factor(data$hdxb0o, levels = c("0","1","2","3","4","9"))
levels(data$hdxb0o.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb1ao.factor = factor(data$hdxb1ao, levels = c("0","1","2","3","4","9"))
levels(data$hdxb1ao.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb1bo.factor = factor(data$hdxb1bo, levels = c("0","1","2","3","4","9"))
levels(data$hdxb1bo.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb2ao.factor = factor(data$hdxb2ao, levels = c("0","1","2","3","4","9"))
levels(data$hdxb2ao.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb2bo.factor = factor(data$hdxb2bo, levels = c("0","1","2","3","4","9"))
levels(data$hdxb2bo.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb3ao.factor = factor(data$hdxb3ao, levels = c("0","1","2","3","4","9"))
levels(data$hdxb3ao.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb3bo.factor = factor(data$hdxb3bo, levels = c("0","1","2","3","4","9"))
levels(data$hdxb3bo.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb4ao.factor = factor(data$hdxb4ao, levels = c("0","1","2","3","4","9"))
levels(data$hdxb4ao.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb4bo.factor = factor(data$hdxb4bo, levels = c("0","1","2","3","4","9"))
levels(data$hdxb4bo.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb5ao.factor = factor(data$hdxb5ao, levels = c("0","1","2","3","4","9"))
levels(data$hdxb5ao.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb5bo.factor = factor(data$hdxb5bo, levels = c("0","1","2","3","4","9"))
levels(data$hdxb5bo.factor) = c("Normal (absent)","Possible (detached)","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb0n.factor = factor(data$hdxb0n, levels = c("0","1","2","3","9"))
levels(data$hdxb0n.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb1an.factor = factor(data$hdxb1an, levels = c("0","1","2","3","9"))
levels(data$hdxb1an.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb1bn.factor = factor(data$hdxb1bn, levels = c("0","1","2","3","9"))
levels(data$hdxb1bn.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb2an.factor = factor(data$hdxb2an, levels = c("0","1","2","3","9"))
levels(data$hdxb2an.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb2bn.factor = factor(data$hdxb2bn, levels = c("0","1","2","3","9"))
levels(data$hdxb2bn.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb3an.factor = factor(data$hdxb3an, levels = c("0","1","2","3","9"))
levels(data$hdxb3an.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb3bn.factor = factor(data$hdxb3bn, levels = c("0","1","2","3","9"))
levels(data$hdxb3bn.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb4an.factor = factor(data$hdxb4an, levels = c("0","1","2","3","9"))
levels(data$hdxb4an.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb4bn.factor = factor(data$hdxb4bn, levels = c("0","1","2","3","9"))
levels(data$hdxb4bn.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb5an.factor = factor(data$hdxb5an, levels = c("0","1","2","3","9"))
levels(data$hdxb5an.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb5bn.factor = factor(data$hdxb5bn, levels = c("0","1","2","3","9"))
levels(data$hdxb5bn.factor) = c("Normal","OARSI Grade 1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$hdxb0s.factor = factor(data$hdxb0s, levels = c("0","1","9"))
levels(data$hdxb0s.factor) = c("Absent","Present","Unknown")

data$hdxb1as.factor = factor(data$hdxb1as, levels = c("0","1","9"))
levels(data$hdxb1as.factor) = c("Absent","Present","Unknown")

data$hdxb1bs.factor = factor(data$hdxb1bs, levels = c("0","1","9"))
levels(data$hdxb1bs.factor) = c("Absent","Present","Unknown")

data$hdxb2as.factor = factor(data$hdxb2as, levels = c("0","1","9"))
levels(data$hdxb2as.factor) = c("Absent","Present","Unknown")

data$hdxb2bs.factor = factor(data$hdxb2bs, levels = c("0","1","9"))
levels(data$hdxb2bs.factor) = c("Absent","Present","Unknown")

data$hdxb3as.factor = factor(data$hdxb3as, levels = c("0","1","9"))
levels(data$hdxb3as.factor) = c("Absent","Present","Unknown")

data$hdxb3bs.factor = factor(data$hdxb3bs, levels = c("0","1","9"))
levels(data$hdxb3bs.factor) = c("Absent","Present","Unknown")

data$hdxb4as.factor = factor(data$hdxb4as, levels = c("0","1","9"))
levels(data$hdxb4as.factor) = c("Absent","Present","Unknown")

data$hdxb4bs.factor = factor(data$hdxb4bs, levels = c("0","1","9"))
levels(data$hdxb4bs.factor) = c("Absent","Present","Unknown")

data$hdxb5as.factor = factor(data$hdxb5as, levels = c("0","1","9"))
levels(data$hdxb5as.factor) = c("Absent","Present","Unknown")

data$hdxb5bs.factor = factor(data$hdxb5bs, levels = c("0","1","9"))
levels(data$hdxb5bs.factor) = c("Absent","Present","Unknown")

data$hdxb0d.factor = factor(data$hdxb0d, levels = c("0","1","9"))
levels(data$hdxb0d.factor) = c("Absent","Present","Unknown")

data$hdxb1ad.factor = factor(data$hdxb1ad, levels = c("0","1","9"))
levels(data$hdxb1ad.factor) = c("Absent","Present","Unknown")

data$hdxb1bd.factor = factor(data$hdxb1bd, levels = c("0","1","9"))
levels(data$hdxb1bd.factor) = c("Absent","Present","Unknown")

data$hdxb2ad.factor = factor(data$hdxb2ad, levels = c("0","1","9"))
levels(data$hdxb2ad.factor) = c("Absent","Present","Unknown")

data$hdxb2bd.factor = factor(data$hdxb2bd, levels = c("0","1","9"))
levels(data$hdxb2bd.factor) = c("Absent","Present","Unknown")

data$hdxb3ad.factor = factor(data$hdxb3ad, levels = c("0","1","9"))
levels(data$hdxb3ad.factor) = c("Absent","Present","Unknown")

data$hdxb3bd.factor = factor(data$hdxb3bd, levels = c("0","1","9"))
levels(data$hdxb3bd.factor) = c("Absent","Present","Unknown")

data$hdxb4ad.factor = factor(data$hdxb4ad, levels = c("0","1","9"))
levels(data$hdxb4ad.factor) = c("Absent","Present","Unknown")

data$hdxb4bd.factor = factor(data$hdxb4bd, levels = c("0","1","9"))
levels(data$hdxb4bd.factor) = c("Absent","Present","Unknown")

data$hdxb5ad.factor = factor(data$hdxb5ad, levels = c("0","1","9"))
levels(data$hdxb5ad.factor) = c("Absent","Present","Unknown")

data$hdxb5bd.factor = factor(data$hdxb5bd, levels = c("0","1","9"))
levels(data$hdxb5bd.factor) = c("Absent","Present","Unknown")

data$hdxb0c.factor = factor(data$hdxb0c, levels = c("0","1","9"))
levels(data$hdxb0c.factor) = c("Absent","Present","Unknown")

data$hdxb1ac.factor = factor(data$hdxb1ac, levels = c("0","1","9"))
levels(data$hdxb1ac.factor) = c("Absent","Present","Unknown")

data$hdxb1bc.factor = factor(data$hdxb1bc, levels = c("0","1","9"))
levels(data$hdxb1bc.factor) = c("Absent","Present","Unknown")

data$hdxb2ac.factor = factor(data$hdxb2ac, levels = c("0","1","9"))
levels(data$hdxb2ac.factor) = c("Absent","Present","Unknown")

data$hdxb2bc.factor = factor(data$hdxb2bc, levels = c("0","1","9"))
levels(data$hdxb2bc.factor) = c("Absent","Present","Unknown")

data$hdxb3ac.factor = factor(data$hdxb3ac, levels = c("0","1","9"))
levels(data$hdxb3ac.factor) = c("Absent","Present","Unknown")

data$hdxb3bc.factor = factor(data$hdxb3bc, levels = c("0","1","9"))
levels(data$hdxb3bc.factor) = c("Absent","Present","Unknown")

data$hdxb4ac.factor = factor(data$hdxb4ac, levels = c("0","1","9"))
levels(data$hdxb4ac.factor) = c("Absent","Present","Unknown")

data$hdxb4bc.factor = factor(data$hdxb4bc, levels = c("0","1","9"))
levels(data$hdxb4bc.factor) = c("Absent","Present","Unknown")

data$hdxb5ac.factor = factor(data$hdxb5ac, levels = c("0","1","9"))
levels(data$hdxb5ac.factor) = c("Absent","Present","Unknown")

data$hdxb5bc.factor = factor(data$hdxb5bc, levels = c("0","1","9"))
levels(data$hdxb5bc.factor) = c("Absent","Present","Unknown")

data$hdxb0t.factor = factor(data$hdxb0t, levels = c("0","1","9"))
levels(data$hdxb0t.factor) = c("Absent","Present","Unknown")

data$hdxb1at.factor = factor(data$hdxb1at, levels = c("0","1","9"))
levels(data$hdxb1at.factor) = c("Absent","Present","Unknown")

data$hdxb1bt.factor = factor(data$hdxb1bt, levels = c("0","1","9"))
levels(data$hdxb1bt.factor) = c("Absent","Present","Unknown")

data$hdxb2at.factor = factor(data$hdxb2at, levels = c("0","1","9"))
levels(data$hdxb2at.factor) = c("Absent","Present","Unknown")

data$hdxb2bt.factor = factor(data$hdxb2bt, levels = c("0","1","9"))
levels(data$hdxb2bt.factor) = c("Absent","Present","Unknown")

data$hdxb3at.factor = factor(data$hdxb3at, levels = c("0","1","9"))
levels(data$hdxb3at.factor) = c("Absent","Present","Unknown")

data$hdxb3bt.factor = factor(data$hdxb3bt, levels = c("0","1","9"))
levels(data$hdxb3bt.factor) = c("Absent","Present","Unknown")

data$hdxb4at.factor = factor(data$hdxb4at, levels = c("0","1","9"))
levels(data$hdxb4at.factor) = c("Absent","Present","Unknown")

data$hdxb4bt.factor = factor(data$hdxb4bt, levels = c("0","1","9"))
levels(data$hdxb4bt.factor) = c("Absent","Present","Unknown")

data$hdxb5at.factor = factor(data$hdxb5at, levels = c("0","1","9"))
levels(data$hdxb5at.factor) = c("Absent","Present","Unknown")

data$hdxb5bt.factor = factor(data$hdxb5bt, levels = c("0","1","9"))
levels(data$hdxb5bt.factor) = c("Absent","Present","Unknown")

