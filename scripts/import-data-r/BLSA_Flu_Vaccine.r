#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Flu_Vaccine.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_FluVac)="CRF Version"
label(data$obsdate_datecompleted_FluVac)="Date Completed"
label(data$blank_FluVac)="Blank Form"
label(data$testerid_FluVac)="Tester ID"
label(data$hla2a)="Is the participant eligibility beed determined as HLA-2A"
label(data$consent_FluVac)="Is the participant able to provide consent"
label(data$age_FluVac)="Is the participant 70 to 85 yrs of age"
label(data$agreefollowup)="Does the participant agree to the blood draws and follow up visits"
label(data$welltoday)="Does the participant report feeling well today"
label(data$notill)="Participant currently without evidence of illness"
label(data$eggallergy)="Is the participant without allergy to eggs"
label(data$vaccinereaction)="Does the participant deny any previous serious reactions to the flu vaccine"
label(data$reaction2yr)="Is the past 2 years has the participant had a reaction to the flu vaccine"
label(data$toldnovaccine)="Has the participant been told not to have flu vaccine"
label(data$guillainbarre)="Is the participant without evidence or history of Guillain-Barre syndrome"
label(data$nomci_dementia)="Is the participant without MCI or Dementia diagnosis"
label(data$nofluvac8mo)="Did the participant receive a flu vaccine more than 8 months ago"
label(data$afebrilepastmo)="Has the participant been afebrile with no reports of upper respiratory infection in the past month"
label(data$immunosuppressant)="Does the participant deny using immunosuppressant medications every day"
label(data$dailyantiinflmeds)="Does the participant deny using anti-inflammatory medications every day?Review current medication list"
label(data$ca_treatment)="Does the participant deny current treatment for cancer"
label(data$anemic)="Participant is not annemic per current visit CBC"
label(data$eligibility_FluVac)="Participant satisfies all eligibility criteria"
label(data$completedby)="Name of person completing eligibility"
label(data$day0date)="Day 0 Date"
label(data$day0reveligib)="Day 0 Confirm eligibility criteria and review side effects"
label(data$day0temp)="Day 0 Body temperature"
label(data$day0pulse)="Day 0 Pulse"
label(data$day0resp)="Day 0 Respirations"
label(data$day0bpsystolic)="Day 0 systolic BP"
label(data$day0bpdiastolic)="Day 0 diastolic BP"
label(data$day0fasting)="Day 0 Fasting"
label(data$day0blood)="Day 0 blood draw"
label(data$day0bldrattempts)="Day 0 Blood draw attempts"
label(data$d0locationrl)="Day 0 Location RL"
label(data$d0locationspecify)="Day 0 Location specify"
label(data$day0bldrawtime)="Day 0 Blood draw time"
label(data$day0bldrampm)="Day 0 Blood draw Am Pm"
label(data$day0bldrcomment)="Day 0 Blood draw comment"
label(data$vaccinetype)="Flu Vaccine type"
label(data$vaccinelotno)="Flu Vaccine Lot number"
label(data$dispensedby)="Flu Vaccine dispensed by"
label(data$dispenseddate)="Date Flu vaccine dispensed"
label(data$testerid2)="Flu vaccine given TID"
label(data$admvaccine)="Flu Vaccine injection site"
label(data$instructions)="Post flu vaccine instructions provided"
label(data$day7date)="Day 7 Date"
label(data$day7temp)="Day 7 Body temperature"
label(data$day7pulse)="Day 7 Pulse"
label(data$day7resp)="Day 7 Respirations"
label(data$day7bpsystolic)="Day 7 systolic BP"
label(data$day7bpdiastolic)="Day 7 diastolic BP"
label(data$day7fasting)="Day 7 Fasting"
label(data$day7blood)="Day 7 blood draw"
label(data$day7bldrattempts)="Day 7 Blood draw attempts"
label(data$d7locationrl)="Day 7 Location RL"
label(data$d7locationspecify)="Day 7 Location specify"
label(data$day7bldrawtime)="Day 7 Blood draw time"
label(data$day7bldrampm)="Day 7 Blood draw Am Pm"
label(data$day7bldrcomment)="Day 7 Blood draw comment"
label(data$d7chestpain)="Day 71 Chest Pain"
label(data$d7chestpainstill)="Day 7 Chest Pain still present"
label(data$d7vomiting)="Day 7 Vomiting"
label(data$d7vomitingstill)="Day 7 Vomiting still present"
label(data$d7headache)="Day 7 Headache"
label(data$d7headachestill)="Day 7 Headache still present"
label(data$d7sob)="Day 7 shortness of breath"
label(data$d7sobstill)="Day 7 SOB still present"
label(data$d7fever)="Day 7 Fever aches and or chills"
label(data$d7feverstill)="Day 7 Fever aches and or chills still present"
label(data$d7cough)="Day 7 Cough"
label(data$d7coughstill)="Day 7 Cough still present"
label(data$d7fatigue)="Day 7 severe fatigue"
label(data$d7fatiguestill)="Day 7 severe fatigue still present"
label(data$d7hospital)="Day 7 in the past week or since you last talked to staff have you been hospitalized or had an ER visit"
label(data$d7comment)="Day 7 comments"
label(data$day21date)="Day 21 Date"
label(data$day21temp)="Day 21 Body temperature"
label(data$day21pulse)="Day 21 Pulse"
label(data$day21resp)="Day 21 Respirations"
label(data$day21bpsystolic)="Day 21 systolic BP"
label(data$day21bpdiastolic)="Day 21 diastolic BP"
label(data$day21fasting)="Day 21 Fasting"
label(data$day21blood)="Day 21 blood draw"
label(data$day21bldrattempts)="Day 21 Blood draw attempts"
label(data$d21locationrl)="Day 21 Location RL"
label(data$d21locationspecify)="Day 21 Location specify"
label(data$day21bldrawtime)="Day 21 Blood draw time"
label(data$day21bldrampm)="Day 21 Blood draw Am Pm"
label(data$day21bldrcomment)="Day 21 Blood draw comment"
label(data$d21chestpain)="Day 21 Chest Pain"
label(data$d21chestpainstill)="Day 21 Chest Pain still present"
label(data$d21vomiting)="Day 21 Vomiting"
label(data$d21vomitingstill)="Day 21 Vomiting still present"
label(data$d21headache)="Day 21 Headache"
label(data$d21headachestill)="Day 21 Headache still present"
label(data$d21sob)="Day 21 shortness of breath"
label(data$d21sobstill)="Day 21 SOB still present"
label(data$d21fever)="Day 21 Fever aches and or chills"
label(data$d21feverstill)="Day 21 Fever aches and or chills still present"
label(data$d21cough)="Day 21 Cough"
label(data$d21coughstill)="Day 21 Cough still present"
label(data$d21fatigue)="Day 21 severe fatigue"
label(data$d21fatiguestill)="Day 21 severe fatigue still present"
label(data$d21hospital)="Day 21 in the past week or since you last talked to staff have you been hospitalized or had an ER visit"
label(data$d21comment)="Day 21 comments"
label(data$crf_parent_name_FluVac)="CRF Parent Name"
label(data$study_name_FluVac)="Study Name"

