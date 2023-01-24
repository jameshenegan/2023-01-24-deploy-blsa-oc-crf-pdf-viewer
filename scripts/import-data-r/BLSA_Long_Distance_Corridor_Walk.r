#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Long_Distance_Corridor_Walk.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_LonDisCorWal)="CRF Version"
label(data$obsdate_ldcwdate)="Date Completed"
label(data$ldcwtid)="Tester ID"
label(data$blank_LonDisCorWal)="Blank Form"
label(data$ldcw01)="Was the participant able to complete the fast paced 6 meter walk with or without a walking aid"
label(data$ldcw02)="Are there abnormal ECG hardcopy references"
label(data$ldcw02a)="Abnormal ECG"
label(data$ldcw02a1)="Mobitz Type II 2nd or 3rd degree heart block"
label(data$ldcw02a2)="Q-wave > 1mm in 2 continuous leads"
label(data$ldcw02a3)="ST depression > 2mm w/o LVH or LBBB"
label(data$ldcw02a4)="ST elevation > 2mm w/o LBBB and early repolarization"
label(data$ldcw03a)="Sitting blood pressure systolic"
label(data$ldcw03b)="Sitting blood pressure diastolic"
label(data$ldcw03c)="Sitting heart rate"
label(data$ldcw03)="Was resting heart rate greater than 120 bpm"
label(data$ldcw04)="Was Systolic BP greater than 180 or diastolic pressure greater than 110"
label(data$ldcw05)="Need to use walking aid"
label(data$ldcw06)="Was Cosmed worn during test"
label(data$ldcw06a)="Mask size"
label(data$ldcw11)="Had heart attack within past 3 mo"
label(data$ldcw12)="Had angioplasty within past 3 mo"
label(data$ldcw13)="Had heart surgery within past 3 mo"
label(data$ldcw14)="Had new or worsening within past 3 mo"
label(data$ldcw15)="Had new or worsening angina within past 3 mo"
label(data$ldcw16)="Had new or worsening shortness of breath within past 3 mo"
label(data$mdcw21)="Usual Pace heart rate"
label(data$mdcw22)="Did heart rate exceed predetermined max during first lap"
label(data$mdcw22a)="Laps completed"
label(data$mdcw23)="Did heart rate exceed predetermined max anytime during the UP Walk"
label(data$mdcw24)="UP Number of laps completed"
label(data$mdcw25)="Number of additional meters"
label(data$mdcw26)="Heart rate at the end of 230 walk"
label(data$mdcw27)="Did participant complete 230 walk"
label(data$mdcw27a)="Usual Pace reason not done"
label(data$mdcw27b)="Did participant need to use walking aid"
label(data$ldcw41am)="Lap 1 minutes"
label(data$ldcw41as)="Lap 1 seconds"
label(data$ldcw41bm)="Lap 2 minutes"
label(data$ldcw41bs)="Lap 2 seconds"
label(data$ldcw41cm)="Lap 3 minutes"
label(data$ldcw41cs)="Lap 3 seconds"
label(data$ldcw41dm)="Lap 4 minutes"
label(data$ldcw41ds)="Lap 4 seconds"
label(data$ldcw41em)="Lap 5 minutes"
label(data$ldcw41es)="Lap 5 seconds"
label(data$ldcw41fm)="Lap 6 minutes"
label(data$ldcw41fs)="Lap 6 seconds"
label(data$ldcw41gm)="Lap 7 minutes"
label(data$ldcw41gs)="Lap 7 seconds"
label(data$ldcw41hm)="Lap 8 minutes"
label(data$ldcw41hs)="Lap 8 secods"
label(data$ldcw41im)="Lap 9 minutes"
label(data$ldcw41is)="Lap 9 seconds"
label(data$ldcw41jm)="Lap 10 minutes"
label(data$ldcw41js)="Lap 10 seconds"
label(data$ldcw42)="Time at end of 400 meters or STOP minutes"
label(data$ldcw42a)="Time at end of 400 meters or STOP seconds"
label(data$ldcw43)="Heart rate at the end of 400m or Stop"
label(data$ldcw44a)="BP systolic at the end of 400m"
label(data$ldcw44b)="Sitting blood pressure diastolic"
label(data$ldcw45)="Did participant complete 10 laps"
label(data$ldcw45a)="Number of laps completed"
label(data$ldcw45b)="Number of additional meters"
label(data$ldcw46)="Heart rate after 2 min"
label(data$ldcw47)="Did participant complete 400 meter walk"
label(data$ldcw47a)="400 meter reason not done"
label(data$ldcw47c)="400 meter other reason not done"
label(data$ldcw47b)="Did participant need to use walking aid"
label(data$ldcw47bs)="Borg Score"
label(data$ldcw48a)="400 meter Chest pain"
label(data$ldcw48b)="400 meter Shortness of breath"
label(data$ldcw48c)="400 meter knee pain"
label(data$ldcw48d)="400 meter hip pain"
label(data$ldcw48e)="400 meter calf pain"
label(data$ldcw48f)="400 meter back pain"
label(data$ldcw48g)="400 meter foot pain"
label(data$ldcw48h)="400 meter leg cramps"
label(data$ldcw48i)="400 meter numbness or tingling in legs or feet"
label(data$mdcw51)="Left arm swing when walking"
label(data$mdcw52)="Right arm swing when walking"
label(data$mdcw53)="Hand tremor LEFT arm"
label(data$mdcw54)="Hand tremor RIGHT arm"
label(data$amstartampm)="Activity Monitor start time Ampm"
label(data$amstopampm)="Activity Monitor stop time Ampm"
label(data$am_starttime)="Activity Monitor start time"
label(data$am_stoptime)="Activity Monitor stop time"
label(data$cosmed5k)="Cosmed K5"
label(data$ldcw44c)="BP systolic at 2 minutes of recovery"
label(data$ldcw44d)="BP diastolic at 2 minutes of recovery"
label(data$ldcw44e)="BP systolic at 5 minutes of recovery"
label(data$ldcw44f)="BP diastolic at 5 minutes of recovery"
label(data$amstarttime)="Activity Monitor start time"
label(data$amstoptime)="Activity Monitor stop time"
label(data$auto_id_LonDisCorWal)="Unique Form"
label(data$blank_1_LonDisCorWal)="Blank"
label(data$crf_parent_name_LonDisCorWal)="CRF Parent Name"
label(data$item_group_repeat_LonDisCorWal)="Item Group Repeate"
label(data$ldcw02a1_ldcw02a1)="Mobitz Type II 2nd or 3rd degree heart block : Mobitz type II 2nd or 3rd degree heart block (Checkbox Indicator)"
label(data$ldcw02a2_ldcw02a2)="Q-wave > 1mm in 2 continuous leads : Q-wave > 1mm in 2 contiguous leads (Checkbox Indicator)"
label(data$ldcw02a3_ldcw02a3)="ST depression > 2mm w/o LVH or LBBB : ST depression > 2mm w/o LVH or LBBB (Checkbox Indicator)"
label(data$ldcw02a4_ldcw02a4)="ST elevation > 2mm w/o LBBB and early repolarization : ST elevation > 2mm w/o LBBB and early repolarization (Checkbox Indicator)"
label(data$ldcw02a_ldcw02a1)="Abnormal ECG : Mobitz type II 2nd or 3rd degree heart block (Checkbox Indicator)"
label(data$ldcw02a_ldcw02a2)="Abnormal ECG : Q-wave > 1mm in 2 contiguous leads (Checkbox Indicator)"
label(data$ldcw02a_ldcw02a3)="Abnormal ECG : ST depression > 2mm w/o LVH or LBBB (Checkbox Indicator)"
label(data$ldcw02a_ldcw02a4)="Abnormal ECG : ST elevation > 2mm w/o LBBB and early repolarization (Checkbox Indicator)"
label(data$mdcw22a_1)="Laps completed : 1 (Checkbox Indicator)"
label(data$mdcw22a_2)="Laps completed : 2 (Checkbox Indicator)"
label(data$mdcw22a_3)="Laps completed : 3 (Checkbox Indicator)"
label(data$mdcw22a_4)="Laps completed : 4 (Checkbox Indicator)"
label(data$mdcw22a_5)="Laps completed : 5 (Checkbox Indicator)"
label(data$mdcw22a_6)="Laps completed : 6 (Checkbox Indicator)"
label(data$mdcw22a_7)="Laps completed : 7 (Checkbox Indicator)"
label(data$study_name_LonDisCorWal)="Study Name"

