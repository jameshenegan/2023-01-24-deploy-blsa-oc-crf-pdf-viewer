#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Treadmill.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_Tre)="CRF Version"
label(data$obsdate_trmdate)="Date Completed"
label(data$trmttid)="Tester ID"
label(data$blank_Tre)="Blank Form"
label(data$trm01)="Treadmill done"
label(data$trm01a)="Treadmill reason not done"
label(data$trm01b)="Treadmill contraindications"
label(data$trm01c)="Treadmill Contraindication other"
label(data$trm02)="Oxygen consumption measured"
label(data$trm02a)="Oxygen consumption Reason not done"
label(data$trm02b)="Oxygen consumption RND other"
label(data$trm03)="Reason exercise was stopped"
label(data$trm03a)="Reason exercise was stopped Other"
label(data$trm04)="Participant complained of chest pain"
label(data$trmborg)="Borg score"
label(data$trmf1)="Fatigability performed"
label(data$trmf2)="Was oxygen consumption measured during SS"
label(data$trmf3)="Which Fatigability speed setting was used"
label(data$tssborg5)="Borg score Fatigability 5 min"
label(data$tssborg10)="Borg score Fatigability 10 min"
label(data$tssborg15)="Borg score Fatigability 15 min"
label(data$trmf7)="Did participant complete Fatigability test"
label(data$trmf7a)="Reason exercise was stopped"
label(data$trmf7oth)="Reason exercise was stopped Other"
label(data$trmss1)="Steady Stage performed"
label(data$trmss2)="Was oxygen consumption measured during SS"
label(data$tssborg)="Borg score for Steady Stage"
label(data$auto_id_Tre)="Unique Teleform Number"
label(data$crf_parent_name_Tre)="CRF Parent Name"
label(data$study_name_Tre)="Study Name"

#Create new variables for factors
data$trm01.factor = factor(data$trm01, levels = c("0","1"))
levels(data$trm01.factor) = c("No","Yes")

data$trm01a.factor = factor(data$trm01a, levels = c("000","1","555","666","777","888","999"))
levels(data$trm01a.factor) = c("Other","Contraindication","Physical problems","Cognitive","Physical and cognitive","Refused","Technical problems")

data$trm01b.factor = factor(data$trm01b, levels = c("0","1","10","2","3","4","5","6","7","8","9"))
levels(data$trm01b.factor) = c("Other medical","Aortic stenosis of at least moderate severity","Poor health status","Symptoms suspicious for unstable angina","Recent (<6 months) myocardial infaction or revascularization","Uncontrolled hypertension (SBP >180 or DBP >110)","Factors that would preclude subject from being able to walk on a treadmill (unsteady gait difficulty with ambulation etc)","High grade AV block on resting EKG (Mobitz Type II 2nd or 3rd degree heart block)","Ate full meal within the past 2 hours","LBBB with Hx of previous MI or coronary revascularization","Resting heart rate >120")

data$trm02.factor = factor(data$trm02, levels = c("0","1"))
levels(data$trm02.factor) = c("No","Yes")

data$trm02a.factor = factor(data$trm02a, levels = c("1","555","666","777","888","999"))
levels(data$trm02a.factor) = c("Other (please specify)","Physical problems","Cognitive","Physical and cognitive","Refused mouthpiece (or could not tolerate)","Technical problems")

data$trm03.factor = factor(data$trm03, levels = c("00","1","10","11","2","3","4","5","6","7","8","9"))
levels(data$trm03.factor) = c("Other","Tester request","Claudication","Mouthpiece discomfort","Musculoskeletal pain","Dyspena","Chest pain","Ischemia","Fatigue","Nausea","Dizziness","Arrhythmia")

data$trm04.factor = factor(data$trm04, levels = c("0","1"))
levels(data$trm04.factor) = c("No","Yes")

data$trmf1.factor = factor(data$trmf1, levels = c("1","4","5","6","7","8","9"))
levels(data$trmf1.factor) = c("Yes","Refused","Unable","Technical","No Tester","Not Eligible","Not Scheduled")

data$trmf2.factor = factor(data$trmf2, levels = c("0","1"))
levels(data$trmf2.factor) = c("No","Yes")

data$trmf3.factor = factor(data$trmf3, levels = c("1","2","3","4"))
levels(data$trmf3.factor) = c("Max Treadmill speed 1.5 mph","Max Treadmill speed 2.0 mph","Max Treadmill speed 2.5 mph","Max Treadmill speed 3.0 mph")

data$trmf7.factor = factor(data$trmf7, levels = c("0","1"))
levels(data$trmf7.factor) = c("No","Yes")

data$trmf7a.factor = factor(data$trmf7a, levels = c("00","1","10","11","2","3","4","5","6","7","8","9"))
levels(data$trmf7a.factor) = c("Other","Tester request","Claudication","Mouthpiece discomfort","Musculoskeletal pain","Dyspena","Chest pain","Ischemia","Fatigue","Nausea","Dizziness","Arrhythmia")

data$trmss1.factor = factor(data$trmss1, levels = c("1","4","5","6","7","8","9"))
levels(data$trmss1.factor) = c("Yes","Refused","Unable","Technical","No Tester","Not Eligible","Not Scheduled")

data$trmss2.factor = factor(data$trmss2, levels = c("0","1"))
levels(data$trmss2.factor) = c("No","Yes")

