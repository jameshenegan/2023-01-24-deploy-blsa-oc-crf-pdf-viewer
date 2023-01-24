#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Visual_Acuity.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_VisAcu)="CRF Version"
label(data$obsdate_visacdate)="Date Completed"
label(data$blank_VisAcu)="Blank Form"
label(data$visactid)="Tester ID"
label(data$visacst1)="Stereopsis Line 1"
label(data$visacst2)="Stereopsis Line 2"
label(data$visacst3)="Stereopsis Line 3"
label(data$visacst4)="Stereopsis Line 4"
label(data$visacst5)="Stereopsis Line 5"
label(data$visacst6)="Stereopsis Line 6"
label(data$visacst7)="Stereopsis Line 7"
label(data$visacst8)="Stereopsis Line 8"
label(data$visacst9)="Stereopsis Line 9"
label(data$visacst01)="Stereopsis test completed"
label(data$visacstrnd)="Stereopsis reason not done"
label(data$visacst02)="Did participant wear glasses"
label(data$visacr1)="ETDRS Right eye Row 1"
label(data$visacr2)="ETDRS Right eye Row 2"
label(data$visacr3)="ETDRS Right eye Row 3"
label(data$visacr4)="ETDRS Right eye Row 4"
label(data$visacr5)="ETDRS Right eye Row 5"
label(data$visacr6)="ETDRS Right eye Row 6"
label(data$visacr7)="ETDRS Right eye Row 7"
label(data$visacr8)="ETDRS Right eye Row 8"
label(data$visacr9)="ETDRS Right eye Row 9"
label(data$visacr10)="ETDRS Right eye Row 10"
label(data$visacr11)="ETDRS Right eye Row 11"
label(data$visacr12)="ETDRS Right eye Row 12"
label(data$visacr13)="ETDRS Right eye Row 13"
label(data$visacr14)="ETDRS Right eye Row 14"
label(data$visacrt)="Chart Total Right eye"
label(data$visacryn)="Was distance ETDRS visual acuity checked in the right eye"
label(data$visacrrnd)="ETDRS right eye reason not done"
label(data$visacl1)="ETDRS Left eye Row 1"
label(data$visacl2)="ETDRS Left eye Row 2"
label(data$visacl3)="ETDRS Left eye Row 3"
label(data$visacl4)="ETDRS Left eye Row 4"
label(data$visacl5)="ETDRS Left eye Row 5"
label(data$visacl6)="ETDRS Left eye Row 6"
label(data$visacl7)="ETDRS Left eye Row 7"
label(data$visacl8)="ETDRS Left eye Row 8"
label(data$visacl9)="ETDRS Left eye Row 9"
label(data$visacl10)="ETDRS Left eye Row 10"
label(data$visacl11)="ETDRS Left eye Row 11"
label(data$visacl12)="ETDRS Left eye Row 12"
label(data$visacl13)="ETDRS Left eye Row 13"
label(data$visacl14)="ETDRS Left eye Row 14"
label(data$visaclt)="ETDRS Chart Total Left eye"
label(data$visacldy)="Was distance ETDRS visual acuity checked in the left eye"
label(data$visacldn)="ETDRS left eye reason not done"
label(data$visacar1)="AR Right eye Row 1"
label(data$visacar2)="AR Right eye Row 2"
label(data$visacar3)="AR Right eye Row 3"
label(data$visacar4)="AR Right eye Row 4"
label(data$visacar5)="AR Right eye Row 5"
label(data$visacar6)="AR Right eye Row 6"
label(data$visacar7)="AR Right eye Row 7"
label(data$visacar8)="AR Right eye Row 8"
label(data$visacart)="AR Chart Total Right eye"
label(data$visacardy)="Was distance AR visual acuity checked in the right eye"
label(data$visacardn)="AR right eye reason not done"
label(data$visacal1)="AR Left eye Row 1"
label(data$visacal2)="AR Left eye Row 2"
label(data$visacal3)="AR Left eye Row 3"
label(data$visacal4)="AR Left eye Row 4"
label(data$visacal5)="AR Left eye Row 5"
label(data$visacal6)="AR Left eye Row 6"
label(data$visacal7)="AR Left eye Row 7"
label(data$visacal8)="AR Left eye Row 8"
label(data$visacalt)="AR Chart Total Left eye"
label(data$visacaldy)="Was distance AR visual acuity checked in the left eye"
label(data$visacaldn)="AR left eye reason not done"
label(data$visaccs1)="CS Right eye Row 1"
label(data$visaccs2)="CS Right eye Row 2"
label(data$visaccs3)="CS Right eye Row 3"
label(data$visaccs4)="CS Right eye Row 4"
label(data$visaccs5)="CS Right eye Row 5"
label(data$visaccs6)="CS Right eye Row 6"
label(data$visaccs7)="CS Right eye Row 7"
label(data$visaccs8)="CS Right eye Row 8"
label(data$visaccst)="CS Chart Total"
label(data$visaccsdy)="Was contrast sensitivity checked"
label(data$visaccsdn)="Contrast sensitivity reason not done"
label(data$auto_id_VisAcu)="Unique Teleform Number"
label(data$crf_parent_name_VisAcu)="CRF Parent Name"
label(data$study_name_VisAcu)="Study Name"

