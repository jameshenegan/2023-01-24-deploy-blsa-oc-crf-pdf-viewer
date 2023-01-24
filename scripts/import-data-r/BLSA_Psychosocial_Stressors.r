#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Psychosocial_Stressors.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_PsyStr)="CRF Version"
label(data$date_PsyStr)="Date"
label(data$currentlywork)="Are you currently employed"
label(data$yesworkq1)="How often does your job involve physical effort"
label(data$yesworkq2)="How often are you walking at your job"
label(data$yesworkq3)="How often do you sit for a long time at your job"
label(data$yesworkq4)="How often do you use your fingers to grasp/handle things at your job (excluding typing)"
label(data$noworkq1)="How often did your job involve physical effort"
label(data$noworkq2)="How often were you walking at your job"
label(data$noworkq3)="How often did you sit for a long time at your job"
label(data$noworkq4)="How often did you use your fingers to grasp/handle things at your job (excluding typing)"
label(data$discriminate5a)="Were discouraged by a teacher from seeking higher education"
label(data$discriminate5b)="You were not hired for a job"
label(data$discriminate5c)="You were not given a promotion"
label(data$discriminate5d)="You were fired"
label(data$discriminate5e)="You were prevented from renting or buying a home in the neighborhood you wanted"
label(data$discriminate5f)="You were hassled by the police"
label(data$discriminate5g)="You were denied a bank loan"
label(data$discriminate5h)="You were denied or provided inferior medical care"
label(data$eventsq6)="In the past year have you experienced a chronic disease or disability"
label(data$eventsq7)="In the past year have you experienced a frequent minor illnesses"
label(data$eventsq8)="In the past year have you experienced emotional problems"
label(data$eventsq9)="In the past year have you experienced alcohol/substance problems"
label(data$eventsq10)="In the past year have you experienced financial problems"
label(data$eventsq11)="In the past year have you experienced school/work problems"
label(data$eventsq12)="In the past year have you experienced difficulty finding/keeping a job"
label(data$eventsq13)="In the past year have you experienced marital/relationship problems"
label(data$eventsq14)="In the past year have you experienced legal problems"
label(data$eventsq15)="In the past year have you experienced difficulty getting along with others"
label(data$eventsq16)="In the past year have you experienced a difficulty not yet asked"
label(data$eventsq6a)="Do you have a significant other"
label(data$eventsq6ai)="Has your significant other experienced a chronic disease or disability in the past year"
label(data$eventsq7a)="Has your significant other experienced frequent minor illnesses in the past year"
label(data$eventsq8a)="Has your significant other experienced emotional problems in the past year"
label(data$eventsq9a)="Has your significant other experienced alcohol/substance problems in the past year"
label(data$eventsq10a)="Has your significant other experienced financial problems in the past year"
label(data$eventsq11a)="Has your significant other experienced school/work problems in the past year"
label(data$eventsq12a)="Has your significant other experienced difficulty finding/keeping a job in the past year"
label(data$eventsq13a)="Has your significant other experienced marital/relationship problems in the past year"
label(data$eventsq14a)="Has your significant other experienced legal problems in the past year"
label(data$eventsq15a)="Has your significant other experienced difficulty getting along with others in the past year"
label(data$eventsq16a)="Has your significant other experienced difficulty not yet asked in the past year"
label(data$eventsq6b)="Do you have a child / children"
label(data$eventsq6bi)="Has your child experienced a chronic disease or disability in the past year"
label(data$eventsq7b)="Has our child experienced frequent minor illnesses in the past year"
label(data$eventsq8b)="Has our child experienced emotional problems in the past year"
label(data$eventsq9b)="Has our child experienced alcohol/substance problems in the past year"
label(data$eventsq10b)="Has our child experienced financial problems in the past year"
label(data$eventsq11b)="Has our child experienced school/work problems in the past year"
label(data$eventsq12b)="Has our child experienced difficulty finding/keeping a job in the past year"
label(data$eventsq13b)="Has our child experienced marital/relationship problems in the past year"
label(data$eventsq14b)="Has our child experienced legal problems in the past year"
label(data$eventsq15b)="Has our child experienced difficulty getting along with others in the past year"
label(data$eventsq16b)="Has our child experienced difficulty not yet asked in the past year"
label(data$childhoodq17)="Were you raised in a single or dual parent/guardian household"
label(data$childhoodq17a)="What is the gender of your parent/guardian"
label(data$childhoodq17b)="What are the genders combinations of your parents/guardians"
label(data$childhoodq18)="What is the highest level of education your Mother/Stepmother/Female guardian completed"
label(data$childhoodq19)="What is the highest level of education your Father/Stepfather/Male guardian completed"
label(data$childhoodq20)="What is the highest level of education your parent/guardian completed"
label(data$childhoodq21)="What is the highest level of education your parent 1/guardian 1 completed"
label(data$childhoodq22)="What is the highest level of education your parent 2/guardian 2 completed"
label(data$childhoodq23)="As a child did your family ever receive government subsidies"
label(data$childhoodq24)="As a child how was your family's financial situation compared to other families"
label(data$eventsq16com)="Explain yes You have experienced difficulty not yet asked"
label(data$eventsq16acom)="Explain yes Your significant other experienced difficulty not yet asked"
label(data$crf_parent_name_PsyStr)="CRF Parent Name"
label(data$study_name_PsyStr)="Study Name"