#Create new variables for factors
data$hla2a.factor = factor(data$hla2a, levels = c("0","1"))
levels(data$hla2a.factor) = c("No","Yes")

data$consent_FluVac.factor = factor(data$consent_FluVac, levels = c("0","1"))
levels(data$consent_FluVac.factor) = c("No","Yes")

data$age_FluVac.factor = factor(data$age_FluVac, levels = c("0","1"))
levels(data$age_FluVac.factor) = c("No","Yes")

data$agreefollowup.factor = factor(data$agreefollowup, levels = c("0","1"))
levels(data$agreefollowup.factor) = c("No","Yes")

data$welltoday.factor = factor(data$welltoday, levels = c("0","1"))
levels(data$welltoday.factor) = c("No","Yes")

data$notill.factor = factor(data$notill, levels = c("0","1"))
levels(data$notill.factor) = c("No","Yes")

data$eggallergy.factor = factor(data$eggallergy, levels = c("0","1"))
levels(data$eggallergy.factor) = c("No","Yes")

data$vaccinereaction.factor = factor(data$vaccinereaction, levels = c("0","1"))
levels(data$vaccinereaction.factor) = c("No","Yes")

data$reaction2yr.factor = factor(data$reaction2yr, levels = c("0","1"))
levels(data$reaction2yr.factor) = c("No","Yes")

data$toldnovaccine.factor = factor(data$toldnovaccine, levels = c("0","1"))
levels(data$toldnovaccine.factor) = c("No","Yes")

data$guillainbarre.factor = factor(data$guillainbarre, levels = c("0","1"))
levels(data$guillainbarre.factor) = c("No","Yes")

data$nomci_dementia.factor = factor(data$nomci_dementia, levels = c("0","1"))
levels(data$nomci_dementia.factor) = c("No","Yes")

data$nofluvac8mo.factor = factor(data$nofluvac8mo, levels = c("0","1"))
levels(data$nofluvac8mo.factor) = c("No","Yes")

data$afebrilepastmo.factor = factor(data$afebrilepastmo, levels = c("0","1"))
levels(data$afebrilepastmo.factor) = c("No","Yes")

data$immunosuppressant.factor = factor(data$immunosuppressant, levels = c("0","1"))
levels(data$immunosuppressant.factor) = c("No","Yes")

data$dailyantiinflmeds.factor = factor(data$dailyantiinflmeds, levels = c("0","1"))
levels(data$dailyantiinflmeds.factor) = c("No","Yes")

data$ca_treatment.factor = factor(data$ca_treatment, levels = c("0","1"))
levels(data$ca_treatment.factor) = c("No","Yes")

data$anemic.factor = factor(data$anemic, levels = c("0","1"))
levels(data$anemic.factor) = c("No","Yes")

data$eligibility_FluVac.factor = factor(data$eligibility_FluVac, levels = c("0","1"))
levels(data$eligibility_FluVac.factor) = c("No","Yes")