#Create new variables for factors
data$visacst01.factor = factor(data$visacst01, levels = c("0","1"))
levels(data$visacst01.factor) = c("No","Yes")

data$visacstrnd.factor = factor(data$visacstrnd, levels = c("555","666","777","888","999"))
levels(data$visacstrnd.factor) = c("Physical problems","Cognitive problems","Physical and cognitive","Refused*","Technical problems")

data$visacst02.factor = factor(data$visacst02, levels = c("0","1"))
levels(data$visacst02.factor) = c("No","Yes")

data$visacr1.factor = factor(data$visacr1, levels = c("0","1","2","3","4","5"))
levels(data$visacr1.factor) = c("0","1","2","3","4","5")

data$visacr2.factor = factor(data$visacr2, levels = c("0","1","2","3","4","5"))
levels(data$visacr2.factor) = c("0","1","2","3","4","5")

data$visacr3.factor = factor(data$visacr3, levels = c("0","1","2","3","4","5"))
levels(data$visacr3.factor) = c("0","1","2","3","4","5")

data$visacr4.factor = factor(data$visacr4, levels = c("0","1","2","3","4","5"))
levels(data$visacr4.factor) = c("0","1","2","3","4","5")

data$visacr5.factor = factor(data$visacr5, levels = c("0","1","2","3","4","5"))
levels(data$visacr5.factor) = c("0","1","2","3","4","5")

data$visacr6.factor = factor(data$visacr6, levels = c("0","1","2","3","4","5"))
levels(data$visacr6.factor) = c("0","1","2","3","4","5")

data$visacr7.factor = factor(data$visacr7, levels = c("0","1","2","3","4","5"))
levels(data$visacr7.factor) = c("0","1","2","3","4","5")

data$visacr8.factor = factor(data$visacr8, levels = c("0","1","2","3","4","5"))
levels(data$visacr8.factor) = c("0","1","2","3","4","5")

data$visacr9.factor = factor(data$visacr9, levels = c("0","1","2","3","4","5"))
levels(data$visacr9.factor) = c("0","1","2","3","4","5")

data$visacr10.factor = factor(data$visacr10, levels = c("0","1","2","3","4","5"))
levels(data$visacr10.factor) = c("0","1","2","3","4","5")

data$visacr11.factor = factor(data$visacr11, levels = c("0","1","2","3","4","5"))
levels(data$visacr11.factor) = c("0","1","2","3","4","5")

data$visacr12.factor = factor(data$visacr12, levels = c("0","1","2","3","4","5"))
levels(data$visacr12.factor) = c("0","1","2","3","4","5")

data$visacr13.factor = factor(data$visacr13, levels = c("0","1","2","3","4","5"))
levels(data$visacr13.factor) = c("0","1","2","3","4","5")

data$visacr14.factor = factor(data$visacr14, levels = c("0","1","2","3","4","5"))
levels(data$visacr14.factor) = c("0","1","2","3","4","5")

data$visacryn.factor = factor(data$visacryn, levels = c("0","1"))
levels(data$visacryn.factor) = c("No","Yes")

data$visacrrnd.factor = factor(data$visacrrnd, levels = c("555","666","777","888","999"))
levels(data$visacrrnd.factor) = c("Physical problems","Cognitive problems","Physical and cognitive","Refused*","Technical problems")

data$visacl1.factor = factor(data$visacl1, levels = c("0","1","2","3","4","5"))
levels(data$visacl1.factor) = c("0","1","2","3","4","5")

data$visacl2.factor = factor(data$visacl2, levels = c("0","1","2","3","4","5"))
levels(data$visacl2.factor) = c("0","1","2","3","4","5")

data$visacl3.factor = factor(data$visacl3, levels = c("0","1","2","3","4","5"))
levels(data$visacl3.factor) = c("0","1","2","3","4","5")