#Create new variables for factors
data$currentlywork.factor = factor(data$currentlywork, levels = c("0","1"))
levels(data$currentlywork.factor) = c("No","Yes")

data$yesworkq1.factor = factor(data$yesworkq1, levels = c("1","2","3","4","5"))
levels(data$yesworkq1.factor) = c("a. All of the time","b. Most of the time","c. Sometimes","d. Rarely","e. Never")

data$yesworkq2.factor = factor(data$yesworkq2, levels = c("1","2","3","4","5"))
levels(data$yesworkq2.factor) = c("a. All of the time","b. Most of the time","c. Sometimes","d. Rarely","e. Never")

data$yesworkq3.factor = factor(data$yesworkq3, levels = c("1","2","3","4","5"))
levels(data$yesworkq3.factor) = c("a. All of the time","b. Most of the time","c. Sometimes","d. Rarely","e. Never")

data$yesworkq4.factor = factor(data$yesworkq4, levels = c("1","2","3","4","5"))
levels(data$yesworkq4.factor) = c("a. All of the time","b. Most of the time","c. Sometimes","d. Rarely","e. Never")

data$noworkq1.factor = factor(data$noworkq1, levels = c("1","2","3","4","5"))
levels(data$noworkq1.factor) = c("a. All of the time","b. Most of the time","c. Sometimes","d. Rarely","e. Never")

data$noworkq2.factor = factor(data$noworkq2, levels = c("1","2","3","4","5"))
levels(data$noworkq2.factor) = c("a. All of the time","b. Most of the time","c. Sometimes","d. Rarely","e. Never")

data$noworkq3.factor = factor(data$noworkq3, levels = c("1","2","3","4","5"))
levels(data$noworkq3.factor) = c("a. All of the time","b. Most of the time","c. Sometimes","d. Rarely","e. Never")

data$noworkq4.factor = factor(data$noworkq4, levels = c("1","2","3","4","5"))
levels(data$noworkq4.factor) = c("a. All of the time","b. Most of the time","c. Sometimes","d. Rarely","e. Never")

data$discriminate5a.factor = factor(data$discriminate5a, levels = c("0","1","2","3","4"))
levels(data$discriminate5a.factor) = c("0 times","1 - 5 times ","6 - 10 times","11 - 20 times",">20 times")

data$discriminate5b.factor = factor(data$discriminate5b, levels = c("0","1","2","3","4"))
levels(data$discriminate5b.factor) = c("0 times","1 - 5 times ","6 - 10 times","11 - 20 times",">20 times")

data$discriminate5c.factor = factor(data$discriminate5c, levels = c("0","1","2","3","4"))
levels(data$discriminate5c.factor) = c("0 times","1 - 5 times ","6 - 10 times","11 - 20 times",">20 times")

data$discriminate5d.factor = factor(data$discriminate5d, levels = c("0","1","2","3","4"))
levels(data$discriminate5d.factor) = c("0 times","1 - 5 times ","6 - 10 times","11 - 20 times",">20 times")