data$day0reveligib.factor = factor(data$day0reveligib, levels = c("0","1"))
levels(data$day0reveligib.factor) = c("No","Yes")

data$day0fasting.factor = factor(data$day0fasting, levels = c("0","1"))
levels(data$day0fasting.factor) = c("No","Yes")

data$day0blood.factor = factor(data$day0blood, levels = c("0","1"))
levels(data$day0blood.factor) = c("No","Yes")

data$d0locationrl.factor = factor(data$d0locationrl, levels = c("1","2","3"))
levels(data$d0locationrl.factor) = c("Right arm","Left arm","Both")

data$d0locationspecify.factor = factor(data$d0locationspecify, levels = c("1","2","3","4"))
levels(data$d0locationspecify.factor) = c("Anticubital","Upper arm","Lower arm","Hand")

data$day0bldrampm.factor = factor(data$day0bldrampm, levels = c("1","2"))
levels(data$day0bldrampm.factor) = c("Am","Pm")

data$admvaccine.factor = factor(data$admvaccine, levels = c("1","2"))
levels(data$admvaccine.factor) = c("Right arm","Left arm")

data$instructions.factor = factor(data$instructions, levels = c("0","1"))
levels(data$instructions.factor) = c("No","Yes")

data$day7fasting.factor = factor(data$day7fasting, levels = c("0","1"))
levels(data$day7fasting.factor) = c("No","Yes")

data$day7blood.factor = factor(data$day7blood, levels = c("0","1"))
levels(data$day7blood.factor) = c("No","Yes")

data$d7locationrl.factor = factor(data$d7locationrl, levels = c("1","2","3"))
levels(data$d7locationrl.factor) = c("Right arm","Left arm","Both")

data$d7locationspecify.factor = factor(data$d7locationspecify, levels = c("1","2","3","4"))
levels(data$d7locationspecify.factor) = c("Anticubital","Upper arm","Lower arm","Hand")

data$day7bldrampm.factor = factor(data$day7bldrampm, levels = c("1","2"))
levels(data$day7bldrampm.factor) = c("Am","Pm")

data$d7chestpain.factor = factor(data$d7chestpain, levels = c("0","1"))
levels(data$d7chestpain.factor) = c("No","Yes")

data$d7vomiting.factor = factor(data$d7vomiting, levels = c("0","1"))
levels(data$d7vomiting.factor) = c("No","Yes")

data$d7headache.factor = factor(data$d7headache, levels = c("0","1"))
levels(data$d7headache.factor) = c("No","Yes")

data$d7sob.factor = factor(data$d7sob, levels = c("0","1"))
levels(data$d7sob.factor) = c("No","Yes")

data$d7fever.factor = factor(data$d7fever, levels = c("0","1"))
levels(data$d7fever.factor) = c("No","Yes")

data$d7cough.factor = factor(data$d7cough, levels = c("0","1"))
levels(data$d7cough.factor) = c("No","Yes")

data$d7fatigue.factor = factor(data$d7fatigue, levels = c("0","1"))
levels(data$d7fatigue.factor) = c("No","Yes")

data$d7hospital.factor = factor(data$d7hospital, levels = c("0","1"))
levels(data$d7hospital.factor) = c("No","Yes")

data$day21fasting.factor = factor(data$day21fasting, levels = c("0","1"))
levels(data$day21fasting.factor) = c("No","Yes")

data$day21blood.factor = factor(data$day21blood, levels = c("0","1"))
levels(data$day21blood.factor) = c("No","Yes")

data$d21locationrl.factor = factor(data$d21locationrl, levels = c("1","2","3"))
levels(data$d21locationrl.factor) = c("Right arm","Left arm","Both")

data$d21locationspecify.factor = factor(data$d21locationspecify, levels = c("1","2","3","4"))
levels(data$d21locationspecify.factor) = c("Anticubital","Upper arm","Lower arm","Hand")

data$day21bldrampm.factor = factor(data$day21bldrampm, levels = c("1","2"))
levels(data$day21bldrampm.factor) = c("Am","Pm")

data$d21chestpain.factor = factor(data$d21chestpain, levels = c("0","1"))
levels(data$d21chestpain.factor) = c("No","Yes")

data$d21vomiting.factor = factor(data$d21vomiting, levels = c("0","1"))
levels(data$d21vomiting.factor) = c("No","Yes")

data$d21headache.factor = factor(data$d21headache, levels = c("0","1"))
levels(data$d21headache.factor) = c("No","Yes")

data$d21sob.factor = factor(data$d21sob, levels = c("0","1"))
levels(data$d21sob.factor) = c("No","Yes")

data$d21fever.factor = factor(data$d21fever, levels = c("0","1"))
levels(data$d21fever.factor) = c("No","Yes")

data$d21cough.factor = factor(data$d21cough, levels = c("0","1"))
levels(data$d21cough.factor) = c("No","Yes")

data$d21fatigue.factor = factor(data$d21fatigue, levels = c("0","1"))
levels(data$d21fatigue.factor) = c("No","Yes")

data$d21hospital.factor = factor(data$d21hospital, levels = c("0","1"))
levels(data$d21hospital.factor) = c("No","Yes")

