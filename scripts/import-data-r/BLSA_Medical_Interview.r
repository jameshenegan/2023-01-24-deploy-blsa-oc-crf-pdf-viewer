#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Medical_Interview.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_MedInt)="CRF Version"
label(data$obsdate_mdhxdate)="Date Completed"
label(data$blank_MedInt)="Blank Form"
label(data$mdhxtid)="Tester ID"
label(data$mdhxtyp)="Interview conducted with"
label(data$mdhx1)="Have you seen a Md PA or NP for any reason within the past 2 years"
label(data$mdhx2)="How often do you have a routine physical examination"
label(data$mdhx2f1)="Did you receive the flu shot this year"
label(data$mdhx2f2)="If no do you plan to get the flu shot this year"
label(data$mdhx3)="Has doctor ever said you had a heart attack or myocardial infarction"
label(data$mdhx3a)="If yes how long ago most recent heart attack"
label(data$mdhx4)="Has doctor ever said you had a heart failure or CHF"
label(data$mdhx5)="Has doctor ever said you had angina chest pain due to heart or coronary artery disease"
label(data$mdhx6)="Has doctor ever said you had chronic bronchitis emphysema or COPD"
label(data$mdhx7)="Has doctor ever said you had asthma"
label(data$mdhx7a)="If yes do you still have asthma"
label(data$mdhx8)="Has doctor ever said you had cirrhosis or liver disease"
label(data$mdhx9)="Has doctor ever said you had hepatitis"
label(data$mdhx10)="Has doctor ever said you had HIV or AIDS"
label(data$mdhx11)="Has doctor ever said you had kidney disease nephritis or renal insufficiency"
label(data$mdhx12)="Has doctor ever said you had a stroke mini stroke or slight stroke"
label(data$mdhx12a)="If yes how long ago most recent stroke"
label(data$mdhx13)="Has doctor ever said you had a transient ischemic attack or TIA"
label(data$mdhx13a)="If yes how long ago most recent TIA"
label(data$mdhx14)="Has doctor ever said you had peripheral neuropathy or nerve damage in your lower legs feet or hands"
label(data$mdhx15)="Has doctor ever said you had high blood pressure or hypertension"
label(data$mdhx15a)="If yes are you currently taking prescribed medications for BP"
label(data$mdhx15b)="If no meds do you still have high blood pressure"
label(data$mdhx15c)="If yes to high BP are you following lifestyle recommendations"
label(data$mdhx16)="Has doctor ever said you had diabetes glucose intolerance or high blood sugar"
label(data$mdhx16a)="If yes are you currently taking diabetes medication"
label(data$mdhx16b)="If no meds do you still have high blood sugar"
label(data$mdhx16c)="If yes to high blood sugar are you following lifestyle recommendations"
label(data$mdhx17)="Has doctor ever said you had high cholesterol triglycerides"
label(data$mdhx17b)="If not currently taking medication, do you still have high cholesterol (lipids)?"
label(data$mdhx17c)="If yes to high cholesterol are you following lifestyle recommendations"
label(data$mdhx18)="Had bypass surgery carotid endarterectomy or aortic aneurysm repair"
label(data$mdhx18a1)="Coronary bypass surgery heart bypass or CABG"
label(data$mdhx18a2)="Angioplasty of coronary arteries"
label(data$mdhx18a3)="Bypass procedure on leg or femoral arteries"
label(data$mdhx18a4)="Angioplasty on leg or femoral arteries"
label(data$mdhx18a5)="Carotid endarterectomy surgery on your neck arteries"
label(data$mdhx18a6)="Repair of aortic aneurysm"
label(data$mdhx19)="Ever told you had cancer or malignant growth"
label(data$mdh19a1)="Bladder cancer YN"
label(data$mdh19b1)="Age first told had bladder cancer"
label(data$mdh19c1)="Had recurrence of bladder cancer"
label(data$mdh19d1)="Age most recent recurrence of bladder cancer"
label(data$mdh19a2)="Brain cancer YN"
label(data$mdh19b2)="Age first told had brain cancer"
label(data$mdh19c2)="Had recurrence of brain cancer"
label(data$mdh19d2)="Age most recent recurrence of brain cancer"
label(data$mdh19a3)="Breast cancer YN"
label(data$mdh19b3)="Age first told had Breast cancer"
label(data$mdh19c3)="Had recurrence of Breast cancer"
label(data$mdh19d3)="Age most recent recurrence of Breast cancer"
label(data$mdh19a4)="Cervical cancer YN"
label(data$mdh19b4)="Age first told had Cervical cancer"
label(data$mdh19c4)="Had recurrence of Cervical cancer"
label(data$mdh19d4)="Age most recent recurrence of Cervical cancer"
label(data$mdh19a5)="Colon Rectal cancer YN"
label(data$mdh19b5)="Age first told had Colon Rectal cancer"
label(data$mdh19c5)="Had recurrence of Colon Rectal cancer"
label(data$mdh19d5)="Age most recent recurrence of Colon Rectal cancer"
label(data$mdh19a6)="Endometrial cancer YN"
label(data$mdh19b6)="Age first told had Endometrial cancer"
label(data$mdh19c6)="Had recurrence of Endometrial cancer"
label(data$mdh19d6)="Age most recent recurrence of Endometrial cancer"
label(data$mdh19a7)="Leukemia cancer YN"
label(data$mdh19b7)="Age first told had Leukemia cancer"
label(data$mdh19c7)="Had recurrence of Leukemia cancer"
label(data$mdh19d7)="Age most recent recurrence of Leukemia cancer"
label(data$mdh19a8)="Liver cancer YN"
label(data$mdh19b8)="Age first told had Liver cancer"
label(data$mdh19c8)="Had recurrence of Liver cancer"
label(data$mdh19d8)="Age most recent recurrence of Liver cancer"
label(data$mdh19a9)="Lung cancer YN"
label(data$mdh19b9)="Age first told had Lung cancer"
label(data$mdh19c9)="Had recurrence of Lung cancer"
label(data$mdh19d9)="Age most recent recurrence of Lung cancer"
label(data$mdh19a10)="Lymphoma cancer YN"
label(data$mdh19b10)="Age first told had Lymphoma cancer"
label(data$mdh19c10)="Had recurrence of Lymphoma cancer"
label(data$mdh19d10)="Age most recent recurrence of Lymphoma cancer"
label(data$mdh19a11)="Melanoma cancer YN"
label(data$mdh19b11)="Age first told had Melanoma cancer"
label(data$mdh19c11)="Had recurrence of Melanoma cancer"
label(data$mdh19d11)="Age most recent recurrence of Melanoma cancer"
label(data$mdh19a12)="Ovarian cancer YN"
label(data$mdh19b12)="Age first told had Ovarian cancer"
label(data$mdh19c12)="Had recurrence of Ovarian cancer"
label(data$mdh19d12)="Age most recent recurrence of Ovarian cancer"
label(data$mdh19a13)="Pancreatic cancer YN"
label(data$mdh19b13)="Age first told had Pancreatic cancer"
label(data$mdh19c13)="Had recurrence of Pancreatic cancer"
label(data$mdh19d13)="Age most recent recurrence of Pancreatic cancer"
label(data$mdh19a14)="Prostate cancer YN"
label(data$mdh19b14)="Age first told had Prostate cancer"
label(data$mdh19c14)="Had recurrence of Prostate cancer"
label(data$mdh19d14)="Age most recent recurrence of Prostate cancer"
label(data$mdh19a15)="Skin Basal cancer YN"
label(data$mdh19b15)="Age first told had Skin Basal cancer"
label(data$mdh19c15)="Had recurrence of Skin Basal cancer"
label(data$mdh19d15)="Age most recent recurrence of Skin Basal cancer"
label(data$mdh19a16)="Skin Squamous cancer YN"
label(data$mdh19b16)="Age first told had Skin Squamous cancer"
label(data$mdh19c16)="Had recurrence of Skin Squamous cancer"
label(data$mdh19d16)="Age most recent recurrence of Skin Squamous cancer"
label(data$mdh19a17)="Stomach cancer YN"
label(data$mdh19b17)="Age first told had Stomach cancer"
label(data$mdh19c17)="Had recurrence of Stomach cancer"
label(data$mdh19d17)="Age most recent recurrence of Stomach cancer"
label(data$mdh19a18)="Thyroid cancer YN"
label(data$mdh19b18)="Age first told had Thyroid cancer"
label(data$mdh19c18)="Had recurrence of Thyroid cancer"
label(data$mdh19d18)="Age most recent recurrence of Thyroid cancer"
label(data$mdh19a19)="Other cancer YN"
label(data$mdh19b19)="Age first told had Other cancer"
label(data$mdh19d19)="Had recurrence of Other cancer"
label(data$mdh19e19)="Age most recent recurrence of Othercancer"
label(data$mdh19c19)="Other cancer specify"
label(data$mdh19a19e)="Type of treatment for cancers"
label(data$mdh19a19ecom)="Other cancer treatment"
label(data$mdhx20)="Has doctor ever said you had arthritis or osteoarthritis"
label(data$mdhx20a1)="Arthritis in Knees"
label(data$mdhx20a2)="Arthritis in Hips"
label(data$mdhx20a3)="Arthritis in Hands"
label(data$mdhx20a4)="Arthritis in Back"
label(data$mdhx20a5)="Arthritis in Neck"
label(data$mdhx20a6)="Arthritis in Feet"
label(data$mdhx20a7)="Arthritis in Shoulders"
label(data$mdhx21)="Has doctor ever said you had spinal stenosis"
label(data$mdhx22)="Has doctor ever said you had osteoporosis"
label(data$mdhx22a)="Are you currently following lifestyle recommendations or taking over the counter calcium or Vit D supplements to manage your osteoporosis"
label(data$mdhx23)="Has doctor ever said you had connective tissue disease"
label(data$mdhx24)="Has doctor ever said you had Parkinsons disease"
label(data$mdhx25)="Has doctor ever said you had Intermittent Claudication or PAD"
label(data$mdhx26)="Has doctor ever said you had varicose veins damage to the veins in lower legs phlebitis or venous insufficiency"
label(data$mdhx27a)="Has doctor ever said you had Cataracts"
label(data$mdhx27aa)="Which eye Cataracts"
label(data$mdhx27b)="If had cataracts in both eyes was this at the same time"
label(data$mdhx27f)="Have you ever had cataract surgery"
label(data$mdhx27g)="Which eye cataract surgery"
label(data$mdhx27c)="Has doctor ever said you had Glaucoma"
label(data$mdhx27cc)="Which eye Glaucoma"
label(data$mdhx27d)="Has doctor ever said you had problems with your retina retinopathy or retinal changes"
label(data$mdhx27dd)="Which eye Retina problems"
label(data$mdhx27e)="Has doctor ever said you had Maculardegeneration"
label(data$mdhx27ee)="Which eye Maculardegeneration"
label(data$mdhx27i)="Ever been diagnosed by a clinician as having dry eye syndrome"
label(data$mdhx27j)="How often do your eyes feel dry"
label(data$mdhx27k)="How often do your eyes feel irritated"
label(data$mdhx28)="Has doctor ever said you had a stomach gastric or duodenal ulcer"
label(data$mdhx28a)="Do you still have a stomach gastric or duodenal ulcer"
label(data$mdhx29)="Has doctor ever said you had depression"
label(data$mdhx29a)="Have you ever received treatment medications and or counseling for depression"
label(data$cvrs1)="Have you ever had pain or discomfort in your chest"
label(data$cvrs1a)="Have you had any pain or discomfort in your chest since your last BLSA visit or within 2 years if first visit"
label(data$cvrs1b)="Do you get it when you walk uphill or hurry"
label(data$cvrs1c)="Do you get it when you walk at an ordinary pace on a level surface"
label(data$cvrs1d)="What do you do if you get any pain or discomfort in your chest while walking"
label(data$cvrs1e)="If you stand still is the pain relieved or not relieved"
label(data$cvrs1f)="How soon is chest pain relieved"
label(data$cvrs1g1)="Chest Pain location Middle or upper sternum"
label(data$cvrs1g2)="Chest Pain location Lower sternum"
label(data$cvrs1g3)="Chest Pain location Left anterior chest"
label(data$cvrs1g4)="Chest Pain location Left arm"
label(data$cvrs1g5)="Chest Pain location anywhere else"
label(data$cvrs1h)="Chest Pain when was your most recent episode"
label(data$cvrs1i)="Have you had severe pain across the front of your chest lasting half an hr or more since your last BLSA visit or within past 2 years"
label(data$cvrs1j)="What did your doctor say it was"
label(data$cvrs2)="Do you get pain or discomfort in either leg when you walk"
label(data$cvrs2a)="Does the leg pain begin when you are standing still or sitting"
label(data$cvrs2b)="Do you get this pain in your calf"
label(data$cvrs2c)="Do you get this pain if you walk uphill or hurry"
label(data$cvrs2d)="Do you get this pain when you walk at an ordinary pace on a level surface"
label(data$cvrs2e)="Does this leg pain ever disappear while you are still walking"
label(data$cvrs2f)="What happens to the leg pain if you stop walking and stand still"
label(data$cvrs3)="Do you get shortness of breath when you walk uphill hurry or climb single flight of stairs"
label(data$cvrs3a)="Do you get shortness of breath when walking at your own pace on a level surface"
label(data$cvrs3b)="Do you get shortness of breath when lying down flat"
label(data$cvrs4)="In the past 12 months were there times when you had a cough almost every morning"
label(data$cvrs4a)="Did you have this morning cough for a total of 3 mo or more out of the last 12 months"
label(data$cvrs5)="In the past 12 months have you had wheezing or whistling in your chest at any time"
label(data$cvrs5a)="Does your chest sound wheezy or whistling most days or nights"
label(data$cvrs5b)="Have you required medicine or treatment for any episodes of wheezing or whistling"
label(data$cvrs6)="In the past 12 months have you had to sleep on 2 or more pillows to help you breathe"
label(data$cvrs7)="In the past 12 months have you been awakened at night by trouble breathing"
label(data$cvrs8)="In the past 12 months have you had swelling of your feet or ankles"
label(data$cvrs8a)="Does this swelling tend to come on during the day and go down overnight"
label(data$cvrs9)="Since your last BLSA visit or within the past 2 years have you had any sudden loss or changes in speech"
label(data$cvrs9b)="Sudden loss or changes in speech how long did longest episode last"
label(data$cvrs10)="Since your last BLSA visit or within the past 2 years have you had any sudden loss of vision complete or partial"
label(data$cvrs10b)="Sudden loss of vision how long did the worst episode last"
label(data$cvrs11)="Since your last BLSA visit or within the past 2 years have you had any sudden spells of double vision"
label(data$cvrs11b)="Sudden spells of double vision how long did the worst episode last"
label(data$cvrs12)="Since your last BLSA visit or within the past 2 years have you had any sudden numbness tingling or loss of feeling on one side of your body"
label(data$cvrs12b)="Numbness tingling loss of feeling how long did the worst episode last"
label(data$cvrs12c)="Numbness tingling loss of feeling which side affected"
label(data$cvrs13)="Since your last BLSA visit or within the past 2 years have you had any sudden paralysis or weakness on one side of your body"
label(data$cvrs13b)="Paralysis or weakness how long did the worst episode last"
label(data$cvrs13c)="Paralysis or weakness which side affected"
label(data$cvrs14)="Since your last BLSA visit or within the past 2 years have you had any sudden spells of dizziness loss of balance or sensation of spinning"
label(data$cvrs14a)="During this time how many spells of dizziness loss of balance have you had"
label(data$cvrs14b)="Dizziness loss of balance how long did the longest episode last"
label(data$rhx1)="Have you ever been pregnant"
label(data$rhx1a)="How many pregnancies resulted in the birth of a live child"
label(data$rhx1b)="How old were you when your first child was born"
label(data$rhx2)="Have you had a hysterectomy"
label(data$rhx2a)="How old were you when you had hysterectomy"
label(data$rhx3)="Have you had one or both overies removed"
label(data$rhx3a)="Age first ovary removed"
label(data$rhx3b)="Agesecond ovary removed"
label(data$rhx4)="Have you ever taken birth control pills"
label(data$rhx5)="Have you gone through menopause"
label(data$rhx5a)="How old were you when you went through menopause"
label(data$rhx5b)="How many months ago was your last menstrual period"
label(data$rhx5c)="How many periods have you had in the last 12 months"
label(data$rhx6)="Ever taken estrogen as hormone replacement therapy"
label(data$rhx6a)="How old were you when you started taking estrogen"
label(data$rhx6b)="How many years did you take have you been taking estrogen"
label(data$rhx6c1)="Take estrogen pills"
label(data$rhx6c2)="Use estrogen patch"
label(data$rhx6c3)="Use estrogen cream"
label(data$rhx7)="Ever taken progesterone alone or along with estrogen as hormone replacement therapy"
label(data$rhx7a)="How many years did you take have you been taking progesterone"
label(data$pros1)="Ever told you had BPH benign prostatic hyperplasia or enlarged prostate"
label(data$pros1a)="Have you ever had surgery for an enlarged prostate"
label(data$pros2)="Have you experienced any pain or discomfort in the perineum testicles tip of penis pubic or bladder area"
label(data$pros2a1)="Area have pain or discomfort perineum"
label(data$pros2a2)="Area have pain or discomfort testicles"
label(data$pros2a3)="Area have pain or discomfort tip of penis"
label(data$pros2a4)="Area have pain or discomfort bladder area"
label(data$pros2a5)="Area have pain or discomfort during urination"
label(data$pros2a6)="Area have pain or discomfort during or after sexual climax"
label(data$pros2b)="In the past month how often have you had pain or discomfort"
label(data$pros2c)="Describe average pain or discomfort in any of these areas in the past month"
label(data$pros3)="In the past 6 months have you been sexually active"
label(data$pros3a)="In the past 6 months have you used any medicatins or devices to help you get and keep an erection"
label(data$pros4)="How would you rate your ability Without medication if used to get and keep an erection"
label(data$up1)="During the past month how often have you had a sensation of not emptying your bladder completely"
label(data$up2)="During the past month how often have you had to urinate less than 2 hours after you finished urinating"
label(data$up3)="During the past month how often have you found you stopped and started again several times when you urinate"
label(data$up4)="During the past month how often have you found it difficult to postpone urination"
label(data$up5)="During the past month how often have you had a weak urinary stream"
label(data$up6)="During the past month how often have you had to push or strain to begin urinatin"
label(data$up7)="During the past month how many times did you typically get up at night to urinate"
label(data$up8)="During the past month how much have your urinary symptoms kept you from doing the kings of things you usually do"
label(data$up9)="If you were to spend the rest of your life with your symptoms just the way they have been over the past month how would you feel"
label(data$up10)="Past week did you leak even a small amount of urine"
label(data$up10a)="Past week how many times did you leak urine when coughing lifting or exercising"
label(data$up10b)="Past week how many times had sense of urgency and could not get to a toilet fast enough"
label(data$up10c)="Past week how many times did you leak urine unrelated to an activity or urge to urinate"
label(data$up11)="Past 12 months did you leak even a small amount of urine"
label(data$up11a)="In the past 12 months how often have you leaked urine"
label(data$up11b)="In the past 12 months when did you leak urine"
label(data$up12)="In the past 12 months did you ever lose control of normal bowel movements"
label(data$up12a)="In the past 12 months how often have you lost control of normal bowel movements"
label(data$mchx17a)="If yes to high cholesterol are you currently taking prescribed medications for BP"
label(data$coviddx)="Has a doctor ever diagnosed you with COVID-19"
label(data$covidvac)="Did you receive a vaccination for COVID-19"
label(data$nocovidvac)="Do you plan to get a COVID-19 vaccine"
label(data$novaccom)="No covid vaccind comment"
label(data$whatvac)="What vaccine did you receive"
label(data$whenvac1)="What dates were you vaccinated First date"
label(data$whenvac2)="What dates were you vaccinated Second date if applicable"
label(data$covidcomment)="COVID comments"
label(data$cvbooster)="Did you receive a COVID-19 Booster"
label(data$booster1)="What vaccine booster did you receive 1"
label(data$whenbooster1)="What date did you receive Booster 1"
label(data$booster2)="What vaccine booster did you receive 2"
label(data$whenbooster2)="What dates were you vaccinated First date"
label(data$boostercom)="Booster comment"
label(data$auto_id_MedInt)="Unique Teleform Number"
label(data$mdhx17a)="If yes to high cholesterol are you currently taking prescribed medications for BP"
label(data$cvrs9a)="How many episodes of loss or change in speach did you have"
label(data$cvrs10a)="How many episodes of loss of vision have you had"
label(data$cvrs10c)="Worst episode which eye affected"
label(data$cvrs11a)="How many episodes of double vision have you had"
label(data$cvrs12a)="How many episodes of numbness tingling have you had"
label(data$cvrs12d)="Did abnormal sensation start in one part of body and spread to another"
label(data$cvrs13a)="How many episodes of paralysis or weakness have you had"
label(data$cvrs13d)="Did paralysis weakness start in one part of body and spread to another"
label(data$rhx4a)="How many yrs use birth control"
label(data$dhx01)="Lifetime had 4 wks or longer when daily felt sad empty or depressed"
label(data$dhx02)="Lifetime had 4 wks or longer when you lost interest in most things"
label(data$dhx03)="during period 4wks when sad did you lack energy or feel tired all the time"
label(data$dhx04)="Did you have less appetite than usual almost every day"
label(data$dhx05)="Did you lose weight without trying to as much as 2 lbs a wk for several weeks"
label(data$dhx06)="Did you have a much larger appetite than is usual for you almost every day for 2 wks or more"
label(data$dhx07)="Did increased appetite cause weight gain of 2 lbs a wk for several wks"
label(data$dhx08)="Have trouble sleeping almost every night for 4 wks or more"
label(data$dhx09)="Were you sleeping too much almost every day"
label(data$dhx10)="Were you talking or moving more slowly than is normal almost daily for 2 wks"
label(data$dhx11)="Were you unable to sit still all the time"
label(data$dhx12)="Did you feel worthless or guilty nearly every day"
label(data$dhx13)="Did you feel you were not as good as other people"
label(data$dhx14)="Have little self confidence that you wouldn't try to have your say about anything"
label(data$dhx15)="Have more trouble concentrating than normal"
label(data$dhx16)="Did you thoughts come much slower than usual"
label(data$dhx17)="Unable to makeup your mind"
label(data$dhx18)="Did you think a lot about death"
label(data$dhx19)="Feel so low you thought a lot about committing suicide"
label(data$dhx20)="Did you attempt suicide"
label(data$dhx21)="Had 2 yrs or more in your life when you felt depressed or sad most days"
label(data$dhx22)="Did any period like that ever last 2 yrs without an interruption of 2 full months when you felt ok"
label(data$dhx23)="Have trouble sleeping"
label(data$dhx24)="Sleep too much"
label(data$dhx25)="Very little appetite for food"
label(data$dhx26)="Eat much more than usual"
label(data$dhx27)="Lack energy feel tired"
label(data$dhx28)="Feel you were not as good as other people"
label(data$dhx29)="Little self confidence"
label(data$dhx30)="A lot more trouble concentrating"
label(data$dhx31)="Unable to make up your mind"
label(data$dhx32)="Were you often in tears"
label(data$dhx33)="Feel hopeless"
label(data$dhx34)="Feel you could not cope with your everyday life and responsibilities"
label(data$dhx35)="Feel that your life had always been bad and wasn't going to get any better"
label(data$dhx36)="No longer wanted to spend time with friends and relatives"
label(data$dhx37)="Less talkative than is usual"
label(data$dhx38)="Lose interest in most things"
label(data$dhx39)="Interest in sex a lot less than usual"
label(data$crf_parent_name_MedInt)="CRF Parent Name"
label(data$item_group_repeat_MedInt)="Item Group Repeate"
label(data$mdh19a19e_1)="Type of treatment for cancers : Chemotherapy (Checkbox Indicator)"
label(data$mdh19a19e_2)="Type of treatment for cancers : Radiation (Checkbox Indicator)"
label(data$mdh19a19e_3)="Type of treatment for cancers : Surgery (Checkbox Indicator)"
label(data$study_name_MedInt)="Study Name"

