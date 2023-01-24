#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Hand_Photo.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_HanPho)="CRF Version"
label(data$obsdate_hphdate)="Date Completed"
label(data$hphqdat)="Date Completed"
label(data$blank_HanPho)="Blank"
label(data$hphqtid)="Tester ID"
label(data$hphdone)="Hand Photo which hand"
label(data$hphrnd)="Reason not done"
label(data$hphqa1)="R resolution maximized"
label(data$hphqb1)="L resolution maximized"
label(data$hphqa2)="R background non reflective"
label(data$hphqb2)="L background non reflective"
label(data$hphqa3)="R ID and visit clearly legible"
label(data$hphqb3)="L ID and visit clearly legible"
label(data$hphqa4)="R fingers slightly spread apart and thumb slightly extended"
label(data$hphqb4)="L fingers slightly spread apart and thumb slightly extended"
label(data$hphqa5)="R are all DIPs visible in the photo"
label(data$hphqb5)="L are all DIPs visible in the photo"
label(data$hphqa6)="R Is the wrist visible"
label(data$hphqb6)="L Is the wrist visible"
label(data$hphitd)="Tester ID"
label(data$hpha0b)="R Bony prominence wrist"
label(data$hpha1ab)="R Bony prominence CMC 1st"
label(data$hpha1bb)="R Bony prominence IP 1st"
label(data$hpha1cb)="R Bony prominence MCP 1st"
label(data$hpha2ab)="R Bony prominence DIP 2nd"
label(data$hpha2bb)="R Bony prominence PIP 2nd"
label(data$hpha2cb)="R Bony prominence MCP 2nd"
label(data$hpha3ab)="R Bony prominence DIP 3rd"
label(data$hpha3bb)="R Bony prominenceP IP 3rd"
label(data$hpha3cb)="R Bony prominence MCP 3rd"
label(data$hpha4ab)="R Bony prominence DIP 4th"
label(data$hpha4bb)="R Bony prominence PIP 4th"
label(data$hpha4cb)="R Bony prominence MCP 4th"
label(data$hpha5ab)="R Bony prominence DIP 5th"
label(data$hpha5bb)="R Bony prominence PIP 5th"
label(data$hpha5cb)="R Bony prominence MCP 5th"
label(data$hpha0e)="R Soft Tissue Enlargement"
label(data$hpha1ae)="R Soft Tissue Enlargement CMC 1st"
label(data$hpha1be)="R Soft Tissue Enlargement IP 1st"
label(data$hpha1ce)="R Soft Tissue Enlargement MCP 1st"
label(data$hpha2ae)="R Soft Tissue Enlargement DIP 2nd"
label(data$hpha2be)="R Soft Tissue Enlargement PIP 2nd"
label(data$hpha2ce)="R Soft Tissue Enlargement MCP 2nd"
label(data$hpha3ae)="R Soft Tissue Enlargement DIP 3rd"
label(data$hpha3be)="R Soft Tissue Enlargement PIP 3rd"
label(data$hpha3ce)="R Soft Tissue Enlargement MCP 3rd"
label(data$hpha4ae)="R Soft Tissue Enlargement DIP 4th"
label(data$hpha4be)="R Soft Tissue Enlargement PIP 4th"
label(data$hpha4ce)="R Soft Tissue Enlargement MCP 4th"
label(data$hpha5ae)="R Soft Tissue Enlargement DIP 5th"
label(data$hpha5be)="R Soft Tissue Enlargement PIP 5th"
label(data$hpha5ce)="R Soft Tissue Enlargement MCP 5th"
label(data$hpha0d)="R Deformity"
label(data$hpha1ad)="R Deformity CMC1st"
label(data$hpha1bd)="R Deformity IP 1st"
label(data$hpha1cd)="R Deformity MCP 1st"
label(data$hpha2ad)="R Deformity DIP 2nd"
label(data$hpha2bd)="R Deformity PIP 2nd"
label(data$hpha2cd)="R Deformity MCP 2nd"
label(data$hpha3ad)="R Deformity DIP 3rd"
label(data$hpha3bd)="R Deformity PIP 3rd"
label(data$hpha3cd)="R Deformity MCP 3rd"
label(data$hpha4ad)="R Deformity DIP 4th"
label(data$hpha4bd)="R Deformity PIP 4th"
label(data$hpha4cd)="R Deformity MCP 4th"
label(data$hpha5ad)="R Deformity DIP 5th"
label(data$hpha5bd)="R Deformity PIP 5th"
label(data$hpha5cd)="R Deformity MCP 5th"
label(data$hphb0b)="L Bony prominence wrist"
label(data$hphb1ab)="L Bony prominence CMC 1st"
label(data$hphb1bb)="L Bony prominence IP 1st"
label(data$hphb1cb)="L Bony prominence MCP 1st"
label(data$hphb2ab)="L Bony prominence DIP 2nd"
label(data$hphb2bb)="L Bony prominence PIP 2nd"
label(data$hphb2cb)="L Bony prominence MCP 2nd"
label(data$hphb3ab)="L Bony prominence DIP 3rd"
label(data$hphb3bb)="L Bony prominenceP IP 3rd"
label(data$hphb3cb)="L Bony prominence MCP 3rd"
label(data$hphb4ab)="L Bony prominence DIP 4th"
label(data$hphb4bb)="L Bony prominence PIP 4th"
label(data$hphb4cb)="L Bony prominence MCP 4th"
label(data$hphb5ab)="L Bony prominence DIP 5th"
label(data$hphb5bb)="L Bony prominence PIP 5th"
label(data$hphb5cb)="L Bony prominence MCP 5th"
label(data$hphb0e)="L Soft Tissue Enlargement"
label(data$hphb1ae)="L Soft Tissue Enlargement CMC 1st"
label(data$hphb1be)="L Soft Tissue Enlargement IP 1st"
label(data$hphb1ce)="L Soft Tissue Enlargement MCP 1st"
label(data$hphb2ae)="L Soft Tissue Enlargement DIP 2nd"
label(data$hphb2be)="L Soft Tissue Enlargement PIP 2nd"
label(data$hphb2ce)="L Soft Tissue Enlargement MCP 2nd"
label(data$hphb3ae)="L Soft Tissue Enlargement DIP 3rd"
label(data$hphb3be)="L Soft Tissue Enlargement PIP 3rd"
label(data$hphb3ce)="L Soft Tissue Enlargement MCP 3rd"
label(data$hphb4ae)="L Soft Tissue Enlargement DIP 4th"
label(data$hphb4be)="L Soft Tissue Enlargement PIP 4th"
label(data$hphb4ce)="L Soft Tissue Enlargement MCP 4th"
label(data$hphb5ae)="L Soft Tissue Enlargement DIP 5th"
label(data$hphb5be)="L Soft Tissue Enlargement PIP 5th"
label(data$hphb5ce)="L Soft Tissue Enlargement MCP 5th"
label(data$hphb0d)="L Deformity"
label(data$hphb1ad)="L Deformity CMC1st"
label(data$hphb1bd)="L Deformity IP 1st"
label(data$hphb1cd)="L Deformity MCP 1st"
label(data$hphb2ad)="L Deformity DIP 2nd"
label(data$hphb2bd)="L Deformity PIP 2nd"
label(data$hphb2cd)="L Deformity MCP 2nd"
label(data$hphb3ad)="L Deformity DIP 3rd"
label(data$hphb3bd)="L Deformity PIP 3rd"
label(data$hphb3cd)="L Deformity MCP 3rd"
label(data$hphb4ad)="L Deformity DIP 4th"
label(data$hphb4bd)="L Deformity PIP 4th"
label(data$hphb4cd)="L Deformity MCP 4th"
label(data$hphb5ad)="L Deformity DIP 5th"
label(data$hphb5bd)="L Deformity PIP 5th"
label(data$hphb5cd)="L Deformity MCP 5th"
label(data$auto_id_HanPho)="Unique Teleform Number"
label(data$crf_parent_name_HanPho)="CRF Parent Name"
label(data$study_name_HanPho)="Study Name"

