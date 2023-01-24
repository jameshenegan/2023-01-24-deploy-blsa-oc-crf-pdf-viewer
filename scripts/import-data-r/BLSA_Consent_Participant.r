#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Consent_Participant.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_ConPar)="CRF Version"
label(data$obsdate_consents)="Date Completed"
label(data$entered_by)="Staffmember entering this Consent"
label(data$dna)="MAYBE, I wish to be re-contacted if further studies with my samples are considered. After the study has been explained, I will then decide if I want my samples to be included."
label(data$systemrecordid)="ID from MySql Consents Table"
label(data$future_studies2)="YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
label(data$future_studies_shared)="YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
label(data$crf_parent_name_ConPar)="CRF Parent Name"
label(data$study_name_ConPar)="Study Name"

#Create new variables for factors
data$dna.factor = factor(data$dna, levels = c("0","1"))
levels(data$dna.factor) = c("NO - I do NOT consent to the DNA collection.","YES - I consent to the DNA collection.")

data$future_studies2.factor = factor(data$future_studies2, levels = c("0","1"))
levels(data$future_studies2.factor) = c("NO - Specimens and data may NOT be stored and used for future research studies.","YES - Specimens and data may be stored and used for future research studies.")

data$future_studies_shared.factor = factor(data$future_studies_shared, levels = c("0","1"))
levels(data$future_studies_shared.factor) = c("NO - Specimens and data may NOT be shared with other researchers and used by these researchers for future research.","YES - Specimens and data may be shared with other researchers and used by these researchers for future research.")

