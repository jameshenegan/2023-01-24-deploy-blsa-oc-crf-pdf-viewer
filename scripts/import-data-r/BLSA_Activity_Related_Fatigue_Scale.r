#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Activity_Related_Fatigue_Scale.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_ActRelFatSca)="CRF Version"
label(data$obsdate_arfsdate)="Visit Date"
label(data$arfstid)="Tester ID"
label(data$blank_ActRelFatSca)="Blank Form"
label(data$lwalk30_p)="Leisurely walk for 30 min physical fatigue"
label(data$lwalk30_m)="Leisurely Walk 30 Min Mental fatigue"
label(data$lwalk30_yn)="Leisurely Walk 30 Min Done activity"
label(data$bwalk1hr_p)="Brisk walk for 1 hr physical fatigue"
label(data$bwalk1hr_m)="Brisk walk for 1 hr Mental fatigue"
label(data$bwalk1hr_yn)="Brisk walk for 1 hr Done activity"
label(data$lthouse_p)="Light Household Activity physical fatigue"
label(data$lthouse_m)="Light Household Activity Mental fatigue"
label(data$lthouse_yn)="Light Household Activity Done activity"
label(data$hvygard_p)="Heavy Gardening Yard Work physical fatigue"
label(data$hvygard_m)="Heavy Gardening Yard Work Mental fatigue"
label(data$hvygard_yn)="Heavy Gardening Yard Work Done activity"
label(data$tv_p)="Watching TV for 2Hr physical fatigue"
label(data$tv_m)="Watching TV for 2Hr Mental fatigue"
label(data$tv_yn)="Watching TV for 2Hr Done activity"
label(data$sit_p)="Sit quietly for 1Hr physical fatigue"
label(data$sit_m)="Sit quietly for 1Hr Mental fatigue"
label(data$sit_yn)="Sit quietly for 1Hr Done activity"
label(data$modhvystr_p)="Moderate to heavy intensity strength training for 30 min physical fatigue"
label(data$modhvystr_m)="Moderate to heavy intensity strength training for 30 min Mental fatigue"
label(data$modhvystr_yn)="Moderate to heavy intensity strength training for 30 min Done activity"
label(data$pptsocial_p)="Participating in social activity for 1 hour physical fatigue"
label(data$pptsocial_m)="Participating in social activity for 1 hour Mental fatigue"
label(data$pptsocial_yn)="Participating in social activity for 1 hour Done activity"
label(data$hostsocial_p)="Hosting a social event for 1 hour physical fatigue"
label(data$hostsocial_m)="Hosting a social event for 1 hour Mental fatigue"
label(data$hostsocial_yn)="Hosting a social event for 1 hour Done activity"
label(data$highactivity_p)="High intensity activity for 30 min physical fatigue"
label(data$highactivity_m)="High intensity activity for 30 min Mental fatigue"
label(data$highactivity_yn)="High intensity activity for 30 min Done activity"
label(data$lwalk30_e)="Leisurely Walk 30 Min Energy Level"
label(data$lwalk1hr_p)="Leisurely walk for 1 hr physical fatigue"
label(data$lwalk1hr_m)="Leisurely Walk 1 hr Mental fatigue"
label(data$lwalk1hr_e)="Leisurely Walk 1 hr Energy Level"
label(data$lwalk1hr_yn)="Leisurely Walk 1 hr Done activity"
label(data$bwalk30_p)="Brisk walk for 30 min physical fatigue"
label(data$bwalk30_m)="Brisk walk for 30 min Mental fatigue"
label(data$bwalk30_e)="Brisk walk for 30 min Energy Level"
label(data$bwalk30_yn)="Brisk walk for 30 min Done activity"
label(data$bwalk1hr_e)="Brisk walk for 1 hr Energy Level"
label(data$lthouse_e)="Light Household Activity Energy level"
label(data$modhouse_p)="Moderate Household Activity 30 min physical fatigue"
label(data$modhouse_m)="Moderate Household Activity 30 min Mental fatigue"
label(data$modhouse_e)="Moderate Household Activity 30 min Energy level"
label(data$modhouse_yn)="Moderate Household Activity 30 min Done activity"
label(data$hvyhouse_p)="Heavy Household Activity physical fatigue"
label(data$hvyhouse_m)="Heavy Household Activity Mental fatigue"
label(data$hvyhouse_e)="Heavy Household Activity Energy level"
label(data$hvyhouse_yn)="Heavy Household Activity Done activity"
label(data$hvygard_e)="Heavy Gardening Yard Work energy level"
label(data$read_p)="Reading 1 hour physical fatigue"
label(data$read_m)="Reading 1 hour Mental fatigue"
label(data$read_e)="Reading 1 hour Energy level"
label(data$read_yn)="Reading 1 hour Done activity"
label(data$tv_e)="Watch TV for 2 hours Energy level"
label(data$sit_e)="Sit quietly for hour Energy level"
label(data$paper_p)="Doing paper work 1 hour physical fatigue"
label(data$paper_m)="Doing paper work 1 hour Mental fatigue"
label(data$paper_e)="Doing paper work 1 hour Energy level"
label(data$paper_yn)="Doing paper work 1 hour Done activity"
label(data$comp_p)="Using a computer 1 hour physical fatigue"
label(data$comp_m)="Using a computer 1 hour Mental fatigue"
label(data$comp_e)="Using a computer 1 hour Energy level"
label(data$comp_yn)="Using a computer 1 hour Done activity"
label(data$ltstrength_p)="Light intensity strength training 30 min physical fatigue"
label(data$ltstrength_m)="Light intensity strength training 30 min Mental fatigue"
label(data$ltstrength_e)="Light intensity strength training 30 min Energy level"
label(data$ltstrength_yn)="Light intensity strength training 30 min Done activity"
label(data$modhvystr_e)="Moderate to heavy intensity strength training for 30 min Energy level"
label(data$dance_p)="Dancing for 30 min physical fatigue"
label(data$dance_m)="Dancing for 30 min Mental fatigue"
label(data$dance_e)="Dancing for 30 min Energy level"
label(data$dance_yn)="Dancing for 30 min Done activity"
label(data$convo_p)="Having a verbal conversaton for 1 hour physical fatigue"
label(data$convo_m)="Having a verbal conversaton for 1 hour Mental fatigue"
label(data$convo_e)="Having a verbal conversaton for 1 hour Energy level"
label(data$convo_yn)="Having a verbal conversaton for 1 hour Done activity"
label(data$shop_p)="Shopping for 1 hr physical fatigue"
label(data$shop_m)="Shopping for 1 hr Mental fatigue"
label(data$shop_e)="Shopping for 1 hr Energy level"
label(data$shop_yn)="Shopping for 1 hr Done activity"
label(data$drive_p)="Drive a vehicle for 1 hr physical fatigue"
label(data$drive_m)="Drive a vehicle for 1 hr Mental fatigue"
label(data$drive_e)="Drive a vehicle for 1 hr Energy level"
label(data$drive_yn)="Drive a vehicle for 1 hr Done activity"
label(data$clbmtg_p)="Attend club mtg for 1 hr physical fatigue"
label(data$clbmtg_m)="Attend club mtg for 1 hr Mental fatigue"
label(data$clbmtg_e)="Attend club mtg for 1 hr Energy level"
label(data$clbmtg_yn)="Attend club mtg for 1 hr Done activity"
label(data$concert_p)="Attend concert lecture movie or sporting event 2 hr physical fatigue"
label(data$concert_m)="Attend concert lecture movie or sporting event 2 hr Mental fatigue"
label(data$concert_e)="Attend concert lecture movie or sporting event 2 hr Energy level"
label(data$concert_yn)="Attend concert lecture movie or sporting event 2 hr Done activity"
label(data$pptsocial_e)="Participating in social activity for 1 hour Energy level"
label(data$hostsocial_e)="Hosting a social event for 1 hour Energy level"
label(data$ltactivity_p)="Light intensity activity for 30 min physical fatigue"
label(data$ltactivity_m)="Light intensity activity for 30 min Mental fatigue"
label(data$ltactivity_e)="Light intensity activity for 30 min Energy level"
label(data$ltactivity_yn)="Light intensity activity for 30 min Done activity"
label(data$modactivity_p)="Moderate intensity activity for 30 min physical fatigue"
label(data$modactivity_m)="Moderate intensity activity for 30 min Mental fatigue"
label(data$modactivity_e)="Moderate intensity activity for 30 min Energy level"
label(data$modactivity_yn)="Moderate intensity activity for 30 min Done activity"
label(data$highactivity_e)="High intensity activity for 30 min Energy level"
label(data$pastmonth_e)="Usual energy level past month on a scale of 1 to 10"
label(data$quest_p)="Completing this questionnaire physical fatigue"
label(data$quest_m)="Completing this questionnaire Mental fatigue"
label(data$quest_e)="Completing this questionnaire Energy level"
label(data$auto_id_ActRelFatSca)="Unique Teleform Number"
label(data$crf_parent_name_ActRelFatSca)="CRF Parent Name"
label(data$study_name_ActRelFatSca)="Study Name"