data$visacl4.factor = factor(data$visacl4, levels = c("0","1","2","3","4","5"))
levels(data$visacl4.factor) = c("0","1","2","3","4","5")

data$visacl5.factor = factor(data$visacl5, levels = c("0","1","2","3","4","5"))
levels(data$visacl5.factor) = c("0","1","2","3","4","5")

data$visacl6.factor = factor(data$visacl6, levels = c("0","1","2","3","4","5"))
levels(data$visacl6.factor) = c("0","1","2","3","4","5")

data$visacl7.factor = factor(data$visacl7, levels = c("0","1","2","3","4","5"))
levels(data$visacl7.factor) = c("0","1","2","3","4","5")

data$visacl8.factor = factor(data$visacl8, levels = c("0","1","2","3","4","5"))
levels(data$visacl8.factor) = c("0","1","2","3","4","5")

data$visacl9.factor = factor(data$visacl9, levels = c("0","1","2","3","4","5"))
levels(data$visacl9.factor) = c("0","1","2","3","4","5")

data$visacl10.factor = factor(data$visacl10, levels = c("0","1","2","3","4","5"))
levels(data$visacl10.factor) = c("0","1","2","3","4","5")

data$visacl11.factor = factor(data$visacl11, levels = c("0","1","2","3","4","5"))
levels(data$visacl11.factor) = c("0","1","2","3","4","5")

data$visacl12.factor = factor(data$visacl12, levels = c("0","1","2","3","4","5"))
levels(data$visacl12.factor) = c("0","1","2","3","4","5")

data$visacl13.factor = factor(data$visacl13, levels = c("0","1","2","3","4","5"))
levels(data$visacl13.factor) = c("0","1","2","3","4","5")

data$visacl14.factor = factor(data$visacl14, levels = c("0","1","2","3","4","5"))
levels(data$visacl14.factor) = c("0","1","2","3","4","5")

data$visacldy.factor = factor(data$visacldy, levels = c("0","1"))
levels(data$visacldy.factor) = c("No","Yes")

data$visacldn.factor = factor(data$visacldn, levels = c("555","666","777","888","999"))
levels(data$visacldn.factor) = c("Physical problems","Cognitive problems","Physical and cognitive","Refused*","Technical problems")

data$visacar1.factor = factor(data$visacar1, levels = c("0","1","2","3","4","5"))
levels(data$visacar1.factor) = c("0","1","2","3","4","5")

data$visacar2.factor = factor(data$visacar2, levels = c("0","1","2","3","4","5"))
levels(data$visacar2.factor) = c("0","1","2","3","4","5")

data$visacar3.factor = factor(data$visacar3, levels = c("0","1","2","3","4","5"))
levels(data$visacar3.factor) = c("0","1","2","3","4","5")

data$visacar4.factor = factor(data$visacar4, levels = c("0","1","2","3","4","5"))
levels(data$visacar4.factor) = c("0","1","2","3","4","5")

data$visacar5.factor = factor(data$visacar5, levels = c("0","1","2","3","4","5"))
levels(data$visacar5.factor) = c("0","1","2","3","4","5")

data$visacar6.factor = factor(data$visacar6, levels = c("0","1","2","3","4","5"))
levels(data$visacar6.factor) = c("0","1","2","3","4","5")

data$visacar7.factor = factor(data$visacar7, levels = c("0","1","2","3","4","5"))
levels(data$visacar7.factor) = c("0","1","2","3","4","5")

data$visacar8.factor = factor(data$visacar8, levels = c("0","1","2","3","4","5"))
levels(data$visacar8.factor) = c("0","1","2","3","4","5")

data$visacardy.factor = factor(data$visacardy, levels = c("0","1"))
levels(data$visacardy.factor) = c("No","Yes")

data$visacardn.factor = factor(data$visacardn, levels = c("555","666","777","888","999"))
levels(data$visacardn.factor) = c("Physical problems","Cognitive problems","Physical and cognitive","Refused*","Technical problems")

data$visacal1.factor = factor(data$visacal1, levels = c("0","1","2","3","4","5"))
levels(data$visacal1.factor) = c("0","1","2","3","4","5")

data$visacal2.factor = factor(data$visacal2, levels = c("0","1","2","3","4","5"))
levels(data$visacal2.factor) = c("0","1","2","3","4","5")

data$visacal3.factor = factor(data$visacal3, levels = c("0","1","2","3","4","5"))
levels(data$visacal3.factor) = c("0","1","2","3","4","5")

data$visacal4.factor = factor(data$visacal4, levels = c("0","1","2","3","4","5"))
levels(data$visacal4.factor) = c("0","1","2","3","4","5")

