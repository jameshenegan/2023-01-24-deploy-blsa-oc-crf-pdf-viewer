#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Aging_and_Skin_Inflammation.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_AgiandSkiInf)="CRF Version"
label(data$date_AgiandSkiInf)="Date Completed"
label(data$rash6mo)="Have you had an itchy rash that was coming and going for at least 6 months"
label(data$rash12mo)="Have you had this itchy rash at any time in the past 12 months"
label(data$rashlocation)="Has this rash affected the folds of the elbows behind knees front of ankles under buttocks or around neck ears or eyes"
label(data$eczemadx)="Have you been diagnosed by a doctor with atopic dermatitis also known as eczema"
label(data$dryskinhx)="Do you have a history of generally dry skin"
label(data$usemoisturizer)="Have you regularly used a skin moisturizer emollient over the past year"
label(data$sunexp1hr)="Outdoors for about 1 hr at noon without sunscreen would skin become ink red irritated tender or itchy"
label(data$sunexp7days)="Over the next 7 days, would you then develop a tan or notice your skin becoming darker"
label(data$crf_parent_name_AgiandSkiInf)="CRF Parent Name"
label(data$study_name_AgiandSkiInf)="Study Name"

#Create new variables for factors
data$rash6mo.factor = factor(data$rash6mo, levels = c("0","1"))
levels(data$rash6mo.factor) = c("No","Yes")

data$rash12mo.factor = factor(data$rash12mo, levels = c("0","1"))
levels(data$rash12mo.factor) = c("No","Yes")

data$rashlocation.factor = factor(data$rashlocation, levels = c("0","1"))
levels(data$rashlocation.factor) = c("No","Yes")

data$eczemadx.factor = factor(data$eczemadx, levels = c("0","1"))
levels(data$eczemadx.factor) = c("No","Yes")

data$dryskinhx.factor = factor(data$dryskinhx, levels = c("0","1"))
levels(data$dryskinhx.factor) = c("No","Yes")

data$usemoisturizer.factor = factor(data$usemoisturizer, levels = c("0","1"))
levels(data$usemoisturizer.factor) = c("No","Yes")

data$sunexp1hr.factor = factor(data$sunexp1hr, levels = c("0","1"))
levels(data$sunexp1hr.factor) = c("No","Yes")

data$sunexp7days.factor = factor(data$sunexp7days, levels = c("0","1"))
levels(data$sunexp7days.factor) = c("No","Yes")