data$discriminate5e.factor = factor(data$discriminate5e, levels = c("0","1","2","3","4"))
levels(data$discriminate5e.factor) = c("0 times","1 - 5 times ","6 - 10 times","11 - 20 times",">20 times")

data$discriminate5f.factor = factor(data$discriminate5f, levels = c("0","1","2","3","4"))
levels(data$discriminate5f.factor) = c("0 times","1 - 5 times ","6 - 10 times","11 - 20 times",">20 times")

data$discriminate5g.factor = factor(data$discriminate5g, levels = c("0","1","2","3","4"))
levels(data$discriminate5g.factor) = c("0 times","1 - 5 times ","6 - 10 times","11 - 20 times",">20 times")

data$discriminate5h.factor = factor(data$discriminate5h, levels = c("0","1","2","3","4"))
levels(data$discriminate5h.factor) = c("0 times","1 - 5 times ","6 - 10 times","11 - 20 times",">20 times")

data$eventsq6.factor = factor(data$eventsq6, levels = c("0","1"))
levels(data$eventsq6.factor) = c("No","Yes")

data$eventsq7.factor = factor(data$eventsq7, levels = c("0","1"))
levels(data$eventsq7.factor) = c("No","Yes")

data$eventsq8.factor = factor(data$eventsq8, levels = c("0","1"))
levels(data$eventsq8.factor) = c("No","Yes")

data$eventsq9.factor = factor(data$eventsq9, levels = c("0","1"))
levels(data$eventsq9.factor) = c("No","Yes")

data$eventsq10.factor = factor(data$eventsq10, levels = c("0","1"))
levels(data$eventsq10.factor) = c("No","Yes")

data$eventsq11.factor = factor(data$eventsq11, levels = c("0","1"))
levels(data$eventsq11.factor) = c("No","Yes")

data$eventsq12.factor = factor(data$eventsq12, levels = c("0","1"))
levels(data$eventsq12.factor) = c("No","Yes")

data$eventsq13.factor = factor(data$eventsq13, levels = c("0","1"))
levels(data$eventsq13.factor) = c("No","Yes")

data$eventsq14.factor = factor(data$eventsq14, levels = c("0","1"))
levels(data$eventsq14.factor) = c("No","Yes")

data$eventsq15.factor = factor(data$eventsq15, levels = c("0","1"))
levels(data$eventsq15.factor) = c("No","Yes")

data$eventsq16.factor = factor(data$eventsq16, levels = c("0","1"))
levels(data$eventsq16.factor) = c("No","Yes")

data$eventsq6a.factor = factor(data$eventsq6a, levels = c("0","1"))
levels(data$eventsq6a.factor) = c("No","Yes")

data$eventsq6ai.factor = factor(data$eventsq6ai, levels = c("0","1"))
levels(data$eventsq6ai.factor) = c("No","Yes")

data$eventsq7a.factor = factor(data$eventsq7a, levels = c("0","1"))
levels(data$eventsq7a.factor) = c("No","Yes")

data$eventsq8a.factor = factor(data$eventsq8a, levels = c("0","1"))
levels(data$eventsq8a.factor) = c("No","Yes")

data$eventsq9a.factor = factor(data$eventsq9a, levels = c("0","1"))
levels(data$eventsq9a.factor) = c("No","Yes")

data$eventsq10a.factor = factor(data$eventsq10a, levels = c("0","1"))
levels(data$eventsq10a.factor) = c("No","Yes")

data$eventsq11a.factor = factor(data$eventsq11a, levels = c("0","1"))
levels(data$eventsq11a.factor) = c("No","Yes")

data$eventsq12a.factor = factor(data$eventsq12a, levels = c("0","1"))
levels(data$eventsq12a.factor) = c("No","Yes")

data$eventsq13a.factor = factor(data$eventsq13a, levels = c("0","1"))
levels(data$eventsq13a.factor) = c("No","Yes")

data$eventsq14a.factor = factor(data$eventsq14a, levels = c("0","1"))
levels(data$eventsq14a.factor) = c("No","Yes")

data$eventsq15a.factor = factor(data$eventsq15a, levels = c("0","1"))
levels(data$eventsq15a.factor) = c("No","Yes")