#Create new variables for factors
data$mdhxtyp.factor = factor(data$mdhxtyp, levels = c("0","1","2","3","4"))
levels(data$mdhxtyp.factor) = c("Participant only","Participant and proxy","Proxy only","Telephone interview","Interview not done")

data$mdhx1.factor = factor(data$mdhx1, levels = c("0","1","7","8"))
levels(data$mdhx1.factor) = c("No","Yes","Refused","Do not know")

data$mdhx2.factor = factor(data$mdhx2, levels = c("1","2","3","4","5","7","8"))
levels(data$mdhx2.factor) = c("At least annually","At least biannually","At least every 5 years","Less than every 5 years","Does not get routine exams","Refused","Do not know")

data$mdhx2f1.factor = factor(data$mdhx2f1, levels = c("0","1","7","8"))
levels(data$mdhx2f1.factor) = c("No","Yes","Refused","Do not know")

data$mdhx2f2.factor = factor(data$mdhx2f2, levels = c("0","1","7","8"))
levels(data$mdhx2f2.factor) = c("No","Yes","Refused","Do not know")

data$mdhx3.factor = factor(data$mdhx3, levels = c("0","1","7","8"))
levels(data$mdhx3.factor) = c("No","Yes","Refused","Do not know")

data$mdhx3a.factor = factor(data$mdhx3a, levels = c("1","2","3","4","7","8"))
levels(data$mdhx3a.factor) = c("Within 1 year","Within 2 years","Within 5 years","Over 5 years","Refused","Dont know")

