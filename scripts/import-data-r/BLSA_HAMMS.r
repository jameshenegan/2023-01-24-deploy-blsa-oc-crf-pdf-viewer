#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_HAMMS.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_HAM)="CRF Version"
label(data$obsdate_hamdate)="Date Completed"
label(data$blank_HAM)="Blank Form"
label(data$hamtid)="Tester ID"
label(data$ham01)="Have known injuries or conditions that may affect their arm hand movement"
label(data$ham02)="What is the participant's dominant hand"
label(data$ham03)="Trial 1 was HAMMS protocol completed"
label(data$ham03a)="Trial 1 reason not performed"
label(data$ham03acom)="Trial 1 RND Other"
label(data$ham04a)="Trial 1 feedback test difficulty"
label(data$ham04b)="Trial 1 instructions difficulty"
label(data$ham04c)="Trial 1 enjoyed test"
label(data$ham05)="Trial 1 tester feedback"
label(data$ham05com)="Trial 1 tester feedback Other"
label(data$auto_id_HAM)="Unique Teleform Number"
label(data$ham06)="was HAMMS protocol completed"
label(data$ham06a)="reason not performed"
label(data$ham06com)="RND Other"
label(data$ham07a)="feedback test difficulty"
label(data$ham07b)="instructions difficulty"
label(data$ham07c)="enjoyed test"
label(data$ham08)="tester feedback"
label(data$ham08com)="RND Other"
label(data$ham08a)="able to maintain constant steady speed"
label(data$ham08b)="during hand motion the participant was able to keep their hand within a plane that is greater than 1 inch but no more than 2 inches above the black surface"
label(data$ham08c)="Was it difficult for the participant to move between the squares on screen"
label(data$ham08ccom)="If yes Why"
label(data$ham08d)="Was it difficult for the participant to start the test?"
label(data$ham08dcom)="If yes Why"
label(data$ham08e)="Was it difficult for the participant to get on screen to start the test?"
label(data$ham08ecom)="If yes Why"
label(data$ham08f)="Did the participant have trouble understanding the instructions"
label(data$ham09)="Have any known injuries or conditions that affect the index finger"
label(data$ham10)="Index Finger was HAMM protocol completed"
label(data$ham10a)="Index Finger reason not performed"
label(data$ham10acom)="Index Finger RND Other"
label(data$ham11a)="Index Finger feedback test difficulty"
label(data$ham11b)="Test Comparison"
label(data$ham12)="Tester feedback Index finger"
label(data$ham12com)="Index finger tester feedback Other"
label(data$ham12a)="able to maintain constant steady speed"
label(data$ham12b)="during hand motion the participant was able to keep their hand within a plane that is greater than 1 inch but no more than 2 inches above the black surface"
label(data$ham12c)="Compare hand test to finger task"
label(data$ham12d)="Was it difficult for the participant to move between the squares on screen"
label(data$ham12dcom)="If yes Why"
label(data$ham12e)="Was it difficult for the participant to start the test?"
label(data$ham12ecom)="If yes Why"
label(data$ham12f)="Was it difficult for the participant to get on screen to start the test?"
label(data$ham12fcom)="If yes Why"
label(data$ham12g)="Did the participant have trouble understanding the instructions"
label(data$crf_parent_name_HAM)="CRF Parent Name"
label(data$study_name_HAM)="Study Name"

#Create new variables for factors
data$ham01.factor = factor(data$ham01, levels = c("0","1"))
levels(data$ham01.factor) = c("No","Yes")

data$ham02.factor = factor(data$ham02, levels = c("0","1"))
levels(data$ham02.factor) = c("Left","Right")

data$ham03.factor = factor(data$ham03, levels = c("0","1"))
levels(data$ham03.factor) = c("No","Yes")

data$ham03a.factor = factor(data$ham03a, levels = c("1","2","3","4","5","6"))
levels(data$ham03a.factor) = c("Physical/sensory impairment","Emotional problems stress physical illness medications or lack of sleep","Cognitive problems","Refused","Technical problems (includes no time or no tester)","Other - Please specify")

data$ham04a.factor = factor(data$ham04a, levels = c("1","2","3","4"))
levels(data$ham04a.factor) = c("Very easy","Somewhat easy","Somewhat difficult","Very difficult")

data$ham04b.factor = factor(data$ham04b, levels = c("1","2","3","4"))
levels(data$ham04b.factor) = c("Very clear","Somewhat clear","Somewhat confusing","Very confusing")

data$ham04c.factor = factor(data$ham04c, levels = c("1","2","3","4","5"))
levels(data$ham04c.factor) = c("Strongly agree","Agree","Neutral","Disagree","Strongly disagree")

