#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Smell_Test.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_SmeTes)="CRF Version"
label(data$obsdate_stdate)="Date Completed"
label(data$blank_SmeTes)="Blank Form"
label(data$sttid)="Tester ID"
label(data$stdone)="Was smell test completed"
label(data$strnd)="Reason not done"
label(data$stver)="Smell test version"
label(data$stsmell)="Sense of smell"
label(data$stnasal)="Do you have nasal congestion today"
label(data$stcard1)="Card 1"
label(data$stcard2)="Card 2"
label(data$stcard3)="Card 3"
label(data$stcard4)="Card 4"
label(data$stcard5)="Card 5"
label(data$stcard6)="Card 6"
label(data$stcard7)="Card 7"
label(data$stcard8)="Card 8"
label(data$stcard9)="Card 9"
label(data$stcard10)="Card 10"
label(data$stcard11)="Card 11"
label(data$stcard12)="Card 12"
label(data$stcard13)="Card 13"
label(data$stcard14)="Card 14"
label(data$stcard15)="Card 15"
label(data$stcard16)="Card 16"
label(data$stcard1p)="Card 1"
label(data$stcard2p)="Card 2"
label(data$stcard3p)="Card 3"
label(data$stcard4p)="Card 4"
label(data$stcard5p)="Card 5"
label(data$stcard6p)="Card 6"
label(data$stcard7p)="Card 7"
label(data$stcard8p)="Card 8"
label(data$stcard9p)="Card 9"
label(data$stcard10p)="Card 10"
label(data$stcard11p)="Card 11"
label(data$stcard12p)="Card 12"
label(data$stcard13p)="Card 13"
label(data$stcard14p)="Card 14"
label(data$stcard15p)="Card 15"
label(data$stcard16p)="Card 16"
label(data$auto_id_SmeTes)="Unique Teleform Number"
label(data$crf_parent_name_SmeTes)="CRF Parent Name"
label(data$study_name_SmeTes)="Study Name"

#Create new variables for factors
data$stdone.factor = factor(data$stdone, levels = c("0","1"))
levels(data$stdone.factor) = c("No","Yes")

data$strnd.factor = factor(data$strnd, levels = c("3","4","5","6","7","8","9"))
levels(data$strnd.factor) = c("No Time","Refused","Unable: Physical/Mental","Equipment Problem","No Tester","Not Eligible","Not Scheduled")

data$stver.factor = factor(data$stver, levels = c("1","2"))
levels(data$stver.factor) = c("Blue","Purple")

data$stsmell.factor = factor(data$stsmell, levels = c("1","2","3","4"))
levels(data$stsmell.factor) = c("Poor","Fair","Good","Excellent")

data$stnasal.factor = factor(data$stnasal, levels = c("0","1"))
levels(data$stnasal.factor) = c("No","Yes")

data$stcard1.factor = factor(data$stcard1, levels = c("_0","_00","_000","_1"))
levels(data$stcard1.factor) = c("2-Blackberry","3-Strawberry","4-Pineapple","1-Orange")

data$stcard2.factor = factor(data$stcard2, levels = c("_0","_00","_000","_1"))
levels(data$stcard2.factor) = c("1-Smoke","2-Glue","4-Grass","3-Leather")

data$stcard3.factor = factor(data$stcard3, levels = c("_0","_00","_000","_1"))
levels(data$stcard3.factor) = c("1-Honey","2-Vanilla","3-Chocolate","4-Cinnamon")

data$stcard4.factor = factor(data$stcard4, levels = c("_0","_00","_000","_1"))
levels(data$stcard4.factor) = c("1-Chive","3-Fir","4-Onion","2-Peppermint")

data$stcard5.factor = factor(data$stcard5, levels = c("_0","_00","_000","_1"))
levels(data$stcard5.factor) = c("1-Coconut","3-Walnut","4-Cherry","2-Banana")

data$stcard6.factor = factor(data$stcard6, levels = c("_0","_00","_000","_1"))
levels(data$stcard6.factor) = c("1-Peach","2-Apple","4-Grapefruit","3-Lemon")

data$stcard7.factor = factor(data$stcard7, levels = c("_0","_00","_000","_1"))
levels(data$stcard7.factor) = c("2-Cherry","3-Spearmint","4-Cookies","1-Liquorice")

data$stcard8.factor = factor(data$stcard8, levels = c("_0","_00","_000","_1"))
levels(data$stcard8.factor) = c("1-Mustard","2-Rubber","3-Menthol","4-Turpentine")

data$stcard9.factor = factor(data$stcard9, levels = c("_0","_00","_000","_1"))
levels(data$stcard9.factor) = c("1-Onion","2-Sauerkraut","4-Carrot","3-Garlic")

data$stcard10.factor = factor(data$stcard10, levels = c("_0","_00","_000","_1"))
levels(data$stcard10.factor) = c("1-Cigarettes","3-Wine","4-Smoke","2-Coffee")