data$mdhx4.factor = factor(data$mdhx4, levels = c("0","1","7","8"))
levels(data$mdhx4.factor) = c("No","Yes","Refused","Do not know")

data$mdhx5.factor = factor(data$mdhx5, levels = c("0","1","7","8"))
levels(data$mdhx5.factor) = c("No","Yes","Refused","Do not know")

data$mdhx6.factor = factor(data$mdhx6, levels = c("0","1","7","8"))
levels(data$mdhx6.factor) = c("No","Yes","Refused","Do not know")

data$mdhx7.factor = factor(data$mdhx7, levels = c("0","1","7","8"))
levels(data$mdhx7.factor) = c("No","Yes","Refused","Do not know")

data$mdhx7a.factor = factor(data$mdhx7a, levels = c("0","1","7","8"))
levels(data$mdhx7a.factor) = c("No","Yes","Refused","Do not know")

data$mdhx8.factor = factor(data$mdhx8, levels = c("0","1","7","8"))
levels(data$mdhx8.factor) = c("No","Yes","Refused","Do not know")

data$mdhx9.factor = factor(data$mdhx9, levels = c("0","1","7","8"))
levels(data$mdhx9.factor) = c("No","Yes","Refused","Do not know")

data$mdhx10.factor = factor(data$mdhx10, levels = c("0","1","7","8"))
levels(data$mdhx10.factor) = c("No","Yes","Refused","Do not know")