#Create new variables for factors
data$ldcw01.factor = factor(data$ldcw01, levels = c("0","1"))
levels(data$ldcw01.factor) = c("No","Yes")

data$ldcw02.factor = factor(data$ldcw02, levels = c("0","1","2"))
levels(data$ldcw02.factor) = c("No","Yes","ECG not done or not available")

data$ldcw03.factor = factor(data$ldcw03, levels = c("0","1"))
levels(data$ldcw03.factor) = c("No","Yes")

data$ldcw04.factor = factor(data$ldcw04, levels = c("0","1"))
levels(data$ldcw04.factor) = c("No","Yes")

data$ldcw05.factor = factor(data$ldcw05, levels = c("0","1"))
levels(data$ldcw05.factor) = c("No","Yes")

data$ldcw06.factor = factor(data$ldcw06, levels = c("0","1"))
levels(data$ldcw06.factor) = c("No","Yes")

data$ldcw06a.factor = factor(data$ldcw06a, levels = c("1","2","3"))
levels(data$ldcw06a.factor) = c("Small","Medium","Large")

data$ldcw11.factor = factor(data$ldcw11, levels = c("0","1","2"))
levels(data$ldcw11.factor) = c("No","Yes","Dont know")

data$ldcw12.factor = factor(data$ldcw12, levels = c("0","1","2"))
levels(data$ldcw12.factor) = c("No","Yes","Dont know")

