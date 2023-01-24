#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Epidermal_Aging.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_EpiAgi)="CRF Version"
label(data$obsdate_d1date)="D1 Date"
label(data$blank_EpiAgi)="Blank"
label(data$testerid_EpiAgi)="Tester ID"
label(data$informedconsent)="Able to provide informed consent"
label(data$adhesiveallergy)="Does not have a known allergy to adhesive tape"
label(data$fragileskin)="Does not have fragile skin"
label(data$skincondition)="Does not have a wound or skin condition prone to excessive scarring"
label(data$smoked)="Has not smoked 3 hours prior to the procedure"
label(data$nocaffeine)="Has not drank any caffeinated beverages 3 hours prior to the procedure"
label(data$notopicalprod)="Has not used any topical products 6 to 8 hrs before procedure"
label(data$notpregnant_EpiAgi)="Is not pregnant"
label(data$eligibilityyn)="Eligibility"
label(data$tester_EpiAgi)="Tester"
label(data$d1testerid)="D1 Tester ID"
label(data$consent_EpiAgi)="Consent reviewed"
label(data$reveligibility)="Eligibility criteria reviewed"
label(data$day1photo)="Day 1 Forearm photographed"
label(data$d2date)="D2 Date"
label(data$d2time)="D2 Time"
label(data$d2ampm)="D2 am pm"
label(data$d2testerid)="D2 Tester ID"
label(data$d2topicalprod)="Has the participant used topical products on the forearm in the last 6-8 hours"
label(data$d2caffeine)="Has the participant drank any caffeine or smoked in the past 3 hours"
label(data$acclimate)="Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
label(data$temproom)="Room temperature"
label(data$humidityrm)="Room Humidity"
label(data$baselinetewl)="Baseline TEWL measurement"
label(data$d3date)="D3 Date"
label(data$d3time)="D3 Time"
label(data$d3ampm)="D3 am pm"
label(data$d3testerid)="D3 Tester ID"
label(data$d3topicalprod)="D3 Has the participant used topical products on the forearm in the last 6-8 hours"
label(data$d3caffeine)="D3 Has the participant drank any caffeine or smoked in the past 3 hours"
label(data$d3acclimate)="D3 Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
label(data$d3rmtemp)="D3 Room temperature"
label(data$d3rmhumidity)="D3 Room Humidity"
label(data$d3tewl)="D3 TEWL measurement"
label(data$day3photo)="D3 Forearm photographed"
label(data$d3tewlm2)="D3 TEWL measurement 2"
label(data$d3tewlm3)="D3 TEWL measurement 3"
label(data$d2tewlm2)="D2 TEWL measurement 2"
label(data$d2tewlm3)="D2 TEWL measurement 3"
label(data$discsize)="Stripping disc size"
label(data$tewlavg)="TEWL average"
label(data$crf_parent_name_EpiAgi)="CRF Parent Name"
label(data$crf_status_EpiAgi)="CRF Status"
label(data$study_name_EpiAgi)="Study Name"

#Create new variables for factors
data$informedconsent.factor = factor(data$informedconsent, levels = c("0","1"))
levels(data$informedconsent.factor) = c("No","Yes")

data$adhesiveallergy.factor = factor(data$adhesiveallergy, levels = c("0","1"))
levels(data$adhesiveallergy.factor) = c("No","Yes")

data$fragileskin.factor = factor(data$fragileskin, levels = c("0","1"))
levels(data$fragileskin.factor) = c("No","Yes")

data$skincondition.factor = factor(data$skincondition, levels = c("0","1"))
levels(data$skincondition.factor) = c("No","Yes")

data$smoked.factor = factor(data$smoked, levels = c("0","1"))
levels(data$smoked.factor) = c("No","Yes")

data$nocaffeine.factor = factor(data$nocaffeine, levels = c("0","1"))
levels(data$nocaffeine.factor) = c("No","Yes")

data$notopicalprod.factor = factor(data$notopicalprod, levels = c("0","1"))
levels(data$notopicalprod.factor) = c("No","Yes")

data$notpregnant_EpiAgi.factor = factor(data$notpregnant_EpiAgi, levels = c("0","1","2"))
levels(data$notpregnant_EpiAgi.factor) = c("No","Yes","nan")

data$eligibilityyn.factor = factor(data$eligibilityyn, levels = c("0","1"))
levels(data$eligibilityyn.factor) = c("No","Yes")

data$consent_EpiAgi.factor = factor(data$consent_EpiAgi, levels = c("0","1"))
levels(data$consent_EpiAgi.factor) = c("No","Yes")

data$reveligibility.factor = factor(data$reveligibility, levels = c("0","1"))
levels(data$reveligibility.factor) = c("No","Yes")

data$day1photo.factor = factor(data$day1photo, levels = c("1","2"))
levels(data$day1photo.factor) = c("Left","Right")

data$d2ampm.factor = factor(data$d2ampm, levels = c("1","2"))
levels(data$d2ampm.factor) = c("Am","Pm")

data$d2topicalprod.factor = factor(data$d2topicalprod, levels = c("0","1"))
levels(data$d2topicalprod.factor) = c("No","Yes")

data$d2caffeine.factor = factor(data$d2caffeine, levels = c("0","1"))
levels(data$d2caffeine.factor) = c("No","Yes")

data$acclimate.factor = factor(data$acclimate, levels = c("0","1"))
levels(data$acclimate.factor) = c("No","Yes")

data$d3ampm.factor = factor(data$d3ampm, levels = c("1","2"))
levels(data$d3ampm.factor) = c("Am","Pm")

data$d3topicalprod.factor = factor(data$d3topicalprod, levels = c("0","1"))
levels(data$d3topicalprod.factor) = c("No","Yes")

data$d3caffeine.factor = factor(data$d3caffeine, levels = c("0","1"))
levels(data$d3caffeine.factor) = c("No","Yes")

data$d3acclimate.factor = factor(data$d3acclimate, levels = c("0","1"))
levels(data$d3acclimate.factor) = c("No","Yes")

data$day3photo.factor = factor(data$day3photo, levels = c("0","1"))
levels(data$day3photo.factor) = c("No","Yes")

data$discsize.factor = factor(data$discsize, levels = c("1","2"))
levels(data$discsize.factor) = c("D-Squame size 1.1875â€_x009d_ (D102 Large)","D-Squame size 0.875â€_x009d_ (D100 Standard)")