#Create new variables for factors
data$hphdone.factor = factor(data$hphdone, levels = c("0","1","2","3"))
levels(data$hphdone.factor) = c("None","Both","Left only","Right only")

data$hphrnd.factor = factor(data$hphrnd, levels = c("555","666","888","999"))
levels(data$hphrnd.factor) = c("Physical problems","Cognitive problems","Refused","Technical problems")

data$hphqa1.factor = factor(data$hphqa1, levels = c("0","1"))
levels(data$hphqa1.factor) = c("No","Yes")

data$hphqb1.factor = factor(data$hphqb1, levels = c("0","1"))
levels(data$hphqb1.factor) = c("No","Yes")

data$hphqa2.factor = factor(data$hphqa2, levels = c("0","1"))
levels(data$hphqa2.factor) = c("No","Yes")

data$hphqb2.factor = factor(data$hphqb2, levels = c("0","1"))
levels(data$hphqb2.factor) = c("No","Yes")

data$hphqa3.factor = factor(data$hphqa3, levels = c("0","1"))
levels(data$hphqa3.factor) = c("No","Yes")

data$hphqb3.factor = factor(data$hphqb3, levels = c("0","1"))
levels(data$hphqb3.factor) = c("No","Yes")

data$hphqa4.factor = factor(data$hphqa4, levels = c("0","1"))
levels(data$hphqa4.factor) = c("No","Yes")

