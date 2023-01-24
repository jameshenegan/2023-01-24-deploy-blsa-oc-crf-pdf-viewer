#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Physical_Exam.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_PhyExa)="CRF Version"
label(data$obsdate_pedate)="Date Completed"
label(data$blank_PhyExa)="Blank Form"
label(data$petrid)="Tester ID"
label(data$penotdone)="Physical Exam not done"
label(data$pe03)="Oral prosthesis"
label(data$pe03m)="Oral prosthesis unknown"
label(data$pe06)="Hearing aid"
label(data$pe06m)="Hearing aid unknown"
label(data$pe07)="PE_Oropharynx"
label(data$pe07m)="PE_Oropharynx unknown"
label(data$pe08)="PE_Vertical Ocular Movement"
label(data$pe08m)="PE_VerticalOcularMovement unknown"
label(data$pe09)="PE_Horizontal Ocular Movement"
label(data$pe09m)="PE_Horizontal Ocular Movement unknown"
label(data$pe10)="PE_Wavy ocular tracking"
label(data$pe10m)="PE_HorizontalOcularMovement unknown"
label(data$pe11)="PE_Nystagmus"
label(data$pe11m)="PE_Nystagmus unknown"
label(data$pe12)="PE_Convergence"
label(data$pe12m)="PE_Convergence unknown"
label(data$pe13)="PE_Cranial nerve VII Facial Asymmetry"
label(data$pe13m)="PE_Cranial nerve VII Facial Asymmetry unknown"
label(data$pe14)="Heart murmurs"
label(data$pe14m)="Heart murmurs unknown"
label(data$pe15)="Heart rhythm"
label(data$pe15m)="Heart rhythm unknown"
label(data$pe16)="Carotid bruit"
label(data$pe16m)="Carotid bruit unknown"
label(data$pe18)="Rales"
label(data$pe18m)="Rales unknown"
label(data$pe19)="Wheezing"
label(data$pe19m)="Wheezing unknown"
label(data$pe23)="PE_Hand rhythm"
label(data$pe23m)="PE_Hand rhythm unknown"
label(data$pe24)="PE_Number of hand strikes in 20 seconds"
label(data$pe24dk)="PE_Number of hand strikes unknown"
label(data$pe24m)="PE_Number of hand strikes reason Unknown"
label(data$pe28)="PE_Palmomental sign"
label(data$pe28m)="PE_Palmomental sign unknown"
label(data$pe29)="PE_Glabellar sign"
label(data$pe29m)="PE_Glabellar Sign unknown"
label(data$pe31)="PE_Patellar Reflex Right"
label(data$pe31m)="PE_Patellar Reflex Right unknown"
label(data$pe32)="PE_Patellar Reflex Left"
label(data$pe32m)="PE_Patellar Reflex Left unknown"
label(data$pe41k)="Right straight leg raise painful"
label(data$pe41km)="Right straight leg raise painful unknown"
label(data$pe42k)="Left straight leg raise painful"
label(data$pe42km)="Left straight leg raise painful unknown"
label(data$pe46)="PE_Identifies line"
label(data$pe46m)="PE_Identifies line unknown"
label(data$pe47)="PE_Identifies circle"
label(data$pe47m)="PE_Identifies circle unknown"
label(data$pe48)="PE_Identifies plus sign"
label(data$pe48m)="PE_Identifies plus sign unknown"
label(data$pe49)="PE_Babinski sign"
label(data$pe49m)="PE_Babinski Sign unknown"
label(data$pe50)="PE_Identifies quarter"
label(data$pe50m)="PE_Identifies quarter unknown"
label(data$pe51)="PE_Identifies safety pin"
label(data$pe51m)="PE_Identifies safety pin unknown"
label(data$pe52)="PE_Identifies Dime"
label(data$pe52m)="PE_Identifies dime unknown"
label(data$pe53)="PE_Identifies key"
label(data$pe53m)="PE_Identifies Key unknown"
label(data$pe61)="PE_Posterior tibial right"
label(data$pe61m)="PE_Posterior tibial right unknown"
label(data$pe62)="PE_Dorsalis pedis right"
label(data$pe62m)="PE_Dorsalis pedis right unknown"
label(data$pe63)="PE_Posterior tibial left"
label(data$pe63m)="PE_Posterior tibial left unknown"
label(data$pe64)="PE_Dorsalis pedis left"
label(data$pe64m)="PE_Dorsalis pedis left unknown"
label(data$pe65)="PE_Telangiectasis or reticular veins"
label(data$pe65m)="PE_Telangiectasis or reticular veins unknown"
label(data$pe66)="PE_Varicose veins"
label(data$pe66m)="PE_Varicose veins unknown"
label(data$pe67a)="Arm cuff size"
label(data$pe67b)="Pulse obliteration level"
label(data$pe67c1)="Aortic regurgitation"
label(data$pe67c2)="Hyperthyroidism"
label(data$pe67c3)="AV shunt left arm"
label(data$pe67c4)="AV shunt right arm"
label(data$pe67c5)="Previous surgery right side"
label(data$pe67c6)="Previous surgery left side"
label(data$pe67sr1)="BP right systolic measurement 1"
label(data$pe67dr1)="BP right diastolic measurement 1"
label(data$pe67sl1)="BP left systolic measurement 1"
label(data$pe67dl1)="BP left diastolic measurement 1"
label(data$pe67sr2)="BP right systolic measurement 2"
label(data$pe67dr2)="BP right diastolic measurement 2"
label(data$pe67sl2)="BP left systolic measurement 2"
label(data$pe67dl2)="BP left diastolic measurement 2"
label(data$pe67sr3)="BP right systolic measurement 3"
label(data$pe67dr3)="BP right diastolic measurement 3"
label(data$pe67sl3)="BP left systolic measurement 3"
label(data$pe67dl3)="BP left diastolic measurement 3"
label(data$pe67hrt)="Heart rate"
label(data$pe67f)="Supine blood pressure completed"
label(data$pe67fm)="Supine blood pressure reason not done"
label(data$pe69)="Romberg sign"
label(data$pe69m)="Romberg sign unknown"
label(data$pe70sbp)="Standing BP systolic"
label(data$pe70dbp)="Standing BP diastolic"
label(data$pe70hrt)="Standing Heart rate"
label(data$pe70b)="Dizziness or light headed with standing"
label(data$pe70c)="Standing blood pressure completed"
label(data$pe70cm)="Standing blood pressure reason not done"
label(data$pe72)="Pronator Drift"
label(data$pe72m)="Pronator Drift unknown"
label(data$pe73a)="Natural occipital to wall distance"
label(data$pe73m)="Natural occipital distance from wall unknown"
label(data$pe73)="Natural occipital distance from wall"
label(data$pe74b)="Spinal flexion motion painful"
label(data$pe74bm)="Spinal flexion motion painful unknown"
label(data$pe81b)="Achilles reflex right"
label(data$pe81bm)="Achilles reflex right unknown"
label(data$pe81a)="Achilles reflex left"
label(data$pe81am)="Achilles reflex left unknown"
label(data$pe83)="Edema score"
label(data$pe83m)="Edema score unknown"
label(data$pe90)="Extremities inspection"
label(data$pe90m)="Extremities Inspection Reason Unknown"
label(data$pe91a)="Amputation right upper extremity"
label(data$pe91a1)="Missing 1st finger right"
label(data$pe91a2)="Missing 2nd finger right"
label(data$pe91a3)="Missing 3rd finger right"
label(data$pe91a4)="Missing 4th finger right"
label(data$pe91a5)="Missing 5th finger right"
label(data$pe91b)="Amputation Left upper extremity"
label(data$pe91b1)="Missing 1st finger left"
label(data$pe91b2)="Missing 2nd finger left"
label(data$pe91b3)="Missing 3rd finger left"
label(data$pe91b4)="Missing 4th finger left"
label(data$pe91b5)="Missing 5th finger left"
label(data$pe91c)="Amputation Right Lower extremity"
label(data$pe91c1)="Missing 1st toe right"
label(data$pe91c2)="Missing 2nd toe right"
label(data$pe91c3)="Missing 3rd toe right"
label(data$pe91c4)="Missing 4th toe right"
label(data$pe91c5)="Missing 5th toe right"
label(data$pe91d)="Amputation Left Lower extremity"
label(data$pe91d1)="Missing 1st toe left"
label(data$pe91d2)="Missing 2nd toe left"
label(data$pe91d3)="Missing 3rd toe left"
label(data$pe91d4)="Missing 4th toe left"
label(data$pe91d5)="Missing 5th toe left"
label(data$pe92a)="Paralysis upper Right extremity"
label(data$pe92b)="Paralysis upper Left extremity"
label(data$pe92c)="Paralysis lower Right extremity"
label(data$pe92d)="Paralysis lower Left extremity"
label(data$pe93a)="Paresis upper Right extremity"
label(data$pe93b)="Paresis upper Left extremity"
label(data$pe93c)="Paresis lower Right extremity"
label(data$pe93d)="Paresis lower Left extremity"
label(data$auto_id_PhyExa)="Unique Teleform Number"
label(data$pe01)="Total number of teeth"
label(data$pe01m)="Number of teeth unknown"
label(data$pe02)="Number of teeth in contact"
label(data$pe02m)="Teeth in contact unknown"
label(data$pe04_PhyExa)="Mucosa Score inflammation"
label(data$pe04m)="Mucosa Score unknown"
label(data$pe05)="Plaque score for teeth and dentures"
label(data$pe05m)="Plaque score unknown"
label(data$pe17)="Pacemaker or ICD observed"
label(data$pd17m)="Pacemaker unknown"
label(data$pe20)="Prolonged expiratory phase"
label(data$pe20m)="Unknown Prolonged expiratory phase"
label(data$pe21)="Dysmetria and freange R hand"
label(data$pe21m)="Dysmetria and freange R hand unknown"
label(data$pe22)="Dysmetria and freange L hand"
label(data$pe22m)="Dysmetria and freange L hand unknown"
label(data$pe25)="Muscle tone resistance"
label(data$pe25m)="Muscle tone resistance unknown"
label(data$pe26)="Tinel's sign"
label(data$pe26m)="Tinel's sign unknown"
label(data$pe27)="Hoffman sign"
label(data$pe27m)="Hoffman sign unknown"
label(data$pe30)="Snout sign"
label(data$pe30m)="Snout sign unknown"
label(data$pe33)="Quadriceps tendonitis R"
label(data$pe33m)="Quadriceps tendonitis R unknown"
label(data$pe34)="Quadriceps tendonitis L"
label(data$pe34m)="Quadriceps tendonitis L unknown"
label(data$pe35)="R Hip passive internal range of motion"
label(data$pe35a)="R Hip painful range of motion"
label(data$pe35m)="R Hip painful range of motion unknown"
label(data$pe36)="L Hip passive internal range of motion"
label(data$pe36a)="L Hip painful range of motion"
label(data$pe36m)="L Hip painful range of motion unknown"
label(data$pe37)="JVD present at 45 degrees"
label(data$pe37m)="JVD present at 45 degrees unknown"
label(data$pe38)="Abdominojugular reflux"
label(data$pe38m)="Abdominojugular reflux unknown"
label(data$pe39a)="R ankle dorsiflexion max motion"
label(data$pe39b)="R Painful dorsiflexion max motion"
label(data$pe39bm)="R painful dorsiflexion max motion unknown"
label(data$pe39c)="R plantarflexion max motion"
label(data$pe39d)="R painful plantarflexion max motion"
label(data$pe39dm)="R painful plantarflexion max motion unknown"
label(data$pe40a)="L ankle dorsiflexion max motion"
label(data$pe40b)="L Painful dorsiflexion max motion"
label(data$pe40bm)="L painful dorsiflexion max motion unknown"
label(data$pe40c)="L plantarflexion max motion"
label(data$pe40d)="L painful plantarflexion max motion"
label(data$pe40dm)="L painful plantarflexion max motion unknown"
label(data$pe41a)="R knee crepitus"
label(data$pe41am)="R knee crepitus unknown"
label(data$pe41b)="R knee painful passive motion"
label(data$pe41bm)="R knee painful passive motion unknown"
label(data$pe41c)="R knee maximal flexion range of motion"
label(data$pe41d)="R knee painful max flexion"
label(data$pe41dm)="R knee painful max flexion unknown"
label(data$pe41e)="R knee maximal extension 9 degrees"
label(data$pe41e1)="R knee Contracture"
label(data$pe41e2)="R knee Hyperextension"
label(data$pe41em)="R knee max extension unknown"
label(data$pe41f)="R knee effusion"
label(data$pe41fm)="R knee effusion unknown"
label(data$pe41g)="R knee tibiofemoral tenderness"
label(data$pe41gm)="R knee tibiofemoral tenderness unknown"
label(data$pe41h)="R knee patellar grind sign"
label(data$pe41hm)="R knee patellar grind sign unknown"
label(data$pe41j)="R straight leg raise range of motion"
label(data$pe42a)="L knee crepitus"
label(data$pe42am)="L knee crepitus unknown"
label(data$pe42b)="L knee painful passive motion"
label(data$pe42bm)="L knee painful passive motion unknown"
label(data$pe42c)="L knee maximal flexion range of motion"
label(data$pe42d)="L knee painful max flexion"
label(data$pe42dm)="L knee painful max flexion unknown"
label(data$pe42e)="L knee maximal extension 9 degrees"
label(data$pe42e1)="L knee Contracture"
label(data$pe42e2)="L knee Hyperextension"
label(data$pe42em)="L knee max extension unknown"
label(data$pe42f)="L knee effusion"
label(data$pe42fm)="L knee effusion unknown"
label(data$pe42g)="L knee tibiofemoral tenderness"
label(data$pe42gm)="L knee tibiofemoral tenderness unknown"
label(data$pe42h)="L knee patellar grind sign"
label(data$pe42hm)="L knee patellar grind sign unknown"
label(data$pe42j)="L straight leg raise range of motion"
label(data$pe43)="Bridging"
label(data$pe43m)="Bridging unknown"
label(data$pe44)="Biceps reflex Left"
label(data$pe44m)="Biceps reflex Left unknown"
label(data$pe45)="Biceps reflex Right"
label(data$pe45m)="Biceps reflex Right unknown"
label(data$pe54)="Heel to shin time right"
label(data$pe55)="Rhythm Right"
label(data$pe55m)="Rhythm Right unknown"
label(data$pe56)="Heel to shin time left"
label(data$pe57)="Rhythm Left"
label(data$pe57m)="Rhythm Left unknown"
label(data$pe58)="Grasp thumb above head"
label(data$pe58m)="Grasp thumb above head unknown"
label(data$pe59)="Grasp thumb at 90 degrees"
label(data$pe59m)="Grasp thumb at 90 degrees unknown"
label(data$pe60)="Grasp thumb next to hips"
label(data$pe60m)="Grasp thumb next to hips unknown"
label(data$pe67c)="Conditions"
label(data$pe68a)="R femur to tibia standing alignment"
label(data$pe68a1)="R femur knees pointing out degrees"
label(data$pe68a2)="R femur knees pointing in degrees"
label(data$pe68am)="R femur to tibia standing alignment unknown"
label(data$pe68b)="L femur to tibia standing alignment"
label(data$pe68b1)="L femur knees pointing out degrees"
label(data$pe68b2)="L femur knees pointing in degrees"
label(data$pe68bm)="L femur to tibia standing alignment unknown"
label(data$pe74a)="Spinal flexion range of motion"
label(data$pe74c)="Spinal extension range of motion"
label(data$pe74d)="Spinal extension motion painful"
label(data$pe74dm)="Spinal extension motion painful unknown"
label(data$pe75a)="R shoulder elevation"
label(data$pe75am)="R shoulder elevation unknown"
label(data$pe75b)="L shoulder elevation"
label(data$pe75bm)="L shoulder elevation unknown"
label(data$pe76a)="R shoulder functional external range"
label(data$pe76am)="R shoulder functional external range unknown"
label(data$pe76b)="L shoulder functional external range"
label(data$pe76bm)="L shoulder functional external range unknown"
label(data$pe77a)="R shoulder painful motion"
label(data$pe77am)="R shoulder painful motion unknown"
label(data$pe77b)="L shoulder painful motion"
label(data$pe77bm)="L shoulder painful motion unknown"
label(data$pe7801)="PE7801"
label(data$pe7802)="PE7802"
label(data$pe7803)="PE7803"
label(data$pe7804)="PE7804"
label(data$pe7805)="PE7805"
label(data$pe7806)="PE7806"
label(data$pe7807)="PE7807"
label(data$pe7808)="PE7808"
label(data$pe7809)="PE7809"
label(data$pe7810)="PE7810"
label(data$pe7811)="PE7811"
label(data$pe7812)="PE7812"
label(data$pe7813)="PE7813"
label(data$pe7814)="PE7814"
label(data$pe7815)="PE7815"
label(data$pe7816)="PE7816"
label(data$pe7817)="PE7817"
label(data$pe7818)="PE7818"
label(data$pe78a)="PE78A"
label(data$pe78am)="PE78Am"
label(data$pe79a)="Neck extension range of motion"
label(data$pe79b)="Neck extension painful motion"
label(data$pe79bm)="Neck extension painful motion unknown"
label(data$pe79c)="R neck active rotation"
label(data$pe79d)="R neck rotation painful"
label(data$pe79dm)="R neck rotation painful unknown"
label(data$pe80a)="L neck active rotation"
label(data$pe80b)="L neck rotation painful"
label(data$pe80bm)="L neck rotation painful unknown"
label(data$pe82)="Pain in lower legs worse when standing"
label(data$pe82a)="Is Pain from arthritis or joint problems"
label(data$pe82b)="Is the pain worse while walking?"
label(data$pe82c)="Need over the counter or prescription medications to relieve the pain"
label(data$pe82cm)="Need analgesics unknown"
label(data$pe82d)="Pain scale 1 to 10"
label(data$pe84)="Clinical score for pigmentation"
label(data$pe84m)="Clinical score for pigmentation unknown"
label(data$pe85)="Clinical score for lipodermatosclerosis"
label(data$pe85m)="Clinical score for lipodermatosclerosis unknown"
label(data$pe86)="Lower extremity ulcer"
label(data$pe86m)="Lower extremity ulcer unknown"
label(data$pe87)="Clinical score for ulcer size"
label(data$pe87m)="Clinical score for ulcer size unknown"
label(data$pe88)="Clinical score for ulcer duration"
label(data$pe88m)="Clinical score for ulcer duration unknown"
label(data$pe89)="Clinical score for ulcer recurrence"
label(data$pe89m)="Clinical score for ulcer recurrence unknown"
label(data$pe71at)="WRIST_R_T"
label(data$pe71ae)="WRIST_L_E"
label(data$pe71ad)="WRIST_R_D"
label(data$pe71a0t)="CMC_R_T"
label(data$pe71a0e)="CMC_R_E"
label(data$pe71a0d)="CMC_R_D"
label(data$pe71a1t)="MCP5_R_T"
label(data$pe71a1e)="MCP5_R_E"
label(data$pe71a1d)="MCP5_R_D"
label(data$pe71a2t)="MCP4_R_T"
label(data$pe71a2e)="MCP4_R_E"
label(data$pe71a2d)="MCP4_R_D"
label(data$pe71a3t)="MCP3_R_T"
label(data$pe71a3e)="MCP3_R_E"
label(data$pe71a3d)="MCP3_R_D"
label(data$pe71a4t)="MCP2_R_T"
label(data$pe71a4e)="MCP2_R_E"
label(data$pe71a4d)="MCP2_R_D"
label(data$pe71a7t)="PIP2_R_T"
label(data$pe71a7e)="PIP2_R_E"
label(data$pe71a7d)="PIP2_R_D"
label(data$pe71a6t)="PIP3_R_T"
label(data$pe71a6e)="PIP3_R_E"
label(data$pe71a6d)="PIP3_R_D"
label(data$pe71a5t)="PIP4_R_T"
label(data$pe71a5e)="PIP4_R_D"
label(data$pe71a5d)="PIP4_R_D"
label(data$pe71a9t)="DIP2_R_T"
label(data$pe71a9e)="DIP2_R_E"
label(data$pe71a9d)="DIP2_R_D"
label(data$pe71a8t)="DIP3_R_T"
label(data$pe71a8e)="DIP3_R_E"
label(data$pe71a8d)="DIP3_R_D"
label(data$pe71aa)="HAND_R_ALL_NORMAL"
label(data$pe71am)="Reason unknown"
label(data$pe71bt)="WRIST_L_T"
label(data$pe71be)="WRIST_L_E"
label(data$pe71bd)="WRIST_L_D"
label(data$pe71b0t)="CMC_L_T"
label(data$pe71b0e)="CMC_L_E"
label(data$pe71b0d)="CMC_L_D"
label(data$pe71b1t)="MCP5_L_T"
label(data$pe71b1e)="MCP5_L_E"
label(data$pe71b1d)="MCP5_L_D"
label(data$pe71b2t)="MCP4_l_T"
label(data$pe71b2e)="MCP4_L_E"
label(data$pe71b2d)="MCP4_L_D"
label(data$pe71b3t)="MCP3_L_T"
label(data$pe71b3e)="MCP3_L_E"
label(data$pe71b3d)="MCP3_L_D"
label(data$pe71b4t)="MCP2_L_T"
label(data$pe71b4e)="MCP2_L_E"
label(data$pe71b4d)="MCP2_L_D"
label(data$pe71b7t)="PIP2_L_T"
label(data$pe71b7e)="PIP2_L_E"
label(data$pe71b7d)="PIP2_L_D"
label(data$pe71b6t)="PIP3_L_T"
label(data$pe71b6e)="PIP3_L_E"
label(data$pe71b6d)="PIP3_L_D"
label(data$pe71b5t)="PIP4_L_T"
label(data$pe71b5e)="PIP4_L_D"
label(data$pe71b5d)="PIP4_L_D"
label(data$pe71b9t)="DIP2_L_T"
label(data$pe71b9e)="DIP2_L_E"
label(data$pe71b9d)="DIP2_L_D"
label(data$pe71b8t)="DIP3_L_T"
label(data$pe71b8e)="DIP3_L_E"
label(data$pe71b8d)="DIP3_L_D"
label(data$pe71ba)="HAND_L_ALL_NORMAL"
label(data$pe71bm)="Reason unknown"
label(data$pe70d)="Measurements done standing or sitting"
label(data$crf_parent_name_PhyExa)="CRF Parent Name"
label(data$item_group_repeat_PhyExa)="Item Group Repeate"
label(data$pe24dk_8)="PE_Number of hand strikes unknown : Unknown (Checkbox Indicator)"
label(data$pe67c1_aortic_regurgitation)="Aortic regurgitation : Aortic regurgitation (Checkbox Indicator)"
label(data$pe67c2_hyperthyroidism)="Hyperthyroidism : Hyperthyroidism (Checkbox Indicator)"
label(data$pe67c3_av_shunt_left_arm)="AV shunt left arm : AV shunt left arm (Checkbox Indicator)"
label(data$pe67c4_av_shunt_right_arm)="AV shunt right arm : AV shunt right arm (Checkbox Indicator)"
label(data$pe67c5_previous_surgery_right_si)="Previous surgery right side : Previous surgery right side (Checkbox Indicator)"
label(data$pe67c6_previous_surgery_left_sid)="Previous surgery left side : Previous surgery left side (Checkbox Indicator)"
label(data$pe67c_aortic_regurgitation)="Conditions : Aortic regurgitation (Checkbox Indicator)"
label(data$pe67c_av_shunt_left_arm)="Conditions : AV shunt right arm (Checkbox Indicator)"
label(data$pe67c_av_shunt_right_arm)="Conditions : AV shunt left arm (Checkbox Indicator)"
label(data$pe67c_hyperthyroidism)="Conditions : Hyperthyroidism (Checkbox Indicator)"
label(data$pe67c_previous_surgery_left_side)="Conditions : Previous surgery left side (Checkbox Indicator)"
label(data$pe67c_previous_surgery_right_sid)="Conditions : Previous surgery right side (Checkbox Indicator)"
label(data$pe71a0d_1)="CMC_R_D : CMC_R_D (Checkbox Indicator)"
label(data$pe71a0e_1)="CMC_R_E : CMC_R_E (Checkbox Indicator)"
label(data$pe71a0t_1)="CMC_R_T : CMC_R_T (Checkbox Indicator)"
label(data$pe71a1d_1)="MCP5_R_D : MCP5_R_D (Checkbox Indicator)"
label(data$pe71a1e_1)="MCP5_R_E : MCP5_R_E (Checkbox Indicator)"
label(data$pe71a1t_1)="MCP5_R_T : MCP5_R_T (Checkbox Indicator)"
label(data$pe71a2d_1)="MCP4_R_D : MCP4_R_D (Checkbox Indicator)"
label(data$pe71a2e_1)="MCP4_R_E : MCP4_R_E (Checkbox Indicator)"
label(data$pe71a2t_1)="MCP4_R_T : MCP4_R_T (Checkbox Indicator)"
label(data$pe71a3d_1)="MCP3_R_D : MCP3_R_D (Checkbox Indicator)"
label(data$pe71a3e_1)="MCP3_R_E : MCP3_R_E (Checkbox Indicator)"
label(data$pe71a3t_1)="MCP3_R_T : MCP3_R_T (Checkbox Indicator)"
label(data$pe71a4d_1)="MCP2_R_D : MCP2_R_D (Checkbox Indicator)"
label(data$pe71a4e_1)="MCP2_R_E : MCP2_R_E (Checkbox Indicator)"
label(data$pe71a4t_1)="MCP2_R_T : MCP2_R_T (Checkbox Indicator)"
label(data$pe71a5d_1)="PIP4_R_D : PIP4_R_D (Checkbox Indicator)"
label(data$pe71a5e_1)="PIP4_R_D : PIP4_R_E (Checkbox Indicator)"
label(data$pe71a5t_1)="PIP4_R_T : PIP4_R_T (Checkbox Indicator)"
label(data$pe71a6d_1)="PIP3_R_D : PIP3_R_D (Checkbox Indicator)"
label(data$pe71a6e_1)="PIP3_R_E : PIP3_R_E (Checkbox Indicator)"
label(data$pe71a6t_1)="PIP3_R_T : PIP3_R_T (Checkbox Indicator)"
label(data$pe71a7d_1)="PIP2_R_D : PIP2_R_D (Checkbox Indicator)"
label(data$pe71a7e_1)="PIP2_R_E : PIP2_R_E (Checkbox Indicator)"
label(data$pe71a7t_1)="PIP2_R_T : PIP2_R_T (Checkbox Indicator)"
label(data$pe71a8d_1)="DIP3_R_D : DIP3_R_D (Checkbox Indicator)"
label(data$pe71a8e_1)="DIP3_R_E : DIP3_R_E (Checkbox Indicator)"
label(data$pe71a8t_1)="DIP3_R_T : DIP3_R_T (Checkbox Indicator)"
label(data$pe71a9d_1)="DIP2_R_D : DIP2_R_D (Checkbox Indicator)"
label(data$pe71a9e_1)="DIP2_R_E : DIP2_R_E (Checkbox Indicator)"
label(data$pe71a9t_1)="DIP2_R_T : DIP2_R_T (Checkbox Indicator)"
label(data$pe71ad_1)="WRIST_R_D : WRIST_R_D (Checkbox Indicator)"
label(data$pe71ae_1)="WRIST_L_E : WRIST_R_E (Checkbox Indicator)"
label(data$pe71at_1)="WRIST_R_T : WRIST_R_T (Checkbox Indicator)"
label(data$pe71b0d_1)="CMC_L_D : CMC_L_D (Checkbox Indicator)"
label(data$pe71b0e_1)="CMC_L_E : CMC_L_E (Checkbox Indicator)"
label(data$pe71b0t_1)="CMC_L_T : CMC_L_T (Checkbox Indicator)"
label(data$pe71b1d_1)="MCP5_L_D : MCP5_L_D (Checkbox Indicator)"
label(data$pe71b1e_1)="MCP5_L_E : MCP5_L_E (Checkbox Indicator)"
label(data$pe71b1t_1)="MCP5_L_T : MCP5_L_T (Checkbox Indicator)"
label(data$pe71b2d_1)="MCP4_L_D : MCP4_L_D (Checkbox Indicator)"
label(data$pe71b2e_1)="MCP4_L_E : MCP4_L_E (Checkbox Indicator)"
label(data$pe71b2t_1)="MCP4_l_T : MCP4_L_T (Checkbox Indicator)"
label(data$pe71b3d_1)="MCP3_L_D : MCP3_L_D (Checkbox Indicator)"
label(data$pe71b3e_1)="MCP3_L_E : MCP3_L_E (Checkbox Indicator)"
label(data$pe71b3t_1)="MCP3_L_T : MCP3_L_T (Checkbox Indicator)"
label(data$pe71b4d_1)="MCP2_L_D : MCP2_L_D (Checkbox Indicator)"
label(data$pe71b4e_1)="MCP2_L_E : MCP2_L_E (Checkbox Indicator)"
label(data$pe71b4t_1)="MCP2_L_T : MCP2_L_T (Checkbox Indicator)"
label(data$pe71b5d_1)="PIP4_L_D : PIP4_L_D (Checkbox Indicator)"
label(data$pe71b5e_1)="PIP4_L_D : PIP4_L_E (Checkbox Indicator)"
label(data$pe71b5t_1)="PIP4_L_T : PIP4_L_T (Checkbox Indicator)"
label(data$pe71b6d_1)="PIP3_L_D : PIP3_L_D (Checkbox Indicator)"
label(data$pe71b6e_1)="PIP3_L_E : PIP3_L_E (Checkbox Indicator)"
label(data$pe71b6t_1)="PIP3_L_T : PIP3_L_T (Checkbox Indicator)"
label(data$pe71b7d_1)="PIP2_L_D : PIP2_L_D (Checkbox Indicator)"
label(data$pe71b7e_1)="PIP2_L_E : PIP2_L_E (Checkbox Indicator)"
label(data$pe71b7t_1)="PIP2_L_T : PIP2_L_T (Checkbox Indicator)"
label(data$pe71b8d_1)="DIP3_L_D : DIP3_L_D (Checkbox Indicator)"
label(data$pe71b8e_1)="DIP3_L_E : DIP3_L_E (Checkbox Indicator)"
label(data$pe71b8t_1)="DIP3_L_T : DIP3_L_T (Checkbox Indicator)"
label(data$pe71b9d_1)="DIP2_L_D : DIP2_L_D (Checkbox Indicator)"
label(data$pe71b9e_1)="DIP2_L_E : DIP2_L_E (Checkbox Indicator)"
label(data$pe71b9t_1)="DIP2_L_T : DIP2_L_T (Checkbox Indicator)"
label(data$pe71bd_1)="WRIST_L_D : WRIST_L_D (Checkbox Indicator)"
label(data$pe71be_1)="WRIST_L_E : WRIST_L_E (Checkbox Indicator)"
label(data$pe71bt_1)="WRIST_L_T : WRIST_L_T (Checkbox Indicator)"
label(data$pe90_0)="Extremities inspection : None (Checkbox Indicator)"
label(data$pe90_1)="Extremities inspection : Amputation (Checkbox Indicator)"
label(data$pe90_2)="Extremities inspection : Paralysis (Checkbox Indicator)"
label(data$pe90_3)="Extremities inspection : Paresis (Checkbox Indicator)"
label(data$pe90_4)="Extremities inspection : Unknown (Checkbox Indicator)"
label(data$pe91a1_1)="Missing 1st finger right : 1 (Checkbox Indicator)"
label(data$pe91a2_1)="Missing 2nd finger right : 2 (Checkbox Indicator)"
label(data$pe91a3_1)="Missing 3rd finger right : 3 (Checkbox Indicator)"
label(data$pe91a4_1)="Missing 4th finger right : 4 (Checkbox Indicator)"
label(data$pe91a5_1)="Missing 5th finger right : 5 (Checkbox Indicator)"
label(data$pe91b1_1)="Missing 1st finger left : 1 (Checkbox Indicator)"
label(data$pe91b2_1)="Missing 2nd finger left : 2 (Checkbox Indicator)"
label(data$pe91b3_1)="Missing 3rd finger left : 3 (Checkbox Indicator)"
label(data$pe91b4_1)="Missing 4th finger left : 4 (Checkbox Indicator)"
label(data$pe91b5_1)="Missing 5th finger left : 5 (Checkbox Indicator)"
label(data$pe91c1_1)="Missing 1st toe right : 1 (Checkbox Indicator)"
label(data$pe91c2_1)="Missing 2nd toe right : 2 (Checkbox Indicator)"
label(data$pe91c3_1)="Missing 3rd toe right : 3 (Checkbox Indicator)"
label(data$pe91c4_1)="Missing 4th toe right : 4 (Checkbox Indicator)"
label(data$pe91c5_1)="Missing 5th toe right : 5 (Checkbox Indicator)"
label(data$pe91d1_1)="Missing 1st toe left : 1 (Checkbox Indicator)"
label(data$pe91d2_1)="Missing 2nd toe left : 2 (Checkbox Indicator)"
label(data$pe91d3_1)="Missing 3rd toe left : 3 (Checkbox Indicator)"
label(data$pe91d4_1)="Missing 4th toe left : 4 (Checkbox Indicator)"
label(data$pe91d5_1)="Missing 5th toe left : 5 (Checkbox Indicator)"
label(data$pe92a_1)="Paralysis upper Right extremity : Right (Checkbox Indicator)"
label(data$pe92b_1)="Paralysis upper Left extremity : Left (Checkbox Indicator)"
label(data$pe92c_1)="Paralysis lower Right extremity : Right (Checkbox Indicator)"
label(data$pe92d_1)="Paralysis lower Left extremity : Left (Checkbox Indicator)"
label(data$pe93a_1)="Paresis upper Right extremity : Right (Checkbox Indicator)"
label(data$pe93b_1)="Paresis upper Left extremity : Left (Checkbox Indicator)"
label(data$pe93c_1)="Paresis lower Right extremity : Right (Checkbox Indicator)"
label(data$study_name_PhyExa)="Study Name"

