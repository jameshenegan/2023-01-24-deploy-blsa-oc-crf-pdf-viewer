#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_GAIT.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_GAI)="CRF Version"
label(data$obsdate_glabdate)="Date Completed"
label(data$blank_GAI)="Blank Form"
label(data$glabtid)="Tester ID"
label(data$shoesworn)="Were shoes worn during this test"
label(data$glab001)="Status of Gait Lab testing"
label(data$glab001a)="Reason Gait Lat testing not done"
label(data$glab001b)="Was accelerometer worn during this test"
label(data$glab002)="Quiet Stance Static Stand Positive Trial"
label(data$glab002a)="Quiet Stance Static Stand Positive Trial RND"
label(data$glab003)="Quiet Stance Static Stand Negative Trial"
label(data$glab003a)="Quiet Stance Static Stand Negative Trial RND"
label(data$glb004a)="Steady State Walks Normal Pace Status"
label(data$glb004b)="Steady State Walks Normal Pace RND"
label(data$glb004)="Steady State Walks Normal Pace Number Of Trials"
label(data$glb005a)="Steady State Walks Fast Pace Status"
label(data$glb005b)="Steady State Walks Fast Pace RND"
label(data$glb005)="Steady State Walks Fast Pace Number Of Trials"
label(data$glab024)="Normal Pace Walk With Obstacle Status trial 1"
label(data$glab024a)="Normal Pace Walk With Obstacle RND trial 1"
label(data$glab025)="Normal Pace Walk With Obstacle Status trial 2"
label(data$glab025a)="Normal Pace Walk With Obstacle RND trial 2"
label(data$glab026)="Normal Pace Walk With Obstacle Status trial 3"
label(data$glab026a)="Normal Pace Walk With Obstacle RND trial 3"
label(data$glab027)="Normal Pace Walk With Obstacle Status trial 4"
label(data$glab027a)="Normal Pace Walk With Obstacle RND trial 4"
label(data$glab030)="Pain Assessment"
label(data$glab031)="Pain Assessment feet"
label(data$glab031a)="Pain Feet Right"
label(data$glab031b)="Pain Feet Left"
label(data$glab032)="Pain Assessment ankles"
label(data$glab032a)="Pain Ankle Right"
label(data$glab032b)="Pain Ankle Left"
label(data$glab033)="Pain Assessment knees"
label(data$glab033a)="Pain Knee Right"
label(data$glab033b)="Pain Knee Left"
label(data$glab034)="Pain Assessment hips"
label(data$glab034a)="Pain Hip Right"
label(data$glab034b)="Pain Hip Left"
label(data$glab035)="Pain Back"
label(data$glab035a)="Pain Back intensity"
label(data$comments_GAI)="Comments"
label(data$zeno)="Was Zeno walkway used to record GAIT"
label(data$vicon)="Was Vicon walkway used to record GAIT"
label(data$zenot1)="T1 If using Zeno was clicker used to mark heel strike before obstacle crossing"
label(data$zenot2)="T2 If using Zeno was clicker used to mark heel strike before obstacle crossing"
label(data$zenot3)="T3 If using Zeno was clicker used to mark heel strike before obstacle crossing"
label(data$zenot4)="T4 If using Zeno was clicker used to mark heel strike before obstacle crossing"
label(data$walkingaidused)="Was a walking aid used"
label(data$typewalkingaid)="Type of walking aid"
label(data$serial1scounted)="Serial 1s counted"
label(data$serial1errors)="Serial 1s errors"
label(data$serial1ssub)="Serial 1s Subtractions"
label(data$serial1scorrect)="Serial 1s total correct"
label(data$serial1stoterrors)="Serial 1s total errors"
label(data$animalfluency)="Animal fluency"
label(data$animaltotal)="Total number of animal names"
label(data$animaldup)="Total number of duplicate animal names"
label(data$comments1)="Comments"
label(data$glab002wa)="Quiet Stance Static Stand Positive Trial Walking aid used"
label(data$glab003wa)="Quiet Stance Static Stand Negative Trial Walking aid used"
label(data$glb004wa)="Steady State Walks Normal Pace Walking aid used"
label(data$glb005wa)="Steady State Walks Fast Pace Walking aid used"
label(data$glab024wa)="Normal Pace Walk With Obstacle T1 Walking aid used"
label(data$glab025wa)="Normal Pace Walk With Obstacle Status trial 2 Walking aid used"
label(data$glab026wa)="Normal Pace Walk With Obstacle Status trial 3 Walking aid used"
label(data$glab027wa)="Normal Pace Walk With Obstacle Status trial 4 Walking aid used"
label(data$glab004a)="Steady State Walks Normal Pace Clear Foot Strikes 1"
label(data$glab005a)="Steady State Walks Normal Pace Clear Foot Strikes 2"
label(data$glab006a)="Steady State Walks Normal Pace Clear Foot Strikes 3"
label(data$glb004f)="Steady State Walks Normal Pace Clear Foot Strikes 4"
label(data$glb004g)="Steady State Walks Normal Pace Clear Foot Strikes 5"
label(data$glb004h)="Steady State Walks Normal Pace Clear Foot Strikes 6"
label(data$glb004i)="Steady State Walks Normal Pace Clear Foot Strikes 7"
label(data$glb004j)="Steady State Walks Normal Pace Clear Foot Strikes 8"
label(data$glb004k)="Steady State Walks Normal Pace Clear Foot Strikes 9"
label(data$glb004l)="Steady State Walks Normal Pace Clear Foot Strikes 10"
label(data$glb004m)="Steady State Walks Normal Pace Clear Foot Strikes 11"
label(data$glb004n)="Steady State Walks Normal Pace Clear Foot Strikes 12"
label(data$glb004o)="Steady State Walks Normal Pace Clear Foot Strikes 13"
label(data$glb004p)="Steady State Walks Normal Pace Clear Foot Strikes 14"
label(data$glb004q)="Steady State Walks Normal Pace Clear Foot Strikes 15"
label(data$glb004r)="Steady State Walks Normal Pace Clear Foot Strikes 16"
label(data$glab004cw)="Cosmed worn during this test"
label(data$glab004rnd)="Cosmed mask reason not done"
label(data$glab004ms)="Cosmed mask size"
label(data$glab008a)="Steady State Walks Fast Pace Clear Foot Strikes 1"
label(data$glab009a)="Steady State Walks Fast Pace Clear Foot Strikes 2"
label(data$glab010a)="Steady State Walks Fast Pace Clear Foot Strikes 3"
label(data$glb005f)="Steady State Walks Fast Pace Clear Foot Strikes 4"
label(data$glb005g)="Steady State Walks Fast Pace Clear Foot Strikes 5"
label(data$glb005h)="Steady State Walks Fast Pace Clear Foot Strikes 6"
label(data$glb005i)="Steady State Walks Fast Pace Clear Foot Strikes 7"
label(data$glb005j)="Steady State Walks Fast Pace Clear Foot Strikes 8"
label(data$glb005k)="Steady State Walks Fast Pace Clear Foot Strikes 9"
label(data$glb005l)="Steady State Walks Fast Pace Clear Foot Strikes 10"
label(data$glb005m)="Steady State Walks Fast Pace Clear Foot Strikes 11"
label(data$glb005n)="Steady State Walks Fast Pace Clear Foot Strikes 12"
label(data$glb005o)="Steady State Walks Fast Pace Clear Foot Strikes 13"
label(data$glb005p)="Steady State Walks Fast Pace Clear Foot Strikes 14"
label(data$glb005q)="Steady State Walks Fast Pace Clear Foot Strikes 15"
label(data$glb005r)="Steady State Walks Fast Pace Clear Foot Strikes 16"
label(data$glb006a)="Single Task Narrow Walk Status"
label(data$glb006b)="Single Task Narrow Walk RND"
label(data$glb006)="Single Task Narrow Walk Number Of Trials"
label(data$glab012b)="Single Task Narrow Walk Clear Foot Strikes 1"
label(data$glab013b)="Single Task Narrow Walk Clear Foot Strikes 2"
label(data$glab014b)="Single Task Narrow Walk Clear Foot Strikes 3"
label(data$glab015b)="Single Task Narrow Walk Clear Foot Strikes 4"
label(data$glb006g)="Single Task Narrow Walk Clear Foot Strikes 5"
label(data$glb006h)="Single Task Narrow Walk Clear Foot Strikes 6"
label(data$glb006i)="Single Task Narrow Walk Clear Foot Strikes 7"
label(data$glb006j)="Single Task Narrow Walk Clear Foot Strikes 8"
label(data$glb006k)="Single Task Narrow Walk Clear Foot Strikes 9"
label(data$glb006l)="Single Task Narrow Walk Clear Foot Strikes 10"
label(data$glb006m)="Single Task Narrow Walk Clear Foot Strikes 11"
label(data$glb006n)="Single Task Narrow Walk Clear Foot Strikes 12"
label(data$glb006o)="Single Task Narrow Walk Clear Foot Strikes 13"
label(data$glb006p)="Single Task Narrow Walk Clear Foot Strikes 14"
label(data$glb006q)="Single Task Narrow Walk Clear Foot Strikes 15"
label(data$glb006r)="Single Task Narrow Walk Clear Foot Strikes 16"
label(data$glab016)="Dual Task Narrow Walk Status trial 1"
label(data$glab016c)="Dual Task Narrow Walk RND trial 1"
label(data$glab016a)="Dual Task Narrow Walk Recitation Errors trial 1"
label(data$glab016b)="Dual Task Narrow Walk Days trial 1"
label(data$glab016d)="Dual Task Narrow Walk clean foot strike trial 1"
label(data$glab017)="Dual Task Narrow Walk Status trial 2"
label(data$glab017c)="Dual Task Narrow Walk RND trial 2"
label(data$glab017a)="Dual Task Narrow Walk Recitation Errors trial 2"
label(data$glab017b)="Dual Task Narrow Walk Days trial 2"
label(data$glab017d)="Dual Task Narrow Walk clean foot strike trial 2"
label(data$glab018)="Dual Task Narrow Walk Status trial 3"
label(data$glab018c)="Dual Task Narrow Walk RND trial 3"
label(data$glab018a)="Dual Task Narrow Walk Recitation Errors trial 3"
label(data$glab018b)="Dual Task Narrow Walk Days trial 3"
label(data$glab018d)="Dual Task Narrow Walk clean foot strike trial 3"
label(data$glab019)="Dual Task Narrow Walk Status trial 4"
label(data$glab019c)="Dual Task Narrow Walk RND trial 4"
label(data$glab019a)="Dual Task Narrow Walk Recitation Errors trial 4"
label(data$glab019b)="Dual Task Narrow Walk Days trial 4"
label(data$glab019d)="Dual Task Narrow Walk clean foot strike trial 4"
label(data$glb011)="Dual Task Narrow Walk Status trial 5"
label(data$glb011d)="Dual Task Narrow Walk RND trial 5"
label(data$glb011a)="Dual Task Narrow Walk Recitation Errors trial 5"
label(data$glb011b)="Dual Task Narrow Walk Days trial 5"
label(data$glb011c)="Dual Task Narrow Walk clean foot strike trial 5"
label(data$glb012)="Dual Task Narrow Walk Status trial 6"
label(data$glb012d)="Dual Task Narrow Walk RND trial 6"
label(data$glb012a)="Dual Task Narrow Walk Recitation Errors trial 6"
label(data$glb012b)="Dual Task Narrow Walk Days trial 6"
label(data$glb012c)="Dual Task Narrow Walk clean foot strike trial 6"
label(data$glb017a)="Normal Pace Steady State Fatigue Test Status"
label(data$glb017b)="Normal Pace Steady State Fatigue RND"
label(data$glb017)="Normal Pace Steady State Fatigue Number Of Trials"
label(data$glab028a)="Normal Pace Steady State Fatigue Clear Foot Strikes 1"
label(data$glab029a)="Normal Pace Steady State Fatigue Clear Foot Strikes 2"
label(data$glb017e)="Normal Pace Steady State Fatigue Clear Foot Strikes 3"
label(data$glb017f)="Normal Pace Steady State Fatigue Clear Foot Strikes 4"
label(data$glb017g)="Normal Pace Steady State Fatigue Clear Foot Strikes 5"
label(data$glb017h)="Normal Pace Steady State Fatigue Clear Foot Strikes 6"
label(data$glb017i)="Normal Pace Steady State Fatigue Clear Foot Strikes 7"
label(data$glb017j)="Normal Pace Steady State Fatigue Clear Foot Strikes 8"
label(data$glb017k)="Normal Pace Steady State Fatigue Clear Foot Strikes 9"
label(data$glb017l)="Normal Pace Steady State Fatigue Clear Foot Strikes 10"
label(data$glb017m)="Normal Pace Steady State Fatigue Clear Foot Strikes 11"
label(data$glb017n)="Normal Pace Steady State Fatigue Clear Foot Strikes 12"
label(data$glb017o)="Normal Pace Steady State Fatigue Clear Foot Strikes 13"
label(data$glb017p)="Normal Pace Steady State Fatigue Clear Foot Strikes 14"
label(data$glb017q)="Normal Pace Steady State Fatigue Clear Foot Strikes 15"
label(data$glb017r)="Normal Pace Steady State Fatigue Clear Foot Strikes 16"
label(data$glab004)="Normal Pace T1"
label(data$glab004b)="Normal Pace T1 RND"
label(data$glab005)="Normal Pace T2"
label(data$glab005b)="Normal Pace T2 RND"
label(data$glab006)="Normal Pace T3"
label(data$glab006b)="Normal Pace T3 RND"
label(data$glab008)="Fast Pace T1"
label(data$glab008b)="Fast Pace T1 RND"
label(data$glab009)="Fast Pace T2"
label(data$glab009b)="Fast Pace T2 RND"
label(data$glab010)="Fast Pace T3"
label(data$glab010b)="Fast Pace T3 RND"
label(data$glab011)="Recites days correctly"
label(data$glab012)="Normal pace narrow walk T1"
label(data$glab012a)="Normal pace narrow walk T1 RND"
label(data$glab013)="Normal pace narrow walk T2"
label(data$glab013a)="Normal pace narrow walk T2 RND"
label(data$glab014)="Normal pace narrow walk T3"
label(data$glab014a)="Normal pace narrow walk T3 RND"
label(data$glab015)="Normal pace narrow walk T4"
label(data$glab015a)="Normal pace narrow walk T4 RND"
label(data$glab1298)="Dual Task Narrow Walk Total Errors"
label(data$glab1299)="Dual Task Narrow Walk Total Recited"
label(data$glab020)="Fast pace narrow walk T1"
label(data$glab020a)="Fast pace narrow walk T1 RND"
label(data$glab021)="Fast pace narrow walk T2"
label(data$glab021a)="Fast pace narrow walk T2 RND"
label(data$glab022)="Fast pace narrow walk T3"
label(data$glab022a)="Fast pace narrow walk T3 RND"
label(data$glab023)="Fast pace narrow walk T4"
label(data$glab023a)="Fast pace narrow walk T4 RND"
label(data$glab028)="Normal pace steady state fatigue walk T1"
label(data$glab028b)="Normal pace steady state fatigue walk T1 RND"
label(data$glab029)="Normal pace steady state fatigue walk T2"
label(data$glab029b)="Normal pace steady state fatigue walk T2 RND"
label(data$auto_id_GAI)="Unique Teleform Number"
label(data$crf_parent_name_GAI)="CRF Parent Name"
label(data$item_group_repeat_GAI)="Item Group Repeate"
label(data$serial1errors_1)="Serial 1s errors : 1 (Checkbox Indicator)"
label(data$serial1errors_2)="Serial 1s errors : 2 (Checkbox Indicator)"
label(data$serial1errors_3)="Serial 1s errors : 3 (Checkbox Indicator)"
label(data$serial1errors_4)="Serial 1s errors : 4 (Checkbox Indicator)"
label(data$serial1errors_5)="Serial 1s errors : 5 (Checkbox Indicator)"
label(data$serial1errors_6)="Serial 1s errors : 6 (Checkbox Indicator)"
label(data$serial1scounted_1)="Serial 1s counted : 200 (Checkbox Indicator)"
label(data$serial1scounted_10)="Serial 1s counted : 191 (Checkbox Indicator)"
label(data$serial1scounted_11)="Serial 1s counted : 190 (Checkbox Indicator)"
label(data$serial1scounted_12)="Serial 1s counted : 189 (Checkbox Indicator)"
label(data$serial1scounted_13)="Serial 1s counted : 188 (Checkbox Indicator)"
label(data$serial1scounted_14)="Serial 1s counted : 187 (Checkbox Indicator)"
label(data$serial1scounted_15)="Serial 1s counted : 186 (Checkbox Indicator)"
label(data$serial1scounted_16)="Serial 1s counted : 185 (Checkbox Indicator)"
label(data$serial1scounted_17)="Serial 1s counted : 184 (Checkbox Indicator)"
label(data$serial1scounted_18)="Serial 1s counted : 183 (Checkbox Indicator)"
label(data$serial1scounted_19)="Serial 1s counted : 182 (Checkbox Indicator)"
label(data$serial1scounted_2)="Serial 1s counted : 199 (Checkbox Indicator)"
label(data$serial1scounted_20)="Serial 1s counted : 181 (Checkbox Indicator)"
label(data$serial1scounted_21)="Serial 1s counted : 180 (Checkbox Indicator)"
label(data$serial1scounted_22)="Serial 1s counted : 179 (Checkbox Indicator)"
label(data$serial1scounted_23)="Serial 1s counted : 178 (Checkbox Indicator)"
label(data$serial1scounted_24)="Serial 1s counted : 177 (Checkbox Indicator)"
label(data$serial1scounted_3)="Serial 1s counted : 198 (Checkbox Indicator)"
label(data$serial1scounted_4)="Serial 1s counted : 197 (Checkbox Indicator)"
label(data$serial1scounted_5)="Serial 1s counted : 196 (Checkbox Indicator)"
label(data$serial1scounted_6)="Serial 1s counted : 195 (Checkbox Indicator)"
label(data$serial1scounted_7)="Serial 1s counted : 194 (Checkbox Indicator)"
label(data$serial1scounted_8)="Serial 1s counted : 193 (Checkbox Indicator)"
label(data$study_name_GAI)="Study Name"