data$hphqb4.factor = factor(data$hphqb4, levels = c("0","1"))
levels(data$hphqb4.factor) = c("No","Yes")

data$hphqa5.factor = factor(data$hphqa5, levels = c("0","1"))
levels(data$hphqa5.factor) = c("No","Yes")

data$hphqb5.factor = factor(data$hphqb5, levels = c("0","1"))
levels(data$hphqb5.factor) = c("No","Yes")

data$hphqa6.factor = factor(data$hphqa6, levels = c("0","1"))
levels(data$hphqa6.factor) = c("No","Yes")

data$hphqb6.factor = factor(data$hphqb6, levels = c("0","1"))
levels(data$hphqb6.factor) = c("No","Yes")

data$hpha0b.factor = factor(data$hpha0b, levels = c("0","1","2","9"))
levels(data$hpha0b.factor) = c("Absent","Possible","Present","Unknown")

data$hpha1ab.factor = factor(data$hpha1ab, levels = c("0","1","2","9"))
levels(data$hpha1ab.factor) = c("Absent","Possible","Present","Unknown")

data$hpha1bb.factor = factor(data$hpha1bb, levels = c("0","1","2","9"))
levels(data$hpha1bb.factor) = c("Absent","Possible","Present","Unknown")

data$hpha1cb.factor = factor(data$hpha1cb, levels = c("0","1","2","9"))
levels(data$hpha1cb.factor) = c("Absent","Possible","Present","Unknown")

data$hpha2ab.factor = factor(data$hpha2ab, levels = c("0","1","2","9"))
levels(data$hpha2ab.factor) = c("Absent","Possible","Present","Unknown")

data$hpha2bb.factor = factor(data$hpha2bb, levels = c("0","1","2","9"))
levels(data$hpha2bb.factor) = c("Absent","Possible","Present","Unknown")

data$hpha2cb.factor = factor(data$hpha2cb, levels = c("0","1","2","9"))
levels(data$hpha2cb.factor) = c("Absent","Possible","Present","Unknown")

data$hpha3ab.factor = factor(data$hpha3ab, levels = c("0","1","2","9"))
levels(data$hpha3ab.factor) = c("Absent","Possible","Present","Unknown")

data$hpha3bb.factor = factor(data$hpha3bb, levels = c("0","1","2","9"))
levels(data$hpha3bb.factor) = c("Absent","Possible","Present","Unknown")