data$mdhx11.factor = factor(data$mdhx11, levels = c("0","1","7","8"))
levels(data$mdhx11.factor) = c("No","Yes","Refused","Do not know")

data$mdhx12.factor = factor(data$mdhx12, levels = c("0","1","7","8"))
levels(data$mdhx12.factor) = c("No","Yes","Refused","Do not know")

data$mdhx12a.factor = factor(data$mdhx12a, levels = c("1","2","3","4","7","8"))
levels(data$mdhx12a.factor) = c("Within 1 year","Within 2 years","Within 5 years","Over 5 years","Refused","Dont know")

data$mdhx13.factor = factor(data$mdhx13, levels = c("0","1","7","8"))
levels(data$mdhx13.factor) = c("No","Yes","Refused","Do not know")

data$mdhx13a.factor = factor(data$mdhx13a, levels = c("1","2","3","4","7","8"))
levels(data$mdhx13a.factor) = c("Within 1 year","Within 2 years","Within 5 years","Over 5 years","Refused","Dont know")

data$mdhx14.factor = factor(data$mdhx14, levels = c("0","1","7","8"))
levels(data$mdhx14.factor) = c("No","Yes","Refused","Do not know")

data$mdhx15.factor = factor(data$mdhx15, levels = c("0","1","7","8"))
levels(data$mdhx15.factor) = c("No","Yes","Refused","Do not know")

data$mdhx15a.factor = factor(data$mdhx15a, levels = c("0","1","7","8"))
levels(data$mdhx15a.factor) = c("No","Yes","Refused","Do not know")

data$mdhx15b.factor = factor(data$mdhx15b, levels = c("0","1","7","8"))
levels(data$mdhx15b.factor) = c("No","Yes","Refused","Do not know")

data$mdhx15c.factor = factor(data$mdhx15c, levels = c("0","1","7","8"))
levels(data$mdhx15c.factor) = c("No","Yes","Refused","Do not know")

data$mdhx16.factor = factor(data$mdhx16, levels = c("0","1","7","8"))
levels(data$mdhx16.factor) = c("No","Yes","Refused","Do not know")

data$mdhx16a.factor = factor(data$mdhx16a, levels = c("0","1","7","8"))
levels(data$mdhx16a.factor) = c("No","Yes","Refused","Do not know")

data$mdhx16b.factor = factor(data$mdhx16b, levels = c("0","1","7","8"))
levels(data$mdhx16b.factor) = c("No","Yes","Refused","Do not know")

data$mdhx16c.factor = factor(data$mdhx16c, levels = c("0","1","7","8"))
levels(data$mdhx16c.factor) = c("No","Yes","Refused","Do not know")

data$mdhx17.factor = factor(data$mdhx17, levels = c("0","1","7","8"))
levels(data$mdhx17.factor) = c("No","Yes","Refused","Do not know")

data$mdhx17b.factor = factor(data$mdhx17b, levels = c("0","1","7","8"))
levels(data$mdhx17b.factor) = c("No","Yes","Refused","Do not know")

data$mdhx17c.factor = factor(data$mdhx17c, levels = c("0","1","7","8"))
levels(data$mdhx17c.factor) = c("No","Yes","Refused","Do not know")

data$mdhx18.factor = factor(data$mdhx18, levels = c("0","1","7","8"))
levels(data$mdhx18.factor) = c("No","Yes","Refused","Do not know")

data$mdhx18a1.factor = factor(data$mdhx18a1, levels = c("0","1","8"))
levels(data$mdhx18a1.factor) = c("No","Yes","Do not know")

data$mdhx18a2.factor = factor(data$mdhx18a2, levels = c("0","1","8"))
levels(data$mdhx18a2.factor) = c("No","Yes","Do not know")

data$mdhx18a3.factor = factor(data$mdhx18a3, levels = c("0","1","8"))
levels(data$mdhx18a3.factor) = c("No","Yes","Do not know")

data$mdhx18a4.factor = factor(data$mdhx18a4, levels = c("0","1","8"))
levels(data$mdhx18a4.factor) = c("No","Yes","Do not know")

data$mdhx18a5.factor = factor(data$mdhx18a5, levels = c("0","1","8"))
levels(data$mdhx18a5.factor) = c("No","Yes","Do not know")

data$mdhx18a6.factor = factor(data$mdhx18a6, levels = c("0","1","8"))
levels(data$mdhx18a6.factor) = c("No","Yes","Do not know")

data$mdhx19.factor = factor(data$mdhx19, levels = c("0","1","7","8"))
levels(data$mdhx19.factor) = c("No","Yes","Refused","Do not know")

data$mdh19a1.factor = factor(data$mdh19a1, levels = c("0","1"))
levels(data$mdh19a1.factor) = c("No","Yes")

data$mdh19c1.factor = factor(data$mdh19c1, levels = c("0","1"))
levels(data$mdh19c1.factor) = c("No","Yes")

data$mdh19a2.factor = factor(data$mdh19a2, levels = c("0","1"))
levels(data$mdh19a2.factor) = c("No","Yes")

data$mdh19c2.factor = factor(data$mdh19c2, levels = c("0","1"))
levels(data$mdh19c2.factor) = c("No","Yes")

data$mdh19a3.factor = factor(data$mdh19a3, levels = c("0","1"))
levels(data$mdh19a3.factor) = c("No","Yes")

data$mdh19c3.factor = factor(data$mdh19c3, levels = c("0","1"))
levels(data$mdh19c3.factor) = c("No","Yes")

data$mdh19a4.factor = factor(data$mdh19a4, levels = c("0","1"))
levels(data$mdh19a4.factor) = c("No","Yes")

data$mdh19c4.factor = factor(data$mdh19c4, levels = c("0","1"))
levels(data$mdh19c4.factor) = c("No","Yes")

data$mdh19a5.factor = factor(data$mdh19a5, levels = c("0","1"))
levels(data$mdh19a5.factor) = c("No","Yes")

data$mdh19c5.factor = factor(data$mdh19c5, levels = c("0","1"))
levels(data$mdh19c5.factor) = c("No","Yes")

data$mdh19a6.factor = factor(data$mdh19a6, levels = c("0","1"))
levels(data$mdh19a6.factor) = c("No","Yes")

data$mdh19c6.factor = factor(data$mdh19c6, levels = c("0","1"))
levels(data$mdh19c6.factor) = c("No","Yes")

data$mdh19a7.factor = factor(data$mdh19a7, levels = c("0","1"))
levels(data$mdh19a7.factor) = c("No","Yes")

data$mdh19c7.factor = factor(data$mdh19c7, levels = c("0","1"))
levels(data$mdh19c7.factor) = c("No","Yes")

data$mdh19a8.factor = factor(data$mdh19a8, levels = c("0","1"))
levels(data$mdh19a8.factor) = c("No","Yes")

data$mdh19c8.factor = factor(data$mdh19c8, levels = c("0","1"))
levels(data$mdh19c8.factor) = c("No","Yes")

data$mdh19a9.factor = factor(data$mdh19a9, levels = c("0","1"))
levels(data$mdh19a9.factor) = c("No","Yes")

data$mdh19c9.factor = factor(data$mdh19c9, levels = c("0","1"))
levels(data$mdh19c9.factor) = c("No","Yes")

data$mdh19a10.factor = factor(data$mdh19a10, levels = c("0","1"))
levels(data$mdh19a10.factor) = c("No","Yes")

data$mdh19c10.factor = factor(data$mdh19c10, levels = c("0","1"))
levels(data$mdh19c10.factor) = c("No","Yes")

data$mdh19a11.factor = factor(data$mdh19a11, levels = c("0","1"))
levels(data$mdh19a11.factor) = c("No","Yes")