#Create new variables for factors
data$lwalk30_p.factor = factor(data$lwalk30_p, levels = c("0","1","2","3","4","5"))
levels(data$lwalk30_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$lwalk30_m.factor = factor(data$lwalk30_m, levels = c("0","1","2","3","4","5"))
levels(data$lwalk30_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$lwalk30_yn.factor = factor(data$lwalk30_yn, levels = c("0","1"))
levels(data$lwalk30_yn.factor) = c("No","Yes")

data$bwalk1hr_p.factor = factor(data$bwalk1hr_p, levels = c("0","1","2","3","4","5"))
levels(data$bwalk1hr_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$bwalk1hr_m.factor = factor(data$bwalk1hr_m, levels = c("0","1","2","3","4","5"))
levels(data$bwalk1hr_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$bwalk1hr_yn.factor = factor(data$bwalk1hr_yn, levels = c("0","1"))
levels(data$bwalk1hr_yn.factor) = c("No","Yes")

data$lthouse_p.factor = factor(data$lthouse_p, levels = c("0","1","2","3","4","5"))
levels(data$lthouse_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$lthouse_m.factor = factor(data$lthouse_m, levels = c("0","1","2","3","4","5"))
levels(data$lthouse_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$lthouse_yn.factor = factor(data$lthouse_yn, levels = c("0","1"))
levels(data$lthouse_yn.factor) = c("No","Yes")

data$hvygard_p.factor = factor(data$hvygard_p, levels = c("0","1","2","3","4","5"))
levels(data$hvygard_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$hvygard_m.factor = factor(data$hvygard_m, levels = c("0","1","2","3","4","5"))
levels(data$hvygard_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$hvygard_yn.factor = factor(data$hvygard_yn, levels = c("0","1"))
levels(data$hvygard_yn.factor) = c("No","Yes")

data$tv_p.factor = factor(data$tv_p, levels = c("0","1","2","3","4","5"))
levels(data$tv_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$tv_m.factor = factor(data$tv_m, levels = c("0","1","2","3","4","5"))
levels(data$tv_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$tv_yn.factor = factor(data$tv_yn, levels = c("0","1"))
levels(data$tv_yn.factor) = c("No","Yes")

data$sit_p.factor = factor(data$sit_p, levels = c("0","1","2","3","4","5"))
levels(data$sit_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$sit_m.factor = factor(data$sit_m, levels = c("0","1","2","3","4","5"))
levels(data$sit_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$sit_yn.factor = factor(data$sit_yn, levels = c("0","1"))
levels(data$sit_yn.factor) = c("No","Yes")

data$modhvystr_p.factor = factor(data$modhvystr_p, levels = c("0","1","2","3","4","5"))
levels(data$modhvystr_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$modhvystr_m.factor = factor(data$modhvystr_m, levels = c("0","1","2","3","4","5"))
levels(data$modhvystr_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$modhvystr_yn.factor = factor(data$modhvystr_yn, levels = c("0","1"))
levels(data$modhvystr_yn.factor) = c("No","Yes")

data$pptsocial_p.factor = factor(data$pptsocial_p, levels = c("0","1","2","3","4","5"))
levels(data$pptsocial_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$pptsocial_m.factor = factor(data$pptsocial_m, levels = c("0","1","2","3","4","5"))
levels(data$pptsocial_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$pptsocial_yn.factor = factor(data$pptsocial_yn, levels = c("0","1"))
levels(data$pptsocial_yn.factor) = c("No","Yes")

data$hostsocial_p.factor = factor(data$hostsocial_p, levels = c("0","1","2","3","4","5"))
levels(data$hostsocial_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$hostsocial_m.factor = factor(data$hostsocial_m, levels = c("0","1","2","3","4","5"))
levels(data$hostsocial_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$hostsocial_yn.factor = factor(data$hostsocial_yn, levels = c("0","1"))
levels(data$hostsocial_yn.factor) = c("No","Yes")

data$highactivity_p.factor = factor(data$highactivity_p, levels = c("0","1","2","3","4","5"))
levels(data$highactivity_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$highactivity_m.factor = factor(data$highactivity_m, levels = c("0","1","2","3","4","5"))
levels(data$highactivity_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$highactivity_yn.factor = factor(data$highactivity_yn, levels = c("0","1"))
levels(data$highactivity_yn.factor) = c("No","Yes")

data$lwalk30_e.factor = factor(data$lwalk30_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$lwalk30_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$lwalk1hr_p.factor = factor(data$lwalk1hr_p, levels = c("0","1","2","3","4","5"))
levels(data$lwalk1hr_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$lwalk1hr_m.factor = factor(data$lwalk1hr_m, levels = c("0","1","2","3","4","5"))
levels(data$lwalk1hr_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$lwalk1hr_e.factor = factor(data$lwalk1hr_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$lwalk1hr_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$lwalk1hr_yn.factor = factor(data$lwalk1hr_yn, levels = c("0","1"))
levels(data$lwalk1hr_yn.factor) = c("No","Yes")

data$bwalk30_p.factor = factor(data$bwalk30_p, levels = c("0","1","2","3","4","5"))
levels(data$bwalk30_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$bwalk30_m.factor = factor(data$bwalk30_m, levels = c("0","1","2","3","4","5"))
levels(data$bwalk30_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$bwalk30_e.factor = factor(data$bwalk30_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$bwalk30_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$bwalk30_yn.factor = factor(data$bwalk30_yn, levels = c("0","1"))
levels(data$bwalk30_yn.factor) = c("No","Yes")

data$bwalk1hr_e.factor = factor(data$bwalk1hr_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$bwalk1hr_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$lthouse_e.factor = factor(data$lthouse_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$lthouse_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$modhouse_p.factor = factor(data$modhouse_p, levels = c("0","1","2","3","4","5"))
levels(data$modhouse_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$modhouse_m.factor = factor(data$modhouse_m, levels = c("0","1","2","3","4","5"))
levels(data$modhouse_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$modhouse_e.factor = factor(data$modhouse_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$modhouse_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$modhouse_yn.factor = factor(data$modhouse_yn, levels = c("0","1"))
levels(data$modhouse_yn.factor) = c("No","Yes")

data$hvyhouse_p.factor = factor(data$hvyhouse_p, levels = c("0","1","2","3","4","5"))
levels(data$hvyhouse_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$hvyhouse_m.factor = factor(data$hvyhouse_m, levels = c("0","1","2","3","4","5"))
levels(data$hvyhouse_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$hvyhouse_e.factor = factor(data$hvyhouse_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$hvyhouse_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$hvyhouse_yn.factor = factor(data$hvyhouse_yn, levels = c("0","1"))
levels(data$hvyhouse_yn.factor) = c("No","Yes")

data$hvygard_e.factor = factor(data$hvygard_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$hvygard_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$read_p.factor = factor(data$read_p, levels = c("0","1","2","3","4","5"))
levels(data$read_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$read_m.factor = factor(data$read_m, levels = c("0","1","2","3","4","5"))
levels(data$read_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$read_e.factor = factor(data$read_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$read_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$read_yn.factor = factor(data$read_yn, levels = c("0","1"))
levels(data$read_yn.factor) = c("No","Yes")

data$tv_e.factor = factor(data$tv_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$tv_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$sit_e.factor = factor(data$sit_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$sit_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$paper_p.factor = factor(data$paper_p, levels = c("0","1","2","3","4","5"))
levels(data$paper_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$paper_m.factor = factor(data$paper_m, levels = c("0","1","2","3","4","5"))
levels(data$paper_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$paper_e.factor = factor(data$paper_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$paper_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$paper_yn.factor = factor(data$paper_yn, levels = c("0","1"))
levels(data$paper_yn.factor) = c("No","Yes")

data$comp_p.factor = factor(data$comp_p, levels = c("0","1","2","3","4","5"))
levels(data$comp_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$comp_m.factor = factor(data$comp_m, levels = c("0","1","2","3","4","5"))
levels(data$comp_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$comp_e.factor = factor(data$comp_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$comp_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$comp_yn.factor = factor(data$comp_yn, levels = c("0","1"))
levels(data$comp_yn.factor) = c("No","Yes")

data$ltstrength_p.factor = factor(data$ltstrength_p, levels = c("0","1","2","3","4","5"))
levels(data$ltstrength_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$ltstrength_m.factor = factor(data$ltstrength_m, levels = c("0","1","2","3","4","5"))
levels(data$ltstrength_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$ltstrength_e.factor = factor(data$ltstrength_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$ltstrength_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$ltstrength_yn.factor = factor(data$ltstrength_yn, levels = c("0","1"))
levels(data$ltstrength_yn.factor) = c("No","Yes")

data$modhvystr_e.factor = factor(data$modhvystr_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$modhvystr_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$dance_p.factor = factor(data$dance_p, levels = c("0","1","2","3","4","5"))
levels(data$dance_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$dance_m.factor = factor(data$dance_m, levels = c("0","1","2","3","4","5"))
levels(data$dance_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$dance_e.factor = factor(data$dance_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$dance_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$dance_yn.factor = factor(data$dance_yn, levels = c("0","1"))
levels(data$dance_yn.factor) = c("No","Yes")

data$convo_p.factor = factor(data$convo_p, levels = c("0","1","2","3","4","5"))
levels(data$convo_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$convo_m.factor = factor(data$convo_m, levels = c("0","1","2","3","4","5"))
levels(data$convo_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$convo_e.factor = factor(data$convo_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$convo_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$convo_yn.factor = factor(data$convo_yn, levels = c("0","1"))
levels(data$convo_yn.factor) = c("No","Yes")

data$shop_p.factor = factor(data$shop_p, levels = c("0","1","2","3","4","5"))
levels(data$shop_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$shop_m.factor = factor(data$shop_m, levels = c("0","1","2","3","4","5"))
levels(data$shop_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$shop_e.factor = factor(data$shop_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$shop_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$shop_yn.factor = factor(data$shop_yn, levels = c("0","1"))
levels(data$shop_yn.factor) = c("No","Yes")

data$drive_p.factor = factor(data$drive_p, levels = c("0","1","2","3","4","5"))
levels(data$drive_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$drive_m.factor = factor(data$drive_m, levels = c("0","1","2","3","4","5"))
levels(data$drive_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$drive_e.factor = factor(data$drive_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$drive_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$drive_yn.factor = factor(data$drive_yn, levels = c("0","1"))
levels(data$drive_yn.factor) = c("No","Yes")

data$clbmtg_p.factor = factor(data$clbmtg_p, levels = c("0","1","2","3","4","5"))
levels(data$clbmtg_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$clbmtg_m.factor = factor(data$clbmtg_m, levels = c("0","1","2","3","4","5"))
levels(data$clbmtg_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$clbmtg_e.factor = factor(data$clbmtg_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$clbmtg_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$clbmtg_yn.factor = factor(data$clbmtg_yn, levels = c("0","1"))
levels(data$clbmtg_yn.factor) = c("No","Yes")

data$concert_p.factor = factor(data$concert_p, levels = c("0","1","2","3","4","5"))
levels(data$concert_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$concert_m.factor = factor(data$concert_m, levels = c("0","1","2","3","4","5"))
levels(data$concert_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$concert_e.factor = factor(data$concert_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$concert_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$concert_yn.factor = factor(data$concert_yn, levels = c("0","1"))
levels(data$concert_yn.factor) = c("No","Yes")

data$pptsocial_e.factor = factor(data$pptsocial_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$pptsocial_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$hostsocial_e.factor = factor(data$hostsocial_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$hostsocial_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$ltactivity_p.factor = factor(data$ltactivity_p, levels = c("0","1","2","3","4","5"))
levels(data$ltactivity_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$ltactivity_m.factor = factor(data$ltactivity_m, levels = c("0","1","2","3","4","5"))
levels(data$ltactivity_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$ltactivity_e.factor = factor(data$ltactivity_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$ltactivity_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$ltactivity_yn.factor = factor(data$ltactivity_yn, levels = c("0","1"))
levels(data$ltactivity_yn.factor) = c("No","Yes")

data$modactivity_p.factor = factor(data$modactivity_p, levels = c("0","1","2","3","4","5"))
levels(data$modactivity_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$modactivity_m.factor = factor(data$modactivity_m, levels = c("0","1","2","3","4","5"))
levels(data$modactivity_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$modactivity_e.factor = factor(data$modactivity_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$modactivity_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$modactivity_yn.factor = factor(data$modactivity_yn, levels = c("0","1"))
levels(data$modactivity_yn.factor) = c("No","Yes")

data$highactivity_e.factor = factor(data$highactivity_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$highactivity_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

data$pastmonth_e.factor = factor(data$pastmonth_e, levels = c("0","1","10","2","3","4","5","6","7","8","9"))
levels(data$pastmonth_e.factor) = c("0 no energy at all","1","10 most energy ever","2","3","4","5","6","7","8","9")

data$quest_p.factor = factor(data$quest_p, levels = c("0","1","2","3","4","5"))
levels(data$quest_p.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$quest_m.factor = factor(data$quest_m, levels = c("0","1","2","3","4","5"))
levels(data$quest_m.factor) = c("0 No fatigue","1","2","3","4","5 Extreme fatigue")

data$quest_e.factor = factor(data$quest_e, levels = c("-1","-2","-3","-4","-5","0","1","2","3","4","5"))
levels(data$quest_e.factor) = c("-1","-2","-3","-4","-5 Lost most energy","0","1","2","3","4","5 Gained most energy")