data$ldcw13.factor = factor(data$ldcw13, levels = c("0","1","2"))
levels(data$ldcw13.factor) = c("No","Yes","Dont know")

data$ldcw14.factor = factor(data$ldcw14, levels = c("0","1","2"))
levels(data$ldcw14.factor) = c("No","Yes","Dont know")

data$ldcw15.factor = factor(data$ldcw15, levels = c("0","1","2"))
levels(data$ldcw15.factor) = c("No","Yes","Dont know")

data$ldcw16.factor = factor(data$ldcw16, levels = c("0","1","2"))
levels(data$ldcw16.factor) = c("No","Yes","Dont know")

data$mdcw22.factor = factor(data$mdcw22, levels = c("0","1"))
levels(data$mdcw22.factor) = c("No","Yes")

data$mdcw23.factor = factor(data$mdcw23, levels = c("0","1"))
levels(data$mdcw23.factor) = c("No","Yes")

data$mdcw27.factor = factor(data$mdcw27, levels = c("0","1"))
levels(data$mdcw27.factor) = c("No","Yes")

data$mdcw27a.factor = factor(data$mdcw27a, levels = c("1","2","3","4","5","6","7","77","8","9","99"))
levels(data$mdcw27a.factor) = c("Exclusion criteria","Chest pain","Short of Breath","Felt faint","Knee pain","Hip pain","Calf pain","Refused","Back pain","Other","No time or tester")

data$mdcw27b.factor = factor(data$mdcw27b, levels = c("0","1"))
levels(data$mdcw27b.factor) = c("No","Yes")

data$ldcw45.factor = factor(data$ldcw45, levels = c("0","1"))
levels(data$ldcw45.factor) = c("No","Yes")