data$mdh19c11.factor = factor(data$mdh19c11, levels = c("0","1"))
levels(data$mdh19c11.factor) = c("No","Yes")

data$mdh19a12.factor = factor(data$mdh19a12, levels = c("0","1"))
levels(data$mdh19a12.factor) = c("No","Yes")

data$mdh19c12.factor = factor(data$mdh19c12, levels = c("0","1"))
levels(data$mdh19c12.factor) = c("No","Yes")

data$mdh19a13.factor = factor(data$mdh19a13, levels = c("0","1"))
levels(data$mdh19a13.factor) = c("No","Yes")

data$mdh19c13.factor = factor(data$mdh19c13, levels = c("0","1"))
levels(data$mdh19c13.factor) = c("No","Yes")

data$mdh19a14.factor = factor(data$mdh19a14, levels = c("0","1"))
levels(data$mdh19a14.factor) = c("No","Yes")

data$mdh19c14.factor = factor(data$mdh19c14, levels = c("0","1"))
levels(data$mdh19c14.factor) = c("No","Yes")

data$mdh19a15.factor = factor(data$mdh19a15, levels = c("0","1"))
levels(data$mdh19a15.factor) = c("No","Yes")

data$mdh19c15.factor = factor(data$mdh19c15, levels = c("0","1"))
levels(data$mdh19c15.factor) = c("No","Yes")

data$mdh19a16.factor = factor(data$mdh19a16, levels = c("0","1"))
levels(data$mdh19a16.factor) = c("No","Yes")

data$mdh19c16.factor = factor(data$mdh19c16, levels = c("0","1"))
levels(data$mdh19c16.factor) = c("No","Yes")

data$mdh19a17.factor = factor(data$mdh19a17, levels = c("0","1"))
levels(data$mdh19a17.factor) = c("No","Yes")

data$mdh19c17.factor = factor(data$mdh19c17, levels = c("0","1"))
levels(data$mdh19c17.factor) = c("No","Yes")

data$mdh19a18.factor = factor(data$mdh19a18, levels = c("0","1"))
levels(data$mdh19a18.factor) = c("No","Yes")

data$mdh19c18.factor = factor(data$mdh19c18, levels = c("0","1"))
levels(data$mdh19c18.factor) = c("No","Yes")

data$mdh19a19.factor = factor(data$mdh19a19, levels = c("0","1"))
levels(data$mdh19a19.factor) = c("No","Yes")

data$mdh19d19.factor = factor(data$mdh19d19, levels = c("0","1"))
levels(data$mdh19d19.factor) = c("No","Yes")

data$mdhx20.factor = factor(data$mdhx20, levels = c("0","1","7","8"))
levels(data$mdhx20.factor) = c("No","Yes","Refused","Do not know")

data$mdhx20a1.factor = factor(data$mdhx20a1, levels = c("0","1","8"))
levels(data$mdhx20a1.factor) = c("No","Yes","Do not know")

data$mdhx20a2.factor = factor(data$mdhx20a2, levels = c("0","1","8"))
levels(data$mdhx20a2.factor) = c("No","Yes","Do not know")

data$mdhx20a3.factor = factor(data$mdhx20a3, levels = c("0","1","8"))
levels(data$mdhx20a3.factor) = c("No","Yes","Do not know")

data$mdhx20a4.factor = factor(data$mdhx20a4, levels = c("0","1","8"))
levels(data$mdhx20a4.factor) = c("No","Yes","Do not know")

data$mdhx20a5.factor = factor(data$mdhx20a5, levels = c("0","1","8"))
levels(data$mdhx20a5.factor) = c("No","Yes","Do not know")

data$mdhx20a6.factor = factor(data$mdhx20a6, levels = c("0","1","8"))
levels(data$mdhx20a6.factor) = c("No","Yes","Do not know")

data$mdhx20a7.factor = factor(data$mdhx20a7, levels = c("0","1","8"))
levels(data$mdhx20a7.factor) = c("No","Yes","Do not know")

data$mdhx21.factor = factor(data$mdhx21, levels = c("0","1","7","8"))
levels(data$mdhx21.factor) = c("No","Yes","Refused","Do not know")

data$mdhx22.factor = factor(data$mdhx22, levels = c("0","1","7","8"))
levels(data$mdhx22.factor) = c("No","Yes","Refused","Do not know")

data$mdhx22a.factor = factor(data$mdhx22a, levels = c("0","1","7","8"))
levels(data$mdhx22a.factor) = c("No","Yes","Refused","Do not know")

data$mdhx23.factor = factor(data$mdhx23, levels = c("0","1","7","8"))
levels(data$mdhx23.factor) = c("No","Yes","Refused","Do not know")

data$mdhx24.factor = factor(data$mdhx24, levels = c("0","1","7","8"))
levels(data$mdhx24.factor) = c("No","Yes","Refused","Do not know")

data$mdhx25.factor = factor(data$mdhx25, levels = c("0","1","7","8"))
levels(data$mdhx25.factor) = c("No","Yes","Refused","Do not know")

data$mdhx26.factor = factor(data$mdhx26, levels = c("0","1","7","8"))
levels(data$mdhx26.factor) = c("No","Yes","Refused","Do not know")

data$mdhx27a.factor = factor(data$mdhx27a, levels = c("0","1","8"))
levels(data$mdhx27a.factor) = c("No","Yes","Do not know")

data$mdhx27aa.factor = factor(data$mdhx27aa, levels = c("1","2","3"))
levels(data$mdhx27aa.factor) = c("Right eye only","Left eye only","Both eyes")

data$mdhx27b.factor = factor(data$mdhx27b, levels = c("0","1","8"))
levels(data$mdhx27b.factor) = c("No","Yes","Dont know")

data$mdhx27f.factor = factor(data$mdhx27f, levels = c("0","1","8"))
levels(data$mdhx27f.factor) = c("No","Yes","Dont know")

data$mdhx27g.factor = factor(data$mdhx27g, levels = c("1","2","3"))
levels(data$mdhx27g.factor) = c("Right eye only","Left eye only","Both eyes")

data$mdhx27c.factor = factor(data$mdhx27c, levels = c("0","1","8"))
levels(data$mdhx27c.factor) = c("No","Yes","Do not know")

data$mdhx27cc.factor = factor(data$mdhx27cc, levels = c("1","2","3"))
levels(data$mdhx27cc.factor) = c("Right eye only","Left eye only","Both eyes")

data$mdhx27d.factor = factor(data$mdhx27d, levels = c("0","1","8"))
levels(data$mdhx27d.factor) = c("No","Yes","Do not know")

data$mdhx27dd.factor = factor(data$mdhx27dd, levels = c("1","2","3"))
levels(data$mdhx27dd.factor) = c("Right eye only","Left eye only","Both eyes")

data$mdhx27e.factor = factor(data$mdhx27e, levels = c("0","1","8"))
levels(data$mdhx27e.factor) = c("No","Yes","Do not know")

data$mdhx27ee.factor = factor(data$mdhx27ee, levels = c("1","2","3"))
levels(data$mdhx27ee.factor) = c("Right eye only","Left eye only","Both eyes")

data$mdhx27i.factor = factor(data$mdhx27i, levels = c("0","1","8"))
levels(data$mdhx27i.factor) = c("No","Yes","Do not know")

data$mdhx27j.factor = factor(data$mdhx27j, levels = c("0","1","3","4","7","8"))
levels(data$mdhx27j.factor) = c("Never","Sometimes","Often","Constantly","Refused","Dont know")

data$mdhx27k.factor = factor(data$mdhx27k, levels = c("0","1","3","4","7","8"))
levels(data$mdhx27k.factor) = c("Never","Sometimes","Often","Constantly","Refused","Dont know")

data$mdhx28.factor = factor(data$mdhx28, levels = c("0","1","7","8"))
levels(data$mdhx28.factor) = c("No","Yes","Refused","Do not know")

data$mdhx28a.factor = factor(data$mdhx28a, levels = c("0","1","7","8"))
levels(data$mdhx28a.factor) = c("No","Yes","Refused","Do not know")

data$mdhx29.factor = factor(data$mdhx29, levels = c("0","1","7","8"))
levels(data$mdhx29.factor) = c("No","Yes","Refused","Do not know")

data$mdhx29a.factor = factor(data$mdhx29a, levels = c("0","1","7","8"))
levels(data$mdhx29a.factor) = c("No","Yes","Refused","Do not know")

data$cvrs1.factor = factor(data$cvrs1, levels = c("0","1","7","8"))
levels(data$cvrs1.factor) = c("No","Yes","Refused","Do not know")

data$cvrs1a.factor = factor(data$cvrs1a, levels = c("0","1","7","8"))
levels(data$cvrs1a.factor) = c("No","Yes","Refused","Do not know")