data$ham05.factor = factor(data$ham05, levels = c("1","2","3","4","5"))
levels(data$ham05.factor) = c("Very easily","Somewhat easily","With some difficulty","With great difficulty","Other - Please specify")

data$ham06.factor = factor(data$ham06, levels = c("0","1"))
levels(data$ham06.factor) = c("No","Yes")

data$ham06a.factor = factor(data$ham06a, levels = c("1","2","3","4","5","6"))
levels(data$ham06a.factor) = c("Physical/sensory impairment","Emotional problems stress physical illness medications or lack of sleep","Cognitive problems","Refused","Technical problems (includes no time or no tester)","Other - Please specify")

data$ham07a.factor = factor(data$ham07a, levels = c("1","2","3","4"))
levels(data$ham07a.factor) = c("Very easy","Somewhat easy","Somewhat difficult","Very difficult")

data$ham07b.factor = factor(data$ham07b, levels = c("1","2","3","4"))
levels(data$ham07b.factor) = c("Very clear","Somewhat clear","Somewhat confusing","Very confusing")

data$ham07c.factor = factor(data$ham07c, levels = c("1","2","3","4","5"))
levels(data$ham07c.factor) = c("Strongly agree","Agree","Neutral","Disagree","Strongly disagree")

data$ham08.factor = factor(data$ham08, levels = c("1","2","3","4","5"))
levels(data$ham08.factor) = c("Very easily","Somewhat easily","With some difficulty","With great difficulty","Other - Please specify")

data$ham08a.factor = factor(data$ham08a, levels = c("1","2","3","4"))
levels(data$ham08a.factor) = c("Very easily","Somewhat easily","With some difficulty","With great difficulty")

data$ham08b.factor = factor(data$ham08b, levels = c("1","2","3","4"))
levels(data$ham08b.factor) = c("Very easily","Somewhat easily","With some difficulty","With great difficulty")

data$ham08c.factor = factor(data$ham08c, levels = c("0","1"))
levels(data$ham08c.factor) = c("No","Yes")

data$ham08d.factor = factor(data$ham08d, levels = c("0","1"))
levels(data$ham08d.factor) = c("No","Yes")

data$ham08e.factor = factor(data$ham08e, levels = c("0","1"))
levels(data$ham08e.factor) = c("No","Yes")

data$ham08f.factor = factor(data$ham08f, levels = c("0","1"))
levels(data$ham08f.factor) = c("No","Yes")

data$ham09.factor = factor(data$ham09, levels = c("0","1"))
levels(data$ham09.factor) = c("No","Yes")

data$ham10.factor = factor(data$ham10, levels = c("0","1"))
levels(data$ham10.factor) = c("No","Yes")

data$ham10a.factor = factor(data$ham10a, levels = c("1","2","3","4","5","6"))
levels(data$ham10a.factor) = c("Physical/sensory impairment","Emotional problems stress physical illness medications or lack of sleep","Cognitive problems","Refused","Technical problems (includes no time or no tester)","Other - Please specify")

data$ham11a.factor = factor(data$ham11a, levels = c("1","2","3","4"))
levels(data$ham11a.factor) = c("Very easy","Somewhat easy","Somewhat difficult","Very difficult")

data$ham11b.factor = factor(data$ham11b, levels = c("1","2","3","4","5"))
levels(data$ham11b.factor) = c("Much easier","Somewhat easier","About the same","Somewhat harder"," Much harder")

data$ham12.factor = factor(data$ham12, levels = c("1","2","3","4","5"))
levels(data$ham12.factor) = c("Very easily","Somewhat easily","With some difficulty","With great difficulty","Other - Please specify")

data$ham12a.factor = factor(data$ham12a, levels = c("1","2","3","4"))
levels(data$ham12a.factor) = c("Very easily","Somewhat easily","With some difficulty","With great difficulty")

data$ham12b.factor = factor(data$ham12b, levels = c("1","2","3","4"))
levels(data$ham12b.factor) = c("Very easily","Somewhat easily","With some difficulty","With great difficulty")

data$ham12c.factor = factor(data$ham12c, levels = c("1","2","3","4"))
levels(data$ham12c.factor) = c("With much less difficulty","With slightly less difficulty","With slightly more difficulty","With much more difficulty")

data$ham12d.factor = factor(data$ham12d, levels = c("0","1"))
levels(data$ham12d.factor) = c("No","Yes")

data$ham12e.factor = factor(data$ham12e, levels = c("0","1"))
levels(data$ham12e.factor) = c("No","Yes")

data$ham12f.factor = factor(data$ham12f, levels = c("0","1"))
levels(data$ham12f.factor) = c("No","Yes")

data$ham12g.factor = factor(data$ham12g, levels = c("0","1"))
levels(data$ham12g.factor) = c("No","Yes")