data$hpha3cb.factor = factor(data$hpha3cb, levels = c("0","1","2","9"))
levels(data$hpha3cb.factor) = c("Absent","Possible","Present","Unknown")

data$hpha4ab.factor = factor(data$hpha4ab, levels = c("0","1","2","9"))
levels(data$hpha4ab.factor) = c("Absent","Possible","Present","Unknown")

data$hpha4bb.factor = factor(data$hpha4bb, levels = c("0","1","2","9"))
levels(data$hpha4bb.factor) = c("Absent","Possible","Present","Unknown")

data$hpha4cb.factor = factor(data$hpha4cb, levels = c("0","1","2","9"))
levels(data$hpha4cb.factor) = c("Absent","Possible","Present","Unknown")

data$hpha5ab.factor = factor(data$hpha5ab, levels = c("0","1","2","9"))
levels(data$hpha5ab.factor) = c("Absent","Possible","Present","Unknown")

data$hpha5bb.factor = factor(data$hpha5bb, levels = c("0","1","2","9"))
levels(data$hpha5bb.factor) = c("Absent","Possible","Present","Unknown")

data$hpha5cb.factor = factor(data$hpha5cb, levels = c("0","1","2","9"))
levels(data$hpha5cb.factor) = c("Absent","Possible","Present","Unknown")

data$hpha0e.factor = factor(data$hpha0e, levels = c("0","1","2","9"))
levels(data$hpha0e.factor) = c("Absent","Possible","Present","Unknown")

data$hpha1ae.factor = factor(data$hpha1ae, levels = c("0","1","2","9"))
levels(data$hpha1ae.factor) = c("Absent","Possible","Present","Unknown")

data$hpha1be.factor = factor(data$hpha1be, levels = c("0","1","2","9"))
levels(data$hpha1be.factor) = c("Absent","Possible","Present","Unknown")

data$hpha1ce.factor = factor(data$hpha1ce, levels = c("0","1","2","9"))
levels(data$hpha1ce.factor) = c("Absent","Possible","Present","Unknown")

data$hpha2ae.factor = factor(data$hpha2ae, levels = c("0","1","2","9"))
levels(data$hpha2ae.factor) = c("Absent","Possible","Present","Unknown")

data$hpha2be.factor = factor(data$hpha2be, levels = c("0","1","2","9"))
levels(data$hpha2be.factor) = c("Absent","Possible","Present","Unknown")

data$hpha2ce.factor = factor(data$hpha2ce, levels = c("0","1","2","9"))
levels(data$hpha2ce.factor) = c("Absent","Possible","Present","Unknown")

data$hpha3ae.factor = factor(data$hpha3ae, levels = c("0","1","2","9"))
levels(data$hpha3ae.factor) = c("Absent","Possible","Present","Unknown")

data$hpha3be.factor = factor(data$hpha3be, levels = c("0","1","2","9"))
levels(data$hpha3be.factor) = c("Absent","Possible","Present","Unknown")

data$hpha3ce.factor = factor(data$hpha3ce, levels = c("0","1","2","9"))
levels(data$hpha3ce.factor) = c("Absent","Possible","Present","Unknown")

data$hpha4ae.factor = factor(data$hpha4ae, levels = c("0","1","2","9"))
levels(data$hpha4ae.factor) = c("Absent","Possible","Present","Unknown")

data$hpha4be.factor = factor(data$hpha4be, levels = c("0","1","2","9"))
levels(data$hpha4be.factor) = c("Absent","Possible","Present","Unknown")

data$hpha4ce.factor = factor(data$hpha4ce, levels = c("0","1","2","9"))
levels(data$hpha4ce.factor) = c("Absent","Possible","Present","Unknown")

data$hpha5ae.factor = factor(data$hpha5ae, levels = c("0","1","2","9"))
levels(data$hpha5ae.factor) = c("Absent","Possible","Present","Unknown")

data$hpha5be.factor = factor(data$hpha5be, levels = c("0","1","2","9"))
levels(data$hpha5be.factor) = c("Absent","Possible","Present","Unknown")