data$cvrs1b.factor = factor(data$cvrs1b, levels = c("0","1","2","7","8"))
levels(data$cvrs1b.factor) = c("No","Yes","Never hurry/walk uphill","Refused","Do not know")

data$cvrs1c.factor = factor(data$cvrs1c, levels = c("0","1","7","8"))
levels(data$cvrs1c.factor) = c("No","Yes","Refused","Do not know")

data$cvrs1d.factor = factor(data$cvrs1d, levels = c("1","2","3","7","8"))
levels(data$cvrs1d.factor) = c("Stop/slow down","Take nitroglycerine","Continue at same pace","Refused","Dont know")

data$cvrs1e.factor = factor(data$cvrs1e, levels = c("1","2","7","8"))
levels(data$cvrs1e.factor) = c("Relieved","Not relieved"," Dont know","Refused")

data$cvrs1f.factor = factor(data$cvrs1f, levels = c("1","2","8"))
levels(data$cvrs1f.factor) = c("10 minutes or less","More than 10 minutes"," Dont know")

data$cvrs1g1.factor = factor(data$cvrs1g1, levels = c("0","1","8"))
levels(data$cvrs1g1.factor) = c("No","Yes","Dont know")

data$cvrs1g2.factor = factor(data$cvrs1g2, levels = c("0","1","8"))
levels(data$cvrs1g2.factor) = c("No","Yes","Dont know")

data$cvrs1g3.factor = factor(data$cvrs1g3, levels = c("0","1","8"))
levels(data$cvrs1g3.factor) = c("No","Yes","Dont know")

data$cvrs1g4.factor = factor(data$cvrs1g4, levels = c("0","1","8"))
levels(data$cvrs1g4.factor) = c("No","Yes","Dont know")

data$cvrs1g5.factor = factor(data$cvrs1g5, levels = c("0","1","8"))
levels(data$cvrs1g5.factor) = c("No","Yes","Dont know")

data$cvrs1h.factor = factor(data$cvrs1h, levels = c("1","2","3","4","5","8"))
levels(data$cvrs1h.factor) = c("Past month"," Past 3 months","Past 6 months","Past 12 months","Over 12 months ago","Dont know")

data$cvrs1i.factor = factor(data$cvrs1i, levels = c("0","1","7","8"))
levels(data$cvrs1i.factor) = c("No","Yes","Refused","Do not know")

data$cvrs1j.factor = factor(data$cvrs1j, levels = c("0","1","2","3","7","8"))
levels(data$cvrs1j.factor) = c("Did not see doctor","Angina","Heart attack","Gas/Indigestion","Refused","Dont know")

data$cvrs2.factor = factor(data$cvrs2, levels = c("0","1","7","8"))
levels(data$cvrs2.factor) = c("No","Yes","Refused","Do not know")

data$cvrs2a.factor = factor(data$cvrs2a, levels = c("0","1","7","8"))
levels(data$cvrs2a.factor) = c("No","Yes","Refused","Do not know")

data$cvrs2b.factor = factor(data$cvrs2b, levels = c("0","1","7","8"))
levels(data$cvrs2b.factor) = c("No","Yes","Refused","Do not know")

data$cvrs2c.factor = factor(data$cvrs2c, levels = c("0","1","7","8"))
levels(data$cvrs2c.factor) = c("No","Yes","Refused","Do not know")

data$cvrs2d.factor = factor(data$cvrs2d, levels = c("0","1","7","8"))
levels(data$cvrs2d.factor) = c("No","Yes","Refused","Do not know")

data$cvrs2e.factor = factor(data$cvrs2e, levels = c("0","1","7","8"))
levels(data$cvrs2e.factor) = c("No","Yes","Refused","Do not know")

data$cvrs2f.factor = factor(data$cvrs2f, levels = c("1","2","7","8"))
levels(data$cvrs2f.factor) = c("Disappear in 10 minutes or less","Continue for more than 10 minuters","Refused","Dont know")

data$cvrs3.factor = factor(data$cvrs3, levels = c("0","1","7","8"))
levels(data$cvrs3.factor) = c("No","Yes","Refused","Do not know")

data$cvrs3a.factor = factor(data$cvrs3a, levels = c("0","1","7","8"))
levels(data$cvrs3a.factor) = c("No","Yes","Refused","Do not know")

data$cvrs3b.factor = factor(data$cvrs3b, levels = c("0","1","7","8"))
levels(data$cvrs3b.factor) = c("No","Yes","Refused","Do not know")

data$cvrs4.factor = factor(data$cvrs4, levels = c("0","1","7","8"))
levels(data$cvrs4.factor) = c("No","Yes","Refused","Do not know")

data$cvrs4a.factor = factor(data$cvrs4a, levels = c("0","1","7","8"))
levels(data$cvrs4a.factor) = c("No","Yes","Refused","Do not know")

data$cvrs5.factor = factor(data$cvrs5, levels = c("0","1","7","8"))
levels(data$cvrs5.factor) = c("No","Yes","Refused","Do not know")

data$cvrs5a.factor = factor(data$cvrs5a, levels = c("0","1","7","8"))
levels(data$cvrs5a.factor) = c("No","Yes","Refused","Do not know")

data$cvrs5b.factor = factor(data$cvrs5b, levels = c("0","1","7","8"))
levels(data$cvrs5b.factor) = c("No","Yes","Refused","Do not know")

data$cvrs6.factor = factor(data$cvrs6, levels = c("0","1","7","8"))
levels(data$cvrs6.factor) = c("No","Yes","Refused","Do not know")

data$cvrs7.factor = factor(data$cvrs7, levels = c("0","1","7","8"))
levels(data$cvrs7.factor) = c("No","Yes","Refused","Do not know")

data$cvrs8.factor = factor(data$cvrs8, levels = c("0","1","7","8"))
levels(data$cvrs8.factor) = c("No","Yes","Refused","Do not know")

data$cvrs8a.factor = factor(data$cvrs8a, levels = c("0","1","7","8"))
levels(data$cvrs8a.factor) = c("No","Yes","Refused","Do not know")

data$cvrs9.factor = factor(data$cvrs9, levels = c("0","1","7","8"))
levels(data$cvrs9.factor) = c("No","Yes","Refused","Do not know")

data$cvrs9b.factor = factor(data$cvrs9b, levels = c("1","2","3","7","8"))
levels(data$cvrs9b.factor) = c("Less than 1 hour","At least 1 but < 24hr"," 24 or more hours","Refused"," Dont know")

data$cvrs10.factor = factor(data$cvrs10, levels = c("0","1","7","8"))
levels(data$cvrs10.factor) = c("No","Yes","Refused","Do not know")

data$cvrs10b.factor = factor(data$cvrs10b, levels = c("1","2","3","7","8"))
levels(data$cvrs10b.factor) = c("Less than 1 hour","At least 1 but < 24hr"," 24 or more hours","Refused"," Dont know")

data$cvrs11.factor = factor(data$cvrs11, levels = c("0","1","7","8"))
levels(data$cvrs11.factor) = c("No","Yes","Refused","Do not know")

data$cvrs11b.factor = factor(data$cvrs11b, levels = c("1","2","3","7","8"))
levels(data$cvrs11b.factor) = c("Less than 1 hour","At least 1 but < 24hr"," 24 or more hours","Refused"," Dont know")

data$cvrs12.factor = factor(data$cvrs12, levels = c("0","1","7","8"))
levels(data$cvrs12.factor) = c("No","Yes","Refused","Do not know")

data$cvrs12b.factor = factor(data$cvrs12b, levels = c("1","2","3","7","8"))
levels(data$cvrs12b.factor) = c("Less than 1 hour","At least 1 but < 24hr"," 24 or more hours","Refused"," Dont know")

data$cvrs12c.factor = factor(data$cvrs12c, levels = c("1","2","3","7","8"))
levels(data$cvrs12c.factor) = c("Right side only","Left side only","Both sides","Refused","Dont know")

data$cvrs13.factor = factor(data$cvrs13, levels = c("0","1","7","8"))
levels(data$cvrs13.factor) = c("No","Yes","Refused","Do not know")

data$cvrs13b.factor = factor(data$cvrs13b, levels = c("1","2","3","7","8"))
levels(data$cvrs13b.factor) = c("Less than 1 hour","At least 1 but < 24hr"," 24 or more hours","Refused"," Dont know")

data$cvrs13c.factor = factor(data$cvrs13c, levels = c("1","2","3","7","8"))
levels(data$cvrs13c.factor) = c("Right side only","Left side only","Both sides","Refused","Dont know")

data$cvrs14.factor = factor(data$cvrs14, levels = c("0","1","7","8"))
levels(data$cvrs14.factor) = c("No","Yes","Refused","Do not know")

