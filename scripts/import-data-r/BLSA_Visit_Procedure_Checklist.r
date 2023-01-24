#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Visit_Procedure_Checklist.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_VisProChe)="CRF Version"
label(data$obsdate_data_in_study_manager)="Data_in_PAS"
label(data$vttype)="Visit type"
label(data$blank_VisProChe)="Blank Form"
label(data$vtdate2)="Date Completed"
label(data$vt01)="BLSA Consent done"
label(data$vt04)="Vital signs done"
label(data$vt05)="Height and Weight done"
label(data$vt06a)="Blood and lab work done"
label(data$vt06aa)="Blood and lab work RND"
label(data$vt06ab)="Blood and lab work to be resch"
label(data$vt52)="Activity Monitor done"
label(data$vt52a)="Activity Monitor RND"
label(data$vt52b)="Activity Monitor to be resch"
label(data$vt14)="Grip Strength done"
label(data$vt14a)="Grip Strength RND"
label(data$vt14b)="Grip Strength to be resch"
label(data$vt16)="LE Physical Perf done"
label(data$vt16a)="LE Physical Perf RND"
label(data$vt16b)="LE Physical Perf to be resch"
label(data$vt19)="Core Cognitive Testing done"
label(data$vt19a)="Core Cognitive Testing RND"
label(data$vt19b)="Core Cognitive Testing to be resch"
label(data$vt32)="Medical Interview done"
label(data$vt32a)="Medical Interview RND"
label(data$vt32b)="Medical Interview to be resch"
label(data$vt33)="General Interview done"
label(data$vt33a)="General Interview RND"
label(data$vt33b)="General Interview to be resch"
label(data$vt42)="Medication List done"
label(data$vt46)="Best list"
label(data$vt46a)="Best list comment"
label(data$cdr)="CDR"
label(data$neuroimaging)="Neuro Imaging participant"
label(data$autopsystudy)="Autopsy Study Participant"
label(data$reactiontime)="Computer reaction time testing"
label(data$reacttimernd)="Computer reaction time testing RND"
label(data$reacttimeres)="Computer reaction time testing to be rescheduled"
label(data$activityscaleq)="Activity Related Fatigue Scale"
label(data$epworthss)="Epworth Sleep Scale"
label(data$lateraldom)="Lateral Dominance"
label(data$swallowingq)="Swallowing Questionnaire"
label(data$vtdate1)="Initial date"
label(data$vt06b)="Fasting Urine done"
label(data$vt06ba)="Fasting Urine RND"
label(data$vt06bb)="Fasting Urine to be resch"
label(data$vt06d)="Nan Ping tbs done"
label(data$vt06da)="Nan Ping tbs RND"
label(data$vt06db)="Nan Ping tbs to be resch"
label(data$vt06e)="BHCG done"
label(data$vt06ea)="BHCG RND"
label(data$vt06eb)="BHCG to be resch"
label(data$vt06g)="HIV Serology done"
label(data$vt06ga)="HIV Serology RND"
label(data$vt06gb)="HIV Serology to be resch"
label(data$vt06gc)="HIV Serology consent signed"
label(data$vt06h)="Urine 24Hr done"
label(data$vt06ha)="Urine 24Hr RND"
label(data$vt06hb)="Urine 24Hr to be resch"
label(data$vt07)="OGTT_ done"
label(data$vt07a)="OGTT RND"
label(data$vt07b)="OGTT to be resch"
label(data$vt08ac)="Cardiovascular Assessment Contraindication"
label(data$vt08a)="PWV done"
label(data$vt08aa)="PWV RND"
label(data$vt08ab)="PWV to be resch"
label(data$vt08ba)="AGI done"
label(data$vt08bb)="AGI RND"
label(data$vt08b)="AGI to be resch"
label(data$vt08c)="ABI done"
label(data$vt08ca)="ABI RND"
label(data$vt08cb)="ABI to be resch"
label(data$vt09a)="Treadmill done"
label(data$vt09aa)="Treadmill RND"
label(data$vt09ab)="Treadmill to be resch"
label(data$vt09b)="O2 Consumption done"
label(data$vt09ba)="O2 Consumption RND"
label(data$vt10)="Pulmonary Function done"
label(data$vt10a)="Pulmonary Function RND"
label(data$vt10b)="Pulmonary Function to be resch"
label(data$vt11a)="Echo done"
label(data$vt11aa)="Echo RND"
label(data$vt11ab)="Echo to be resch"
label(data$vt11b)="Carotid done"
label(data$vt11ba)="Carotid RND"
label(data$vt11bb)="Carotid to be resch"
label(data$vt12)="EKG done"
label(data$vt12a)="EKG RND"
label(data$vt12b)="EKG to be resch"
label(data$vt52ad1c)="Activity Monitor Note"
label(data$vt15)="Knee Strength done"
label(data$vt15a)="Knee Strength RND"
label(data$vt15b)="Knee Strength to be resch"
label(data$vt17)="LDCW done"
label(data$vt17a)="LDCW RND"
label(data$vt17b)="LDCW to be resch"
label(data$vt18)="Gait Lab done"
label(data$vt18a)="Gait Lab RND"
label(data$vt18b)="Gait Lab to be resch"
label(data$vt20)="Early Markers Testing done"
label(data$vt20a)="Early Markers RND"
label(data$vt20b)="Early Markers to be resch"
label(data$vt34)="Blessed Mental done"
label(data$vt34a)="Blessed Mental RND"
label(data$vt34b)="Blessed Mental to be resch"
label(data$vt21)="Personal Computer Testing done"
label(data$vt21a)="Personal ComputerPersonal Computer RND"
label(data$vt21b)="Personal Computer Testing to be resch"
label(data$vt22)="EMG done"
label(data$vt22a)="EMG RND"
label(data$vt22b)="EMG to be resch"
label(data$vt24)="Proproiception done"
label(data$vt24a)="Proproiception RND"
label(data$vt24b)="Proproiception to be resch"
label(data$vt25)="Resting Metabolic Rate done"
label(data$vt25a)="Resting Metabolic Rate RND"
label(data$vt25b)="Resting Metabolic Rate to be resch"
label(data$vt26)="Anthropometry done"
label(data$vt26a)="Anthropometry RND"
label(data$vt26b)="Anthropometry to be resch"
label(data$vt27)="Contrast Sens Vis Acuity done"
label(data$vt27a)="Contrast Sens Vis Acuity RND"
label(data$vt27b)="Contrast Sens Vis Acuity to be resch"
label(data$vt28)="Vision Stereopsis done"
label(data$vt28a)="Vision Stereopsis RND"
label(data$vt28b)="Vision Stereopsis to be resch"
label(data$vt29)="Visual Fields done"
label(data$vt29a)="Visual Fields RND"
label(data$vt29b)="Visual Fields to be resch"
label(data$vt55)="Taste Bud Photo done"
label(data$vt55a)="Taste Bud Photo RND"
label(data$vt55b)="Taste Bud Photo to be resch"
label(data$vt56)="Hearing Test done"
label(data$vt56a)="Hearing Test RND"
label(data$vt56b)="Hearing Test to be resch"
label(data$vt66)="Smell test done"
label(data$vt66a)="Smell test RND"
label(data$vt66b)="Smell test to be resch"
label(data$vt30)="Physical Exam done"
label(data$vt30a)="Physical Exam RND"
label(data$vt30b)="Physical Exam to be resch"
label(data$vt31)="Finger Tapping done"
label(data$vt31a)="Finger Tapping RND"
label(data$vt35)="Radiation Exposure done"
label(data$vt35a)="Radiation Exposure RND"
label(data$vt35b)="Radiation Exposure to be resch"
label(data$vt38)="DEXA done"
label(data$vt38a)="DEXA RND"
label(data$vt38b)="DEXA to be resch"
label(data$vt40)="CT Scan done"
label(data$vt40a)="CT Scan RND"
label(data$vt40b)="CT Scan to be resch"
label(data$vt53)="MRI done"
label(data$vt53a)="MRI RND"
label(data$vt53b)="MRI to be resch"
label(data$vt54)="MRI Screening done"
label(data$vt54a)="MRI Screening RND"
label(data$vt54b)="MRI Screening to be resch"
label(data$vt67a)="Sleep Study Done"
label(data$vt67b)="Sleep Study RND"
label(data$vt70)="RLS Done"
label(data$vt70a)="RLS RND"
label(data$vt41)="Falls Risk done"
label(data$vt44)="Food Freq Quest done"
label(data$vt49)="Autopsy Interview done"
label(data$vt63)="Muscle Bx done"
label(data$vt71)="Skin Biopsy Done"
label(data$vt72)="Core Body Temp Done"
label(data$vt48b)="Cytapheresis to be resch"
label(data$vt04dat2)="Vital signs date"
label(data$vt05dat2)="Height and Weight date"
label(data$vt06dat2)="Blood and lab work date"
label(data$vt6hdat2)="Urine 24Hr date"
label(data$vt07dat2)="OGTT date"
label(data$vt08dat2)="Cardiovascular Assessment date"
label(data$vt09dat2)="Stress testing date"
label(data$vt10dat2)="Pulmonary function testing date"
label(data$vt11dat2)="Echo carotid date"
label(data$vt12dat2)="EKG date"
label(data$vt52dat2)="Activity Monitor date"
label(data$vt52ad1_2)="Activity Monitor which devide"
label(data$vt14dat2)="Grip Strength date"
label(data$vt15dat2)="Knee Strength date"
label(data$vt16dat2)="LE Physical Perf date"
label(data$vt17dat2)="LDCW date"
label(data$vt18dat2)="Gait Lab date"
label(data$vt19dat2)="Core Cognitive Testing date"
label(data$vt20dat2)="Early Markers Testing date"
label(data$vt34dat2)="Blessed Mental Testing date"
label(data$vt21dat2)="Personal Computer Testing date"
label(data$vt22dat2)="EMG date"
label(data$vt24dat2)="Proproiception date"
label(data$vt25dat2)="Resting Metabolic Rate date"
label(data$vt26dat2)="Anthropometry date"
label(data$vt28dat2)="Vision testing date"
label(data$vt29dat2)="Visual Fields date"
label(data$vt55dat2)="Taste Bud Photo date"
label(data$vt56dat2)="Hearing Test date"
label(data$vt66dat2)="Smell test date"
label(data$vt30dat2)="Physical Exam date"
label(data$vt32dat2)="Medical Interview date"
label(data$vt33dat2)="General Interview date"
label(data$vt35dat2)="Radiation Exposure date"
label(data$vt38dat2)="DEXA date"
label(data$vt40dat2)="CT Scan date"
label(data$vt53dat2)="MRI date"
label(data$vt54dat2)="MRI Screening date"
label(data$vt67dat2)="Sleep Study Date"
label(data$vt70dat2)="RLS date"
label(data$vt01dat3)="BLSA Consent"
label(data$vt44rnd)="FFQ RND"
label(data$vt63rnd)="Muscle Biopsy RND"
label(data$vt71rnd)="Skin Biopsy RND"
label(data$vt72rnd)="CBT RND"
label(data$vt48_2)="Cytapheresis done"
label(data$vt48rnd)="Cytapheresis RND"
label(data$epidermalaging)="Epidermal Aging"
label(data$epidermalagrnd)="Epidermal AgingRND"
label(data$cogstate)="Cog State done"
label(data$cogstaternd)="Cog State RND"
label(data$maskworn_VisProChe)="COVID-19 Pandemic Mask worn"
label(data$vteyetrdt)="Eye Tracking date"
label(data$vteyetrdone)="Eye Tracking done"
label(data$vteyetrrnd)="Eye Tracking RND"
label(data$vteyetrresch)="Eye Tracking to be resch"
label(data$intestinalperm)="Intestinal Permeability"
label(data$intestinalpermrnd)="Intestinal Permeability RND"
label(data$vt73b)="Vestibular Testing resch"
label(data$vt59)="VEMP done"
label(data$vt59a)="VEMP RND"
label(data$vt60)="VOG done"
label(data$vt60a)="VOG RND"
label(data$vt68)="Orientation Done"
label(data$vt68a)="Orientation RND"
label(data$vt74)="Triangle Test Done"
label(data$vt74a)="Triangle Test RND"
label(data$vt73dat2)="Vestibular Testing Date"
label(data$followup)="Additional Follow-up contact as needed between scheduled visit"
label(data$vt69)="HAMMS done"
label(data$vt69a)="HAMMS RND"
label(data$vt69b)="HAMMS to be resch"
label(data$vt69dat2)="HAMMS Date"
label(data$vt75)="Fitts Task Done"
label(data$vt75a)="Fitts Task RND"
label(data$vt48_3)="Cytapheresis done"
label(data$auto_id_VisProChe)="Unique Teleform Number"
label(data$vt58)="Activity Related Fatigue Scale"
label(data$vt48)="Cytapheresis done"
label(data$vt09sb)="TM Stress Blood done"
label(data$vt09srnd)="TM Stress Blood RND"
label(data$vt06hid)="Urine 24Hr TID"
label(data$lab07a_VisProChe)="Urine 24 Hr Begin time"
label(data$lab07b_VisProChe)="Urine 24 Hr End time"
label(data$vt01dat2)="BLSA Consent"
label(data$vttime1)="Initial time"
label(data$vttimea)="Initial time am pm"
label(data$vttime2)="Sign out time"
label(data$vttimeb)="Sign out time am pm"
label(data$date_completed)="Date_Completed"
label(data$vt01dat)="BLSA Consent"
label(data$vt01id)="BLSA Consent TID"
label(data$vt02dat)="HIPAA Date"
label(data$vt02id)="HIPAA TID"
label(data$vt02)="HIPAA Consent done"
label(data$vt03dat)="Pneumococcal Screen date"
label(data$vt03id)="Pneumococcal Screen TID"
label(data$vt03)="Pneumococcal Screen done"
label(data$vt03a)="Pneumococcal Screen RND"
label(data$vt03b)="Pneumococcal Screen to be resch"
label(data$vt04dat)="Vital signs date"
label(data$vt04id)="Vital signs TID"
label(data$vt04a)="Vital signs RND"
label(data$vt04b)="Vital signs to be resch"
label(data$vt05dat)="Height and Weight date"
label(data$vt05id)="Height and Weight TID"
label(data$vt05a)="Height and weight RND"
label(data$vt05b)="Height and weight to be resch"
label(data$vt06dat)="Blood and lab work date"
label(data$vt06id)="Blood and lab work TID"
label(data$vt06c)="BDNF done"
label(data$vt06ca)="BDNF RND"
label(data$vt06cb)="BDNF to be resch"
label(data$vt06f)="Strength blood done"
label(data$vt06fa)="Strength blood RND"
label(data$vt06fb)="Strength blood to be resch"
label(data$vt6hdat)="Urine 24Hr date"
label(data$vt07dat)="OGTT date"
label(data$vt07id)="OGTT TID"
label(data$vt08dat)="Cardiovascular Assessment date"
label(data$vt08id)="Cardiovascular Assessment TID"
label(data$vt09dat)="Stress testing date"
label(data$vt09id)="StressTesting TID"
label(data$vt10dat)="Pulmonary function testing date"
label(data$vt10id)="Pulmonary Function TID"
label(data$vt11dat)="Echo carotid date"
label(data$vt11id)="Echo carotid TID"
label(data$vt12dat)="EKG date"
label(data$vt12id)="EKG TID"
label(data$vt13dat)="Holter date"
label(data$vt13id)="Holter TID"
label(data$vt13)="Holter done"
label(data$vt13a)="Holter RND"
label(data$vt13b)="Holter to be resch"
label(data$vt52dat)="Activity Monitor date"
label(data$vt52id)="Activity Monitor TID"
label(data$vt52ad1)="Activity Monitor which devide"
label(data$vt14dat)="Grip Strength date"
label(data$vt14id)="Grip Strength TID"
label(data$vt15dat)="Knee Strength date"
label(data$vt15id)="Knee Strength TID"
label(data$vt16dat)="LE Physical Perf date"
label(data$vt16id)="LE Physical Perf TID"
label(data$vt17dat)="LDCW date"
label(data$vt17id)="LDCW TID"
label(data$vt18dat)="Gait Lab date"
label(data$vt18id)="Gait Lab TID"
label(data$vt19dat)="Core Cognitive Testing date"
label(data$vt19id)="Core Cognitive Testing TID"
label(data$vt20dat)="Early Markers Testing date"
label(data$vt20id)="Early Markers Testing TID"
label(data$vt34dat)="Blessed Mental Testing date"
label(data$vt34id)="Blessed Mental TID"
label(data$vt21dat)="Personal Computer Testing date"
label(data$vt21id)="Personal Computer Testing TID"
label(data$vt22dat)="EMG date"
label(data$vt22id)="EMG TID"
label(data$vt23dat)="Vibration Sensitivity date"
label(data$vt23id)="Vibration Sensitivity TID"
label(data$vt23)="Vibration Sensitivity done"
label(data$vt23a)="Vibration Sensitivity RND"
label(data$vt23b)="Vibration Sensitivity to be resch"
label(data$vt24dat)="Proproiception date"
label(data$vt24id)="Proproiception TID"
label(data$vt25dat)="Resting Metabolic Rate date"
label(data$vt25id)="Resting Metabolic Rate TID"
label(data$vt26dat)="Anthropometry date"
label(data$vt26id)="Anthropometry TID"
label(data$vt28dat)="Vision testing date"
label(data$vt27id)="Vision Testing TID"
label(data$vt29dat)="Visual Fields date"
label(data$vt29id)="Visual Fields TID"
label(data$vt55dat)="Taste Bud Photo date"
label(data$vt55id)="Taste Bud Photo TID"
label(data$vt56dat)="Hearing Test date"
label(data$vt56id)="Hearing Test TID"
label(data$vt66dat)="Smell test date"
label(data$vt66id)="Smell test TID"
label(data$vt73dat)="Vestibular Testing Date"
label(data$vt73id)="Vestibular Testing TID"
label(data$vt59dat)="VEMP date"
label(data$vt59id)="VEMP TID"
label(data$vt59b)="VEMP to be resch"
label(data$vt60dat)="VOG date"
label(data$vt60id)="VOG TID"
label(data$vt60b)="VOG to be resch"
label(data$vt64dat)="Balance Test date"
label(data$vt64id)="Balance Test TID"
label(data$vt64)="Balance Test done"
label(data$vt64a)="Balance Test RND"
label(data$vt64b)="Balance Test to be resch"
label(data$vt68dat)="Orientation Date"
label(data$vt68id)="Orientation TID"
label(data$vt68b)="Orientation to be resch"
label(data$vt30dat)="Physical Exam date"
label(data$vt30id)="Physical Exam TID"
label(data$vt32dat)="Medical Interview date"
label(data$vt32id)="Medical Interview TID"
label(data$vt33dat)="General Interview date"
label(data$vt33id)="General Interview TID"
label(data$sensorydt)="Sensory Testing Date"
label(data$sensorytid)="Sensory Testing TID"
label(data$sensoryresch)="Sensory Testing to be resch"
label(data$vt31dat)="Finger Tapping date"
label(data$vt31id)="Finger Tapping TID"
label(data$vt31b)="Finger Tapping to be resch"
label(data$fittsdone)="Fitts Task Done"
label(data$fittsrnd)="Fitts Task RND"
label(data$vt69dat)="HAMMS Date"
label(data$vt69id)="HAMMS TID"
label(data$vt35dat)="Radiation Exposure date"
label(data$vt35id)="Radiation Exposure TID"
label(data$vt38dat)="DEXA date"
label(data$vt38id)="DEXA TID"
label(data$vt40dat)="CT Scan date"
label(data$vt40id)="CT Scan TID"
label(data$vt53dat)="MRI date"
label(data$vt53id)="MRI TID"
label(data$vt54dat)="MRI Screening date"
label(data$vt54id)="MRI Screening TID"
label(data$vt67dat)="Sleep Study Date"
label(data$vt70dat)="RLS date"
label(data$vt47)="Validate done"
label(data$vt61)="Creatine done"
label(data$vt62)="DLW done"
label(data$vt57)="Regional Adiposity done"
label(data$vt36dat)="Knee x-ray date"
label(data$vt36id)="Knee x-ray TID"
label(data$vt36)="Knee x-ray done"
label(data$vt36a)="Knee x-ray RND"
label(data$vt36b)="Knee x-ray to be resch"
label(data$vt37dat)="Hand x-ray date"
label(data$vt37id)="Hand x-ray TID"
label(data$vt37)="Hand x-ray done"
label(data$vt37a)="Hand x-ray RND"
label(data$vt37b)="Hand x-ray to be resch"
label(data$vt39dat)="Hand photo date"
label(data$vt39id)="Hand photo TID"
label(data$vt39)="Hand photo done"
label(data$vt39a)="Hand photo RND"
label(data$vt39b)="Hand photo to be resch"
label(data$vt43)="Food Diary"
label(data$vt45)="On study card"
label(data$vt50)="MRI Neuro"
label(data$vt51)="Progress Note"
label(data$tester_id)="Tester_ID"
label(data$acknowledgment_form)="Acknowledgment_Form"
label(data$acknowledgment_form_comment)="Acknowledgment_Form_comment"
label(data$copy_md_orders)="Copy_MD_Orders"
label(data$copy_md_orders_comment)="Copy_MD_Orders_comment"
label(data$orders)="Orders"
label(data$orders_comment)="Orders_comment"
label(data$blsa_consent_hipaa)="BLSA_Consent_HIPAA"
label(data$blsa_consent_hipaa_comment)="BLSA_Consent_HIPAA_comment"
label(data$validate_hipaa)="VALIDATE_HIPAA"
label(data$validate_hipaa_comment)="VALIDATE_HIPAA_comment"
label(data$advanced_directives)="Advanced_Directives"
label(data$advanced_directives_comment)="Advanced_Directives_comment"
label(data$falls_risk)="Falls_Risk"
label(data$falls_risk_comment)="Falls_Risk_comment"
label(data$pneumoccoccal_questionnaire)="Pneumoccoccal_Questionnaire"
label(data$pneumoccoccal_question_comment)="Pneumoccoccal_Question_comment"
label(data$pneumoccoccal_screen)="Pneumoccoccal_Screen"
label(data$pneumoccoccal_screen_comment)="Pneumoccoccal_Screen_comment"
label(data$cytapheresis)="Cytapheresis"
label(data$cytapheresis_comment)="Cytapheresis_comment"
label(data$hiv_consent)="HIV_Consent"
label(data$hiv_consent_comment)="HIV_Consent_comment"
label(data$radiation_exposition)="Radiation_Exposition"
label(data$radiation_exposition_comment)="Radiation_Exposition_comment"
label(data$ekg)="EKG"
label(data$ekg_comment)="EKG_comment"
label(data$holter_monitor)="Holter_Monitor"
label(data$holter_monitor_comment)="Holter_Monitor_comment"
label(data$extra_comment_1)="Extra_comment_1"
label(data$height_weight)="Height_Weight"
label(data$height_weight_comment)="Height_Weight_comment"
label(data$vital_signs)="Vital_Signs"
label(data$vital_signs_comment)="Vital_Signs_comment"
label(data$fasting_urine)="Fasting_Urine"
label(data$fasting_urine_comment)="Fasting_Urine_comment"
label(data$urine_24_hours)="Urine_24_hours"
label(data$urine_24_hours_comment)="Urine_24_hours_comment"
label(data$bdnf)="BDNF"
label(data$bdnf_comment)="BDNF_comment"
label(data$nan_ping_tubes)="Nan_Ping_tubes"
label(data$nan_ping_tubes_comment)="Nan_Ping_tubes_comment"
label(data$bhcg)="BHCG"
label(data$bhcg_comment)="BHCG_comment"
label(data$hiv_serology)="HIV_serology"
label(data$hiv_serology_comment)="HIV_serology_comment"
label(data$blood_draw)="Blood_Draw"
label(data$blood_draw_comment)="Blood_Draw_comment"
label(data$strength_test_blood)="Strength_Test_Blood"
label(data$strength_test_blood_comment)="Strength_Test_Blood_comment"
label(data$ogtt)="OGTT"
label(data$ogtt_comment)="OGTT_comment"
label(data$extra_comment_2)="Extra_comment_2"
label(data$physical_examination)="Physical_Examination"
label(data$physical_examination_comment)="Physical_Examination_comment"
label(data$finger_tapping_test)="Finger_Tapping_Test"
label(data$finger_tapping_test_comment)="Finger_Tapping_Test_comment"
label(data$medical_interview)="Medical_Interview"
label(data$medical_interview_comment)="Medical_Interview_comment"
label(data$socio_demographic_interview)="Socio_Demographic_Interview"
label(data$socio_demographic_inte_comment)="Socio_Demographic_Inte_comment"
label(data$blessed_mental)="Blessed_Mental"
label(data$blessed_mental_comment)="Blessed_Mental_comment"
label(data$extra_comment_3)="Extra_comment_3"
label(data$dexa_scan)="DEXA_Scan"
label(data$dexa_scan_comment)="DEXA_Scan_comment"
label(data$knee_xray)="Knee_Xray"
label(data$knee_xray_comment)="Knee_XRay_comment"
label(data$hand_xray)="Hand_Xray"
label(data$hand_xray_comment)="Hand_XRay_comment"
label(data$hand_photo)="Hand_Photo"
label(data$hand_photo_comment)="Hand_Photo_comment"
label(data$ctscan)="CTScan"
label(data$ctscan_comment)="CTScan_comment"
label(data$mri_neuro_imaging)="MRI_Neuro_Imaging"
label(data$mri_neuro_imaging_comment)="MRI_Neuro_Imaging_comment"
label(data$grip_strength)="Grip_Strength"
label(data$grip_strength_comment)="Grip_Strength_comment"
label(data$knee_strength_right)="Knee_Strength_Right"
label(data$knee_strength_right_comment)="Knee_Strength_Right_comment"
label(data$knee_strength_left)="Knee_Strength_Left"
label(data$knee_strength_left_comment)="Knee_Strength_Left_comment"
label(data$le_physical_performance)="LE_Physical_Performance"
label(data$le_physical_performanc_comment)="LE_Physical_Performanc_comment"
label(data$long_distance_corridor_walk)="Long_Distance_Corridor_Walk"
label(data$long_distance_corridor_comment)="Long_Distance_Corridor_comment"
label(data$gait_lab)="Gait_Lab"
label(data$gait_lab_comment)="Gait_Lab_comment"
label(data$extra_comment_4)="Extra_comment_4"
label(data$early_markers_ad)="Early_Markers_AD"
label(data$early_markers_ad_comment)="Early_Markers_AD_comment"
label(data$core_cognitive_testing)="Core_Cognitive_Testing"
label(data$core_cognitive_testing_comment)="Core_Cognitive_Testing_comment"
label(data$personal_computer_testing)="Personal_Computer_Testing"
label(data$personal_computer_test_comment)="Personal_Computer_Test_comment"
label(data$extra_comment_5)="Extra_comment_5"
label(data$emg)="EMG"
label(data$emg_comment)="EMG_comment"
label(data$vibration_sensitivity_nrsv)="Vibration_Sensitivity_NRSV"
label(data$vibration_sensitivity_comment)="Vibration_Sensitivity_comment"
label(data$proprioception_test)="Proprioception_Test"
label(data$proprioception_test_comment)="Proprioception_Test_comment"
label(data$extra_comment_6)="Extra_comment_6"
label(data$resting_metabolic_rate)="Resting_Metabolic_Rate"
label(data$resting_metabolic_rate_comment)="Resting_Metabolic_Rate_comment"
label(data$treadmill_stress_test)="Treadmill_Stress_test"
label(data$treadmill_stress_test_comment)="Treadmill_Stress_test_comment"
label(data$oxygen_consumption)="Oxygen_Consumption"
label(data$oxygen_consumption_comment)="Oxygen_Consumption_comment"
label(data$pulmonary_function_test)="Pulmonary_Function_Test"
label(data$pulmonary_function_tes_comment)="Pulmonary_Function_Tes_comment"
label(data$echocardiogram)="Echocardiogram"
label(data$echocardiogram_comment)="Echocardiogram_comment"
label(data$carotid_ultrasound)="Carotid_Ultrasound"
label(data$carotid_ultrasound_comment)="Carotid_Ultrasound_comment"
label(data$pulse_wave_velocity)="Pulse_Wave_Velocity"
label(data$pulse_wave_velocity_comment)="Pulse_Wave_Velocity_comment"
label(data$abi)="ABI"
label(data$abi_comment)="ABI_comment"
label(data$extra_comment_7)="Extra_comment_7"
label(data$autopsy)="Autopsy"
label(data$autopsy_comment)="Autopsy_comment"
label(data$body_measurements)="Body_Measurements"
label(data$body_measurements_comment)="Body_Measurements_comment"
label(data$extra_comment_8)="Extra_comment_8"
label(data$vision_testing)="Vision_Testing"
label(data$vision_testing_comment)="Vision_Testing_comment"
label(data$vision_stereopsis)="Vision_Stereopsis"
label(data$vision_stereopsis_comment)="Vision_Stereopsis_comment"
label(data$visual_fields)="Visual_Fields"
label(data$visual_fields_comment)="Visual_Fields_comment"
label(data$extra_comment_9)="Extra_comment_9"
label(data$food_frequency_questionnaire)="Food_Frequency_Questionnaire"
label(data$food_frequency_questio_comment)="Food_Frequency_Questio_comment"
label(data$food_intake_record)="Food_Intake_Record"
label(data$food_intake_record_comment)="Food_Intake_Record_comment"
label(data$progress_note)="Progress_Note"
label(data$progress_note_comment)="Progress_Note_comment"
label(data$on_study_card)="On_Study_Card"
label(data$on_study_card_comment)="On_Study_Card_comment"
label(data$extra_comment_10)="Extra_comment_10"
label(data$best_list)="Best_List"
label(data$best_list_comment)="Best_List_comment"
label(data$data_in_study_manager_comment)="Data_in_Study_Manager_comment"
label(data$crf_parent_name_VisProChe)="CRF Parent Name"
label(data$study_name_VisProChe)="Study Name"
label(data$vt01_1)="BLSA Consent done : Done (Checkbox Indicator)"
label(data$vt02_1)="HIPAA Consent done : Done (Checkbox Indicator)"
label(data$vt04_1)="Vital signs done : Done (Checkbox Indicator)"
label(data$vt05_1)="Height and Weight done : Done (Checkbox Indicator)"
label(data$vt48_0)="Cytapheresis done : N/E (Checkbox Indicator)"
label(data$vt48_1)="Cytapheresis done : Done (Checkbox Indicator)"
label(data$vt48_2_1)="Cytapheresis done : Done (Checkbox Indicator)"
label(data$vt48_2_2)="Cytapheresis done : Consented (Checkbox Indicator)"
label(data$vt48_2_3)="Cytapheresis done : N/Done (Checkbox Indicator)"
label(data$vt50_0)="MRI Neuro : N/E (Checkbox Indicator)"
label(data$vt50_1)="MRI Neuro : Done (Checkbox Indicator)"
label(data$vt50_2)="MRI Neuro : Consented (Checkbox Indicator)"
label(data$vt50_3)="MRI Neuro : N/Done (Checkbox Indicator)"
label(data$vt57_0)="Regional Adiposity done : N/E (Checkbox Indicator)"
label(data$vt57_1)="Regional Adiposity done : Done (Checkbox Indicator)"
label(data$vt57_2)="Regional Adiposity done : Consented (Checkbox Indicator)"
label(data$vt57_3)="Regional Adiposity done : N/Done (Checkbox Indicator)"