data$hpha5ce.factor = factor(data$hpha5ce, levels = c("0","1","2","9"))
levels(data$hpha5ce.factor) = c("Absent","Possible","Present","Unknown")

data$hpha0d.factor = factor(data$hpha0d, levels = c("0","1","2","9"))
levels(data$hpha0d.factor) = c("Absent","Possible","Present","Unknown")

data$hpha1ad.factor = factor(data$hpha1ad, levels = c("0","1","2","9"))
levels(data$hpha1ad.factor) = c("Absent","Possible","Present","Unknown")

data$hpha1bd.factor = factor(data$hpha1bd, levels = c("0","1","2","9"))
levels(data$hpha1bd.factor) = c("Absent","Possible","Present","Unknown")

data$hpha1cd.factor = factor(data$hpha1cd, levels = c("0","1","2","9"))
levels(data$hpha1cd.factor) = c("Absent","Possible","Present","Unknown")

data$hpha2ad.factor = factor(data$hpha2ad, levels = c("0","1","2","9"))
levels(data$hpha2ad.factor) = c("Absent","Possible","Present","Unknown")

data$hpha2bd.factor = factor(data$hpha2bd, levels = c("0","1","2","9"))
levels(data$hpha2bd.factor) = c("Absent","Possible","Present","Unknown")

data$hpha2cd.factor = factor(data$hpha2cd, levels = c("0","1","2","9"))
levels(data$hpha2cd.factor) = c("Absent","Possible","Present","Unknown")

data$hpha3ad.factor = factor(data$hpha3ad, levels = c("0","1","2","9"))
levels(data$hpha3ad.factor) = c("Absent","Possible","Present","Unknown")

data$hpha3bd.factor = factor(data$hpha3bd, levels = c("0","1","2","9"))
levels(data$hpha3bd.factor) = c("Absent","Possible","Present","Unknown")

data$hpha3cd.factor = factor(data$hpha3cd, levels = c("0","1","2","9"))
levels(data$hpha3cd.factor) = c("Absent","Possible","Present","Unknown")

data$hpha4ad.factor = factor(data$hpha4ad, levels = c("0","1","2","9"))
levels(data$hpha4ad.factor) = c("Absent","Possible","Present","Unknown")

data$hpha4bd.factor = factor(data$hpha4bd, levels = c("0","1","2","9"))
levels(data$hpha4bd.factor) = c("Absent","Possible","Present","Unknown")

data$hpha4cd.factor = factor(data$hpha4cd, levels = c("0","1","2","9"))
levels(data$hpha4cd.factor) = c("Absent","Possible","Present","Unknown")

data$hpha5ad.factor = factor(data$hpha5ad, levels = c("0","1","2","9"))
levels(data$hpha5ad.factor) = c("Absent","Possible","Present","Unknown")

data$hpha5bd.factor = factor(data$hpha5bd, levels = c("0","1","2","9"))
levels(data$hpha5bd.factor) = c("Absent","Possible","Present","Unknown")

data$hpha5cd.factor = factor(data$hpha5cd, levels = c("0","1","2","9"))
levels(data$hpha5cd.factor) = c("Absent","Possible","Present","Unknown")

data$hphb0b.factor = factor(data$hphb0b, levels = c("0","1","2","9"))
levels(data$hphb0b.factor) = c("Absent","Possible","Present","Unknown")

data$hphb1ab.factor = factor(data$hphb1ab, levels = c("0","1","2","9"))
levels(data$hphb1ab.factor) = c("Absent","Possible","Present","Unknown")

data$hphb1bb.factor = factor(data$hphb1bb, levels = c("0","1","2","9"))
levels(data$hphb1bb.factor) = c("Absent","Possible","Present","Unknown")

data$hphb1cb.factor = factor(data$hphb1cb, levels = c("0","1","2","9"))
levels(data$hphb1cb.factor) = c("Absent","Possible","Present","Unknown")

data$hphb2ab.factor = factor(data$hphb2ab, levels = c("0","1","2","9"))
levels(data$hphb2ab.factor) = c("Absent","Possible","Present","Unknown")