data$visacal5.factor = factor(data$visacal5, levels = c("0","1","2","3","4","5"))
levels(data$visacal5.factor) = c("0","1","2","3","4","5")

data$visacal6.factor = factor(data$visacal6, levels = c("0","1","2","3","4","5"))
levels(data$visacal6.factor) = c("0","1","2","3","4","5")

data$visacal7.factor = factor(data$visacal7, levels = c("0","1","2","3","4","5"))
levels(data$visacal7.factor) = c("0","1","2","3","4","5")

data$visacal8.factor = factor(data$visacal8, levels = c("0","1","2","3","4","5"))
levels(data$visacal8.factor) = c("0","1","2","3","4","5")

data$visacaldy.factor = factor(data$visacaldy, levels = c("0","1"))
levels(data$visacaldy.factor) = c("No","Yes")

data$visacaldn.factor = factor(data$visacaldn, levels = c("555","666","777","888","999"))
levels(data$visacaldn.factor) = c("Physical problems","Cognitive problems","Physical and cognitive","Refused*","Technical problems")

data$visaccs1.factor = factor(data$visaccs1, levels = c("0","1","2","3","4","5","6"))
levels(data$visaccs1.factor) = c("0","1","2","3","4","5","6")

data$visaccs2.factor = factor(data$visaccs2, levels = c("0","1","2","3","4","5","6"))
levels(data$visaccs2.factor) = c("0","1","2","3","4","5","6")

data$visaccs3.factor = factor(data$visaccs3, levels = c("0","1","2","3","4","5","6"))
levels(data$visaccs3.factor) = c("0","1","2","3","4","5","6")

data$visaccs4.factor = factor(data$visaccs4, levels = c("0","1","2","3","4","5","6"))
levels(data$visaccs4.factor) = c("0","1","2","3","4","5","6")

data$visaccs5.factor = factor(data$visaccs5, levels = c("0","1","2","3","4","5","6"))
levels(data$visaccs5.factor) = c("0","1","2","3","4","5","6")

data$visaccs6.factor = factor(data$visaccs6, levels = c("0","1","2","3","4","5","6"))
levels(data$visaccs6.factor) = c("0","1","2","3","4","5","6")

data$visaccs7.factor = factor(data$visaccs7, levels = c("0","1","2","3","4","5","6"))
levels(data$visaccs7.factor) = c("0","1","2","3","4","5","6")

data$visaccs8.factor = factor(data$visaccs8, levels = c("0","1","2","3","4","5","6"))
levels(data$visaccs8.factor) = c("0","1","2","3","4","5","6")

data$visaccsdy.factor = factor(data$visaccsdy, levels = c("0","1"))
levels(data$visaccsdy.factor) = c("No","Yes")

data$visaccsdn.factor = factor(data$visaccsdn, levels = c("555","666","777","888","999"))
levels(data$visaccsdn.factor) = c("Physical problems","Cognitive problems","Physical and cognitive","Refused*","Technical problems")

data$visacst1.factor = factor(data$visacst1, levels = c("_0","_00","_000","_1"))
levels(data$visacst1.factor) = c("Left","Right","Top","Bottom")

data$visacst2.factor = factor(data$visacst2, levels = c("_0","_00","_000","_1"))
levels(data$visacst2.factor) = c("Right","Top","Bottom","Left")

data$visacst3.factor = factor(data$visacst3, levels = c("_0","_00","_000","_1"))
levels(data$visacst3.factor) = c("Left","Right","Top","Bottom")

data$visacst4.factor = factor(data$visacst4, levels = c("_0","_00","_000","_1"))
levels(data$visacst4.factor) = c("Left","Right","Bottom","Top")

data$visacst5.factor = factor(data$visacst5, levels = c("_0","_00","_000","_1"))
levels(data$visacst5.factor) = c("Left","Right","Bottom","Top")

data$visacst6.factor = factor(data$visacst6, levels = c("_0","_00","_000","_1"))
levels(data$visacst6.factor) = c("Right","Top","Bottom","Left")

data$visacst7.factor = factor(data$visacst7, levels = c("_0","_00","_000","_1"))
levels(data$visacst7.factor) = c("Left","Top","Bottom","Right")

data$visacst8.factor = factor(data$visacst8, levels = c("_0","_00","_000","_1"))
levels(data$visacst8.factor) = c("Right","Top","Bottom","Left")

data$visacst9.factor = factor(data$visacst9, levels = c("_0","_00","_000","_1"))
levels(data$visacst9.factor) = c("Left","Top","Bottom","Right")