#Create new variables for factors
data$penotdone.factor = factor(data$penotdone, levels = c("1","3","4"))
levels(data$penotdone.factor) = c("Exam done","Exam incomplete","Exam not done leave form blank")

data$pe03.factor = factor(data$pe03, levels = c("0","1","3","8"))
levels(data$pe03.factor) = c("No prosthesis","Partial prosthesis","Complete prosthesis","Unknown")

data$pe03m.factor = factor(data$pe03m, levels = c("555","666","777","888","999"))
levels(data$pe03m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe06.factor = factor(data$pe06, levels = c("0","1","8"))
levels(data$pe06.factor) = c("Absent","Present","Unknown")

data$pe06m.factor = factor(data$pe06m, levels = c("555","666","777","888","999"))
levels(data$pe06m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe07.factor = factor(data$pe07, levels = c("0","1","8"))
levels(data$pe07.factor) = c("Symmetrical","Asymmetrical","Unknown")

data$pe07m.factor = factor(data$pe07m, levels = c("555","666","777","888","999"))
levels(data$pe07m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe08.factor = factor(data$pe08, levels = c("0","1","2","8"))
levels(data$pe08.factor) = c("Full","Assymmetrical","Bilateral abnormal","Unknown")

data$pe08m.factor = factor(data$pe08m, levels = c("555","666","777","888","999"))
levels(data$pe08m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe09.factor = factor(data$pe09, levels = c("0","1","2","8"))
levels(data$pe09.factor) = c("Full","Assymmetrical","Bilateral abnormal","Unknown")

data$pe09m.factor = factor(data$pe09m, levels = c("555","666","777","888","999"))
levels(data$pe09m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe10.factor = factor(data$pe10, levels = c("0","1","8"))
levels(data$pe10.factor) = c("Normal","Abnormal","Unknown")

data$pe10m.factor = factor(data$pe10m, levels = c("555","666","777","888","999"))
levels(data$pe10m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe11.factor = factor(data$pe11, levels = c("0","1","8"))
levels(data$pe11.factor) = c("No nystagmus","Nystagmus present","Unknown")

data$pe11m.factor = factor(data$pe11m, levels = c("555","666","777","888","999"))
levels(data$pe11m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe12.factor = factor(data$pe12, levels = c("0","1","8"))
levels(data$pe12.factor) = c("Normal convergence","Unable to converge","Unknown")

data$pe12m.factor = factor(data$pe12m, levels = c("555","666","777","888","999"))
levels(data$pe12m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe13.factor = factor(data$pe13, levels = c("0","1","8"))
levels(data$pe13.factor) = c("Symmetrical","Asymmetrical","Unknown")

data$pe13m.factor = factor(data$pe13m, levels = c("555","666","777","888","999"))
levels(data$pe13m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe14.factor = factor(data$pe14, levels = c("0","1","8"))
levels(data$pe14.factor) = c("No murmurs","Murmur present","Unknown")

data$pe14m.factor = factor(data$pe14m, levels = c("555","666","777","888","999"))
levels(data$pe14m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe15.factor = factor(data$pe15, levels = c("0","1","8"))
levels(data$pe15.factor) = c("Normal (regular)","Abnormal (irregular)","Unknown")

data$pe15m.factor = factor(data$pe15m, levels = c("555","666","777","888","999"))
levels(data$pe15m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe16.factor = factor(data$pe16, levels = c("0","1","2","3","8"))
levels(data$pe16.factor) = c("Absent","Right side only","Left side only","Bilateral","Unknown")

data$pe16m.factor = factor(data$pe16m, levels = c("555","666","777","888","999"))
levels(data$pe16m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe18.factor = factor(data$pe18, levels = c("0","1","2","8"))
levels(data$pe18.factor) = c("No rales","Rales at bases","Rales more than at bases","Unknown")

data$pe18m.factor = factor(data$pe18m, levels = c("555","666","777","888","999"))
levels(data$pe18m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe19.factor = factor(data$pe19, levels = c("0","1","8"))
levels(data$pe19.factor) = c("No wheezing","Wheezing","Unknown")

data$pe19m.factor = factor(data$pe19m, levels = c("555","666","777","888","999"))
levels(data$pe19m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe23.factor = factor(data$pe23, levels = c("0","1","8"))
levels(data$pe23.factor) = c("Rhythmic","Dysrhythmic","Unknown")

data$pe23m.factor = factor(data$pe23m, levels = c("555","666","777","888","999"))
levels(data$pe23m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe24m.factor = factor(data$pe24m, levels = c("555","666","777","888","999"))
levels(data$pe24m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe28.factor = factor(data$pe28, levels = c("0","1","8"))
levels(data$pe28.factor) = c("No contraction","Contraction","Unknown")

data$pe28m.factor = factor(data$pe28m, levels = c("555","666","777","888","999"))
levels(data$pe28m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe29.factor = factor(data$pe29, levels = c("0","1","2","8"))
levels(data$pe29.factor) = c("Stops in < = 5 blinks","Stops in 6 - 15 blinks","Persists > 15 blinks","Unknown")

data$pe29m.factor = factor(data$pe29m, levels = c("555","666","777","888","999"))
levels(data$pe29m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe31.factor = factor(data$pe31, levels = c("0","1","2","3","8"))
levels(data$pe31.factor) = c("Normal","Absent","Slightly brisk","Hyperreflexia","Unknown")

data$pe31m.factor = factor(data$pe31m, levels = c("555","666","777","888","999"))
levels(data$pe31m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe32.factor = factor(data$pe32, levels = c("0","1","2","3","8"))
levels(data$pe32.factor) = c("Normal","Absent","Slightly brisk","Hyperreflexia","Unknown")

data$pe32m.factor = factor(data$pe32m, levels = c("555","666","777","888","999"))
levels(data$pe32m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe41k.factor = factor(data$pe41k, levels = c("0","1","2","3","8"))
levels(data$pe41k.factor) = c("No Pain","Pain localized to groin or hip","Pain localized to thigh","Pain localized to back or shoots down lower extremity","Unkown")

data$pe41km.factor = factor(data$pe41km, levels = c("555","666","777","888","999"))
levels(data$pe41km.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe42k.factor = factor(data$pe42k, levels = c("0","1","2","3","8"))
levels(data$pe42k.factor) = c("No Pain","Pain localized to groin or hip","Pain localized to thigh","Pain localized to back or shoots down lower extremity","Unkown")

data$pe42km.factor = factor(data$pe42km, levels = c("555","666","777","888","999"))
levels(data$pe42km.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe46.factor = factor(data$pe46, levels = c("0","1","8"))
levels(data$pe46.factor) = c("Yes","No","Unknown")

data$pe46m.factor = factor(data$pe46m, levels = c("555","666","777","888","999"))
levels(data$pe46m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe47.factor = factor(data$pe47, levels = c("0","1","8"))
levels(data$pe47.factor) = c("Yes","No","Unknown")

data$pe47m.factor = factor(data$pe47m, levels = c("555","666","777","888","999"))
levels(data$pe47m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe48.factor = factor(data$pe48, levels = c("0","1","8"))
levels(data$pe48.factor) = c("Yes","No","Unknown")

data$pe48m.factor = factor(data$pe48m, levels = c("555","666","777","888","999"))
levels(data$pe48m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe49.factor = factor(data$pe49, levels = c("0","1","8"))
levels(data$pe49.factor) = c("Flexion or nothing","Dorsiflexion of great toe fanning of toes or both","Unknown")

data$pe49m.factor = factor(data$pe49m, levels = c("555","666","777","888","999"))
levels(data$pe49m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe50.factor = factor(data$pe50, levels = c("0","1","8"))
levels(data$pe50.factor) = c("Yes","No","Unknown")

data$pe50m.factor = factor(data$pe50m, levels = c("555","666","777","888","999"))
levels(data$pe50m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe51.factor = factor(data$pe51, levels = c("0","1","8"))
levels(data$pe51.factor) = c("Yes","No","Unknown")

data$pe51m.factor = factor(data$pe51m, levels = c("555","666","777","888","999"))
levels(data$pe51m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe52.factor = factor(data$pe52, levels = c("0","1","8"))
levels(data$pe52.factor) = c("Yes","No","Unknown")

data$pe52m.factor = factor(data$pe52m, levels = c("555","666","777","888","999"))
levels(data$pe52m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe53.factor = factor(data$pe53, levels = c("0","1","8"))
levels(data$pe53.factor) = c("Yes","No","Unknown")

data$pe53m.factor = factor(data$pe53m, levels = c("555","666","777","888","999"))
levels(data$pe53m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe61.factor = factor(data$pe61, levels = c("0","1","8"))
levels(data$pe61.factor) = c("Present","Absent","Unknown")

data$pe61m.factor = factor(data$pe61m, levels = c("555","666","777","888","999"))
levels(data$pe61m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe62.factor = factor(data$pe62, levels = c("0","1","8"))
levels(data$pe62.factor) = c("Present","Absent","Unknown")

data$pe62m.factor = factor(data$pe62m, levels = c("555","666","777","888","999"))
levels(data$pe62m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe63.factor = factor(data$pe63, levels = c("0","1","8"))
levels(data$pe63.factor) = c("Present","Absent","Unknown")

data$pe63m.factor = factor(data$pe63m, levels = c("555","666","777","888","999"))
levels(data$pe63m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe64.factor = factor(data$pe64, levels = c("0","1","8"))
levels(data$pe64.factor) = c("Present","Absent","Unknown")

data$pe64m.factor = factor(data$pe64m, levels = c("555","666","777","888","999"))
levels(data$pe64m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe65.factor = factor(data$pe65, levels = c("0","1","8"))
levels(data$pe65.factor) = c("Absent","Present","Unknown")

data$pe65m.factor = factor(data$pe65m, levels = c("555","666","777","888","999"))
levels(data$pe65m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe66.factor = factor(data$pe66, levels = c("0","1","8"))
levels(data$pe66.factor) = c("Absent","Present","Unknown")

data$pe66m.factor = factor(data$pe66m, levels = c("555","666","777","888","999"))
levels(data$pe66m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe67a.factor = factor(data$pe67a, levels = c("1","2","3","4","8"))
levels(data$pe67a.factor) = c("Small","Regular","Large","Thigh","Unknown")

data$pe67f.factor = factor(data$pe67f, levels = c("0","1"))
levels(data$pe67f.factor) = c("No","Yes")

data$pe67fm.factor = factor(data$pe67fm, levels = c("555","666","777","888","999"))
levels(data$pe67fm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe69.factor = factor(data$pe69, levels = c("0","1","8"))
levels(data$pe69.factor) = c("Absent","Present","Unknown")

data$pe69m.factor = factor(data$pe69m, levels = c("555","666","777","888","999"))
levels(data$pe69m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe70b.factor = factor(data$pe70b, levels = c("0","1"))
levels(data$pe70b.factor) = c("No","Yes")

data$pe70c.factor = factor(data$pe70c, levels = c("0","1"))
levels(data$pe70c.factor) = c("No","Yes")

data$pe70cm.factor = factor(data$pe70cm, levels = c("555","666","777","888","999"))
levels(data$pe70cm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe72.factor = factor(data$pe72, levels = c("0","1","8"))
levels(data$pe72.factor) = c("Absent","Present","Unknown")

data$pe72m.factor = factor(data$pe72m, levels = c("555","666","777","888","999"))
levels(data$pe72m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe73a.factor = factor(data$pe73a, levels = c("0","1","8"))
levels(data$pe73a.factor) = c("Yes (record 0 cm)","No (record distance from wall)","Unknown")

data$pe73m.factor = factor(data$pe73m, levels = c("555","666","777","888","999"))
levels(data$pe73m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe74b.factor = factor(data$pe74b, levels = c("0","1","8"))
levels(data$pe74b.factor) = c("No","Yes","Unknown")

data$pe74bm.factor = factor(data$pe74bm, levels = c("555","666","777","888","999"))
levels(data$pe74bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe81b.factor = factor(data$pe81b, levels = c("0","1","2","3","8"))
levels(data$pe81b.factor) = c("Normal","Absent","Slightly brisk","Hyperreflexia","Unknown")

data$pe81bm.factor = factor(data$pe81bm, levels = c("555","666","777","888","999"))
levels(data$pe81bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe81a.factor = factor(data$pe81a, levels = c("0","1","2","3","8"))
levels(data$pe81a.factor) = c("Normal","Absent","Slightly brisk","Hyperreflexia","Unknown")

data$pe81am.factor = factor(data$pe81am, levels = c("555","666","777","888","999"))
levels(data$pe81am.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe83.factor = factor(data$pe83, levels = c("0","1","2","8"))
levels(data$pe83.factor) = c("None","Trace pitting","Very obvious pitting","Unknown")

data$pe83m.factor = factor(data$pe83m, levels = c("555","666","777","888","999"))
levels(data$pe83m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe90m.factor = factor(data$pe90m, levels = c("555","666","777","888","999"))
levels(data$pe90m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe91a.factor = factor(data$pe91a, levels = c("1","2","3","4"))
levels(data$pe91a.factor) = c("Above elbow","Below elbow","Metacarpal","Digits")

data$pe91b.factor = factor(data$pe91b, levels = c("1","2","3","4"))
levels(data$pe91b.factor) = c("Above elbow","Below elbow","Metacarpal","Digits")

data$pe91c.factor = factor(data$pe91c, levels = c("1","2","3","4"))
levels(data$pe91c.factor) = c("Above knee","Below knee","Metatarsal","Digits")

data$pe91d.factor = factor(data$pe91d, levels = c("1","2","3","4"))
levels(data$pe91d.factor) = c("Above knee","Below knee","Metatarsal","Digits")

data$pe01m.factor = factor(data$pe01m, levels = c("555","666","777","888","999"))
levels(data$pe01m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe02m.factor = factor(data$pe02m, levels = c("555","666","777","888","999"))
levels(data$pe02m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe04_PhyExa.factor = factor(data$pe04_PhyExa, levels = c("0","1","2","3","4"))
levels(data$pe04_PhyExa.factor) = c("0=Unknown","1=Normal appearance of gingival and oral mucosa","2=Mild inflammation","3=Moderate inflammation","4=Severe inflammation")

data$pe04m.factor = factor(data$pe04m, levels = c("555","666","777","888","999"))
levels(data$pe04m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe05.factor = factor(data$pe05, levels = c("0","1","2","3","4"))
levels(data$pe05.factor) = c("0=unknown","1=No easily visible plaque","2=Small amounts of hardly visible plaque","3=Moderate amounts of plaque","4=Abundant amounts of confluent plaque")

data$pe05m.factor = factor(data$pe05m, levels = c("555","666","777","888","999"))
levels(data$pe05m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe17.factor = factor(data$pe17, levels = c("0","1","8"))
levels(data$pe17.factor) = c("No pacemaker or ICD","Pacemaker or ICD present","Unknown")

data$pe20.factor = factor(data$pe20, levels = c("0","1","8"))
levels(data$pe20.factor) = c("Phase < 6 seconds","Phase > 6 seconds","Unknown")

data$pe20m.factor = factor(data$pe20m, levels = c("555","666","777","888","999"))
levels(data$pe20m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe21.factor = factor(data$pe21, levels = c("0","1","2","8"))
levels(data$pe21.factor) = c("Rapid and precise","Slows down","Misses target","Unknown")

data$pe21m.factor = factor(data$pe21m, levels = c("555","666","777","888","999"))
levels(data$pe21m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe22.factor = factor(data$pe22, levels = c("0","1","2","8"))
levels(data$pe22.factor) = c("Rapid and precise","Slows down","Misses target","Unknown")

data$pe22m.factor = factor(data$pe22m, levels = c("555","666","777","888","999"))
levels(data$pe22m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe25.factor = factor(data$pe25, levels = c("0","1","2","8"))
levels(data$pe25.factor) = c("None","One direction","Throughout","Unknown")

data$pe25m.factor = factor(data$pe25m, levels = c("555","666","777","888","999"))
levels(data$pe25m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe26.factor = factor(data$pe26, levels = c("0","1","2","3","8"))
levels(data$pe26.factor) = c("None","Present on right","Present on left","Present bilaterally","Unknown")

data$pe26m.factor = factor(data$pe26m, levels = c("555","666","777","888","999"))
levels(data$pe26m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe27.factor = factor(data$pe27, levels = c("0","1","8"))
levels(data$pe27.factor) = c("No flexion or adduction","Reflexive flexion or adduction","Unknown")

data$pe27m.factor = factor(data$pe27m, levels = c("555","666","777","888","999"))
levels(data$pe27m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe30.factor = factor(data$pe30, levels = c("0","1","8"))
levels(data$pe30.factor) = c("No reflexive sucking or puckering","Reflexive sucking or puckering","Unknown")

data$pe30m.factor = factor(data$pe30m, levels = c("555","666","777","888","999"))
levels(data$pe30m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe33.factor = factor(data$pe33, levels = c("0","1","8"))
levels(data$pe33.factor) = c("No pain","Pain in any one area","Unknown")

data$pe33m.factor = factor(data$pe33m, levels = c("555","666","777","888","999"))
levels(data$pe33m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe34.factor = factor(data$pe34, levels = c("0","1","8"))
levels(data$pe34.factor) = c("No pain","Pain in any one area","Unknown")

data$pe34m.factor = factor(data$pe34m, levels = c("555","666","777","888","999"))
levels(data$pe34m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe35a.factor = factor(data$pe35a, levels = c("0","1","8"))
levels(data$pe35a.factor) = c("No pain","Pain present","Unknown")

data$pe35m.factor = factor(data$pe35m, levels = c("555","666","777","888","999"))
levels(data$pe35m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe36a.factor = factor(data$pe36a, levels = c("0","1","8"))
levels(data$pe36a.factor) = c("No pain","Pain present","Unknown")

data$pe36m.factor = factor(data$pe36m, levels = c("555","666","777","888","999"))
levels(data$pe36m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe37.factor = factor(data$pe37, levels = c("0","1","8"))
levels(data$pe37.factor) = c("JVD absent","JVD present"," Unknown")

data$pe37m.factor = factor(data$pe37m, levels = c("555","666","777","888","999"))
levels(data$pe37m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe38.factor = factor(data$pe38, levels = c("0","1","2","8"))
levels(data$pe38.factor) = c("Absent","Obvious venous distension to jaw","Could not evaluate/Valsalva","Unknown")

data$pe38m.factor = factor(data$pe38m, levels = c("555","666","777","888","999"))
levels(data$pe38m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe39b.factor = factor(data$pe39b, levels = c("0","1","8"))
levels(data$pe39b.factor) = c("No pain","Pain present","Unknown")

data$pe39bm.factor = factor(data$pe39bm, levels = c("555","666","777","888","999"))
levels(data$pe39bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe39d.factor = factor(data$pe39d, levels = c("0","1","8"))
levels(data$pe39d.factor) = c("No pain","Pain present","Unknown")

data$pe39dm.factor = factor(data$pe39dm, levels = c("555","666","777","888","999"))
levels(data$pe39dm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe40b.factor = factor(data$pe40b, levels = c("0","1","8"))
levels(data$pe40b.factor) = c("No pain","Pain present","Unknown")

data$pe40bm.factor = factor(data$pe40bm, levels = c("555","666","777","888","999"))
levels(data$pe40bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe40d.factor = factor(data$pe40d, levels = c("0","1","8"))
levels(data$pe40d.factor) = c("No pain","Pain present","Unknown")

data$pe40dm.factor = factor(data$pe40dm, levels = c("555","666","777","888","999"))
levels(data$pe40dm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe41a.factor = factor(data$pe41a, levels = c("0","1","8"))
levels(data$pe41a.factor) = c("No crepitus detected","Crepitus present","Unknown")

data$pe41am.factor = factor(data$pe41am, levels = c("555","666","777","888","999"))
levels(data$pe41am.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe41b.factor = factor(data$pe41b, levels = c("0","1","8"))
levels(data$pe41b.factor) = c("No pain","Pain present","Unknown")

data$pe41bm.factor = factor(data$pe41bm, levels = c("555","666","777","888","999"))
levels(data$pe41bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe41d.factor = factor(data$pe41d, levels = c("0","1","8"))
levels(data$pe41d.factor) = c("No pain","Pain present","Unknown")

data$pe41dm.factor = factor(data$pe41dm, levels = c("555","666","777","888","999"))
levels(data$pe41dm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe41e.factor = factor(data$pe41e, levels = c("0","1","2","8"))
levels(data$pe41e.factor) = c("0 degrees","Contracture","Hypertension","Unknown")

data$pe41em.factor = factor(data$pe41em, levels = c("555","666","777","888","999"))
levels(data$pe41em.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe41f.factor = factor(data$pe41f, levels = c("0","1","8"))
levels(data$pe41f.factor) = c("No effusion detected","Effusion present","Unknown")

data$pe41fm.factor = factor(data$pe41fm, levels = c("555","666","777","888","999"))
levels(data$pe41fm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe41g.factor = factor(data$pe41g, levels = c("0","1","8"))
levels(data$pe41g.factor) = c("No pain","Pain present","Unknown")

data$pe41gm.factor = factor(data$pe41gm, levels = c("555","666","777","888","999"))
levels(data$pe41gm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe41h.factor = factor(data$pe41h, levels = c("0","1","8"))
levels(data$pe41h.factor) = c("No pain","Pain present","Unknown")

data$pe41hm.factor = factor(data$pe41hm, levels = c("555","666","777","888","999"))
levels(data$pe41hm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe42a.factor = factor(data$pe42a, levels = c("0","1","8"))
levels(data$pe42a.factor) = c("No crepitus detected","Crepitus present","Unknown")

data$pe42am.factor = factor(data$pe42am, levels = c("555","666","777","888","999"))
levels(data$pe42am.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe42b.factor = factor(data$pe42b, levels = c("0","1","8"))
levels(data$pe42b.factor) = c("No pain","Pain present","Unknown")

data$pe42bm.factor = factor(data$pe42bm, levels = c("555","666","777","888","999"))
levels(data$pe42bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe42d.factor = factor(data$pe42d, levels = c("0","1","8"))
levels(data$pe42d.factor) = c("No pain","Pain present","Unknown")

data$pe42dm.factor = factor(data$pe42dm, levels = c("555","666","777","888","999"))
levels(data$pe42dm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe42e.factor = factor(data$pe42e, levels = c("0","1","2","8"))
levels(data$pe42e.factor) = c("0 degrees","Contracture","Hypertension","Unknown")

data$pe42em.factor = factor(data$pe42em, levels = c("555","666","777","888","999"))
levels(data$pe42em.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe42f.factor = factor(data$pe42f, levels = c("0","1","8"))
levels(data$pe42f.factor) = c("No effusion detected","Effusion present","Unknown")

data$pe42fm.factor = factor(data$pe42fm, levels = c("555","666","777","888","999"))
levels(data$pe42fm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe42g.factor = factor(data$pe42g, levels = c("0","1","8"))
levels(data$pe42g.factor) = c("No pain","Pain present","Unknown")

data$pe42gm.factor = factor(data$pe42gm, levels = c("555","666","777","888","999"))
levels(data$pe42gm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe42h.factor = factor(data$pe42h, levels = c("0","1","8"))
levels(data$pe42h.factor) = c("No pain","Pain present","Unknown")

data$pe42hm.factor = factor(data$pe42hm, levels = c("555","666","777","888","999"))
levels(data$pe42hm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe43.factor = factor(data$pe43, levels = c("0","1","8"))
levels(data$pe43.factor) = c("Able","Unable","Unknown")

data$pe43m.factor = factor(data$pe43m, levels = c("555","666","777","888","999"))
levels(data$pe43m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe44.factor = factor(data$pe44, levels = c("0","1","2","3","8"))
levels(data$pe44.factor) = c("Normal","Absent","Slightly brisk","Hyperreflexia","Unknown")

data$pe44m.factor = factor(data$pe44m, levels = c("555","666","777","888","999"))
levels(data$pe44m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe45.factor = factor(data$pe45, levels = c("0","1","2","3","8"))
levels(data$pe45.factor) = c("Normal","Absent","Slightly brisk","Hyperreflexia","Unknown")

data$pe45m.factor = factor(data$pe45m, levels = c("555","666","777","888","999"))
levels(data$pe45m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe55.factor = factor(data$pe55, levels = c("0","1","8"))
levels(data$pe55.factor) = c("Movements rhythmic","Movements not rhythmic","Unknown")

data$pe55m.factor = factor(data$pe55m, levels = c("555","666","777","888","999"))
levels(data$pe55m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe57.factor = factor(data$pe57, levels = c("0","1","8"))
levels(data$pe57.factor) = c("Movements rhythmic","Movements not rhythmic","Unknown")

data$pe57m.factor = factor(data$pe57m, levels = c("555","666","777","888","999"))
levels(data$pe57m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe58.factor = factor(data$pe58, levels = c("0","1","8"))
levels(data$pe58.factor) = c("Grasps thumb","Unable to grasp thumb","Unknown")

data$pe58m.factor = factor(data$pe58m, levels = c("555","666","777","888","999"))
levels(data$pe58m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe59.factor = factor(data$pe59, levels = c("0","1","8"))
levels(data$pe59.factor) = c("Grasps thumb","Unable to grasp thumb","Unknown")

data$pe59m.factor = factor(data$pe59m, levels = c("555","666","777","888","999"))
levels(data$pe59m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe60.factor = factor(data$pe60, levels = c("0","1","8"))
levels(data$pe60.factor) = c("Grasps thumb","Unable to grasp thumb","Unknown")

data$pe60m.factor = factor(data$pe60m, levels = c("555","666","777","888","999"))
levels(data$pe60m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe68a.factor = factor(data$pe68a, levels = c("0","8"))
levels(data$pe68a.factor) = c("0 degrees","Unknown")

data$pe68am.factor = factor(data$pe68am, levels = c("555","666","777","888","999"))
levels(data$pe68am.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe68b.factor = factor(data$pe68b, levels = c("0","8"))
levels(data$pe68b.factor) = c("0 degrees","Unknown")

data$pe68bm.factor = factor(data$pe68bm, levels = c("555","666","777","888","999"))
levels(data$pe68bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe74d.factor = factor(data$pe74d, levels = c("0","1","8"))
levels(data$pe74d.factor) = c("No pain","Pain present","Unknown")

data$pe74dm.factor = factor(data$pe74dm, levels = c("555","666","777","888","999"))
levels(data$pe74dm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe75a.factor = factor(data$pe75a, levels = c("0","1","2","8"))
levels(data$pe75a.factor) = c("Fully able","Partially able","Unable","Unknown")

data$pe75am.factor = factor(data$pe75am, levels = c("555","666","777","888","999"))
levels(data$pe75am.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe75b.factor = factor(data$pe75b, levels = c("0","1","2","8"))
levels(data$pe75b.factor) = c("Fully able","Partially able","Unable","Unknown")

data$pe75bm.factor = factor(data$pe75bm, levels = c("555","666","777","888","999"))
levels(data$pe75bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe76a.factor = factor(data$pe76a, levels = c("0","1","2","8"))
levels(data$pe76a.factor) = c("Fully able","Partially able","Unable","Unknown")

data$pe76am.factor = factor(data$pe76am, levels = c("555","666","777","888","999"))
levels(data$pe76am.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe76b.factor = factor(data$pe76b, levels = c("0","1","2","8"))
levels(data$pe76b.factor) = c("Fully able","Partially able","Unable","Unknown")

data$pe76bm.factor = factor(data$pe76bm, levels = c("555","666","777","888","999"))
levels(data$pe76bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe77a.factor = factor(data$pe77a, levels = c("0","1","8"))
levels(data$pe77a.factor) = c("No pain","Pain present","Unknown")

data$pe77am.factor = factor(data$pe77am, levels = c("555","666","777","888","999"))
levels(data$pe77am.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe77b.factor = factor(data$pe77b, levels = c("0","1","8"))
levels(data$pe77b.factor) = c("No pain","Pain present","Unknown")

data$pe77bm.factor = factor(data$pe77bm, levels = c("555","666","777","888","999"))
levels(data$pe77bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe78a.factor = factor(data$pe78a, levels = c("0","8"))
levels(data$pe78a.factor) = c("All points > 3 lbs","Unknown")

data$pe78am.factor = factor(data$pe78am, levels = c("555","666","777","888","999"))
levels(data$pe78am.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe79b.factor = factor(data$pe79b, levels = c("0","1","8"))
levels(data$pe79b.factor) = c("No pain","Pain present","Unknown")

data$pe79bm.factor = factor(data$pe79bm, levels = c("555","666","777","888","999"))
levels(data$pe79bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe79d.factor = factor(data$pe79d, levels = c("0","1","8"))
levels(data$pe79d.factor) = c("No pain","Pain present","Unknown")

data$pe79dm.factor = factor(data$pe79dm, levels = c("555","666","777","888","999"))
levels(data$pe79dm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe80b.factor = factor(data$pe80b, levels = c("0","1","8"))
levels(data$pe80b.factor) = c("No pain","Pain present","Unknown")

data$pe80bm.factor = factor(data$pe80bm, levels = c("555","666","777","888","999"))
levels(data$pe80bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe82.factor = factor(data$pe82, levels = c("0","1"))
levels(data$pe82.factor) = c("No","Yes")

data$pe82a.factor = factor(data$pe82a, levels = c("0","1"))
levels(data$pe82a.factor) = c("No","Yes")

data$pe82b.factor = factor(data$pe82b, levels = c("0","1"))
levels(data$pe82b.factor) = c("No","Yes")

data$pe82c.factor = factor(data$pe82c, levels = c("0","1","8"))
levels(data$pe82c.factor) = c("NO","YES Severe requiring analgesics","Unknown")

data$pe82cm.factor = factor(data$pe82cm, levels = c("555","666","777","888","999"))
levels(data$pe82cm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe82d.factor = factor(data$pe82d, levels = c("0","1","10","2","3","4","5","6","7","77","8","88","9"))
levels(data$pe82d.factor) = c("0","1","10","2","3","4","5","6","7","Refused","8","Unknown","9")

data$pe84.factor = factor(data$pe84, levels = c("0","1","2","8"))
levels(data$pe84.factor) = c("None","Ankle only","More than ankle","Unknown")

data$pe84m.factor = factor(data$pe84m, levels = c("555","666","777","888","999"))
levels(data$pe84m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe85.factor = factor(data$pe85, levels = c("0","1","2","8"))
levels(data$pe85.factor) = c("None","Ankle only","More than ankle","Unknown")

data$pe85m.factor = factor(data$pe85m, levels = c("555","666","777","888","999"))
levels(data$pe85m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe86.factor = factor(data$pe86, levels = c("0","1","2","8"))
levels(data$pe86.factor) = c("No ulcers or only ulcers from trauma","Single ulcer","Multiple ulcers","Unknown")

data$pe86m.factor = factor(data$pe86m, levels = c("555","666","777","888","999"))
levels(data$pe86m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe87.factor = factor(data$pe87, levels = c("0","1","2","3","8"))
levels(data$pe87.factor) = c("No ulcers no healed ulceration go to inspection","No ative ulcer but healed ulceration present go to inspection","Open ulcer(s) largest ulcer is < 2 cm diameter","Open ulcer(s) largest ulcer is = > 2 cm diameter","Unknown")

data$pe87m.factor = factor(data$pe87m, levels = c("555","666","777","888","999"))
levels(data$pe87m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe88.factor = factor(data$pe88, levels = c("0","1","8"))
levels(data$pe88.factor) = c("Ulcer(s) for < 3 mo","Ulcer(s) for = > 3 mo","Unknown")

data$pe88m.factor = factor(data$pe88m, levels = c("555","666","777","888","999"))
levels(data$pe88m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe89.factor = factor(data$pe89, levels = c("1","2","3","8"))
levels(data$pe89.factor) = c("Has first ulcer not recurrent","Has ulcer first recurrence","Has ulcer more than once","Unknown")

data$pe89m.factor = factor(data$pe89m, levels = c("555","666","777","888","999"))
levels(data$pe89m.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe71aa.factor = factor(data$pe71aa, levels = c("0","8"))
levels(data$pe71aa.factor) = c("All normal","Unknown")

data$pe71am.factor = factor(data$pe71am, levels = c("555","666","777","888","999"))
levels(data$pe71am.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe71ba.factor = factor(data$pe71ba, levels = c("0","8"))
levels(data$pe71ba.factor) = c("All normal","Unknown")

data$pe71bm.factor = factor(data$pe71bm, levels = c("555","666","777","888","999"))
levels(data$pe71bm.factor) = c("555 - Physical problems","666 - Mental problems","777 - Both Physical and Mental problems","888 - Refused but could do","999 - Technical Problems")

data$pe70d.factor = factor(data$pe70d, levels = c("0","1"))
levels(data$pe70d.factor) = c("Standing","Sitting")