#Create new variables for factors
data$shoesworn.factor = factor(data$shoesworn, levels = c("0","1"))
levels(data$shoesworn.factor) = c("No","Yes")

data$glab001.factor = factor(data$glab001, levels = c("0","1"))
levels(data$glab001.factor) = c("Not attempted","Attempted")

data$glab001a.factor = factor(data$glab001a, levels = c("1","2","3","4","5","6","7","8","9"))
levels(data$glab001a.factor) = c("1-Not enough time/not scheduled","2-No examiner","3-Technical/equipment problem","4-Cognitively impaired","5-Unable to stand/walk unaided","6-Examiner felt unsafe","7-Participant refused","8-Reason unknown","9-Other Physical Problems")

data$glab001b.factor = factor(data$glab001b, levels = c("0","1"))
levels(data$glab001b.factor) = c("No","Yes")

data$glab002.factor = factor(data$glab002, levels = c("0","1"))
levels(data$glab002.factor) = c("Incomplete/Not done","Complete")

data$glab002a.factor = factor(data$glab002a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab002a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab003.factor = factor(data$glab003, levels = c("0","1"))
levels(data$glab003.factor) = c("Incomplete/Not done","Complete")

data$glab003a.factor = factor(data$glab003a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab003a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glb004a.factor = factor(data$glb004a, levels = c("0","1"))
levels(data$glb004a.factor) = c("Incomplete/Not done","Complete")

data$glb004b.factor = factor(data$glb004b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glb004b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glb005a.factor = factor(data$glb005a, levels = c("0","1"))
levels(data$glb005a.factor) = c("Incomplete/Not done","Complete")

data$glb005b.factor = factor(data$glb005b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glb005b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab024.factor = factor(data$glab024, levels = c("0","1"))
levels(data$glab024.factor) = c("Incomplete/Not done","Complete")

data$glab024a.factor = factor(data$glab024a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab024a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab025.factor = factor(data$glab025, levels = c("0","1"))
levels(data$glab025.factor) = c("Incomplete/Not done","Complete")

data$glab025a.factor = factor(data$glab025a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab025a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab026.factor = factor(data$glab026, levels = c("0","1"))
levels(data$glab026.factor) = c("Incomplete/Not done","Complete")

data$glab026a.factor = factor(data$glab026a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab026a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab027.factor = factor(data$glab027, levels = c("0","1"))
levels(data$glab027.factor) = c("Incomplete/Not done","Complete")

data$glab027a.factor = factor(data$glab027a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab027a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab030.factor = factor(data$glab030, levels = c("0","1","7","8"))
levels(data$glab030.factor) = c("No pain during the tests","Any pain (specify place and severity)","Refused","Dont know")

data$glab031.factor = factor(data$glab031, levels = c("1","2","3"))
levels(data$glab031.factor) = c("Right","Left","Both")

data$glab031a.factor = factor(data$glab031a, levels = c("0","1","2","3","4","8"))
levels(data$glab031a.factor) = c("0-None","1-Mild","2-Moderate","3-Severe","4-Extreme","8-Dont know")

data$glab031b.factor = factor(data$glab031b, levels = c("0","1","2","3","4","8"))
levels(data$glab031b.factor) = c("0-None","1-Mild","2-Moderate","3-Severe","4-Extreme","8-Dont know")

data$glab032.factor = factor(data$glab032, levels = c("1","2","3"))
levels(data$glab032.factor) = c("Right","Left","Both")

data$glab032a.factor = factor(data$glab032a, levels = c("0","1","2","3","4","8"))
levels(data$glab032a.factor) = c("0-None","1-Mild","2-Moderate","3-Severe","4-Extreme","8-Dont know")

data$glab032b.factor = factor(data$glab032b, levels = c("0","1","2","3","4","8"))
levels(data$glab032b.factor) = c("0-None","1-Mild","2-Moderate","3-Severe","4-Extreme","8-Dont know")

data$glab033.factor = factor(data$glab033, levels = c("1","2","3"))
levels(data$glab033.factor) = c("Right","Left","Both")

data$glab033a.factor = factor(data$glab033a, levels = c("0","1","2","3","4","8"))
levels(data$glab033a.factor) = c("0-None","1-Mild","2-Moderate","3-Severe","4-Extreme","8-Dont know")

data$glab033b.factor = factor(data$glab033b, levels = c("0","1","2","3","4","8"))
levels(data$glab033b.factor) = c("0-None","1-Mild","2-Moderate","3-Severe","4-Extreme","8-Dont know")

data$glab034.factor = factor(data$glab034, levels = c("1","2","3"))
levels(data$glab034.factor) = c("Right","Left","Both")

data$glab034a.factor = factor(data$glab034a, levels = c("0","1","2","3","4","8"))
levels(data$glab034a.factor) = c("0-None","1-Mild","2-Moderate","3-Severe","4-Extreme","8-Dont know")

data$glab034b.factor = factor(data$glab034b, levels = c("0","1","2","3","4","8"))
levels(data$glab034b.factor) = c("0-None","1-Mild","2-Moderate","3-Severe","4-Extreme","8-Dont know")

data$glab035.factor = factor(data$glab035, levels = c("1"))
levels(data$glab035.factor) = c("Yes")

data$glab035a.factor = factor(data$glab035a, levels = c("0","1","2","3","4","8"))
levels(data$glab035a.factor) = c("0-None","1-Mild","2-Moderate","3-Severe","4-Extreme","8-Dont know")

data$zeno.factor = factor(data$zeno, levels = c("0","1"))
levels(data$zeno.factor) = c("No","Yes")

data$vicon.factor = factor(data$vicon, levels = c("0","1"))
levels(data$vicon.factor) = c("No","Yes")

data$zenot1.factor = factor(data$zenot1, levels = c("0","1","2"))
levels(data$zenot1.factor) = c("No","Yes","N/A Vicon used")

data$zenot2.factor = factor(data$zenot2, levels = c("0","1","2"))
levels(data$zenot2.factor) = c("No","Yes","N/A Vicon used")

data$zenot3.factor = factor(data$zenot3, levels = c("0","1","2"))
levels(data$zenot3.factor) = c("No","Yes","N/A Vicon used")

data$zenot4.factor = factor(data$zenot4, levels = c("0","1","2"))
levels(data$zenot4.factor) = c("No","Yes","N/A Vicon used")

data$walkingaidused.factor = factor(data$walkingaidused, levels = c("0","1"))
levels(data$walkingaidused.factor) = c("No","Yes")

data$animalfluency.factor = factor(data$animalfluency, levels = c("1","2","3","4","5"))
levels(data$animalfluency.factor) = c("B","L","D","C","M")

data$glab002wa.factor = factor(data$glab002wa, levels = c("0","1"))
levels(data$glab002wa.factor) = c("No","Yes")

data$glab003wa.factor = factor(data$glab003wa, levels = c("0","1"))
levels(data$glab003wa.factor) = c("No","Yes")

data$glb004wa.factor = factor(data$glb004wa, levels = c("0","1"))
levels(data$glb004wa.factor) = c("No","Yes")

data$glb005wa.factor = factor(data$glb005wa, levels = c("0","1"))
levels(data$glb005wa.factor) = c("No","Yes")

data$glab024wa.factor = factor(data$glab024wa, levels = c("0","1"))
levels(data$glab024wa.factor) = c("No","Yes")

data$glab025wa.factor = factor(data$glab025wa, levels = c("0","1"))
levels(data$glab025wa.factor) = c("No","Yes")

data$glab026wa.factor = factor(data$glab026wa, levels = c("0","1"))
levels(data$glab026wa.factor) = c("No","Yes")

data$glab027wa.factor = factor(data$glab027wa, levels = c("0","1"))
levels(data$glab027wa.factor) = c("No","Yes")

data$glab004a.factor = factor(data$glab004a, levels = c("0","1","2","3"))
levels(data$glab004a.factor) = c("None","Right","Left","Both")

data$glab005a.factor = factor(data$glab005a, levels = c("0","1","2","3"))
levels(data$glab005a.factor) = c("None","Right","Left","Both")

data$glab006a.factor = factor(data$glab006a, levels = c("0","1","2","3"))
levels(data$glab006a.factor) = c("None","Right","Left","Both")

data$glb004f.factor = factor(data$glb004f, levels = c("0","1","2","3"))
levels(data$glb004f.factor) = c("None","Right","Left","Both")

data$glb004g.factor = factor(data$glb004g, levels = c("0","1","2","3"))
levels(data$glb004g.factor) = c("None","Right","Left","Both")

data$glb004h.factor = factor(data$glb004h, levels = c("0","1","2","3"))
levels(data$glb004h.factor) = c("None","Right","Left","Both")

data$glb004i.factor = factor(data$glb004i, levels = c("0","1","2","3"))
levels(data$glb004i.factor) = c("None","Right","Left","Both")

data$glb004j.factor = factor(data$glb004j, levels = c("0","1","2","3"))
levels(data$glb004j.factor) = c("None","Right","Left","Both")

data$glb004k.factor = factor(data$glb004k, levels = c("0","1","2","3"))
levels(data$glb004k.factor) = c("None","Right","Left","Both")

data$glb004l.factor = factor(data$glb004l, levels = c("0","1","2","3"))
levels(data$glb004l.factor) = c("None","Right","Left","Both")

data$glb004m.factor = factor(data$glb004m, levels = c("0","1","2","3"))
levels(data$glb004m.factor) = c("None","Right","Left","Both")

data$glb004n.factor = factor(data$glb004n, levels = c("0","1","2","3"))
levels(data$glb004n.factor) = c("None","Right","Left","Both")

data$glb004o.factor = factor(data$glb004o, levels = c("0","1","2","3"))
levels(data$glb004o.factor) = c("None","Right","Left","Both")

data$glb004p.factor = factor(data$glb004p, levels = c("0","1","2","3"))
levels(data$glb004p.factor) = c("None","Right","Left","Both")

data$glb004q.factor = factor(data$glb004q, levels = c("0","1","2","3"))
levels(data$glb004q.factor) = c("None","Right","Left","Both")

data$glb004r.factor = factor(data$glb004r, levels = c("0","1","2","3"))
levels(data$glb004r.factor) = c("None","Right","Left","Both")

data$glab004cw.factor = factor(data$glab004cw, levels = c("0","1"))
levels(data$glab004cw.factor) = c("No","Yes")

data$glab004rnd.factor = factor(data$glab004rnd, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab004rnd.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab004ms.factor = factor(data$glab004ms, levels = c("1","2","3"))
levels(data$glab004ms.factor) = c("Small","Medium","Large")

data$glab008a.factor = factor(data$glab008a, levels = c("0","1","2","3"))
levels(data$glab008a.factor) = c("None","Right","Left","Both")

data$glab009a.factor = factor(data$glab009a, levels = c("0","1","2","3"))
levels(data$glab009a.factor) = c("None","Right","Left","Both")

data$glab010a.factor = factor(data$glab010a, levels = c("0","1","2","3"))
levels(data$glab010a.factor) = c("None","Right","Left","Both")

data$glb005f.factor = factor(data$glb005f, levels = c("0","1","2","3"))
levels(data$glb005f.factor) = c("None","Right","Left","Both")

data$glb005g.factor = factor(data$glb005g, levels = c("0","1","2","3"))
levels(data$glb005g.factor) = c("None","Right","Left","Both")

data$glb005h.factor = factor(data$glb005h, levels = c("0","1","2","3"))
levels(data$glb005h.factor) = c("None","Right","Left","Both")

data$glb005i.factor = factor(data$glb005i, levels = c("0","1","2","3"))
levels(data$glb005i.factor) = c("None","Right","Left","Both")

data$glb005j.factor = factor(data$glb005j, levels = c("0","1","2","3"))
levels(data$glb005j.factor) = c("None","Right","Left","Both")

data$glb005k.factor = factor(data$glb005k, levels = c("0","1","2","3"))
levels(data$glb005k.factor) = c("None","Right","Left","Both")

data$glb005l.factor = factor(data$glb005l, levels = c("0","1","2","3"))
levels(data$glb005l.factor) = c("None","Right","Left","Both")

data$glb005m.factor = factor(data$glb005m, levels = c("0","1","2","3"))
levels(data$glb005m.factor) = c("None","Right","Left","Both")

data$glb005n.factor = factor(data$glb005n, levels = c("0","1","2","3"))
levels(data$glb005n.factor) = c("None","Right","Left","Both")

data$glb005o.factor = factor(data$glb005o, levels = c("0","1","2","3"))
levels(data$glb005o.factor) = c("None","Right","Left","Both")

data$glb005p.factor = factor(data$glb005p, levels = c("0","1","2","3"))
levels(data$glb005p.factor) = c("None","Right","Left","Both")

data$glb005q.factor = factor(data$glb005q, levels = c("0","1","2","3"))
levels(data$glb005q.factor) = c("None","Right","Left","Both")

data$glb005r.factor = factor(data$glb005r, levels = c("0","1","2","3"))
levels(data$glb005r.factor) = c("None","Right","Left","Both")

data$glb006a.factor = factor(data$glb006a, levels = c("0","1"))
levels(data$glb006a.factor) = c("Incomplete/Not done","Complete")

data$glb006b.factor = factor(data$glb006b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glb006b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab012b.factor = factor(data$glab012b, levels = c("0","1","2","3"))
levels(data$glab012b.factor) = c("None","Right","Left","Both")

data$glab013b.factor = factor(data$glab013b, levels = c("0","1","2","3"))
levels(data$glab013b.factor) = c("None","Right","Left","Both")

data$glab014b.factor = factor(data$glab014b, levels = c("0","1","2","3"))
levels(data$glab014b.factor) = c("None","Right","Left","Both")

data$glab015b.factor = factor(data$glab015b, levels = c("0","1","2","3"))
levels(data$glab015b.factor) = c("None","Right","Left","Both")

data$glb006g.factor = factor(data$glb006g, levels = c("0","1","2","3"))
levels(data$glb006g.factor) = c("None","Right","Left","Both")

data$glb006h.factor = factor(data$glb006h, levels = c("0","1","2","3"))
levels(data$glb006h.factor) = c("None","Right","Left","Both")

data$glb006i.factor = factor(data$glb006i, levels = c("0","1","2","3"))
levels(data$glb006i.factor) = c("None","Right","Left","Both")

data$glb006j.factor = factor(data$glb006j, levels = c("0","1","2","3"))
levels(data$glb006j.factor) = c("None","Right","Left","Both")

data$glb006k.factor = factor(data$glb006k, levels = c("0","1","2","3"))
levels(data$glb006k.factor) = c("None","Right","Left","Both")

data$glb006l.factor = factor(data$glb006l, levels = c("0","1","2","3"))
levels(data$glb006l.factor) = c("None","Right","Left","Both")

data$glb006m.factor = factor(data$glb006m, levels = c("0","1","2","3"))
levels(data$glb006m.factor) = c("None","Right","Left","Both")

data$glb006n.factor = factor(data$glb006n, levels = c("0","1","2","3"))
levels(data$glb006n.factor) = c("None","Right","Left","Both")

data$glb006o.factor = factor(data$glb006o, levels = c("0","1","2","3"))
levels(data$glb006o.factor) = c("None","Right","Left","Both")

data$glb006p.factor = factor(data$glb006p, levels = c("0","1","2","3"))
levels(data$glb006p.factor) = c("None","Right","Left","Both")

data$glb006q.factor = factor(data$glb006q, levels = c("0","1","2","3"))
levels(data$glb006q.factor) = c("None","Right","Left","Both")

data$glb006r.factor = factor(data$glb006r, levels = c("0","1","2","3"))
levels(data$glb006r.factor) = c("None","Right","Left","Both")

data$glab016.factor = factor(data$glab016, levels = c("0","1"))
levels(data$glab016.factor) = c("Incomplete/Not done","Complete")

data$glab016c.factor = factor(data$glab016c, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab016c.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab016d.factor = factor(data$glab016d, levels = c("0","1","2","3"))
levels(data$glab016d.factor) = c("None","Right","Left","Both")

data$glab017.factor = factor(data$glab017, levels = c("0","1"))
levels(data$glab017.factor) = c("Incomplete/Not done","Complete")

data$glab017c.factor = factor(data$glab017c, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab017c.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab017d.factor = factor(data$glab017d, levels = c("0","1","2","3"))
levels(data$glab017d.factor) = c("None","Right","Left","Both")

data$glab018.factor = factor(data$glab018, levels = c("0","1"))
levels(data$glab018.factor) = c("Incomplete/Not done","Complete")

data$glab018c.factor = factor(data$glab018c, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab018c.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab018d.factor = factor(data$glab018d, levels = c("0","1","2","3"))
levels(data$glab018d.factor) = c("None","Right","Left","Both")

data$glab019.factor = factor(data$glab019, levels = c("0","1"))
levels(data$glab019.factor) = c("Incomplete/Not done","Complete")

data$glab019c.factor = factor(data$glab019c, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab019c.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab019d.factor = factor(data$glab019d, levels = c("0","1","2","3"))
levels(data$glab019d.factor) = c("None","Right","Left","Both")

data$glb011.factor = factor(data$glb011, levels = c("0","1"))
levels(data$glb011.factor) = c("Incomplete/Not done","Complete")

data$glb011d.factor = factor(data$glb011d, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glb011d.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glb011c.factor = factor(data$glb011c, levels = c("0","1","2","3"))
levels(data$glb011c.factor) = c("None","Right","Left","Both")

data$glb012.factor = factor(data$glb012, levels = c("0","1"))
levels(data$glb012.factor) = c("Incomplete/Not done","Complete")

data$glb012d.factor = factor(data$glb012d, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glb012d.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glb012c.factor = factor(data$glb012c, levels = c("0","1","2","3"))
levels(data$glb012c.factor) = c("None","Right","Left","Both")

data$glb017a.factor = factor(data$glb017a, levels = c("0","1"))
levels(data$glb017a.factor) = c("Incomplete/Not done","Complete")

data$glb017b.factor = factor(data$glb017b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glb017b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab028a.factor = factor(data$glab028a, levels = c("0","1","2","3"))
levels(data$glab028a.factor) = c("None","Right","Left","Both")

data$glab029a.factor = factor(data$glab029a, levels = c("0","1","2","3"))
levels(data$glab029a.factor) = c("None","Right","Left","Both")

data$glb017e.factor = factor(data$glb017e, levels = c("0","1","2","3"))
levels(data$glb017e.factor) = c("None","Right","Left","Both")

data$glb017f.factor = factor(data$glb017f, levels = c("0","1","2","3"))
levels(data$glb017f.factor) = c("None","Right","Left","Both")

data$glb017g.factor = factor(data$glb017g, levels = c("0","1","2","3"))
levels(data$glb017g.factor) = c("None","Right","Left","Both")

data$glb017h.factor = factor(data$glb017h, levels = c("0","1","2","3"))
levels(data$glb017h.factor) = c("None","Right","Left","Both")

data$glb017i.factor = factor(data$glb017i, levels = c("0","1","2","3"))
levels(data$glb017i.factor) = c("None","Right","Left","Both")

data$glb017j.factor = factor(data$glb017j, levels = c("0","1","2","3"))
levels(data$glb017j.factor) = c("None","Right","Left","Both")

data$glb017k.factor = factor(data$glb017k, levels = c("0","1","2","3"))
levels(data$glb017k.factor) = c("None","Right","Left","Both")

data$glb017l.factor = factor(data$glb017l, levels = c("0","1","2","3"))
levels(data$glb017l.factor) = c("None","Right","Left","Both")

data$glb017m.factor = factor(data$glb017m, levels = c("0","1","2","3"))
levels(data$glb017m.factor) = c("None","Right","Left","Both")

data$glb017n.factor = factor(data$glb017n, levels = c("0","1","2","3"))
levels(data$glb017n.factor) = c("None","Right","Left","Both")

data$glb017o.factor = factor(data$glb017o, levels = c("0","1","2","3"))
levels(data$glb017o.factor) = c("None","Right","Left","Both")

data$glb017p.factor = factor(data$glb017p, levels = c("0","1","2","3"))
levels(data$glb017p.factor) = c("None","Right","Left","Both")

data$glb017q.factor = factor(data$glb017q, levels = c("0","1","2","3"))
levels(data$glb017q.factor) = c("None","Right","Left","Both")

data$glb017r.factor = factor(data$glb017r, levels = c("0","1","2","3"))
levels(data$glb017r.factor) = c("None","Right","Left","Both")

data$glab004.factor = factor(data$glab004, levels = c("0","1"))
levels(data$glab004.factor) = c("Incomplete/Not done","Complete")

data$glab004b.factor = factor(data$glab004b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab004b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab005.factor = factor(data$glab005, levels = c("0","1"))
levels(data$glab005.factor) = c("Incomplete/Not done","Complete")

data$glab005b.factor = factor(data$glab005b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab005b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab006.factor = factor(data$glab006, levels = c("0","1"))
levels(data$glab006.factor) = c("Incomplete/Not done","Complete")

data$glab006b.factor = factor(data$glab006b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab006b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab008.factor = factor(data$glab008, levels = c("0","1"))
levels(data$glab008.factor) = c("Incomplete/Not done","Complete")

data$glab008b.factor = factor(data$glab008b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab008b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab009.factor = factor(data$glab009, levels = c("0","1"))
levels(data$glab009.factor) = c("Incomplete/Not done","Complete")

data$glab009b.factor = factor(data$glab009b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab009b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab010.factor = factor(data$glab010, levels = c("0","1"))
levels(data$glab010.factor) = c("Incomplete/Not done","Complete")

data$glab010b.factor = factor(data$glab010b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab010b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab011.factor = factor(data$glab011, levels = c("0","1"))
levels(data$glab011.factor) = c("No","Yes")

data$glab012.factor = factor(data$glab012, levels = c("0","1"))
levels(data$glab012.factor) = c("Incomplete/Not done","Complete")

data$glab012a.factor = factor(data$glab012a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab012a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab013.factor = factor(data$glab013, levels = c("0","1"))
levels(data$glab013.factor) = c("Incomplete/Not done","Complete")

data$glab013a.factor = factor(data$glab013a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab013a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab014.factor = factor(data$glab014, levels = c("0","1"))
levels(data$glab014.factor) = c("Incomplete/Not done","Complete")

data$glab014a.factor = factor(data$glab014a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab014a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab015.factor = factor(data$glab015, levels = c("0","1"))
levels(data$glab015.factor) = c("Incomplete/Not done","Complete")

data$glab015a.factor = factor(data$glab015a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab015a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab020.factor = factor(data$glab020, levels = c("0","1"))
levels(data$glab020.factor) = c("Incomplete/Not done","Complete")

data$glab020a.factor = factor(data$glab020a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab020a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab021.factor = factor(data$glab021, levels = c("0","1"))
levels(data$glab021.factor) = c("Incomplete/Not done","Complete")

data$glab021a.factor = factor(data$glab021a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab021a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab022.factor = factor(data$glab022, levels = c("0","1"))
levels(data$glab022.factor) = c("Incomplete/Not done","Complete")

data$glab022a.factor = factor(data$glab022a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab022a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab023.factor = factor(data$glab023, levels = c("0","1"))
levels(data$glab023.factor) = c("Incomplete/Not done","Complete")

data$glab023a.factor = factor(data$glab023a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab023a.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab028.factor = factor(data$glab028, levels = c("0","1"))
levels(data$glab028.factor) = c("Incomplete/Not done","Complete")

data$glab028b.factor = factor(data$glab028b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab028b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

data$glab029.factor = factor(data$glab029, levels = c("0","1"))
levels(data$glab029.factor) = c("Incomplete/Not done","Complete")

data$glab029b.factor = factor(data$glab029b, levels = c("1","2","3","4","5","6","7","8"))
levels(data$glab029b.factor) = c("1-Not enough time","2-No examiner/room available","3-Technical problem","4-Participant unable to understand instructions","5-Unable to stand/walk unaided","6-Examiner felt it was unsafe","7-Refused","8-Reason unknown")