data$hphb2bb.factor = factor(data$hphb2bb, levels = c("0","1","2","9"))
levels(data$hphb2bb.factor) = c("Absent","Possible","Present","Unknown")

data$hphb2cb.factor = factor(data$hphb2cb, levels = c("0","1","2","9"))
levels(data$hphb2cb.factor) = c("Absent","Possible","Present","Unknown")

data$hphb3ab.factor = factor(data$hphb3ab, levels = c("0","1","2","9"))
levels(data$hphb3ab.factor) = c("Absent","Possible","Present","Unknown")

data$hphb3bb.factor = factor(data$hphb3bb, levels = c("0","1","2","9"))
levels(data$hphb3bb.factor) = c("Absent","Possible","Present","Unknown")

data$hphb3cb.factor = factor(data$hphb3cb, levels = c("0","1","2","9"))
levels(data$hphb3cb.factor) = c("Absent","Possible","Present","Unknown")

data$hphb4ab.factor = factor(data$hphb4ab, levels = c("0","1","2","9"))
levels(data$hphb4ab.factor) = c("Absent","Possible","Present","Unknown")

data$hphb4bb.factor = factor(data$hphb4bb, levels = c("0","1","2","9"))
levels(data$hphb4bb.factor) = c("Absent","Possible","Present","Unknown")

data$hphb4cb.factor = factor(data$hphb4cb, levels = c("0","1","2","9"))
levels(data$hphb4cb.factor) = c("Absent","Possible","Present","Unknown")

data$hphb5ab.factor = factor(data$hphb5ab, levels = c("0","1","2","9"))
levels(data$hphb5ab.factor) = c("Absent","Possible","Present","Unknown")

data$hphb5bb.factor = factor(data$hphb5bb, levels = c("0","1","2","9"))
levels(data$hphb5bb.factor) = c("Absent","Possible","Present","Unknown")

data$hphb5cb.factor = factor(data$hphb5cb, levels = c("0","1","2","9"))
levels(data$hphb5cb.factor) = c("Absent","Possible","Present","Unknown")

data$hphb0e.factor = factor(data$hphb0e, levels = c("0","1","2","9"))
levels(data$hphb0e.factor) = c("Absent","Possible","Present","Unknown")

data$hphb1ae.factor = factor(data$hphb1ae, levels = c("0","1","2","9"))
levels(data$hphb1ae.factor) = c("Absent","Possible","Present","Unknown")

data$hphb1be.factor = factor(data$hphb1be, levels = c("0","1","2","9"))
levels(data$hphb1be.factor) = c("Absent","Possible","Present","Unknown")

data$hphb1ce.factor = factor(data$hphb1ce, levels = c("0","1","2","9"))
levels(data$hphb1ce.factor) = c("Absent","Possible","Present","Unknown")

data$hphb2ae.factor = factor(data$hphb2ae, levels = c("0","1","2","9"))
levels(data$hphb2ae.factor) = c("Absent","Possible","Present","Unknown")

data$hphb2be.factor = factor(data$hphb2be, levels = c("0","1","2","9"))
levels(data$hphb2be.factor) = c("Absent","Possible","Present","Unknown")

data$hphb2ce.factor = factor(data$hphb2ce, levels = c("0","1","2","9"))
levels(data$hphb2ce.factor) = c("Absent","Possible","Present","Unknown")

data$hphb3ae.factor = factor(data$hphb3ae, levels = c("0","1","2","9"))
levels(data$hphb3ae.factor) = c("Absent","Possible","Present","Unknown")

data$hphb3be.factor = factor(data$hphb3be, levels = c("0","1","2","9"))
levels(data$hphb3be.factor) = c("Absent","Possible","Present","Unknown")

data$hphb3ce.factor = factor(data$hphb3ce, levels = c("0","1","2","9"))
levels(data$hphb3ce.factor) = c("Absent","Possible","Present","Unknown")