data$eventsq16a.factor = factor(data$eventsq16a, levels = c("0","1"))
levels(data$eventsq16a.factor) = c("No","Yes")

data$eventsq6b.factor = factor(data$eventsq6b, levels = c("0","1"))
levels(data$eventsq6b.factor) = c("No","Yes")

data$eventsq6bi.factor = factor(data$eventsq6bi, levels = c("0","1"))
levels(data$eventsq6bi.factor) = c("No","Yes")

data$eventsq7b.factor = factor(data$eventsq7b, levels = c("0","1"))
levels(data$eventsq7b.factor) = c("No","Yes")

data$eventsq8b.factor = factor(data$eventsq8b, levels = c("0","1"))
levels(data$eventsq8b.factor) = c("No","Yes")

data$eventsq9b.factor = factor(data$eventsq9b, levels = c("0","1"))
levels(data$eventsq9b.factor) = c("No","Yes")

data$eventsq10b.factor = factor(data$eventsq10b, levels = c("0","1"))
levels(data$eventsq10b.factor) = c("No","Yes")

data$eventsq11b.factor = factor(data$eventsq11b, levels = c("0","1"))
levels(data$eventsq11b.factor) = c("No","Yes")

data$eventsq12b.factor = factor(data$eventsq12b, levels = c("0","1"))
levels(data$eventsq12b.factor) = c("No","Yes")

data$eventsq13b.factor = factor(data$eventsq13b, levels = c("0","1"))
levels(data$eventsq13b.factor) = c("No","Yes")

data$eventsq14b.factor = factor(data$eventsq14b, levels = c("0","1"))
levels(data$eventsq14b.factor) = c("No","Yes")

data$eventsq15b.factor = factor(data$eventsq15b, levels = c("0","1"))
levels(data$eventsq15b.factor) = c("No","Yes")

data$eventsq16b.factor = factor(data$eventsq16b, levels = c("0","1"))
levels(data$eventsq16b.factor) = c("No","Yes")

data$childhoodq17.factor = factor(data$childhoodq17, levels = c("1","2"))
levels(data$childhoodq17.factor) = c("Single","Dual")

data$childhoodq17a.factor = factor(data$childhoodq17a, levels = c("1","2","3"))
levels(data$childhoodq17a.factor) = c("1. Woman","2. Man","3. Other")

data$childhoodq17b.factor = factor(data$childhoodq17b, levels = c("1","2","3","4"))
levels(data$childhoodq17b.factor) = c("1. Woman and Man","2. Woman and Woman","3. Man and Man","4. Other")

data$childhoodq18.factor = factor(data$childhoodq18, levels = c("1","2","3","4","5"))
levels(data$childhoodq18.factor) = c("a. College or Higher","b. Some College","c. High School/GED","d. Less than High School","e. Unknown")

data$childhoodq19.factor = factor(data$childhoodq19, levels = c("1","2","3","4","5"))
levels(data$childhoodq19.factor) = c("a. College or Higher","b. Some College","c. High School/GED","d. Less than High School","e. Unknown")

data$childhoodq20.factor = factor(data$childhoodq20, levels = c("1","2","3","4","5"))
levels(data$childhoodq20.factor) = c("a. College or Higher","b. Some College","c. High School/GED","d. Less than High School","e. Unknown")

data$childhoodq21.factor = factor(data$childhoodq21, levels = c("1","2","3","4","5"))
levels(data$childhoodq21.factor) = c("a. College or Higher","b. Some College","c. High School/GED","d. Less than High School","e. Unknown")

data$childhoodq22.factor = factor(data$childhoodq22, levels = c("1","2","3","4","5"))
levels(data$childhoodq22.factor) = c("a. College or Higher","b. Some College","c. High School/GED","d. Less than High School","e. Unknown")

data$childhoodq23.factor = factor(data$childhoodq23, levels = c("0","1"))
levels(data$childhoodq23.factor) = c("No","Yes")

data$childhoodq24.factor = factor(data$childhoodq24, levels = c("1","2","3"))
levels(data$childhoodq24.factor) = c("Better off","About the same as","Worse off")