#Create new variables for factors
data$obsdate_data_in_study_manager.factor = factor(data$obsdate_data_in_study_manager, levels = c("0","1","2","7"))
levels(data$obsdate_data_in_study_manager.factor) = c("Other","Fully completed","Partially completed","Refused")

data$vttype.factor = factor(data$vttype, levels = c("0","1"))
levels(data$vttype.factor) = c("(0) Normal","(1) Continuation of previous visit")

data$vt06a.factor = factor(data$vt06a, levels = c("0","1"))
levels(data$vt06a.factor) = c("Not done","Done")

data$vt06aa.factor = factor(data$vt06aa, levels = c("3","4","5","6","7","8","9"))
levels(data$vt06aa.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt06ab.factor = factor(data$vt06ab, levels = c("1"))
levels(data$vt06ab.factor) = c("To be rescheduled")

data$vt52.factor = factor(data$vt52, levels = c("0","1"))
levels(data$vt52.factor) = c("Not done","Done")

data$vt52a.factor = factor(data$vt52a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt52a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt52b.factor = factor(data$vt52b, levels = c("1"))
levels(data$vt52b.factor) = c("To be rescheduled")

data$vt14.factor = factor(data$vt14, levels = c("0","1"))
levels(data$vt14.factor) = c("Not done","Done")

data$vt14a.factor = factor(data$vt14a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt14a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt14b.factor = factor(data$vt14b, levels = c("1"))
levels(data$vt14b.factor) = c("To be rescheduled")

data$vt16.factor = factor(data$vt16, levels = c("0","1"))
levels(data$vt16.factor) = c("Not done","Done")

data$vt16a.factor = factor(data$vt16a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt16a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt16b.factor = factor(data$vt16b, levels = c("1"))
levels(data$vt16b.factor) = c("To be rescheduled")

data$vt19.factor = factor(data$vt19, levels = c("0","1"))
levels(data$vt19.factor) = c("Not done","Done")

data$vt19a.factor = factor(data$vt19a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt19a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt19b.factor = factor(data$vt19b, levels = c("1"))
levels(data$vt19b.factor) = c("To be rescheduled")

data$vt32.factor = factor(data$vt32, levels = c("0","1"))
levels(data$vt32.factor) = c("Not done","Done")

data$vt32a.factor = factor(data$vt32a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt32a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt32b.factor = factor(data$vt32b, levels = c("1"))
levels(data$vt32b.factor) = c("To be rescheduled")

data$vt33.factor = factor(data$vt33, levels = c("0","1"))
levels(data$vt33.factor) = c("Not done","Done")

data$vt33a.factor = factor(data$vt33a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt33a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt33b.factor = factor(data$vt33b, levels = c("1"))
levels(data$vt33b.factor) = c("To be rescheduled")

data$vt42.factor = factor(data$vt42, levels = c("0","1"))
levels(data$vt42.factor) = c("Not done","Done")

data$vt46.factor = factor(data$vt46, levels = c("1","4","5","6","7","8","9"))
levels(data$vt46.factor) = c("Yes","<70","Cancer","Diabetes","Other Chronic","Frail","Other")

data$vt06b.factor = factor(data$vt06b, levels = c("0","1"))
levels(data$vt06b.factor) = c("Not done","Done")

data$vt06ba.factor = factor(data$vt06ba, levels = c("3","4","5","6","7","8","9"))
levels(data$vt06ba.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt06bb.factor = factor(data$vt06bb, levels = c("1"))
levels(data$vt06bb.factor) = c("To be rescheduled")

data$vt06d.factor = factor(data$vt06d, levels = c("0","1"))
levels(data$vt06d.factor) = c("Not done","Done")

data$vt06da.factor = factor(data$vt06da, levels = c("3","4","5","6","7","8","9"))
levels(data$vt06da.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt06db.factor = factor(data$vt06db, levels = c("1"))
levels(data$vt06db.factor) = c("To be rescheduled")

data$vt06e.factor = factor(data$vt06e, levels = c("0","1"))
levels(data$vt06e.factor) = c("Not done","Done")

data$vt06ea.factor = factor(data$vt06ea, levels = c("3","4","5","6","7","8","9"))
levels(data$vt06ea.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt06eb.factor = factor(data$vt06eb, levels = c("1"))
levels(data$vt06eb.factor) = c("To be rescheduled")

data$vt06g.factor = factor(data$vt06g, levels = c("0","1"))
levels(data$vt06g.factor) = c("Not done","Done")

data$vt06ga.factor = factor(data$vt06ga, levels = c("3","4","5","6","7","8","9"))
levels(data$vt06ga.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt06gb.factor = factor(data$vt06gb, levels = c("1"))
levels(data$vt06gb.factor) = c("To be rescheduled")

data$vt06gc.factor = factor(data$vt06gc, levels = c("0","1"))
levels(data$vt06gc.factor) = c("nan","Yes")

data$vt06h.factor = factor(data$vt06h, levels = c("0","1"))
levels(data$vt06h.factor) = c("Not done","Done")

data$vt06ha.factor = factor(data$vt06ha, levels = c("3","4","5","6","7","8","9"))
levels(data$vt06ha.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt06hb.factor = factor(data$vt06hb, levels = c("1"))
levels(data$vt06hb.factor) = c("To be rescheduled")

data$vt07.factor = factor(data$vt07, levels = c("0","1"))
levels(data$vt07.factor) = c("Not done","Done")

data$vt07a.factor = factor(data$vt07a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt07a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt07b.factor = factor(data$vt07b, levels = c("1"))
levels(data$vt07b.factor) = c("To be rescheduled")

data$vt08ac.factor = factor(data$vt08ac, levels = c("1","2","3"))
levels(data$vt08ac.factor) = c("TIA or CVA within past 6 mo","Bilateral carotid bruits","Neck access problem")

data$vt08a.factor = factor(data$vt08a, levels = c("0","1"))
levels(data$vt08a.factor) = c("Not done","Done")

data$vt08aa.factor = factor(data$vt08aa, levels = c("3","4","5","6","7","8","9"))
levels(data$vt08aa.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt08ab.factor = factor(data$vt08ab, levels = c("1"))
levels(data$vt08ab.factor) = c("To be rescheduled")

data$vt08ba.factor = factor(data$vt08ba, levels = c("0","1"))
levels(data$vt08ba.factor) = c("Not done","Done")

data$vt08bb.factor = factor(data$vt08bb, levels = c("3","4","5","6","7","8","9"))
levels(data$vt08bb.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt08b.factor = factor(data$vt08b, levels = c("1"))
levels(data$vt08b.factor) = c("To be rescheduled")

data$vt08c.factor = factor(data$vt08c, levels = c("0","1","2","3"))
levels(data$vt08c.factor) = c("None","Both sides","Only Right","Only Left")

data$vt08ca.factor = factor(data$vt08ca, levels = c("3","4","5","6","7","8","9"))
levels(data$vt08ca.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt08cb.factor = factor(data$vt08cb, levels = c("1"))
levels(data$vt08cb.factor) = c("To be rescheduled")

data$vt09a.factor = factor(data$vt09a, levels = c("0","1"))
levels(data$vt09a.factor) = c("Not done","Done")

data$vt09aa.factor = factor(data$vt09aa, levels = c("3","4","5","6","7","8","9"))
levels(data$vt09aa.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt09ab.factor = factor(data$vt09ab, levels = c("1"))
levels(data$vt09ab.factor) = c("To be rescheduled")

data$vt09b.factor = factor(data$vt09b, levels = c("0","1"))
levels(data$vt09b.factor) = c("Not done","Done")

data$vt09ba.factor = factor(data$vt09ba, levels = c("3","4","5","6","7","8","9"))
levels(data$vt09ba.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt10.factor = factor(data$vt10, levels = c("0","1"))
levels(data$vt10.factor) = c("Not done","Done")

data$vt10a.factor = factor(data$vt10a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt10a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt10b.factor = factor(data$vt10b, levels = c("1"))
levels(data$vt10b.factor) = c("To be rescheduled")

data$vt11a.factor = factor(data$vt11a, levels = c("0","1"))
levels(data$vt11a.factor) = c("Not done","Done")

data$vt11aa.factor = factor(data$vt11aa, levels = c("3","4","5","6","7","8","9"))
levels(data$vt11aa.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt11ab.factor = factor(data$vt11ab, levels = c("1"))
levels(data$vt11ab.factor) = c("To be rescheduled")

data$vt11b.factor = factor(data$vt11b, levels = c("0","1"))
levels(data$vt11b.factor) = c("Not done","Done")

data$vt11ba.factor = factor(data$vt11ba, levels = c("3","4","5","6","7","8","9"))
levels(data$vt11ba.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt11bb.factor = factor(data$vt11bb, levels = c("1"))
levels(data$vt11bb.factor) = c("To be rescheduled")

data$vt12.factor = factor(data$vt12, levels = c("0","1"))
levels(data$vt12.factor) = c("Not done","Done")

data$vt12a.factor = factor(data$vt12a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt12a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt12b.factor = factor(data$vt12b, levels = c("1"))
levels(data$vt12b.factor) = c("To be rescheduled")

data$vt15.factor = factor(data$vt15, levels = c("0","1","2","3"))
levels(data$vt15.factor) = c("None","Both sides","Only Right","Only Left")

data$vt15a.factor = factor(data$vt15a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt15a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt15b.factor = factor(data$vt15b, levels = c("1"))
levels(data$vt15b.factor) = c("To be rescheduled")

data$vt17.factor = factor(data$vt17, levels = c("0","1"))
levels(data$vt17.factor) = c("Not done","Done")

data$vt17a.factor = factor(data$vt17a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt17a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt17b.factor = factor(data$vt17b, levels = c("1"))
levels(data$vt17b.factor) = c("To be rescheduled")

data$vt18.factor = factor(data$vt18, levels = c("0","1"))
levels(data$vt18.factor) = c("Not done","Done")

data$vt18a.factor = factor(data$vt18a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt18a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt18b.factor = factor(data$vt18b, levels = c("1"))
levels(data$vt18b.factor) = c("To be rescheduled")

data$vt20.factor = factor(data$vt20, levels = c("0","1"))
levels(data$vt20.factor) = c("Not done","Done")

data$vt20a.factor = factor(data$vt20a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt20a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt20b.factor = factor(data$vt20b, levels = c("1"))
levels(data$vt20b.factor) = c("To be rescheduled")

data$vt34.factor = factor(data$vt34, levels = c("0","1"))
levels(data$vt34.factor) = c("Not done","Done")

data$vt34a.factor = factor(data$vt34a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt34a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt34b.factor = factor(data$vt34b, levels = c("1"))
levels(data$vt34b.factor) = c("To be rescheduled")

data$vt21.factor = factor(data$vt21, levels = c("0","1"))
levels(data$vt21.factor) = c("Not done","Done")

data$vt21a.factor = factor(data$vt21a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt21a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt21b.factor = factor(data$vt21b, levels = c("1"))
levels(data$vt21b.factor) = c("To be rescheduled")

data$vt22.factor = factor(data$vt22, levels = c("0","1"))
levels(data$vt22.factor) = c("Not done","Done")

data$vt22a.factor = factor(data$vt22a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt22a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt22b.factor = factor(data$vt22b, levels = c("1"))
levels(data$vt22b.factor) = c("To be rescheduled")

data$vt24.factor = factor(data$vt24, levels = c("0","1"))
levels(data$vt24.factor) = c("Not done","Done")

data$vt24a.factor = factor(data$vt24a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt24a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt24b.factor = factor(data$vt24b, levels = c("1"))
levels(data$vt24b.factor) = c("To be rescheduled")

data$vt25.factor = factor(data$vt25, levels = c("0","1"))
levels(data$vt25.factor) = c("Not done","Done")

data$vt25a.factor = factor(data$vt25a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt25a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt25b.factor = factor(data$vt25b, levels = c("1"))
levels(data$vt25b.factor) = c("To be rescheduled")

data$vt26.factor = factor(data$vt26, levels = c("0","1"))
levels(data$vt26.factor) = c("Not done","Done")

data$vt26a.factor = factor(data$vt26a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt26a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt26b.factor = factor(data$vt26b, levels = c("1"))
levels(data$vt26b.factor) = c("To be rescheduled")

data$vt27.factor = factor(data$vt27, levels = c("0","1"))
levels(data$vt27.factor) = c("Not done","Done")

data$vt27a.factor = factor(data$vt27a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt27a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt27b.factor = factor(data$vt27b, levels = c("1"))
levels(data$vt27b.factor) = c("To be rescheduled")

data$vt28.factor = factor(data$vt28, levels = c("0","1"))
levels(data$vt28.factor) = c("Not done","Done")

data$vt28a.factor = factor(data$vt28a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt28a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt28b.factor = factor(data$vt28b, levels = c("1"))
levels(data$vt28b.factor) = c("To be rescheduled")

data$vt29.factor = factor(data$vt29, levels = c("0","1"))
levels(data$vt29.factor) = c("Not done","Done")

data$vt29a.factor = factor(data$vt29a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt29a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt29b.factor = factor(data$vt29b, levels = c("1"))
levels(data$vt29b.factor) = c("To be rescheduled")

data$vt55.factor = factor(data$vt55, levels = c("0","1"))
levels(data$vt55.factor) = c("Not done","Done")

data$vt55a.factor = factor(data$vt55a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt55a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt55b.factor = factor(data$vt55b, levels = c("1"))
levels(data$vt55b.factor) = c("To be rescheduled")

data$vt56.factor = factor(data$vt56, levels = c("0","1"))
levels(data$vt56.factor) = c("Not done","Done")

data$vt56a.factor = factor(data$vt56a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt56a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt56b.factor = factor(data$vt56b, levels = c("1"))
levels(data$vt56b.factor) = c("To be rescheduled")

data$vt66.factor = factor(data$vt66, levels = c("0","1"))
levels(data$vt66.factor) = c("Not done","Done")

data$vt66a.factor = factor(data$vt66a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt66a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt66b.factor = factor(data$vt66b, levels = c("1"))
levels(data$vt66b.factor) = c("To be rescheduled")

data$vt30.factor = factor(data$vt30, levels = c("0","1"))
levels(data$vt30.factor) = c("Not done","Done")

data$vt30a.factor = factor(data$vt30a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt30a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt30b.factor = factor(data$vt30b, levels = c("1"))
levels(data$vt30b.factor) = c("To be rescheduled")

data$vt31.factor = factor(data$vt31, levels = c("0","1"))
levels(data$vt31.factor) = c("Not done","Done")

data$vt31a.factor = factor(data$vt31a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt31a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt35.factor = factor(data$vt35, levels = c("0","1"))
levels(data$vt35.factor) = c("Not done","Done")

data$vt35a.factor = factor(data$vt35a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt35a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt35b.factor = factor(data$vt35b, levels = c("1"))
levels(data$vt35b.factor) = c("To be rescheduled")

data$vt38.factor = factor(data$vt38, levels = c("0","1"))
levels(data$vt38.factor) = c("Not done","Done")

data$vt38a.factor = factor(data$vt38a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt38a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt38b.factor = factor(data$vt38b, levels = c("1"))
levels(data$vt38b.factor) = c("To be rescheduled")

data$vt40.factor = factor(data$vt40, levels = c("0","1"))
levels(data$vt40.factor) = c("Not done","Done")

data$vt40a.factor = factor(data$vt40a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt40a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt40b.factor = factor(data$vt40b, levels = c("1"))
levels(data$vt40b.factor) = c("To be rescheduled")

data$vt53.factor = factor(data$vt53, levels = c("0","1"))
levels(data$vt53.factor) = c("Not done","Done")

data$vt53a.factor = factor(data$vt53a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt53a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt53b.factor = factor(data$vt53b, levels = c("1"))
levels(data$vt53b.factor) = c("To be rescheduled")

data$vt54.factor = factor(data$vt54, levels = c("0","1"))
levels(data$vt54.factor) = c("Not done","Done")

data$vt54a.factor = factor(data$vt54a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt54a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt54b.factor = factor(data$vt54b, levels = c("1"))
levels(data$vt54b.factor) = c("To be rescheduled")

data$vt67a.factor = factor(data$vt67a, levels = c("0","1"))
levels(data$vt67a.factor) = c("Not done","Done")

data$vt67b.factor = factor(data$vt67b, levels = c("3","4","5","6","7","8","9"))
levels(data$vt67b.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt70.factor = factor(data$vt70, levels = c("0","1"))
levels(data$vt70.factor) = c("Not done","Done")

data$vt70a.factor = factor(data$vt70a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt70a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt41.factor = factor(data$vt41, levels = c("0","1"))
levels(data$vt41.factor) = c("Not done","Done")

data$vt44.factor = factor(data$vt44, levels = c("0","1"))
levels(data$vt44.factor) = c("Not done","Done")

data$vt49.factor = factor(data$vt49, levels = c("0","1","2"))
levels(data$vt49.factor) = c("N/E","Scheduled","Info given")

data$vt63.factor = factor(data$vt63, levels = c("0","1"))
levels(data$vt63.factor) = c("Not done","Done")

data$vt71.factor = factor(data$vt71, levels = c("0","1"))
levels(data$vt71.factor) = c("Not done","Done")

data$vt72.factor = factor(data$vt72, levels = c("0","1"))
levels(data$vt72.factor) = c("Not done","Done")

data$vt48b.factor = factor(data$vt48b, levels = c("1"))
levels(data$vt48b.factor) = c("To be rescheduled")

data$vt52ad1_2.factor = factor(data$vt52ad1_2, levels = c("2","3","4"))
levels(data$vt52ad1_2.factor) = c("Actigraph","Both","Actiwatch")

data$vt44rnd.factor = factor(data$vt44rnd, levels = c("3","4","5","6","7","8","9"))
levels(data$vt44rnd.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt63rnd.factor = factor(data$vt63rnd, levels = c("3","4","5","6","7","8","9"))
levels(data$vt63rnd.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt71rnd.factor = factor(data$vt71rnd, levels = c("3","4","5","6","7","8","9"))
levels(data$vt71rnd.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt72rnd.factor = factor(data$vt72rnd, levels = c("3","4","5","6","7","8","9"))
levels(data$vt72rnd.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt48_2.factor = factor(data$vt48_2, levels = c("1","2","3"))
levels(data$vt48_2.factor) = c("Done","Consented","N/Done")

data$vt48rnd.factor = factor(data$vt48rnd, levels = c("3","4","5","6","7","8","9"))
levels(data$vt48rnd.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$epidermalaging.factor = factor(data$epidermalaging, levels = c("0","1"))
levels(data$epidermalaging.factor) = c("Not done","Done")

data$epidermalagrnd.factor = factor(data$epidermalagrnd, levels = c("3","4","5","6","7","8","9"))
levels(data$epidermalagrnd.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$cogstate.factor = factor(data$cogstate, levels = c("0","1"))
levels(data$cogstate.factor) = c("Not done","Done")

data$cogstaternd.factor = factor(data$cogstaternd, levels = c("3","4","5","6","7","8","9"))
levels(data$cogstaternd.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$maskworn_VisProChe.factor = factor(data$maskworn_VisProChe, levels = c("0","1"))
levels(data$maskworn_VisProChe.factor) = c("No","Yes")

data$vteyetrdone.factor = factor(data$vteyetrdone, levels = c("0","1"))
levels(data$vteyetrdone.factor) = c("Not done","Done")

data$vteyetrrnd.factor = factor(data$vteyetrrnd, levels = c("3","4","5","6","7","8","9"))
levels(data$vteyetrrnd.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vteyetrresch.factor = factor(data$vteyetrresch, levels = c("1"))
levels(data$vteyetrresch.factor) = c("To be rescheduled")

data$intestinalperm.factor = factor(data$intestinalperm, levels = c("0","1"))
levels(data$intestinalperm.factor) = c("Not done","Done")

data$intestinalpermrnd.factor = factor(data$intestinalpermrnd, levels = c("3","4","5","6","7","8","9"))
levels(data$intestinalpermrnd.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt73b.factor = factor(data$vt73b, levels = c("1"))
levels(data$vt73b.factor) = c("To be rescheduled")

data$vt59.factor = factor(data$vt59, levels = c("0","1"))
levels(data$vt59.factor) = c("Not done","Done")

data$vt59a.factor = factor(data$vt59a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt59a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt60.factor = factor(data$vt60, levels = c("0","1"))
levels(data$vt60.factor) = c("Not done","Done")

data$vt60a.factor = factor(data$vt60a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt60a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt68.factor = factor(data$vt68, levels = c("0","1"))
levels(data$vt68.factor) = c("Not done","Done")

data$vt68a.factor = factor(data$vt68a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt68a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt74.factor = factor(data$vt74, levels = c("0","1"))
levels(data$vt74.factor) = c("Not done","Done")

data$vt74a.factor = factor(data$vt74a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt74a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$followup.factor = factor(data$followup, levels = c("0","1"))
levels(data$followup.factor) = c("No","Yes")

data$vt69.factor = factor(data$vt69, levels = c("0","1"))
levels(data$vt69.factor) = c("Not done","Done")

data$vt69a.factor = factor(data$vt69a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt69a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt69b.factor = factor(data$vt69b, levels = c("1"))
levels(data$vt69b.factor) = c("To be rescheduled")

data$vt75.factor = factor(data$vt75, levels = c("0","1"))
levels(data$vt75.factor) = c("Not done","Done")

data$vt75a.factor = factor(data$vt75a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt75a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt48_3.factor = factor(data$vt48_3, levels = c("1","2","3"))
levels(data$vt48_3.factor) = c("Done","Consented","N/Done")

data$vt58.factor = factor(data$vt58, levels = c("0","1"))
levels(data$vt58.factor) = c("Not done","Done")

data$vt09sb.factor = factor(data$vt09sb, levels = c("0","1"))
levels(data$vt09sb.factor) = c("Not done","Done")

data$vt09srnd.factor = factor(data$vt09srnd, levels = c("3","4","5","6","7","8","9"))
levels(data$vt09srnd.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vttimea.factor = factor(data$vttimea, levels = c("1","2"))
levels(data$vttimea.factor) = c("am","pm")

data$vttimeb.factor = factor(data$vttimeb, levels = c("1","2"))
levels(data$vttimeb.factor) = c("am","pm")

data$vt03.factor = factor(data$vt03, levels = c("0","1"))
levels(data$vt03.factor) = c("Not done","Done")

data$vt03a.factor = factor(data$vt03a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt03a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt04a.factor = factor(data$vt04a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt04a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt04b.factor = factor(data$vt04b, levels = c("1"))
levels(data$vt04b.factor) = c("To be rescheduled")

data$vt05a.factor = factor(data$vt05a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt05a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt05b.factor = factor(data$vt05b, levels = c("1"))
levels(data$vt05b.factor) = c("To be rescheduled")

data$vt06c.factor = factor(data$vt06c, levels = c("0","1"))
levels(data$vt06c.factor) = c("Not done","Done")

data$vt06ca.factor = factor(data$vt06ca, levels = c("3","4","5","6","7","8","9"))
levels(data$vt06ca.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt06cb.factor = factor(data$vt06cb, levels = c("1"))
levels(data$vt06cb.factor) = c("To be rescheduled")

data$vt06f.factor = factor(data$vt06f, levels = c("0","1"))
levels(data$vt06f.factor) = c("Not done","Done")

data$vt06fa.factor = factor(data$vt06fa, levels = c("3","4","5","6","7","8","9"))
levels(data$vt06fa.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt06fb.factor = factor(data$vt06fb, levels = c("1"))
levels(data$vt06fb.factor) = c("To be rescheduled")

data$vt13.factor = factor(data$vt13, levels = c("0","1"))
levels(data$vt13.factor) = c("Not done","Done")

data$vt13a.factor = factor(data$vt13a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt13a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt13b.factor = factor(data$vt13b, levels = c("1"))
levels(data$vt13b.factor) = c("To be rescheduled")

data$vt52ad1.factor = factor(data$vt52ad1, levels = c("1","2","3","4"))
levels(data$vt52ad1.factor) = c("Actiheart","Actigraph","Both","Actiwatch")

data$vt23.factor = factor(data$vt23, levels = c("0","1"))
levels(data$vt23.factor) = c("Not done","Done")

data$vt23a.factor = factor(data$vt23a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt23a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt23b.factor = factor(data$vt23b, levels = c("1"))
levels(data$vt23b.factor) = c("To be rescheduled")

data$vt59b.factor = factor(data$vt59b, levels = c("1"))
levels(data$vt59b.factor) = c("To be rescheduled")

data$vt60b.factor = factor(data$vt60b, levels = c("1"))
levels(data$vt60b.factor) = c("To be rescheduled")

data$vt64.factor = factor(data$vt64, levels = c("0","1"))
levels(data$vt64.factor) = c("Not done","Done")

data$vt64a.factor = factor(data$vt64a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt64a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt64b.factor = factor(data$vt64b, levels = c("1"))
levels(data$vt64b.factor) = c("To be rescheduled")

data$vt68b.factor = factor(data$vt68b, levels = c("1"))
levels(data$vt68b.factor) = c("To be rescheduled")

data$sensoryresch.factor = factor(data$sensoryresch, levels = c("1"))
levels(data$sensoryresch.factor) = c("To be rescheduled")

data$vt31b.factor = factor(data$vt31b, levels = c("1"))
levels(data$vt31b.factor) = c("To be rescheduled")

data$fittsdone.factor = factor(data$fittsdone, levels = c("0","1"))
levels(data$fittsdone.factor) = c("Not done","Done")

data$vt47.factor = factor(data$vt47, levels = c("0","1","2"))
levels(data$vt47.factor) = c("N/E","Done","Consented")

data$vt61.factor = factor(data$vt61, levels = c("0","1"))
levels(data$vt61.factor) = c("Not done","Done")

data$vt62.factor = factor(data$vt62, levels = c("0","1"))
levels(data$vt62.factor) = c("Not done","Done")

data$vt36.factor = factor(data$vt36, levels = c("0","1"))
levels(data$vt36.factor) = c("Not done","Done")

data$vt36a.factor = factor(data$vt36a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt36a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt36b.factor = factor(data$vt36b, levels = c("1"))
levels(data$vt36b.factor) = c("To be rescheduled")

data$vt37.factor = factor(data$vt37, levels = c("0","1"))
levels(data$vt37.factor) = c("Not done","Done")

data$vt37a.factor = factor(data$vt37a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt37a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt37b.factor = factor(data$vt37b, levels = c("1"))
levels(data$vt37b.factor) = c("To be rescheduled")

data$vt39.factor = factor(data$vt39, levels = c("0","1"))
levels(data$vt39.factor) = c("Not done","Done")

data$vt39a.factor = factor(data$vt39a, levels = c("3","4","5","6","7","8","9"))
levels(data$vt39a.factor) = c("(3) No Time","(4) Refused","(5) Unable","(6) Equipment problem","(7) No Tester","(8) Not Eligible","(9) Not Scheduled N/A")

data$vt39b.factor = factor(data$vt39b, levels = c("1"))
levels(data$vt39b.factor) = c("To be rescheduled")

data$vt43.factor = factor(data$vt43, levels = c("0","1"))
levels(data$vt43.factor) = c("Not done","Done")

data$vt45.factor = factor(data$vt45, levels = c("0","1"))
levels(data$vt45.factor) = c("Not done","Done")

data$vt51.factor = factor(data$vt51, levels = c("0","1"))
levels(data$vt51.factor) = c("Not done","Done")

data$acknowledgment_form.factor = factor(data$acknowledgment_form, levels = c("0","1","2","7"))
levels(data$acknowledgment_form.factor) = c("Other","Fully completed","Partially completed","Refused")

data$copy_md_orders.factor = factor(data$copy_md_orders, levels = c("0","1","2","7"))
levels(data$copy_md_orders.factor) = c("Other","Fully completed","Partially completed","Refused")

data$orders.factor = factor(data$orders, levels = c("0","1","2","7"))
levels(data$orders.factor) = c("Other","Fully completed","Partially completed","Refused")

data$blsa_consent_hipaa.factor = factor(data$blsa_consent_hipaa, levels = c("0","1","2","7"))
levels(data$blsa_consent_hipaa.factor) = c("Other","Fully completed","Partially completed","Refused")

data$validate_hipaa.factor = factor(data$validate_hipaa, levels = c("0","1","2","7"))
levels(data$validate_hipaa.factor) = c("Other","Fully completed","Partially completed","Refused")

data$advanced_directives.factor = factor(data$advanced_directives, levels = c("0","1","2","7"))
levels(data$advanced_directives.factor) = c("Other","Fully completed","Partially completed","Refused")

data$falls_risk.factor = factor(data$falls_risk, levels = c("0","1","2","7"))
levels(data$falls_risk.factor) = c("Other","Fully completed","Partially completed","Refused")

data$pneumoccoccal_questionnaire.factor = factor(data$pneumoccoccal_questionnaire, levels = c("0","1","2","7"))
levels(data$pneumoccoccal_questionnaire.factor) = c("Other","Fully completed","Partially completed","Refused")

data$pneumoccoccal_screen.factor = factor(data$pneumoccoccal_screen, levels = c("0","1","2","7"))
levels(data$pneumoccoccal_screen.factor) = c("Other","Fully completed","Partially completed","Refused")

data$cytapheresis.factor = factor(data$cytapheresis, levels = c("0","1","2","7"))
levels(data$cytapheresis.factor) = c("Other","Fully completed","Partially completed","Refused")

data$hiv_consent.factor = factor(data$hiv_consent, levels = c("0","1","2","7"))
levels(data$hiv_consent.factor) = c("Other","Fully completed","Partially completed","Refused")

data$radiation_exposition.factor = factor(data$radiation_exposition, levels = c("0","1","2","7"))
levels(data$radiation_exposition.factor) = c("Other","Fully completed","Partially completed","Refused")

data$ekg.factor = factor(data$ekg, levels = c("0","1","2","7"))
levels(data$ekg.factor) = c("Other","Fully completed","Partially completed","Refused")

data$holter_monitor.factor = factor(data$holter_monitor, levels = c("0","1","2","7"))
levels(data$holter_monitor.factor) = c("Other","Fully completed","Partially completed","Refused")

data$height_weight.factor = factor(data$height_weight, levels = c("0","1","2","7"))
levels(data$height_weight.factor) = c("Other","Fully completed","Partially completed","Refused")

data$vital_signs.factor = factor(data$vital_signs, levels = c("0","1","2","7"))
levels(data$vital_signs.factor) = c("Other","Fully completed","Partially completed","Refused")

data$fasting_urine.factor = factor(data$fasting_urine, levels = c("0","1","2","7"))
levels(data$fasting_urine.factor) = c("Other","Fully completed","Partially completed","Refused")

data$urine_24_hours.factor = factor(data$urine_24_hours, levels = c("0","1","2","7"))
levels(data$urine_24_hours.factor) = c("Other","Fully completed","Partially completed","Refused")

data$bdnf.factor = factor(data$bdnf, levels = c("0","1","2","7"))
levels(data$bdnf.factor) = c("Other","Fully completed","Partially completed","Refused")

data$nan_ping_tubes.factor = factor(data$nan_ping_tubes, levels = c("0","1","2","7"))
levels(data$nan_ping_tubes.factor) = c("Other","Fully completed","Partially completed","Refused")

data$bhcg.factor = factor(data$bhcg, levels = c("0","1","2","7"))
levels(data$bhcg.factor) = c("Other","Fully completed","Partially completed","Refused")

data$hiv_serology.factor = factor(data$hiv_serology, levels = c("0","1","2","7"))
levels(data$hiv_serology.factor) = c("Other","Fully completed","Partially completed","Refused")

data$blood_draw.factor = factor(data$blood_draw, levels = c("0","1","2","7"))
levels(data$blood_draw.factor) = c("Other","Fully completed","Partially completed","Refused")

data$strength_test_blood.factor = factor(data$strength_test_blood, levels = c("0","1","2","7"))
levels(data$strength_test_blood.factor) = c("Other","Fully completed","Partially completed","Refused")

data$ogtt.factor = factor(data$ogtt, levels = c("0","1","2","7"))
levels(data$ogtt.factor) = c("Other","Fully completed","Partially completed","Refused")

data$physical_examination.factor = factor(data$physical_examination, levels = c("0","1","2","7"))
levels(data$physical_examination.factor) = c("Other","Fully completed","Partially completed","Refused")

data$finger_tapping_test.factor = factor(data$finger_tapping_test, levels = c("0","1","2","7"))
levels(data$finger_tapping_test.factor) = c("Other","Fully completed","Partially completed","Refused")

data$medical_interview.factor = factor(data$medical_interview, levels = c("0","1","2","7"))
levels(data$medical_interview.factor) = c("Other","Fully completed","Partially completed","Refused")

data$socio_demographic_interview.factor = factor(data$socio_demographic_interview, levels = c("0","1","2","7"))
levels(data$socio_demographic_interview.factor) = c("Other","Fully completed","Partially completed","Refused")

data$blessed_mental.factor = factor(data$blessed_mental, levels = c("0","1","2","7"))
levels(data$blessed_mental.factor) = c("Other","Fully completed","Partially completed","Refused")

data$dexa_scan.factor = factor(data$dexa_scan, levels = c("0","1","2","7"))
levels(data$dexa_scan.factor) = c("Other","Fully completed","Partially completed","Refused")

data$knee_xray.factor = factor(data$knee_xray, levels = c("0","1","2","7"))
levels(data$knee_xray.factor) = c("Other","Fully completed","Partially completed","Refused")

data$hand_xray.factor = factor(data$hand_xray, levels = c("0","1","2","7"))
levels(data$hand_xray.factor) = c("Other","Fully completed","Partially completed","Refused")

data$hand_photo.factor = factor(data$hand_photo, levels = c("0","1","2","7"))
levels(data$hand_photo.factor) = c("Other","Fully completed","Partially completed","Refused")

data$ctscan.factor = factor(data$ctscan, levels = c("0","1","2","7"))
levels(data$ctscan.factor) = c("Other","Fully completed","Partially completed","Refused")

data$mri_neuro_imaging.factor = factor(data$mri_neuro_imaging, levels = c("0","1","2","7"))
levels(data$mri_neuro_imaging.factor) = c("Other","Fully completed","Partially completed","Refused")

data$grip_strength.factor = factor(data$grip_strength, levels = c("0","1","2","7"))
levels(data$grip_strength.factor) = c("Other","Fully completed","Partially completed","Refused")

data$knee_strength_right.factor = factor(data$knee_strength_right, levels = c("0","1","2","7"))
levels(data$knee_strength_right.factor) = c("Other","Fully completed","Partially completed","Refused")

data$knee_strength_left.factor = factor(data$knee_strength_left, levels = c("0","1","2","7"))
levels(data$knee_strength_left.factor) = c("Other","Fully completed","Partially completed","Refused")

data$le_physical_performance.factor = factor(data$le_physical_performance, levels = c("0","1","2","7"))
levels(data$le_physical_performance.factor) = c("Other","Fully completed","Partially completed","Refused")

data$long_distance_corridor_walk.factor = factor(data$long_distance_corridor_walk, levels = c("0","1","2","7"))
levels(data$long_distance_corridor_walk.factor) = c("Other","Fully completed","Partially completed","Refused")

data$gait_lab.factor = factor(data$gait_lab, levels = c("0","1","2","7"))
levels(data$gait_lab.factor) = c("Other","Fully completed","Partially completed","Refused")

data$early_markers_ad.factor = factor(data$early_markers_ad, levels = c("0","1","2","7"))
levels(data$early_markers_ad.factor) = c("Other","Fully completed","Partially completed","Refused")

data$core_cognitive_testing.factor = factor(data$core_cognitive_testing, levels = c("0","1","2","7"))
levels(data$core_cognitive_testing.factor) = c("Other","Fully completed","Partially completed","Refused")

data$personal_computer_testing.factor = factor(data$personal_computer_testing, levels = c("0","1","2","7"))
levels(data$personal_computer_testing.factor) = c("Other","Fully completed","Partially completed","Refused")

data$emg.factor = factor(data$emg, levels = c("0","1","2","7"))
levels(data$emg.factor) = c("Other","Fully completed","Partially completed","Refused")

data$vibration_sensitivity_nrsv.factor = factor(data$vibration_sensitivity_nrsv, levels = c("0","1","2","7"))
levels(data$vibration_sensitivity_nrsv.factor) = c("Other","Fully completed","Partially completed","Refused")

data$proprioception_test.factor = factor(data$proprioception_test, levels = c("0","1","2","7"))
levels(data$proprioception_test.factor) = c("Other","Fully completed","Partially completed","Refused")

data$resting_metabolic_rate.factor = factor(data$resting_metabolic_rate, levels = c("0","1","2","7"))
levels(data$resting_metabolic_rate.factor) = c("Other","Fully completed","Partially completed","Refused")

data$treadmill_stress_test.factor = factor(data$treadmill_stress_test, levels = c("0","1","2","7"))
levels(data$treadmill_stress_test.factor) = c("Other","Fully completed","Partially completed","Refused")

data$oxygen_consumption.factor = factor(data$oxygen_consumption, levels = c("0","1","2","7"))
levels(data$oxygen_consumption.factor) = c("Other","Fully completed","Partially completed","Refused")

data$pulmonary_function_test.factor = factor(data$pulmonary_function_test, levels = c("0","1","2","7"))
levels(data$pulmonary_function_test.factor) = c("Other","Fully completed","Partially completed","Refused")

data$echocardiogram.factor = factor(data$echocardiogram, levels = c("0","1","2","7"))
levels(data$echocardiogram.factor) = c("Other","Fully completed","Partially completed","Refused")

data$carotid_ultrasound.factor = factor(data$carotid_ultrasound, levels = c("0","1","2","7"))
levels(data$carotid_ultrasound.factor) = c("Other","Fully completed","Partially completed","Refused")

data$pulse_wave_velocity.factor = factor(data$pulse_wave_velocity, levels = c("0","1","2","7"))
levels(data$pulse_wave_velocity.factor) = c("Other","Fully completed","Partially completed","Refused")

data$abi.factor = factor(data$abi, levels = c("0","1","2","7"))
levels(data$abi.factor) = c("Other","Fully completed","Partially completed","Refused")

data$autopsy.factor = factor(data$autopsy, levels = c("0","1","2","7"))
levels(data$autopsy.factor) = c("Other","Fully completed","Partially completed","Refused")

data$body_measurements.factor = factor(data$body_measurements, levels = c("0","1","2","7"))
levels(data$body_measurements.factor) = c("Other","Fully completed","Partially completed","Refused")

data$vision_testing.factor = factor(data$vision_testing, levels = c("0","1","2","7"))
levels(data$vision_testing.factor) = c("Other","Fully completed","Partially completed","Refused")

data$vision_stereopsis.factor = factor(data$vision_stereopsis, levels = c("0","1","2","7"))
levels(data$vision_stereopsis.factor) = c("Other","Fully completed","Partially completed","Refused")

data$visual_fields.factor = factor(data$visual_fields, levels = c("0","1","2","7"))
levels(data$visual_fields.factor) = c("Other","Fully completed","Partially completed","Refused")

data$food_frequency_questionnaire.factor = factor(data$food_frequency_questionnaire, levels = c("0","1","2","7"))
levels(data$food_frequency_questionnaire.factor) = c("Other","Fully completed","Partially completed","Refused")

data$food_intake_record.factor = factor(data$food_intake_record, levels = c("0","1","2","7"))
levels(data$food_intake_record.factor) = c("Other","Fully completed","Partially completed","Refused")

data$progress_note.factor = factor(data$progress_note, levels = c("0","1","2","7"))
levels(data$progress_note.factor) = c("Other","Fully completed","Partially completed","Refused")

data$on_study_card.factor = factor(data$on_study_card, levels = c("0","1","2","7"))
levels(data$on_study_card.factor) = c("Other","Fully completed","Partially completed","Refused")

data$best_list.factor = factor(data$best_list, levels = c("0","1","2","7"))
levels(data$best_list.factor) = c("Other","Fully completed","Partially completed","Refused")

