#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/blsa_der_physicalfunction.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="BLSA ID"
label(data$visit)="Visit Number"
label(data$ADL_trans)="ADL - any difficulty getting in and out of bed or chair"
label(data$ADL_bathe)="ADL - any difficulty bathing or showering"
label(data$ADL_dress)="ADL - any difficulty dressing"
label(data$ADL_eat)="ADL - any difficulty eating"
label(data$ADL_toilet)="ADL - any difficulty using the toilet"
label(data$ADL_walk)="ADL - any difficulty walking across a small room"
label(data$ADL_Total)="ADL - total score"
label(data$handgripright)="Hand grip muscles right (kg)"
label(data$handgripleft)="Hand grip muscles left (kg)"
label(data$handgripmax)="Maximum hand grip (kg)"
label(data$chairstandscore)="SPPB - chair stand score"
label(data$standbalancescore)="SPPB - standing balance score"
label(data$usualgaitspeed)="Usual gait speed (m/s)"
label(data$gaitspeedscore)="SPPB - gait speed score"
label(data$sppb)="SPPB - score"
label(data$walkquartermile)="Difficulty/ease walking 1/4 mile"
label(data$walkonemile)="Difficulty/ease walking 1 mile if no difficulty walking 1/4 mile"
label(data$walkcapacity)="Walking ability summary score"
label(data$liftcarry10)="Difficulty/ease lifting/carrying 10 lbs"
label(data$ADL_NMiss)="ADL - number missing"
label(data$ADL_Number)="ADL - number with any difficulty (if all non-missing)"
label(data$ADLH_trans)="ADL - need special equipment getting in and out of bed or chair"
label(data$ADLH_bathe)="ADL - need special equipment bathing or showering"
label(data$ADLH_dress)="ADL - need special equipment dressing"
label(data$ADLH_eat)="ADL - need special equipment eating"
label(data$ADLH_toilet)="ADL - need special equipment using the toilet"
label(data$ADLH_walk)="ADL - need special equipment walking across a small room"
label(data$WKINDEX)="ADL - Walking capacity summary score"
label(data$WKINDEXa)="ADL - Difficulty walk quarter mile"
label(data$WKINDEXb)="ADL - Difficulty walking one mile"
label(data$STINDEX)="ADL - Climbing stairs capacity summary score"
label(data$STINDEXa)="ADL - Difficulty walking up 10 steps"
label(data$STINDEXb)="ADL - Difficulty walking up 20 steps"
label(data$LCINDEX)="ADL - Lifting/carrying capacity summary score"
label(data$LCINDEXa)="ADL - Difficulty lifting/carrying 10 lbs"
label(data$LCINDEXb)="ADL - Difficulty lifting/carrying 20 lbs"

#Create new variables for factors
data$ADL_trans.factor = factor(data$ADL_trans, levels = c("0","1","2","3","4"))
levels(data$ADL_trans.factor) = c("none","a little","some","a lot","unable to do")

data$ADL_bathe.factor = factor(data$ADL_bathe, levels = c("0","1","2","3","4"))
levels(data$ADL_bathe.factor) = c("none","a little","some","a lot","unable to do")

data$ADL_dress.factor = factor(data$ADL_dress, levels = c("0","1","2","3","4"))
levels(data$ADL_dress.factor) = c("none","a little","some","a lot","unable to do")

data$ADL_eat.factor = factor(data$ADL_eat, levels = c("0","1","2","3","4"))
levels(data$ADL_eat.factor) = c("none","a little","some","a lot","unable to do")

data$ADL_toilet.factor = factor(data$ADL_toilet, levels = c("0","1","2","3","4"))
levels(data$ADL_toilet.factor) = c("none","a little","some","a lot","unable to do")

data$ADL_walk.factor = factor(data$ADL_walk, levels = c("0","1","2","3","4"))
levels(data$ADL_walk.factor) = c("none","a little","some","a lot","unable to do")

data$walkquartermile.factor = factor(data$walkquartermile, levels = c("0","1","2","3","4","5","6"))
levels(data$walkquartermile.factor) = c("unable to do","a lot of difficulty","some difficulty","a little difficulty","not so easy","somewhat easy","very easy")

data$walkonemile.factor = factor(data$walkonemile, levels = c("0","1","2","3"))
levels(data$walkonemile.factor) = c("difficult","not so easy","somewhat easy","very easy")

data$liftcarry10.factor = factor(data$liftcarry10, levels = c("0","1","2","3","4","5","6"))
levels(data$liftcarry10.factor) = c("unable to do","a lot of difficulty","some difficulty","a little difficulty","not so easy","somewhat easy","very easy")

data$ADLH_trans.factor = factor(data$ADLH_trans, levels = c("0","1"))
levels(data$ADLH_trans.factor) = c("No","Yes")

data$ADLH_bathe.factor = factor(data$ADLH_bathe, levels = c("0","1"))
levels(data$ADLH_bathe.factor) = c("No","Yes")

data$ADLH_dress.factor = factor(data$ADLH_dress, levels = c("0","1"))
levels(data$ADLH_dress.factor) = c("No","Yes")

data$ADLH_eat.factor = factor(data$ADLH_eat, levels = c("0","1"))
levels(data$ADLH_eat.factor) = c("No","Yes")

data$ADLH_toilet.factor = factor(data$ADLH_toilet, levels = c("0","1"))
levels(data$ADLH_toilet.factor) = c("No","Yes")

data$ADLH_walk.factor = factor(data$ADLH_walk, levels = c("0","1"))
levels(data$ADLH_walk.factor) = c("No","Yes")