data$stcard11.factor = factor(data$stcard11, levels = c("_0","_00","_000","_1"))
levels(data$stcard11.factor) = c("1-Melon","2-Peach","3-Orange","4-Apple")

data$stcard12.factor = factor(data$stcard12, levels = c("_0","_00","_000","_1"))
levels(data$stcard12.factor) = c("2-Pepper","3-Cinnamon","4-Mustard","1-Clove")

data$stcard13.factor = factor(data$stcard13, levels = c("_0","_00","_000","_1"))
levels(data$stcard13.factor) = c("1-Pear","2-Plum","3-Peach","4-Pineapple")

data$stcard14.factor = factor(data$stcard14, levels = c("_0","_00","_000","_1"))
levels(data$stcard14.factor) = c("1-Chamomile","2-Raspberry","4-Cherry","3-Rose")

data$stcard15.factor = factor(data$stcard15, levels = c("_0","_00","_000","_1"))
levels(data$stcard15.factor) = c("2-Rum","3-Honey","4-Fir","1-Anise")

data$stcard16.factor = factor(data$stcard16, levels = c("_0","_00","_000","_1"))
levels(data$stcard16.factor) = c("1-Bread","3-Cheese","4-Ham","2-Fish")

data$stcard1p.factor = factor(data$stcard1p, levels = c("_0","_00","_000","_1"))
levels(data$stcard1p.factor) = c("1-Peppermint","3-Parsley","4-Orange","2-Pear")

data$stcard2p.factor = factor(data$stcard2p, levels = c("_0","_00","_000","_1"))
levels(data$stcard2p.factor) = c("2-Apple","3-Wine gum","4-Lemon","1-Coke")

data$stcard3p.factor = factor(data$stcard3p, levels = c("_0","_00","_000","_1"))
levels(data$stcard3p.factor) = c("1-Mint","2-Fir","4-Chive","3-Lilac")

data$stcard4p.factor = factor(data$stcard4p, levels = c("_0","_00","_000","_1"))
levels(data$stcard4p.factor) = c("1-Peach","3-Grape","4-Strawberry","2-Grapefruit")

data$stcard5p.factor = factor(data$stcard5p, levels = c("_0","_00","_000","_1"))
levels(data$stcard5p.factor) = c("1-Rose","2-Sauerkraut","3-Carrot","4-Grass")

data$stcard6p.factor = factor(data$stcard6p, levels = c("_0","_00","_000","_1"))
levels(data$stcard6p.factor) = c("1-Plum","2-Melon","4-Orange","3-Raspberry")

data$stcard7p.factor = factor(data$stcard7p, levels = c("_0","_00","_000","_1"))
levels(data$stcard7p.factor) = c("2-Lemon","3-Liquorice","4-Fir","1-Eucalyptus")

data$stcard8p.factor = factor(data$stcard8p, levels = c("_0","_00","_000","_1"))
levels(data$stcard8p.factor) = c("1-Paprika","2-Vanilla","4-Pepper","3-Ginger")

data$stcard9p.factor = factor(data$stcard9p, levels = c("_0","_00","_000","_1"))
levels(data$stcard9p.factor) = c("1-Cinnamon","2-Chocolate","3-Peanut","4-Coconut")

data$stcard10p.factor = factor(data$stcard10p, levels = c("_0","_00","_000","_1"))
levels(data$stcard10p.factor) = c("1-Grass","Fir","Rose","Lavender")

data$stcard11p.factor = factor(data$stcard11p, levels = c("_0","_00","_000","_1"))
levels(data$stcard11p.factor) = c("1-Lemon","2-Currant","3-Orange","4-Melon")

data$stcard12p.factor = factor(data$stcard12p, levels = c("_0","_00","_000","_1"))
levels(data$stcard12p.factor) = c("1-Cherry","3-Apple","4-Strawberry","2-Peach")

data$stcard13p.factor = factor(data$stcard13p, levels = c("_0","_00","_000","_1"))
levels(data$stcard13p.factor) = c("1-Garlic","3-Ham","4-Wood","2-Mushroom")

data$stcard14p.factor = factor(data$stcard14p, levels = c("_0","_00","_000","_1"))
levels(data$stcard14p.factor) = c("2-Leather","3-Cigarette","4-Salami","1-Smoked meat")

data$stcard15p.factor = factor(data$stcard15p, levels = c("_0","_00","_000","_1"))
levels(data$stcard15p.factor) = c("1-Cookies","2-Orange","3-Wine gum","4-Caramel")

data$stcard16p.factor = factor(data$stcard16p, levels = c("_0","_00","_000","_1"))
levels(data$stcard16p.factor) = c("1-Pepper","2-Nutmeg","4-Mustart","3-Onion")

