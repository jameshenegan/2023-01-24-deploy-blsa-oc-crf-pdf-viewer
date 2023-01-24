#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/blsa_der_anthropometry.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="BLSA ID"
label(data$visit)="Visit Number"
label(data$weight)="Weight (kg)"
label(data$weightloss)="Weight Loss Since Previous Visit (kg)"
label(data$intweightloss)="Intentional Weight Loss Since Previous Visit (kg)"
label(data$height)="Height (cm)"
label(data$bmi)="Body Mass Index (kg/m^2)"
label(data$upperwaistcirc)="Upper Waist Circumference (cm)"
label(data$lowerwaistcirc)="Lower Waist Circumference (cm)"
label(data$waistdiam)="Waist Diameter (cm)"
label(data$waistdepth)="Waist Depth (cm)"
label(data$bodytemp)="Oral Body Temperature (Fahrenheit)"
label(data$hipcirc)="Hip (buttocks) Circumference (cm)"
label(data$tibialength)="Right Tibia Length (cm)"
label(data$bicepskinfold)="Right Bicep Skinfold Thickness (cm)"
label(data$respirations)="Respirations (breaths/min)"
label(data$pulse)="Pulse (beats/min)"
label(data$waisthip)="Waist-to-Hip Ratio"
label(data$waistheight)="Waist-to-Height Ratio"
label(data$obesity4cat)="CDC Obesity Classification (4-category)"
label(data$obesity6cat)="CDC Obesity Classification (6-category)"

#Create new variables for factors
data$intweightloss.factor = factor(data$intweightloss, levels = c("0","1"))
levels(data$intweightloss.factor) = c("No","Yes")

data$obesity4cat.factor = factor(data$obesity4cat, levels = c("1","2","3","4"))
levels(data$obesity4cat.factor) = c("Underweight","Normal","Overweight","Obese")

data$obesity6cat.factor = factor(data$obesity6cat, levels = c("1","2","3","4","5","6"))
levels(data$obesity6cat.factor) = c("Underweight","Normal","Overweight","Class 1 Obesity","Class 2 Obesity","Class 3 Obesity")