data$hphb4ae.factor = factor(data$hphb4ae, levels = c("0","1","2","9"))
levels(data$hphb4ae.factor) = c("Absent","Possible","Present","Unknown")

data$hphb4be.factor = factor(data$hphb4be, levels = c("0","1","2","9"))
levels(data$hphb4be.factor) = c("Absent","Possible","Present","Unknown")

data$hphb4ce.factor = factor(data$hphb4ce, levels = c("0","1","2","9"))
levels(data$hphb4ce.factor) = c("Absent","Possible","Present","Unknown")

data$hphb5ae.factor = factor(data$hphb5ae, levels = c("0","1","2","9"))
levels(data$hphb5ae.factor) = c("Absent","Possible","Present","Unknown")

data$hphb5be.factor = factor(data$hphb5be, levels = c("0","1","2","9"))
levels(data$hphb5be.factor) = c("Absent","Possible","Present","Unknown")

data$hphb5ce.factor = factor(data$hphb5ce, levels = c("0","1","2","9"))
levels(data$hphb5ce.factor) = c("Absent","Possible","Present","Unknown")

data$hphb0d.factor = factor(data$hphb0d, levels = c("0","1","2","9"))
levels(data$hphb0d.factor) = c("Absent","Possible","Present","Unknown")

data$hphb1ad.factor = factor(data$hphb1ad, levels = c("0","1","2","9"))
levels(data$hphb1ad.factor) = c("Absent","Possible","Present","Unknown")

data$hphb1bd.factor = factor(data$hphb1bd, levels = c("0","1","2","9"))
levels(data$hphb1bd.factor) = c("Absent","Possible","Present","Unknown")

data$hphb1cd.factor = factor(data$hphb1cd, levels = c("0","1","2","9"))
levels(data$hphb1cd.factor) = c("Absent","Possible","Present","Unknown")

data$hphb2ad.factor = factor(data$hphb2ad, levels = c("0","1","2","9"))
levels(data$hphb2ad.factor) = c("Absent","Possible","Present","Unknown")

data$hphb2bd.factor = factor(data$hphb2bd, levels = c("0","1","2","9"))
levels(data$hphb2bd.factor) = c("Absent","Possible","Present","Unknown")

data$hphb2cd.factor = factor(data$hphb2cd, levels = c("0","1","2","9"))
levels(data$hphb2cd.factor) = c("Absent","Possible","Present","Unknown")

data$hphb3ad.factor = factor(data$hphb3ad, levels = c("0","1","2","9"))
levels(data$hphb3ad.factor) = c("Absent","Possible","Present","Unknown")

data$hphb3bd.factor = factor(data$hphb3bd, levels = c("0","1","2","9"))
levels(data$hphb3bd.factor) = c("Absent","Possible","Present","Unknown")

data$hphb3cd.factor = factor(data$hphb3cd, levels = c("0","1","2","9"))
levels(data$hphb3cd.factor) = c("Absent","Possible","Present","Unknown")

data$hphb4ad.factor = factor(data$hphb4ad, levels = c("0","1","2","9"))
levels(data$hphb4ad.factor) = c("Absent","Possible","Present","Unknown")

data$hphb4bd.factor = factor(data$hphb4bd, levels = c("0","1","2","9"))
levels(data$hphb4bd.factor) = c("Absent","Possible","Present","Unknown")

data$hphb4cd.factor = factor(data$hphb4cd, levels = c("0","1","2","9"))
levels(data$hphb4cd.factor) = c("Absent","Possible","Present","Unknown")

data$hphb5ad.factor = factor(data$hphb5ad, levels = c("0","1","2","9"))
levels(data$hphb5ad.factor) = c("Absent","Possible","Present","Unknown")

data$hphb5bd.factor = factor(data$hphb5bd, levels = c("0","1","2","9"))
levels(data$hphb5bd.factor) = c("Absent","Possible","Present","Unknown")

data$hphb5cd.factor = factor(data$hphb5cd, levels = c("0","1","2","9"))
levels(data$hphb5cd.factor) = c("Absent","Possible","Present","Unknown")