data$cvrs14a.factor = factor(data$cvrs14a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$cvrs14a.factor) = c("1","2","3","4","5","6 or more","Refused","Dont know")

data$cvrs14b.factor = factor(data$cvrs14b, levels = c("1","2","3","7","8"))
levels(data$cvrs14b.factor) = c("Less than 1 hour","At least 1 but < 24hr"," 24 or more hours","Refused"," Dont know")

data$rhx1.factor = factor(data$rhx1, levels = c("0","1","7","8"))
levels(data$rhx1.factor) = c("No","Yes","Refused","Do not know")

data$rhx2.factor = factor(data$rhx2, levels = c("0","1","7","8"))
levels(data$rhx2.factor) = c("No","Yes","Refused","Do not know")

data$rhx3.factor = factor(data$rhx3, levels = c("0","1","2","7","8"))
levels(data$rhx3.factor) = c("No","One","Both","Refused","Dont know")

data$rhx4.factor = factor(data$rhx4, levels = c("0","1","2","7","8"))
levels(data$rhx4.factor) = c("No","Yes in the past","Yes currently","Refused","Dont know")

data$rhx5.factor = factor(data$rhx5, levels = c("0","1","7","8"))
levels(data$rhx5.factor) = c("No","Yes","Refused","Do not know")

data$rhx6.factor = factor(data$rhx6, levels = c("0","1","2","3","7","8"))
levels(data$rhx6.factor) = c("No","Yes currently","Yes in the past","Pre-/perimenopausal","Refused","Dont know")

data$rhx6c1.factor = factor(data$rhx6c1, levels = c("0","1"))
levels(data$rhx6c1.factor) = c("No","Yes")

data$rhx6c2.factor = factor(data$rhx6c2, levels = c("0","1"))
levels(data$rhx6c2.factor) = c("No","Yes")

data$rhx6c3.factor = factor(data$rhx6c3, levels = c("0","1"))
levels(data$rhx6c3.factor) = c("No","Yes")

data$rhx7.factor = factor(data$rhx7, levels = c("0","1","2","3","7","8"))
levels(data$rhx7.factor) = c("No","Yes currently","Yes in the past","Pre-/perimenopausal","Refused","Dont know")

data$pros1.factor = factor(data$pros1, levels = c("0","1","7","8"))
levels(data$pros1.factor) = c("No","Yes","Refused","Do not know")

data$pros1a.factor = factor(data$pros1a, levels = c("0","1","7","8"))
levels(data$pros1a.factor) = c("No","Yes","Refused","Do not know")

data$pros2.factor = factor(data$pros2, levels = c("0","1","7","8"))
levels(data$pros2.factor) = c("No","Yes","Refused","Do not know")

data$pros2a1.factor = factor(data$pros2a1, levels = c("0","1","7","8"))
levels(data$pros2a1.factor) = c("No","Yes","Refused","Do not know")

data$pros2a2.factor = factor(data$pros2a2, levels = c("0","1","7","8"))
levels(data$pros2a2.factor) = c("No","Yes","Refused","Do not know")

data$pros2a3.factor = factor(data$pros2a3, levels = c("0","1","7","8"))
levels(data$pros2a3.factor) = c("No","Yes","Refused","Do not know")

data$pros2a4.factor = factor(data$pros2a4, levels = c("0","1","7","8"))
levels(data$pros2a4.factor) = c("No","Yes","Refused","Do not know")

data$pros2a5.factor = factor(data$pros2a5, levels = c("0","1","7","8"))
levels(data$pros2a5.factor) = c("No","Yes","Refused","Do not know")

data$pros2a6.factor = factor(data$pros2a6, levels = c("0","1","7","8"))
levels(data$pros2a6.factor) = c("No","Yes","Refused","Do not know")

data$pros2b.factor = factor(data$pros2b, levels = c("0","1","2","3","4","5","7","8"))
levels(data$pros2b.factor) = c("Never","Rarely","Sometimes","Often","Usually","Always","Refused","Dont know")

data$pros2c.factor = factor(data$pros2c, levels = c("0","1","10","2","3","4","5","6","7","77","8","88","9"))
levels(data$pros2c.factor) = c("0 no pain","1","10 pain as bad as you can imagine","2","3","4","5","6","7","Refused","8","Dont know","9")

data$pros3.factor = factor(data$pros3, levels = c("0","1","7","8"))
levels(data$pros3.factor) = c("No","Yes","Refused","Do not know")

data$pros3a.factor = factor(data$pros3a, levels = c("0","1","7","8"))
levels(data$pros3a.factor) = c("No","Yes","Refused","Do not know")

data$pros4.factor = factor(data$pros4, levels = c("1","2","3","4","5","7","8"))
levels(data$pros4.factor) = c("Very low","Low","Moderate","High","Very high","Refused","Dont know")

data$up1.factor = factor(data$up1, levels = c("0","1","2","3","4","5","7","8"))
levels(data$up1.factor) = c("Not at all","Less than 1 time in 5","Less than half the time"," About half the time"," More than half the time"," Almost always","Refused","Dont know")

data$up2.factor = factor(data$up2, levels = c("0","1","2","3","4","5","7","8"))
levels(data$up2.factor) = c("Not at all","Less than 1 time in 5","Less than half the time"," About half the time"," More than half the time"," Almost always","Refused","Dont know")

data$up3.factor = factor(data$up3, levels = c("0","1","2","3","4","5","7","8"))
levels(data$up3.factor) = c("Not at all","Less than 1 time in 5","Less than half the time"," About half the time"," More than half the time"," Almost always","Refused","Dont know")

data$up4.factor = factor(data$up4, levels = c("0","1","2","3","4","5","7","8"))
levels(data$up4.factor) = c("Not at all","Less than 1 time in 5","Less than half the time"," About half the time"," More than half the time"," Almost always","Refused","Dont know")

data$up5.factor = factor(data$up5, levels = c("0","1","2","3","4","5","7","8"))
levels(data$up5.factor) = c("Not at all","Less than 1 time in 5","Less than half the time"," About half the time"," More than half the time"," Almost always","Refused","Dont know")

data$up6.factor = factor(data$up6, levels = c("0","1","2","3","4","5","7","8"))
levels(data$up6.factor) = c("Not at all","Less than 1 time in 5","Less than half the time"," About half the time"," More than half the time"," Almost always","Refused","Dont know")

data$up7.factor = factor(data$up7, levels = c("0","1","2","3","4","5","7","8"))
levels(data$up7.factor) = c("None","One time","Two times","Three times","Four times","Five or more times","Refused","Dont know")

data$up8.factor = factor(data$up8, levels = c("0","1","3","4","7","8"))
levels(data$up8.factor) = c("None","Only a little","Some","A lot","Refused","Dont know")

data$up9.factor = factor(data$up9, levels = c("0","1","2","3","4","7","8"))
levels(data$up9.factor) = c("Very satisfied","Mostly satisfied","Mixed","Mostly dissatisfied","Very dissatisfied","Refused","Dont know")

data$up10.factor = factor(data$up10, levels = c("0","1","7","8"))
levels(data$up10.factor) = c("No","Yes","Refused","Do not know")

data$up11.factor = factor(data$up11, levels = c("0","1","7","8"))
levels(data$up11.factor) = c("No","Yes","Refused","Do not know")

data$up11a.factor = factor(data$up11a, levels = c("0","1","2","3","7","8"))
levels(data$up11a.factor) = c("Less than once per month","One or more times per month","One or more times per week","Every day","Refused","Dont know")

data$up11b.factor = factor(data$up11b, levels = c("1","2","3","4","7","8"))
levels(data$up11b.factor) = c("With an activity like coughing lifting or exercising","When you have the urge to urinate but cant get to a toilet fast enough","You leak urine unrelated to an activity or urge","Both with activy and inability to get to toilet fast enough","Refused","Dont know")

data$up12.factor = factor(data$up12, levels = c("0","1","7","8"))
levels(data$up12.factor) = c("No","Yes","Refused","Do not know")

data$up12a.factor = factor(data$up12a, levels = c("0","1","2","3","7","8"))
levels(data$up12a.factor) = c("Less than once per month","One or more times per month","One or more times per week","Every day","Refused","Dont know")

data$mchx17a.factor = factor(data$mchx17a, levels = c("0","1","7","8"))
levels(data$mchx17a.factor) = c("No","Yes","Refused","Do not know")

data$coviddx.factor = factor(data$coviddx, levels = c("0","1","7","8"))
levels(data$coviddx.factor) = c("No","Yes","Refused","Do not know")

data$covidvac.factor = factor(data$covidvac, levels = c("0","1"))
levels(data$covidvac.factor) = c("No","Yes")

data$nocovidvac.factor = factor(data$nocovidvac, levels = c("0","1","7","8"))
levels(data$nocovidvac.factor) = c("No","Yes","Refused","Do not know")