data$ldcw47.factor = factor(data$ldcw47, levels = c("0","1"))
levels(data$ldcw47.factor) = c("No","Yes")

data$ldcw47a.factor = factor(data$ldcw47a, levels = c("1","10","11","13","14","2","3","4","5","6","7","77","8","9","99"))
levels(data$ldcw47a.factor) = c("Exclusion criteria","Did not finish 2:30 walk","Elevated HR during 2:30 walk"," Had symptoms during 2:30 walk","Fatigue/Exhaustion/Tiredness","Chest pain","Short of Breath","Felt faint","Knee pain","Hip pain","Calf pain","Refused","Back pain","Other","No time or tester")

data$ldcw47b.factor = factor(data$ldcw47b, levels = c("0","1"))
levels(data$ldcw47b.factor) = c("No","Yes")

data$ldcw48a.factor = factor(data$ldcw48a, levels = c("0","1","2"))
levels(data$ldcw48a.factor) = c("No","Yes","Dont know")

data$ldcw48b.factor = factor(data$ldcw48b, levels = c("0","1","2"))
levels(data$ldcw48b.factor) = c("No","Yes","Dont know")

data$ldcw48c.factor = factor(data$ldcw48c, levels = c("0","1","2"))
levels(data$ldcw48c.factor) = c("No","Yes","Dont know")

data$ldcw48d.factor = factor(data$ldcw48d, levels = c("0","1","2"))
levels(data$ldcw48d.factor) = c("No","Yes","Dont know")

data$ldcw48e.factor = factor(data$ldcw48e, levels = c("0","1","2"))
levels(data$ldcw48e.factor) = c("No","Yes","Dont know")

data$ldcw48f.factor = factor(data$ldcw48f, levels = c("0","1","2"))
levels(data$ldcw48f.factor) = c("No","Yes","Dont know")

data$ldcw48g.factor = factor(data$ldcw48g, levels = c("0","1","2"))
levels(data$ldcw48g.factor) = c("No","Yes","Dont know")

data$ldcw48h.factor = factor(data$ldcw48h, levels = c("0","1","2"))
levels(data$ldcw48h.factor) = c("No","Yes","Dont know")

data$ldcw48i.factor = factor(data$ldcw48i, levels = c("0","1","2"))
levels(data$ldcw48i.factor) = c("No","Yes","Dont know")

data$mdcw51.factor = factor(data$mdcw51, levels = c("0","1","2","3"))
levels(data$mdcw51.factor) = c("Not attempted unable to walk unaided","Normal","Abnormal (diminished in contrast of the other arm)","Absent")

data$mdcw52.factor = factor(data$mdcw52, levels = c("0","1","2","3"))
levels(data$mdcw52.factor) = c("Not attempted unable to walk unaided","Normal","Abnormal (diminished in contrast of the other arm)","Absent")

data$mdcw53.factor = factor(data$mdcw53, levels = c("0","1","2","3","4","5"))
levels(data$mdcw53.factor) = c("Not attempted unable to walk unaided","Never","Intermittent (rare < 10% of the walking time - 30 sec for a 5km/h gait)","Intermittent (moderate < 50% of the walking time)","Intermittent (frequent >/= 50% of the walking time)","Persistent")

data$mdcw54.factor = factor(data$mdcw54, levels = c("0","1","2","3","4","5"))
levels(data$mdcw54.factor) = c("Not attempted unable to walk unaided","Never","Intermittent (rare < 10% of the walking time - 30 sec for a 5km/h gait)","Intermittent (moderate < 50% of the walking time)","Intermittent (frequent >/= 50% of the walking time)","Persistent")

data$amstartampm.factor = factor(data$amstartampm, levels = c("1","2"))
levels(data$amstartampm.factor) = c("Am","Pm")

data$amstopampm.factor = factor(data$amstopampm, levels = c("1","2"))
levels(data$amstopampm.factor) = c("Am","Pm")