data$whatvac.factor = factor(data$whatvac, levels = c("1","2","3","4"))
levels(data$whatvac.factor) = c("Pfizer","Moderna","Johnson and Johnson","Other")

data$cvbooster.factor = factor(data$cvbooster, levels = c("0","1"))
levels(data$cvbooster.factor) = c("No","Yes")

data$booster1.factor = factor(data$booster1, levels = c("1","2","3","4"))
levels(data$booster1.factor) = c("Pfizer","Moderna","Johnson and Johnson"," Other")

data$booster2.factor = factor(data$booster2, levels = c("1","2","3","4"))
levels(data$booster2.factor) = c("Pfizer","Moderna","Johnson and Johnson"," Other")

data$mdhx17a.factor = factor(data$mdhx17a, levels = c("0","1","7","8"))
levels(data$mdhx17a.factor) = c("No","Yes","Refused","Do not know")

data$cvrs9a.factor = factor(data$cvrs9a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$cvrs9a.factor) = c("1","2","3","4","5","6 or more","Refused","Dont know")

data$cvrs10a.factor = factor(data$cvrs10a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$cvrs10a.factor) = c("1","2","3","4","5","6 or more","Refused","Dont know")

data$cvrs10c.factor = factor(data$cvrs10c, levels = c("1","2","3","7","8"))
levels(data$cvrs10c.factor) = c("Right eye only","Left eye only","Both eyes","Refused","Dont know")

data$cvrs11a.factor = factor(data$cvrs11a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$cvrs11a.factor) = c("1","2","3","4","5","6 or more","Refused","Dont know")

data$cvrs12a.factor = factor(data$cvrs12a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$cvrs12a.factor) = c("1","2","3","4","5","6 or more","Refused","Dont know")

data$cvrs12d.factor = factor(data$cvrs12d, levels = c("1","2","7","8"))
levels(data$cvrs12d.factor) = c("Spread","Stayed","Refused","Dont know")

data$cvrs13a.factor = factor(data$cvrs13a, levels = c("1","2","3","4","5","6","7","8"))
levels(data$cvrs13a.factor) = c("1","2","3","4","5","6 or more","Refused","Dont know")

data$cvrs13d.factor = factor(data$cvrs13d, levels = c("1","2","7","8"))
levels(data$cvrs13d.factor) = c("Spread","Stayed","Refused","Dont know")

data$dhx01.factor = factor(data$dhx01, levels = c("0","1","7","8"))
levels(data$dhx01.factor) = c("No","Yes","Refused","Do not know")

data$dhx02.factor = factor(data$dhx02, levels = c("0","1","7","8"))
levels(data$dhx02.factor) = c("No","Yes","Refused","Do not know")

data$dhx03.factor = factor(data$dhx03, levels = c("0","1","7","8"))
levels(data$dhx03.factor) = c("No","Yes","Refused","Do not know")

data$dhx04.factor = factor(data$dhx04, levels = c("0","1","7","8"))
levels(data$dhx04.factor) = c("No","Yes","Refused","Do not know")

data$dhx05.factor = factor(data$dhx05, levels = c("0","1","7","8"))
levels(data$dhx05.factor) = c("No","Yes","Refused","Do not know")

data$dhx06.factor = factor(data$dhx06, levels = c("0","1","7","8"))
levels(data$dhx06.factor) = c("No","Yes","Refused","Do not know")

data$dhx07.factor = factor(data$dhx07, levels = c("0","1","7","8"))
levels(data$dhx07.factor) = c("No","Yes","Refused","Do not know")

data$dhx08.factor = factor(data$dhx08, levels = c("0","1","7","8"))
levels(data$dhx08.factor) = c("No","Yes","Refused","Do not know")

data$dhx09.factor = factor(data$dhx09, levels = c("0","1","7","8"))
levels(data$dhx09.factor) = c("No","Yes","Refused","Do not know")

data$dhx10.factor = factor(data$dhx10, levels = c("0","1","7","8"))
levels(data$dhx10.factor) = c("No","Yes","Refused","Do not know")

data$dhx11.factor = factor(data$dhx11, levels = c("0","1","7","8"))
levels(data$dhx11.factor) = c("No","Yes","Refused","Do not know")

data$dhx12.factor = factor(data$dhx12, levels = c("0","1","7","8"))
levels(data$dhx12.factor) = c("No","Yes","Refused","Do not know")

data$dhx13.factor = factor(data$dhx13, levels = c("0","1","7","8"))
levels(data$dhx13.factor) = c("No","Yes","Refused","Do not know")

data$dhx14.factor = factor(data$dhx14, levels = c("0","1","7","8"))
levels(data$dhx14.factor) = c("No","Yes","Refused","Do not know")

data$dhx15.factor = factor(data$dhx15, levels = c("0","1","7","8"))
levels(data$dhx15.factor) = c("No","Yes","Refused","Do not know")

data$dhx16.factor = factor(data$dhx16, levels = c("0","1","7","8"))
levels(data$dhx16.factor) = c("No","Yes","Refused","Do not know")

data$dhx17.factor = factor(data$dhx17, levels = c("0","1","7","8"))
levels(data$dhx17.factor) = c("No","Yes","Refused","Do not know")

data$dhx18.factor = factor(data$dhx18, levels = c("0","1","7","8"))
levels(data$dhx18.factor) = c("No","Yes","Refused","Do not know")

data$dhx19.factor = factor(data$dhx19, levels = c("0","1","7","8"))
levels(data$dhx19.factor) = c("No","Yes","Refused","Do not know")

data$dhx20.factor = factor(data$dhx20, levels = c("0","1","7","8"))
levels(data$dhx20.factor) = c("No","Yes","Refused","Do not know")

data$dhx21.factor = factor(data$dhx21, levels = c("0","1","7","8"))
levels(data$dhx21.factor) = c("No","Yes","Refused","Do not know")

data$dhx22.factor = factor(data$dhx22, levels = c("0","1","7","8"))
levels(data$dhx22.factor) = c("No","Yes","Refused","Do not know")

data$dhx23.factor = factor(data$dhx23, levels = c("0","1","7","8"))
levels(data$dhx23.factor) = c("No","Yes","Refused","Do not know")

data$dhx24.factor = factor(data$dhx24, levels = c("0","1","7","8"))
levels(data$dhx24.factor) = c("No","Yes","Refused","Do not know")

data$dhx25.factor = factor(data$dhx25, levels = c("0","1","7","8"))
levels(data$dhx25.factor) = c("No","Yes","Refused","Do not know")

data$dhx26.factor = factor(data$dhx26, levels = c("0","1","7","8"))
levels(data$dhx26.factor) = c("No","Yes","Refused","Do not know")

data$dhx27.factor = factor(data$dhx27, levels = c("0","1","7","8"))
levels(data$dhx27.factor) = c("No","Yes","Refused","Do not know")

data$dhx28.factor = factor(data$dhx28, levels = c("0","1","7","8"))
levels(data$dhx28.factor) = c("No","Yes","Refused","Do not know")

data$dhx29.factor = factor(data$dhx29, levels = c("0","1","7","8"))
levels(data$dhx29.factor) = c("No","Yes","Refused","Do not know")

data$dhx30.factor = factor(data$dhx30, levels = c("0","1","7","8"))
levels(data$dhx30.factor) = c("No","Yes","Refused","Do not know")

data$dhx31.factor = factor(data$dhx31, levels = c("0","1","7","8"))
levels(data$dhx31.factor) = c("No","Yes","Refused","Do not know")

data$dhx32.factor = factor(data$dhx32, levels = c("0","1","7","8"))
levels(data$dhx32.factor) = c("No","Yes","Refused","Do not know")

data$dhx33.factor = factor(data$dhx33, levels = c("0","1","7","8"))
levels(data$dhx33.factor) = c("No","Yes","Refused","Do not know")

data$dhx34.factor = factor(data$dhx34, levels = c("0","1","7","8"))
levels(data$dhx34.factor) = c("No","Yes","Refused","Do not know")

data$dhx35.factor = factor(data$dhx35, levels = c("0","1","7","8"))
levels(data$dhx35.factor) = c("No","Yes","Refused","Do not know")

data$dhx36.factor = factor(data$dhx36, levels = c("0","1","7","8"))
levels(data$dhx36.factor) = c("No","Yes","Refused","Do not know")

data$dhx37.factor = factor(data$dhx37, levels = c("0","1","7","8"))
levels(data$dhx37.factor) = c("No","Yes","Refused","Do not know")

data$dhx38.factor = factor(data$dhx38, levels = c("0","1","7","8"))
levels(data$dhx38.factor) = c("No","Yes","Refused","Do not know")

data$dhx39.factor = factor(data$dhx39, levels = c("0","1","7","8"))
levels(data$dhx39.factor) = c("No","Yes","Refused","Do not know")

