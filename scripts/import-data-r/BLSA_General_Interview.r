#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_General_Interview.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_GenInt)="CRF Version"
label(data$obsdate_idate)="Date Completed"
label(data$blank_GenInt)="Blank Form"
label(data$itid)="Tester ID"
label(data$itype)="Interview conducted with"
label(data$demo01)="DOB"
label(data$demo02)="Age today"
label(data$demo03)="Current marital status"
label(data$demo04)="How many other people currently live in your household"
label(data$demo05)="Type of housing"
label(data$demo06)="Were you born in US"
label(data$demo07)="Is English your first language"
label(data$demo08)="Are you Spanish Hispanic or Latino orgin"
label(data$demo09)="Race you consider yourself to be"
label(data$demo10)="Highest grade in school completed"
label(data$demo11)="Do you have Medicare"
label(data$demo11a)="What type of Medicare"
label(data$demo11b)="Do you have a Medigap plan"
label(data$demo12)="Do you have private health insurance"
label(data$demo13)="Do any of your health care plans include prescription drug coverage"
label(data$demo14)="Is your income from all sources more or less than 10000"
label(data$demo14a)="Income more than 25000"
label(data$demo14b)="Income more than 50000"
label(data$demo15)="How well does your family income take care of family needs"
label(data$demo16)="Have you delayed getting medical care due to money problems past 12 mo"
label(data$demo17)="Have you gone withoug medications due to money problems past 12 mo"
label(data$pf01)="Do you have difficulty walking a quarter mile due to health"
label(data$pf01a)="How much difficulty walking a quarter mile"
label(data$pf01b)="How easy is it to walk quarter mile"
label(data$pf01c)="Do you have difficulty walking one mile due to health"
label(data$pf01d)="How easy is it to walk one mile"
label(data$pf02)="Do you have difficulty walking up 10 steps due to health"
label(data$pf02a)="How much difficulty walking up 10 steps"
label(data$pf02b)="How easy is it to walk up 10 steps"
label(data$pf02c)="Do you have difficulty walking up 20 steps due to health"
label(data$pf02d)="How easy is it to walk up 20 steps"
label(data$pf03)="How difficulty lifting or carrying something weighing 10 lbs"
label(data$pf03a)="How much difficulty lifting or carrying 10 lbs"
label(data$pf03b)="How easy is it to lift or carry 10 lbs"
label(data$pf03c)="Do you have difficulty lifting or carrying 20 lbs"
label(data$pf03d)="How easy is it to lift or carry 20 lbs"
label(data$pf04)="Do you have difficulty standing up from a chair without using arms"
label(data$pf04a)="How much difficulty do you have rising without using your arms"
label(data$pf04b)="How easy is it for you to stand up from a chair without using your arms"
label(data$pf05)="Do you have difficulty stooping crouching or kneeling"
label(data$pf05a)="How much difficulty do you have stooping crouching or kneeling"
label(data$pf05b)="How easy is it for you to stoop crouch or kneel"
label(data$pf06)="Do you have difficulty raising arms up over head"
label(data$pf06a)="How much difficulty do you have raising arms up over head"
label(data$pf06b)="How easy is it for you to raising arms up over head"
label(data$pf07)="Do you have difficulty using your fingers to grasp or handle"
label(data$pf07a)="How much difficulty do you have using your fingers to grasp"
label(data$pf07b)="How easy is it for you to using your fingers to grasp or handle"
label(data$pf08)="Do you have difficulty getting in and out of bed or chairs"
label(data$pf08a)="How much difficulty do you have getting in and out of bed or chairs"
label(data$pf08b)="Need equipment or help getting in and out of bed or chairs"
label(data$pf09)="Do you have difficulty bathing or showering"
label(data$pf09a)="How much difficulty do you have bathing or showering"
label(data$pf09b)="Need equipment or help bathing or showering"
label(data$pf10)="Do you have difficulty dressing"
label(data$pf10a)="How much difficulty do you have dressing"
label(data$pf10b)="Need equipment or help dressing"
label(data$pf11)="Do you have difficulty eating example holding fork cutting food"
label(data$pf11a)="How much difficulty do you have eating"
label(data$pf11b)="Need equipment or help eating"
label(data$pf12)="Do you have difficulty using the toilet including getting to the toilet"
label(data$pf12a)="How much difficulty do you have using the toilet"
label(data$pf12b)="Need equipment or help using the toilet"
label(data$pf13)="Do you have difficulty walking across a small room"
label(data$pf13a)="How much difficulty do you have walking across a small room"
label(data$pf13b)="Need equipment or help walking across a small room"
label(data$pf14)="Do you have difficulty doing light housework"
label(data$pf14a)="How much difficulty do you have walking across a small room"
label(data$pf14b)="Is do not do light housework due to health related reasons"
label(data$pf15)="Do you have difficulty doing heavy housework"
label(data$pf15a)="How much difficulty do you have walking across a small room"
label(data$pf15b)="Is do not do heavy housework due to health related reasons"
label(data$pf16)="Do you have difficulty preparing your own meals"
label(data$pf16a)="How much difficulty do you have preparing your own meals"
label(data$pf16b)="Is do not do preparing your own meals due to health related reasons"
label(data$pf17)="Do you have difficulty shopping for personal items"
label(data$pf17a)="How much difficulty do you have shopping for personal items"
label(data$pf17b)="Is do not do shopping for personal items due to health related reasons"
label(data$pf18)="Do you have difficulty using the telephone"
label(data$pf18a)="How much difficulty do you have using the telephone"
label(data$pf18b)="Is do not do using the telephone due to health related reasons"
label(data$pf19)="Do you have difficulty taking medications"
label(data$pf19a)="How much difficulty do you have taking medications"
label(data$pf19b)="Is do not do taking medications due to health related reasons"
label(data$pf20)="Do you have difficulty managing your money by yourself"
label(data$pf20a)="How much difficulty do you have managing your money"
label(data$pf20b)="Is do not do managing your money due to health related reasons"
label(data$pf21)="Do you have difficulty driving"
label(data$pf21a)="How much difficulty do you have driving"
label(data$pf21b)="Is do not do driving due to health related reasons"
label(data$ghsx01)="Past 12 months been a patient in a hospital for one or more nights"
label(data$ghsx01a)="How many different times during past 12 months patient in hospital overnight"
label(data$ghsx02)="Past 12 months stay in bed most of the day due to injury or illness"
label(data$ghsx02a)="How many days did you stay in bed all day due to illness or injury"
label(data$ghsx03)="Past 12 months cut down on things you usually do because of illness or injury"
label(data$ghsx03a)="How many days did you cut down on things you usually do because of illness or injury"
label(data$ghsx04)="Past mo how many times felt unusually tired most of the day"
label(data$ghsx05)="Past mo how weak did you feel"
label(data$ghsx06)="Past mo energy level"
label(data$ghsx07)="Past mo have trouble falling asleep"
label(data$ghsx08)="Past mo wake up several times at night"
label(data$ghsx09)="Past mo wake up earlier than you planned to"
label(data$ghsx10)="Past mo have trouble getting back to sleep if work up too early"
label(data$ghsx11)="Past mo take sleeping pills or other meds to help you sleep"
label(data$ghsx12)="Past mo have loud snoring at night"
label(data$ghsx13)="Past mo have choking or gasping while sleeping"
label(data$ghsx14)="Past mo have excessive daytime sleepiness"
label(data$ghsx15)="Past mo overall typical night sleep"
label(data$ghsx16)="Past mo how many hours of sleep each night"
label(data$ghsx17)="In general appetite or desire to eat"
label(data$ghsx18)="Current weight"
label(data$ghsx19)="Since this time last yr weight changed by 5 lbs or more"
label(data$ghsx19a)="Did you gain or loose weight"
label(data$ghsx19b)="Were you trying to gain or lose weight"
label(data$ghsx19c)="How many pounds did you gain or lose"
label(data$ghsx20)="Present time trying to lose weight"
label(data$ghsx21)="How would you rate your overall oral health"
label(data$ghsx22)="Been told by dentist you have gum disease"
label(data$ghsx22a)="When were you last treated for gum disease"
label(data$ghsx22b)="Have you lost teeth because of gum disease"
label(data$ghsx22c)="How old were you when you lost your first tooth because of gum disease"
label(data$ghsx23)="During the past 3 months how much pain in your gums or teeth"
label(data$ghsx24)="Does your mouth feel dry when eating"
label(data$ghsx24a)="Problems chewing or swallowing that limit ability to eat"
label(data$ghsx25)="Do you have glasses or contact lenses"
label(data$ghsx25a)="When do you wear them"
label(data$ghsx26)="Rate your current eyesite with glasses or contacts if you wear them"
label(data$ghsx27)="How much difficulty reading ordinary print in newspapers"
label(data$ghsx28)="How much difficulty recognizing people you know from across a room"
label(data$ghsx29)="Because of eyesight have difficulty going down steps curbs in dim light or at night"
label(data$ghsx30)="Because of eyesight have difficulty noticing objects off to the side while walking alone"
label(data$ghsx31)="Do you wear a hearing aid"
label(data$ghsx32)="How would you rate your current hearing ability with hearing aid if used"
label(data$ghsx33)="Do you have any problem keeping your balance when walking on level surface"
label(data$ghsx34)="Do you have any problem keeping your balance when standing with eyes closed"
label(data$ghsx35)="Do you ever feel dizzy or light headed after standing up"
label(data$ghsx36)="In the past 12 mo have you fainted blacked out lost consciousness"
label(data$ghsx36a)="In the past 12 mo how many times have you fainted blacked out lost consciousness"
label(data$ghsx37)="In the past 12 mo have you fallen and landed on the ground or floor"
label(data$ghsx37a)="How many times hae you fallen to the ground in the past 12 mo"
label(data$ghsx37b)="Break or fractured a bone on any fall in the past 12 mo"
label(data$ghsx37c)="Hit or injure your head on a fall in the past 12 mo"
label(data$ghsx37d)="Have a sprain or strain on any fall in the past 12 mo"
label(data$ghsx37e)="Had bruise or bleeding on any fall in the past 12 mo"
label(data$ghsx37f)="What type of activity were you doing at the time of your worst fall"
label(data$ghsx38)="Did you limit your activities because of fear of falling in the past 12 mo"
label(data$ghsx38a)="How often did you limit activities because of fear of falling"
label(data$ap01)="Had low back pain past year"
label(data$ap01a)="Rate your usual back pain over the past year"
label(data$ap01b)="Have you needed to limit your typical daily activities as a result of low back pain"
label(data$ap01c)="Estimate how many days you have needed to limit activities in the past year due to low back pain"
label(data$ap01d)="Longest consecutive time in weeks you have had low back pain"
label(data$ap01e)="Do you currently have low back pain"
label(data$ap01f)="Rate your low back pain past week"
label(data$ap02)="Have you had pain or aching most days for at least one month in or around either knee"
label(data$ap02a)="Had knee pain lasting at least one month during past 12 months"
label(data$ap02b)="Which knee had pain during past 12 mo"
label(data$ap02c)="In the past 12 mo how often did you have pain in your left knee"
label(data$ap02d1)="In the past 30 days how much pain in left knee while walking on a flat surface"
label(data$ap02d2)="In the past 30 days how much pain in left knee while going up or down stairs"
label(data$ap02d3)="In the past 30 days how much pain in left knee while sitting or lying down"
label(data$ap02d4)="In the past 30 days how much pain in left knee while standing"
label(data$ap02d5)="In the past 30 days how much pain in left knee while getting in or out of a chair"
label(data$ap02e)="In the past 12 mo how often did you have pain in your Right knee"
label(data$ap02f1)="In the past 30 days how much pain in Right knee while walking on a flat surface"
label(data$ap02f2)="In the past 30 days how much pain in Right knee while going up or down stairs"
label(data$ap02f3)="In the past 30 days how much pain in Right knee while sitting or lying down"
label(data$ap02f4)="In the past 30 days how much pain in Right knee while standing"
label(data$ap02f5)="In the past 30 days how much pain in Right knee while getting in or out of a chair"
label(data$ap02g)="Most days in past 12 mo did you have stiffness in either of your knees"
label(data$ap02h)="Is this stiffness in the left right or both knees"
label(data$ap02i)="How severe is this stiffness after you first wake up or after sitting or lying down"
label(data$ap03)="Have you had pain most days for at least one month in or around either hip"
label(data$ap03a)="Had hip pain lasting at least one month during past 12 months"
label(data$ap03b)="Which hip had pain during past 12 mo"
label(data$ap03c)="In the past 12 mo how severe was the pain in your left hip"
label(data$ap03d1)="In the past 30 days how much pain in left hip while walking on a flat surface"
label(data$ap03d2)="In the past 30 days how much pain in left hip while going up or down stairs"
label(data$ap03d3)="In the past 30 days how much pain in left hip while sitting or lying down"
label(data$ap03d4)="In the past 30 days how much pain in left hip while standing"
label(data$ap03d5)="In the past 30 days how much pain in left hip while getting in or out of a chair"
label(data$ap03e)="In the past 12 mo how severe was the pain in your Right hip"
label(data$ap03f1)="In the past 30 days how much pain in Right hip while walking on a flat surface"
label(data$ap03f2)="In the past 30 days how much pain in Right hip while going up or down stairs"
label(data$ap03f3)="In the past 30 days how much pain in Right hip while sitting or lying down"
label(data$ap03f4)="In the past 30 days how much pain in Right hip while standing"
label(data$ap03f5)="In the past 30 days how much pain in Right hip while getting in or out of a chair"
label(data$ap04)="In the past 12 months have you had pain lasting at least one month in either shoulder"
label(data$ap04a)="In the past 12 months have you had pain in the left right or both shoulders"
label(data$ap04b)="How severe was the pain in your shoulder usually"
label(data$ap05)="In the past 12 months had neck pain lasting at least one month"
label(data$ap05a)="How severe was the pain in your neck usually"
label(data$ap06)="In the past 12 months have you had numbness prickly feeling tingling sudden stabbing burning pain in legs or feet"
label(data$ap07)="In the past 12 months have you had a headaches lasting more than 4 hours"
label(data$ap07a)="How often did you have headaches lasting more than 4 hrs in the past 12 mo"
label(data$ap07b)="Is the pain usually mostly on one side of your head"
label(data$ap07c)="Does the headache usually throb pulsate or pound"
label(data$ap07d)="Headache usually accompanied by nausea and or vomiting"
label(data$ap07e)="During headache do lights usually bother you or make the headache worse"
label(data$ap07f)="During headache do sounds usually bother you or make headache worse"
label(data$ap07g)="Ever notice spots jagged lines or heat waves in one or both eyes before you get the headache"
label(data$ap08)="Have or have had recurrent uncomfortable feelings or sensations in your legs while sitting or lying down"
label(data$ap09)="Have or have had feeling of recurrent need orurge to move your legs while sitting or lying down"
label(data$ap09a)="Are you more likely to have these feelings when resting or physically active"
label(data$ap09b)="Do these feelings get better while you are actually moving around"
label(data$ap09c)="Are these feelings worse at night or in the evening than at other times of day"
label(data$ap09d)="In the past 12 months how often did you get these feelings"
label(data$ap10)="In the past 12 months have you had pain lasting at least one month in your feet toes or ankles"
label(data$ap10al1)="Left foot top 1"
label(data$ap10ar1)="Right foot top 1"
label(data$ap10al2)="Left foot top 2"
label(data$ap10ar2)="Right foot top 2"
label(data$ap10al3)="Left foot top 3"
label(data$ap10ar3)="Right foot top 3"
label(data$ap10al4)="Left foot top 4"
label(data$ap10ar4)="Right foot top 4"
label(data$ap10al5)="Left foot top 5"
label(data$ap10ar5)="Right foot top 5"
label(data$ap10al6)="Left foot top 6"
label(data$ap10ar6)="Right foot top 6"
label(data$ap10al7)="Left foot top 7"
label(data$ap10ar7)="Right foot top 7"
label(data$ap10al8)="Left foot top 8"
label(data$ap10ar8)="Right foot top 8"
label(data$ap10al9)="Left foot top 9"
label(data$ap10ar9)="Right foot top 9"
label(data$ap10al10)="Left foot bottom 10"
label(data$ap10ar10)="Right foot bottom 10"
label(data$ap10al11)="Left foot bottom 11"
label(data$ap10ar11)="Right foot bottom 11"
label(data$ap10al12)="Left foot bottom 12"
label(data$ap10ar12)="Right foot bottom 12"
label(data$ap10al13)="Left foot bottom 13"
label(data$ap10ar13)="Right foot bottom 13"
label(data$ap10al14)="Left foot bottom 14"
label(data$ap10ar14)="Right foot bottom 14"
label(data$ap10al15)="Left foot bottom 15"
label(data$ap10ar15)="Right foot bottom 15"
label(data$ap10al16)="Left foot bottom 16"
label(data$ap10ar16)="Right foot bottom 16"
label(data$ap10al17)="Left foot bottom 17"
label(data$ap10ar17)="Right foot bottom 17"
label(data$ap10al18)="Left foot bottom 18"
label(data$ap10ar18)="Right foot bottom 18"
label(data$ap10al19)="Left foot bottom 19"
label(data$ap10ar19)="Right foot bottom 19"
label(data$ap10b1)="Past 30 days how much pain in feet ankles or toes while walking on flat surface"
label(data$ap10b2)="Past 30 days how much pain in feet ankles or toes while going up or down stairs"
label(data$ap10b3)="Past 30 days how much pain in feet ankles or toes while standing upright"
label(data$ap11)="In the past 12 months have you had pain lasting at least one month in joints of hands or wrist"
label(data$ap11ar1)="Right hand 1"
label(data$ap11al1)="Left hand 1"
label(data$ap11ar2)="Right hand 2"
label(data$ap11al2)="Left hand 2"
label(data$ap11ar3)="Right hand 3"
label(data$ap11al3)="Left hand 3"
label(data$ap11ar4)="Right hand 4"
label(data$ap11al4)="Left hand 4"
label(data$ap11ar5)="Right hand 5"
label(data$ap11al5)="Left hand 5"
label(data$ap11ar6)="Right hand 6"
label(data$ap11al6)="Left hand 6"
label(data$ap11ar7)="Right hand 7"
label(data$ap11al7)="Left hand 7"
label(data$ap11ar8)="Right hand 8"
label(data$ap11al8)="Left hand 8"
label(data$ap11ar9)="Right hand 9"
label(data$ap11al9)="Left hand 9"
label(data$ap11ar10)="Right hand 10"
label(data$ap11al10)="Left hand 10"
label(data$ap11ar11)="Right hand 11"
label(data$ap11al11)="Left hand 11"
label(data$ap11ar12)="Right hand 12"
label(data$ap11al12)="Left hand 12"
label(data$ap11ar13)="Right hand 13"
label(data$ap11al13)="Left hand 13"
label(data$ap11ar14)="Right hand 14"
label(data$ap11al14)="Left hand 14"
label(data$ap11ar15)="Right hand 15"
label(data$ap11al15)="Left hand 15"
label(data$ap11ar16)="Right hand 16"
label(data$ap11al16)="Left hand 16"
label(data$pa01)="In the past 2 weeks did you walk up any flights of stairs"
label(data$pa01a)="About how many flights did you walk up in the past 2 weeks"
label(data$pa01b)="Climb up how many flights carrying at least 10 lbs"
label(data$pa02)="In the past 2 weeks did you walk down any flights of stairs"
label(data$pa02a)="About how many flights did you walk down in the past 2 weeks"
label(data$pa02b)="Descend how many flights carrying at least 10 lbs"
label(data$pa03)="In the past 2 weeks did you do any outdoor work"
label(data$pa03a)="How many hours did you spend doing outdoor work in the past 2 weeks"
label(data$pa04)="In the past 2 weeks did you do any household updating maintenance or repair"
label(data$pa04a)="How many hours did you spend doing outdoor work in the past 2 weeks"
label(data$pa05)="In the past 2 weeks did you do any heavy major chores"
label(data$pa05a)="How many hours did you spend doing heavy or major chores in the past 2 weeks"
label(data$pa06)="In the past 2 weeks did you do any light housework"
label(data$pa06a)="How many hours did you spend doing light housework"
label(data$pa07)="In the past 2 weeks did you do any grocery shopping"
label(data$pa07a)="About how many bags of groceries did you buy in the past 2 weeks"
label(data$pa08)="In the past 2 weeks did you do any laundry"
label(data$pa08a)="About how many loads of laundry in the past 2 weeks"
label(data$pa09)="Did you do any brisk walking in the past 2 weeks"
label(data$pa09c)="How many times did you go for a brisk walk in the past 2 weeks"
label(data$pa09d)="How many minutes did you brisk walk each time on average"
label(data$pa09e1)="About how far did you brisk walk each time in blocks"
label(data$pa09e2)="About how far did you brisk walk each time miles"
label(data$pa09a)="Did you do any brisk walking in the past 12 months"
label(data$pa09b)="Main reason you have not done any brisk walking in the past 2 weeks"
label(data$pa10)="Did you do any casual walking in the past 2 weeks"
label(data$pa10c)="How many times did you go for a casual walk in the past 2 weeks"
label(data$pa10d)="How many minutes did you casual walk each time on average"
label(data$pa10e1)="About how far did you casual walk each time in blocks"
label(data$pa10e2)="About how far did you casual walk each time miles"
label(data$pa10f)="When you casual walk do you usually walk at a brisk moderate pace or leisurely stroll"
label(data$pa10a)="Did you do any casual walking in the past 12 months"
label(data$pa10b)="Main reason you have not done any casual walking in the past 2 weeks"
label(data$pa11)="Did you do any weight or circuit training in the past 2 weeks"
label(data$pa11c)="How many times did you do weight training in the past 2 weeks"
label(data$pa11d)="How many minutes did you weight train each time on average"
label(data$pa11a)="Did you do any weight or circuit training in the past 12 months"
label(data$pa11b)="Main reason you have not done any weight or circuit training in the past 2 weeks"
label(data$pa12)="Did you do any flexibility training in the past 2 weeks"
label(data$pa12c)="How many times did you do flexibility training in the past 2 weeks"
label(data$pa12d)="How many minutes did you flexibility training each time on average"
label(data$pa12a)="Did you do any flexibility training in the past 12 months"
label(data$pa12b)="Main reason you have not done any flexibility training in the past 2 weeks"
label(data$pa13)="Did you do any vigorous exercise activities in the past w weeks"
label(data$pa13c1)="Vigorous activity first named"
label(data$pa13d1)="How many hours first activity"
label(data$pa13e1)="Vigorous activity level first activity"
label(data$pa13c2)="Vigorous activity second named"
label(data$pa13d2)="How many hours second activity"
label(data$pa13e2)="Vigorous activity level second activity"
label(data$pa13c3)="Vigorous activity third named"
label(data$pa13d3)="How many hours third activity"
label(data$pa13e3)="Vigorous activity level third activity"
label(data$pa13c4)="Vigorous activity fourth named"
label(data$pa13d4)="How many hours fourth activity"
label(data$pa13e4)="Vigorous activity level fourth activity"
label(data$pa13f)="Other Exercise"
label(data$pa13a)="Did you do any exercise activities in the past 12 mo"
label(data$pa13b)="reason you havae not done any exercise activities past 2 weeks"
label(data$pa14)="Did you do any recreational activities in the past w weeks"
label(data$pa14c1)="Recreational activity first named"
label(data$pa14d1)="How many hours first activity"
label(data$pa14c2)="Recreational activity second named"
label(data$pa14d2)="How many hours second activity"
label(data$pa14c3)="Recreational activity third named"
label(data$pa14d3)="How many hours third activity"
label(data$pa14c4)="Recreational activity fourth named"
label(data$pa14d4)="How many hours fourth activity"
label(data$pa14f)="Other recreational activities"
label(data$pa14a)="Did you do any exercise activities in the past 12 mo"
label(data$pa14b)="reason you havae not done any recreational activities past 2 weeks"
label(data$oact01)="Do you currently work for pay"
label(data$oact01a)="On average how many hours do you work per week all jobs combined"
label(data$oact01b)="How many months of the year do you work"
label(data$oact01c)="Type of work activity"
label(data$oact02)="Do you currently do volunteer work"
label(data$oact02a)="On average how many hours do you volunteer?"
label(data$oact02b)="How many months of the year do you do volunteer work"
label(data$oact02c)="Type of volunteer activity"
label(data$oact03)="Do you currently provide any regular care or assistance to a child or disabled or sick adult"
label(data$oact03a)="About how many hours per week provide care to another person"
label(data$oact04)="About how often do you get together with friends or neighbors"
label(data$oact05)="About how often do you get together with your children or other relatives"
label(data$oact06a)="How often in the past 12 mo did you do a crossword or other word puzzle"
label(data$oact06b)="How often in the past 12 mo did you do a jigsaw puzzle"
label(data$oact06c)="How often in the past 12 mo did you read a newspaper or magazine article"
label(data$oact06d)="How often in the past 12 mo did you read from a book"
label(data$oact06e)="How often in the past 12 mo did you play board games bingo bridge or other card games"
label(data$oact06f)="How often in the past 12 mo did you use a computer"
label(data$oact06g)="How often in the past 12 mo did you play a musical instrument"
label(data$oact06h)="How often in the past 12 mo did you do recreational games like darts horshoes pool"
label(data$oact06i)="How often in the past 12 mo did you write a letter article poem or story"
label(data$oact06j)="How often in the past 12 mo did you travel 100 miles or more from your home"
label(data$oact06k)="How often in the past 12 mo did you do handcrafts needlework sewing carpentry wood working model building"
label(data$oact06l)="How often in the past 12 mo did you do art projects photography sketch draw paint sculpt"
label(data$oact06m)="How often in the past 12 mo did you do go out to a movie the theater a concert or show"
label(data$oact06n)="How often in the past 12 mo did you do visit a museum aquarium zoo or science center"
label(data$oact06o)="How often in the past 12 mo did you do attend a sports event like baseball or football game"
label(data$oact06p)="How often in the past 12 mo did you do attend a course class lecture discussion public meeting"
label(data$oact06q)="How often in the past 12 mo did you participatae in church club or other community activities apart from any mentioned above"
label(data$oact07)="About how many hours per week on average do you watch television"
label(data$oact08)="About how many hours per week on average do you spend reading books newspapers magazines"
label(data$smk01)="Have you smoked at least 100 cigarettes over your entire life"
label(data$smk01a)="Have you ever smoked on a regular basis that is daily for at least 6 months"
label(data$smk01b)="How old were you when you first started smoking cigarettes regularly"
label(data$smk01c)="On average over the entire time you have smoked how many cigarettes have you usually smoked per day"
label(data$smk01d)="Do you smoke cigarettes now"
label(data$smk01e)="On average how many cigarettes a day do you smoke now"
label(data$smk01f)="How many times have you seriously tried to quit smoking"
label(data$smk01g)="How old were you when you stopped smoking cigarettes"
label(data$smk02)="Have you smoked at least 50 cigars over your entire life"
label(data$smk02a)="How old were you when you first started smoking cigars"
label(data$smk02b)="On average over the entire time you have smoked how many cigars have you usually smoked per week"
label(data$smk02c)="Do you smoke cigars now"
label(data$smk02d)="On average how many cigars a week do you smoke now"
label(data$smk02e)="Age when you stop smoking cigars"
label(data$smk03)="Have you smoked at least 3 packages of pipe tobacco over your entire life"
label(data$smk03a)="How old were you when you first started smoking a pipe"
label(data$smk03b)="On average over the entire time you have smoked a pipe how many pipefuls have you usually smoked per week"
label(data$smk03c)="Do you smoke a pipe now"
label(data$smk03d)="On average how many pipefuls a week do you smoke now"
label(data$smk03e)="Age when you stop smoking a pipe"
label(data$alc01)="In the past 12 mo did you drink any alcoholic beverages"
label(data$alc01a)="In a typical week over the past 12 mo how many alcoholic beverages did you have"
label(data$alc01b)="In a typical week over the past 12 mo how many of these drinks were red wine"
label(data$alc01c)="What is the primary reason youdid not drink any alcoholic beverages in the past 12 months?"
label(data$alc02)="Did you ever drink more alcoholic beverages than you do now"
label(data$alc03)="Was there ever a time in your life when you had 5 or more drinks of alcoholic beverage almost every day"
label(data$psy01)="Using a scale from 0 extremely unhappy to 10 very happy how happy are you"
label(data$psy02)="I can do just about anything I really set my mind to Agree Disagree"
label(data$psy02a)="Do just about anything agree strongly or somewhat"
label(data$psy02b)="Do just about anything disagree strongly or somewhat"
label(data$psy03)="Often feel helpless dealing with the problems of life Agree Disagree"
label(data$psy03a)="Often feel helpless dealing with the problems of life Agree strongly or somewhat"
label(data$psy03b)="Often feel helpless dealing with the problems of life Disagree strongly or womewhat"
label(data$psy04)="In the past year could you use more emotional support than you receive"
label(data$psy04a)="Would you say you needed a lot more some more or a little more"
label(data$pss02)="In the last month felt unable to control the important things in your life"
label(data$pss03)="In the last month felt nervous and stressed"
label(data$pss07)="In the last month felt that things were going your way"
label(data$pss06)="In the last month felt confident about your ability to handle your personal problems"
label(data$pss11)="In the last month been angered because of things that happened that were outside of your control"
label(data$pss14)="In the last month felt difficulties were piling up so hight that you could not overcome them"
label(data$cmq01)="In a typical week within the past month how mahy times did you leave your home for any reason"
label(data$cmq02)="When you leave your home how often do you go alone"
label(data$cmq03)="When away from home how often do you limit the amount of walking"
label(data$cmq04)="How often do you purposly avoid leaving your home when it is dark or raining"
label(data$cmq05)="How often do you purposly avoid a situation in which you would have to walk on an uneven surface?"
label(data$sf01)="In general would you say your health is"
label(data$sf02)="Does your health now limit you in moderate activities"
label(data$sf03)="Does your health now limit you in climbing several flights of stairs"
label(data$sf04)="During the past 4 wks did you accomplish less than you would like due to physicala health"
label(data$sf05)="During the past 4 wks were you limited in the kind of work or other activities as a result of your physical health"
label(data$sf06)="During the past 4 weeks have you accomplished less than you would like due to emotional problems"
label(data$sf07)="During the past 4 weeks have you not done work or other activities as carefully as usual due to emotional problems"
label(data$sf08)="During the past 4 weeks how much did pain interfere with your normal work"
label(data$sf09)="How much of the time during the past 4 weeks felt calm and peaceful"
label(data$sf10)="How much of the time during the past 4 weeks had a lot of energy"
label(data$sf11)="How much of the time during the past 4 weeks felt downhearted and blue"
label(data$sf12)="During the past 4 weeks how much of the time have your physical health or emotional problems interfered with your social activities"
label(data$auto_id_GenInt)="Unique Teleform Number"
label(data$crf_parent_name_GenInt)="CRF Parent Name"
label(data$study_name_GenInt)="Study Name"

#Create new variables for factors
data$itype.factor = factor(data$itype, levels = c("0","1","2","3","4"))
levels(data$itype.factor) = c("Participant only","Participant and proxy","Proxy only","Telephone interview","Interview not done")

data$demo03.factor = factor(data$demo03, levels = c("1","2","3","4","5","6","7","8"))
levels(data$demo03.factor) = c("Married","Living with a partner","Separated","Divorced","Widowed","Never married","Refused","Dont know")

data$demo04.factor = factor(data$demo04, levels = c("0","1","2","3","7","8"))
levels(data$demo04.factor) = c("Lives alone","1 other","2 others","3 or more","Refused","Dont know")

data$demo05.factor = factor(data$demo05, levels = c("1","2","3","4","5","7","8"))
levels(data$demo05.factor) = c("Single family home","Co-op condominium apartment","Continuing care community","Assisted Living","Long term care facility","Refused","Dont know")

data$demo06.factor = factor(data$demo06, levels = c("0","1","7","8"))
levels(data$demo06.factor) = c("No","Yes","Refused","Dont know")

data$demo07.factor = factor(data$demo07, levels = c("0","1","7","8"))
levels(data$demo07.factor) = c("No","Yes","Refused","Dont know")

data$demo08.factor = factor(data$demo08, levels = c("0","1","7","8"))
levels(data$demo08.factor) = c("No","Yes","Refused","Dont know")

data$demo09.factor = factor(data$demo09, levels = c("1","2","3","4","5","6","7","8"))
levels(data$demo09.factor) = c("White","Black or African American","American Indian or Alaska Native","Asian","Native Hawaiian or Other Pacific Islander","Two or more races","Refused","Dont know")

data$demo11.factor = factor(data$demo11, levels = c("0","1","2","7","8"))
levels(data$demo11.factor) = c("No under 65","Yes","No age 65+","Refused","Dont know")

data$demo11a.factor = factor(data$demo11a, levels = c("1","2","3","7","8"))
levels(data$demo11a.factor) = c("Part A only","Part A and B only","Medicare + Choice","Refused","Dont know")

data$demo11b.factor = factor(data$demo11b, levels = c("0","1","7","8"))
levels(data$demo11b.factor) = c("No","Yes","Refused","Dont know")

data$demo12.factor = factor(data$demo12, levels = c("0","1","7","8"))
levels(data$demo12.factor) = c("No","Yes","Refused","Dont know")

data$demo13.factor = factor(data$demo13, levels = c("0","1","7","8"))
levels(data$demo13.factor) = c("No","Yes","Refused","Dont know")

data$demo14.factor = factor(data$demo14, levels = c("0","1","7","8"))
levels(data$demo14.factor) = c("Less than $10000","More than $10000","Refused","Dont know")

data$demo14a.factor = factor(data$demo14a, levels = c("0","1","7","8"))
levels(data$demo14a.factor) = c("No","Yes","Refused","Dont know")

data$demo14b.factor = factor(data$demo14b, levels = c("0","1","7","8"))
levels(data$demo14b.factor) = c("No","Yes","Refused","Dont know")

data$demo15.factor = factor(data$demo15, levels = c("1","2","3","7","8"))
levels(data$demo15.factor) = c("Poorly","Fairly well","Very well","Refused","Dont know")

data$demo16.factor = factor(data$demo16, levels = c("0","1","7","8"))
levels(data$demo16.factor) = c("No","Yes","Refused","Dont know")

data$demo17.factor = factor(data$demo17, levels = c("0","1","7","8"))
levels(data$demo17.factor) = c("No","Yes","Refused","Dont know")

data$pf01.factor = factor(data$pf01, levels = c("0","1","7","8"))
levels(data$pf01.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf01a.factor = factor(data$pf01a, levels = c("1","2","3","4","7","8"))
levels(data$pf01a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf01b.factor = factor(data$pf01b, levels = c("1","2","3","7","8"))
levels(data$pf01b.factor) = c(" Not so easy","Somewhat easy","VeryEasy","Refused"," Dont know")

data$pf01c.factor = factor(data$pf01c, levels = c("0","1","7","8"))
levels(data$pf01c.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf01d.factor = factor(data$pf01d, levels = c("1","2","3","7","8"))
levels(data$pf01d.factor) = c(" Not so easy","Somewhat easy","VeryEasy","Refused"," Dont know")

data$pf02.factor = factor(data$pf02, levels = c("0","1","7","8"))
levels(data$pf02.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf02a.factor = factor(data$pf02a, levels = c("1","2","3","4","7","8"))
levels(data$pf02a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf02b.factor = factor(data$pf02b, levels = c("1","2","3","7","8"))
levels(data$pf02b.factor) = c(" Not so easy","Somewhat easy","VeryEasy","Refused"," Dont know")

data$pf02c.factor = factor(data$pf02c, levels = c("0","1","7","8"))
levels(data$pf02c.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf02d.factor = factor(data$pf02d, levels = c("1","2","3","7","8"))
levels(data$pf02d.factor) = c(" Not so easy","Somewhat easy","VeryEasy","Refused"," Dont know")

data$pf03.factor = factor(data$pf03, levels = c("0","1","7","8"))
levels(data$pf03.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf03a.factor = factor(data$pf03a, levels = c("1","2","3","4","7","8"))
levels(data$pf03a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf03b.factor = factor(data$pf03b, levels = c("1","2","3","7","8"))
levels(data$pf03b.factor) = c(" Not so easy","Somewhat easy","VeryEasy","Refused"," Dont know")

data$pf03c.factor = factor(data$pf03c, levels = c("0","1","7","8"))
levels(data$pf03c.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf03d.factor = factor(data$pf03d, levels = c("1","2","3","7","8"))
levels(data$pf03d.factor) = c(" Not so easy","Somewhat easy","VeryEasy","Refused"," Dont know")

data$pf04.factor = factor(data$pf04, levels = c("0","1","7","8"))
levels(data$pf04.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf04a.factor = factor(data$pf04a, levels = c("1","2","3","4","7","8"))
levels(data$pf04a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf04b.factor = factor(data$pf04b, levels = c("1","2","3","7","8"))
levels(data$pf04b.factor) = c(" Not so easy","Somewhat easy","VeryEasy","Refused"," Dont know")

data$pf05.factor = factor(data$pf05, levels = c("0","1","7","8"))
levels(data$pf05.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf05a.factor = factor(data$pf05a, levels = c("1","2","3","4","7","8"))
levels(data$pf05a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf05b.factor = factor(data$pf05b, levels = c("1","2","3","7","8"))
levels(data$pf05b.factor) = c(" Not so easy","Somewhat easy","VeryEasy","Refused"," Dont know")

data$pf06.factor = factor(data$pf06, levels = c("0","1","7","8"))
levels(data$pf06.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf06a.factor = factor(data$pf06a, levels = c("1","2","3","4","7","8"))
levels(data$pf06a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf06b.factor = factor(data$pf06b, levels = c("1","2","3","7","8"))
levels(data$pf06b.factor) = c(" Not so easy","Somewhat easy","VeryEasy","Refused"," Dont know")

data$pf07.factor = factor(data$pf07, levels = c("0","1","7","8"))
levels(data$pf07.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf07a.factor = factor(data$pf07a, levels = c("1","2","3","4","7","8"))
levels(data$pf07a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf07b.factor = factor(data$pf07b, levels = c("1","2","3","7","8"))
levels(data$pf07b.factor) = c(" Not so easy","Somewhat easy","VeryEasy","Refused"," Dont know")

data$pf08.factor = factor(data$pf08, levels = c("0","1","7","8"))
levels(data$pf08.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf08a.factor = factor(data$pf08a, levels = c("1","2","3","4","7","8"))
levels(data$pf08a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf08b.factor = factor(data$pf08b, levels = c("0","1","7","8"))
levels(data$pf08b.factor) = c("No","Yes","Refused","Dont know")

data$pf09.factor = factor(data$pf09, levels = c("0","1","7","8"))
levels(data$pf09.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf09a.factor = factor(data$pf09a, levels = c("1","2","3","4","7","8"))
levels(data$pf09a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf09b.factor = factor(data$pf09b, levels = c("0","1","7","8"))
levels(data$pf09b.factor) = c("No","Yes","Refused","Dont know")

data$pf10.factor = factor(data$pf10, levels = c("0","1","7","8"))
levels(data$pf10.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf10a.factor = factor(data$pf10a, levels = c("1","2","3","4","7","8"))
levels(data$pf10a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf10b.factor = factor(data$pf10b, levels = c("0","1","7","8"))
levels(data$pf10b.factor) = c("No","Yes","Refused","Dont know")

data$pf11.factor = factor(data$pf11, levels = c("0","1","7","8"))
levels(data$pf11.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf11a.factor = factor(data$pf11a, levels = c("1","2","3","4","7","8"))
levels(data$pf11a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf11b.factor = factor(data$pf11b, levels = c("0","1","7","8"))
levels(data$pf11b.factor) = c("No","Yes","Refused","Dont know")

data$pf12.factor = factor(data$pf12, levels = c("0","1","7","8"))
levels(data$pf12.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf12a.factor = factor(data$pf12a, levels = c("1","2","3","4","7","8"))
levels(data$pf12a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf12b.factor = factor(data$pf12b, levels = c("0","1","7","8"))
levels(data$pf12b.factor) = c("No","Yes","Refused","Dont know")

data$pf13.factor = factor(data$pf13, levels = c("0","1","7","8"))
levels(data$pf13.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf13a.factor = factor(data$pf13a, levels = c("1","2","3","4","7","8"))
levels(data$pf13a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf13b.factor = factor(data$pf13b, levels = c("0","1","7","8"))
levels(data$pf13b.factor) = c("No","Yes","Refused","Dont know")

data$pf14.factor = factor(data$pf14, levels = c("0","1","7","8"))
levels(data$pf14.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf14a.factor = factor(data$pf14a, levels = c("1","2","3","4","7","8"))
levels(data$pf14a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf14b.factor = factor(data$pf14b, levels = c("0","1","7","8"))
levels(data$pf14b.factor) = c("No","Yes","Refused","Dont know")

data$pf15.factor = factor(data$pf15, levels = c("0","1","7","8"))
levels(data$pf15.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf15a.factor = factor(data$pf15a, levels = c("1","2","3","4","7","8"))
levels(data$pf15a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf15b.factor = factor(data$pf15b, levels = c("0","1","7","8"))
levels(data$pf15b.factor) = c("No","Yes","Refused","Dont know")

data$pf16.factor = factor(data$pf16, levels = c("0","1","7","8"))
levels(data$pf16.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf16a.factor = factor(data$pf16a, levels = c("1","2","3","4","7","8"))
levels(data$pf16a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf16b.factor = factor(data$pf16b, levels = c("0","1","7","8"))
levels(data$pf16b.factor) = c("No","Yes","Refused","Dont know")

data$pf17.factor = factor(data$pf17, levels = c("0","1","7","8"))
levels(data$pf17.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf17a.factor = factor(data$pf17a, levels = c("1","2","3","4","7","8"))
levels(data$pf17a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf17b.factor = factor(data$pf17b, levels = c("0","1","7","8"))
levels(data$pf17b.factor) = c("No","Yes","Refused","Dont know")

data$pf18.factor = factor(data$pf18, levels = c("0","1","7","8"))
levels(data$pf18.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf18a.factor = factor(data$pf18a, levels = c("1","2","3","4","7","8"))
levels(data$pf18a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf18b.factor = factor(data$pf18b, levels = c("0","1","7","8"))
levels(data$pf18b.factor) = c("No","Yes","Refused","Dont know")

data$pf19.factor = factor(data$pf19, levels = c("0","1","7","8"))
levels(data$pf19.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf19a.factor = factor(data$pf19a, levels = c("1","2","3","4","7","8"))
levels(data$pf19a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf19b.factor = factor(data$pf19b, levels = c("0","1","7","8"))
levels(data$pf19b.factor) = c("No","Yes","Refused","Dont know")

data$pf20.factor = factor(data$pf20, levels = c("0","1","7","8"))
levels(data$pf20.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf20a.factor = factor(data$pf20a, levels = c("1","2","3","4","7","8"))
levels(data$pf20a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf20b.factor = factor(data$pf20b, levels = c("0","1","7","8"))
levels(data$pf20b.factor) = c("No","Yes","Refused","Dont know")

data$pf21.factor = factor(data$pf21, levels = c("0","1","7","8"))
levels(data$pf21.factor) = c("No","Yes","Refused","Dont know/Do not do")

data$pf21a.factor = factor(data$pf21a, levels = c("1","2","3","4","7","8"))
levels(data$pf21a.factor) = c("A little","Some","A lot","Unable to do","Refused","Dont know")

data$pf21b.factor = factor(data$pf21b, levels = c("1","2","3","4","5","7","8"))
levels(data$pf21b.factor) = c("Never drove","No car","Vision","Health","Lost license","Refused","Dont know")

data$ghsx01.factor = factor(data$ghsx01, levels = c("0","1","7","8"))
levels(data$ghsx01.factor) = c("No","Yes","Refused","Dont know")

data$ghsx02.factor = factor(data$ghsx02, levels = c("0","1","7","8"))
levels(data$ghsx02.factor) = c("No","Yes","Refused","Dont know")

data$ghsx03.factor = factor(data$ghsx03, levels = c("0","1","7","8"))
levels(data$ghsx03.factor) = c("No","Yes","Refused","Dont know")

data$ghsx04.factor = factor(data$ghsx04, levels = c("0","1","2","3","7","8"))
levels(data$ghsx04.factor) = c("None","Some","Most","All","Refused","Dont know")

data$ghsx05.factor = factor(data$ghsx05, levels = c("0","1","10","2","3","4","5","6","7","77","8","88","9"))
levels(data$ghsx05.factor) = c("0 Not weak at all","1","10 Very weak","2","3","4","5","6","7","Refused","8","Dont know","9")

data$ghsx06.factor = factor(data$ghsx06, levels = c("0","1","10","2","3","4","5","6","7","77","8","88","9"))
levels(data$ghsx06.factor) = c("0 No energy at all","1","10 Most energy","2","3","4","5","6","7","Refused","8","Dont know","9")

data$ghsx07.factor = factor(data$ghsx07, levels = c("0","1","2","3","4","8"))
levels(data$ghsx07.factor) = c("0 Never","1/week","1-2/week","3-4/week","5+/week","Dont know")

data$ghsx08.factor = factor(data$ghsx08, levels = c("0","1","2","3","4","8"))
levels(data$ghsx08.factor) = c("0 Never","1/week","1-2/week","3-4/week","5+/week","Dont know")

data$ghsx09.factor = factor(data$ghsx09, levels = c("0","1","2","3","4","8"))
levels(data$ghsx09.factor) = c("0 Never","1/week","1-2/week","3-4/week","5+/week","Dont know")

data$ghsx10.factor = factor(data$ghsx10, levels = c("0","1","2","3","4","8"))
levels(data$ghsx10.factor) = c("0 Never","1/week","1-2/week","3-4/week","5+/week","Dont know")

data$ghsx11.factor = factor(data$ghsx11, levels = c("0","1","2","3","4","8"))
levels(data$ghsx11.factor) = c("0 Never","1/week","1-2/week","3-4/week","5+/week","Dont know")

data$ghsx12.factor = factor(data$ghsx12, levels = c("0","1","2","3","4","8"))
levels(data$ghsx12.factor) = c("0 Never","1/week","1-2/week","3-4/week","5+/week","Dont know")

data$ghsx13.factor = factor(data$ghsx13, levels = c("0","1","2","3","4","8"))
levels(data$ghsx13.factor) = c("0 Never","1/week","1-2/week","3-4/week","5+/week","Dont know")

data$ghsx14.factor = factor(data$ghsx14, levels = c("0","1","2","3","4","8"))
levels(data$ghsx14.factor) = c("0 Never","1/week","1-2/week","3-4/week","5+/week","Dont know")

data$ghsx15.factor = factor(data$ghsx15, levels = c("0","1","2","3","4","7","8"))
levels(data$ghsx15.factor) = c("Very sound or restful","Sound or restful","Average quality","Restless","Very Restless","Refused","Dont know")

data$ghsx16.factor = factor(data$ghsx16, levels = c("0","1","2","3","7","8"))
levels(data$ghsx16.factor) = c("More than 7","More than 6 up to 7","More than 5 up to 6"," 5 or fewer","Refused","Dont know")

data$ghsx17.factor = factor(data$ghsx17, levels = c("0","1","2","3","4","7","8"))
levels(data$ghsx17.factor) = c("Very poor","Poor","Moderate","Good","Very good","Refused","Dont know")

data$ghsx19.factor = factor(data$ghsx19, levels = c("0","1","7","8"))
levels(data$ghsx19.factor) = c("No","Yes","Refused","Dont know")

data$ghsx19a.factor = factor(data$ghsx19a, levels = c("1","2","7","8"))
levels(data$ghsx19a.factor) = c("Gain","Lose","Refused","Dont know")

data$ghsx19b.factor = factor(data$ghsx19b, levels = c("0","1","7","8"))
levels(data$ghsx19b.factor) = c("No","Yes","Refused","Dont know")

data$ghsx20.factor = factor(data$ghsx20, levels = c("0","1","7","8"))
levels(data$ghsx20.factor) = c("No","Yes","Refused","Dont know")

data$ghsx21.factor = factor(data$ghsx21, levels = c("1","2","3","4","5","7","8"))
levels(data$ghsx21.factor) = c("Excellent","Very good","Good","Fair","Poor","Refused","Dont know")

data$ghsx22.factor = factor(data$ghsx22, levels = c("0","1","7","8"))
levels(data$ghsx22.factor) = c("No","Yes","Refused","Dont know")

data$ghsx22a.factor = factor(data$ghsx22a, levels = c("0","1","2","7","8"))
levels(data$ghsx22a.factor) = c("Never","Within 12 months","Over 12 months","Refused","Dont know")

data$ghsx22b.factor = factor(data$ghsx22b, levels = c("0","1","7","8"))
levels(data$ghsx22b.factor) = c("No","Yes","Refused","Dont know")

data$ghsx23.factor = factor(data$ghsx23, levels = c("0","1","2","3","7","8"))
levels(data$ghsx23.factor) = c("None at all","A little","Some","A great deal","Refused","Dont know")

data$ghsx24.factor = factor(data$ghsx24, levels = c("0","1","7","8"))
levels(data$ghsx24.factor) = c("No","Yes","Refused","Dont know")

data$ghsx24a.factor = factor(data$ghsx24a, levels = c("0","1","7","8"))
levels(data$ghsx24a.factor) = c("No","Yes","Refused","Dont know")

data$ghsx25.factor = factor(data$ghsx25, levels = c("0","1","7","8"))
levels(data$ghsx25.factor) = c("No","Yes","Refused","Dont know")

data$ghsx25a.factor = factor(data$ghsx25a, levels = c("0","1","2","3","7","8"))
levels(data$ghsx25a.factor) = c("Never","For reading or driving","Sometimes","Most of the time","Refused","Dont know")

data$ghsx26.factor = factor(data$ghsx26, levels = c("0","1","2","3","4","5","7","8"))
levels(data$ghsx26.factor) = c("Blind","Very poor","Poor","Fair","Good","Excellent","Refused","Dont know")

data$ghsx27.factor = factor(data$ghsx27, levels = c("0","1","2","3","4","5","7","8"))
levels(data$ghsx27.factor) = c("No difficulty","A little difficulty","Moderate difficulty","Extreme difficulty","Stopped due to eyesight","Dont do other reasons","Refused","Dont know")

data$ghsx28.factor = factor(data$ghsx28, levels = c("0","1","2","3","7","8"))
levels(data$ghsx28.factor) = c("No difficulty","A little difficulty","Moderate difficulty","Extreme difficulty","Refused","Dont know")

data$ghsx29.factor = factor(data$ghsx29, levels = c("0","1","2","3","4","5","7","8"))
levels(data$ghsx29.factor) = c("No difficulty","A little difficulty","Moderate difficulty","Extreme difficulty","Stopped due to eyesight","Dont do other reasons","Refused","Dont know")

data$ghsx30.factor = factor(data$ghsx30, levels = c("0","1","2","3","4","5","7","8"))
levels(data$ghsx30.factor) = c("No difficulty","A little difficulty","Moderate difficulty","Extreme difficulty","Stopped due to eyesight","Dont do other reasons","Refused","Dont know")

data$ghsx31.factor = factor(data$ghsx31, levels = c("0","1","7","8"))
levels(data$ghsx31.factor) = c("No","Yes","Refused","Dont know")

data$ghsx32.factor = factor(data$ghsx32, levels = c("0","1","2","3","4","5","7","8"))
levels(data$ghsx32.factor) = c("Deaf","Very poor","Poor","Fair","Good","Excellent","Refused","Dont know")

data$ghsx33.factor = factor(data$ghsx33, levels = c("0","1","2","3","4","7","8"))
levels(data$ghsx33.factor) = c("Never","Sometimes","Often","Very often","Always","Refused","Dont know")

data$ghsx34.factor = factor(data$ghsx34, levels = c("0","1","2","3","4","7","8"))
levels(data$ghsx34.factor) = c("Never","Sometimes","Often","Very often","Always","Refused","Dont know")

data$ghsx35.factor = factor(data$ghsx35, levels = c("0","1","7","8"))
levels(data$ghsx35.factor) = c("No","Yes","Refused","Dont know")

data$ghsx36.factor = factor(data$ghsx36, levels = c("0","1","7","8"))
levels(data$ghsx36.factor) = c("No","Yes","Refused","Dont know")

data$ghsx36a.factor = factor(data$ghsx36a, levels = c("1","2","3","7","8"))
levels(data$ghsx36a.factor) = c("One","Two or three","Four or more","Refused","Dont know")

data$ghsx37.factor = factor(data$ghsx37, levels = c("0","1","7","8"))
levels(data$ghsx37.factor) = c("No","Yes","Refused","Dont know")

data$ghsx37a.factor = factor(data$ghsx37a, levels = c("1","2","3","4","7","8"))
levels(data$ghsx37a.factor) = c("One","Two or three","Four or five","Six or more","Refused","Dont know")

data$ghsx37b.factor = factor(data$ghsx37b, levels = c("0","1","7","8"))
levels(data$ghsx37b.factor) = c("No","Yes","Refused","Dont know")

data$ghsx37c.factor = factor(data$ghsx37c, levels = c("0","1","7","8"))
levels(data$ghsx37c.factor) = c("No","Yes","Refused","Dont know")

data$ghsx37d.factor = factor(data$ghsx37d, levels = c("0","1","7","8"))
levels(data$ghsx37d.factor) = c("No","Yes","Refused","Dont know")

data$ghsx37e.factor = factor(data$ghsx37e, levels = c("0","1","7","8"))
levels(data$ghsx37e.factor) = c("No","Yes","Refused","Dont know")

data$ghsx37f.factor = factor(data$ghsx37f, levels = c("1","2","3","7","8"))
levels(data$ghsx37f.factor) = c("Normal/Usual","Usual/Risky","Intoxicated","Refused","Dont know")

data$ghsx38.factor = factor(data$ghsx38, levels = c("0","1","7","8"))
levels(data$ghsx38.factor) = c("No","Yes","Refused","Dont know")

data$ghsx38a.factor = factor(data$ghsx38a, levels = c("1","2","3","4","7","8"))
levels(data$ghsx38a.factor) = c("Rarely","Some of the time","Most of the time","All of the time","Refused","Dont know")

data$ap01.factor = factor(data$ap01, levels = c("0","1","7","8"))
levels(data$ap01.factor) = c("No","Yes","Refused","Dont know")

data$ap01a.factor = factor(data$ap01a, levels = c("0","1","10","2","3","4","5","6","7","77","8","88","9"))
levels(data$ap01a.factor) = c("0 No pain","1","10 Extremely intense pain","2","3","4","5","6","7","Refused","8","DK","9")

data$ap01b.factor = factor(data$ap01b, levels = c("0","1","7","8"))
levels(data$ap01b.factor) = c("No","Yes","Refused","Dont know")

data$ap01e.factor = factor(data$ap01e, levels = c("0","1","7","8"))
levels(data$ap01e.factor) = c("No","Yes","Refused","Dont know")

data$ap01f.factor = factor(data$ap01f, levels = c("0","1","10","2","3","4","5","6","7","77","8","88","9"))
levels(data$ap01f.factor) = c("0 No pain","1","10 Extremely intense pain","2","3","4","5","6","7","Refused","8","DK","9")

data$ap02.factor = factor(data$ap02, levels = c("0","1","7","8"))
levels(data$ap02.factor) = c("No","Yes","Refused","Dont know")

data$ap02a.factor = factor(data$ap02a, levels = c("0","1","7","8"))
levels(data$ap02a.factor) = c("No","Yes","Refused","Dont know")

data$ap02b.factor = factor(data$ap02b, levels = c("1","2","3","7","8"))
levels(data$ap02b.factor) = c("Right only","Left only","Both","Refused","Dont know")

data$ap02c.factor = factor(data$ap02c, levels = c("1","2","3","7","8"))
levels(data$ap02c.factor) = c("Rarely","Monthly","Daily","Dont know","Always")

data$ap02d1.factor = factor(data$ap02d1, levels = c("0","1","2","3","4","8"))
levels(data$ap02d1.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap02d2.factor = factor(data$ap02d2, levels = c("0","1","2","3","4","8"))
levels(data$ap02d2.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap02d3.factor = factor(data$ap02d3, levels = c("0","1","2","3","4","8"))
levels(data$ap02d3.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap02d4.factor = factor(data$ap02d4, levels = c("0","1","2","3","4","8"))
levels(data$ap02d4.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap02d5.factor = factor(data$ap02d5, levels = c("0","1","2","3","4","8"))
levels(data$ap02d5.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap02e.factor = factor(data$ap02e, levels = c("1","2","3","7","8"))
levels(data$ap02e.factor) = c("Rarely","Monthly","Daily","Dont know","Always")

data$ap02f1.factor = factor(data$ap02f1, levels = c("0","1","2","3","4","8"))
levels(data$ap02f1.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap02f2.factor = factor(data$ap02f2, levels = c("0","1","2","3","4","8"))
levels(data$ap02f2.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap02f3.factor = factor(data$ap02f3, levels = c("0","1","2","3","4","8"))
levels(data$ap02f3.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap02f4.factor = factor(data$ap02f4, levels = c("0","1","2","3","4","8"))
levels(data$ap02f4.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap02f5.factor = factor(data$ap02f5, levels = c("0","1","2","3","4","8"))
levels(data$ap02f5.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap02g.factor = factor(data$ap02g, levels = c("0","1","7","8"))
levels(data$ap02g.factor) = c("No","Yes","Refused","Dont know")

data$ap02h.factor = factor(data$ap02h, levels = c("1","2","3","7","8"))
levels(data$ap02h.factor) = c("Right only","Left only","Both","Refused","Dont know")

data$ap02i.factor = factor(data$ap02i, levels = c("1","2","3","4","7","8"))
levels(data$ap02i.factor) = c("Mild","Moderate","Severe","Extreme","Refused","Dont know")

data$ap03.factor = factor(data$ap03, levels = c("0","1","7","8"))
levels(data$ap03.factor) = c("No","Yes","Refused","Dont know")

data$ap03a.factor = factor(data$ap03a, levels = c("0","1","7","8"))
levels(data$ap03a.factor) = c("No","Yes","Refused","Dont know")

data$ap03b.factor = factor(data$ap03b, levels = c("1","2","3","7","8"))
levels(data$ap03b.factor) = c("Right only","Left only","Both","Refused","Dont know")

data$ap03c.factor = factor(data$ap03c, levels = c("1","2","3","4","8"))
levels(data$ap03c.factor) = c("Mild","Moderate","Severe","Extreme","Dont know")

data$ap03d1.factor = factor(data$ap03d1, levels = c("0","1","2","3","4","8"))
levels(data$ap03d1.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap03d2.factor = factor(data$ap03d2, levels = c("0","1","2","3","4","8"))
levels(data$ap03d2.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap03d3.factor = factor(data$ap03d3, levels = c("0","1","2","3","4","8"))
levels(data$ap03d3.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap03d4.factor = factor(data$ap03d4, levels = c("0","1","2","3","4","8"))
levels(data$ap03d4.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap03d5.factor = factor(data$ap03d5, levels = c("0","1","2","3","4","8"))
levels(data$ap03d5.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap03e.factor = factor(data$ap03e, levels = c("1","2","3","4","8"))
levels(data$ap03e.factor) = c("Mild","Moderate","Severe","Extreme","Dont know")

data$ap03f1.factor = factor(data$ap03f1, levels = c("0","1","2","3","4","8"))
levels(data$ap03f1.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap03f2.factor = factor(data$ap03f2, levels = c("0","1","2","3","4","8"))
levels(data$ap03f2.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap03f3.factor = factor(data$ap03f3, levels = c("0","1","2","3","4","8"))
levels(data$ap03f3.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap03f4.factor = factor(data$ap03f4, levels = c("0","1","2","3","4","8"))
levels(data$ap03f4.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap03f5.factor = factor(data$ap03f5, levels = c("0","1","2","3","4","8"))
levels(data$ap03f5.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap04.factor = factor(data$ap04, levels = c("0","1","7","8"))
levels(data$ap04.factor) = c("No","Yes","Refused","Dont know")

data$ap04a.factor = factor(data$ap04a, levels = c("1","2","3","7","8"))
levels(data$ap04a.factor) = c("Right only","Left only","Both","Refused","Dont know")

data$ap04b.factor = factor(data$ap04b, levels = c("1","2","3","4","8"))
levels(data$ap04b.factor) = c("Mild","Moderate","Severe","Extreme","Dont know")

data$ap05.factor = factor(data$ap05, levels = c("0","1","7","8"))
levels(data$ap05.factor) = c("No","Yes","Refused","Dont know")

data$ap05a.factor = factor(data$ap05a, levels = c("1","2","3","4","8"))
levels(data$ap05a.factor) = c("Mild","Moderate","Severe","Extreme","Dont know")

data$ap06.factor = factor(data$ap06, levels = c("0","1","7","8"))
levels(data$ap06.factor) = c("No","Yes","Refused","Dont know")

data$ap07.factor = factor(data$ap07, levels = c("0","1","7","8"))
levels(data$ap07.factor) = c("No","Yes","Refused","Dont know")

data$ap07a.factor = factor(data$ap07a, levels = c("1","2","3","4","7","8"))
levels(data$ap07a.factor) = c("< 1/month","1-3 /month","1-2 /week",">2 /week","Refused","Dont know")

data$ap07b.factor = factor(data$ap07b, levels = c("0","1","7","8"))
levels(data$ap07b.factor) = c("No","Yes","Refused","Dont know")

data$ap07c.factor = factor(data$ap07c, levels = c("0","1","7","8"))
levels(data$ap07c.factor) = c("No","Yes","Refused","Dont know")

data$ap07d.factor = factor(data$ap07d, levels = c("0","1","7","8"))
levels(data$ap07d.factor) = c("No","Yes","Refused","Dont know")

data$ap07e.factor = factor(data$ap07e, levels = c("0","1","7","8"))
levels(data$ap07e.factor) = c("No","Yes","Refused","Dont know")

data$ap07f.factor = factor(data$ap07f, levels = c("0","1","7","8"))
levels(data$ap07f.factor) = c("No","Yes","Refused","Dont know")

data$ap07g.factor = factor(data$ap07g, levels = c("0","1","7","8"))
levels(data$ap07g.factor) = c("No","Yes","Refused","Dont know")

data$ap08.factor = factor(data$ap08, levels = c("0","1","7","8"))
levels(data$ap08.factor) = c("No","Yes","Refused","Dont know")

data$ap09.factor = factor(data$ap09, levels = c("0","1","7","8"))
levels(data$ap09.factor) = c("No","Yes","Refused","Dont know")

data$ap09a.factor = factor(data$ap09a, levels = c("0","1","7","8"))
levels(data$ap09a.factor) = c("Active","Resting","Refused","Dont know")

data$ap09b.factor = factor(data$ap09b, levels = c("0","1","7","8"))
levels(data$ap09b.factor) = c("No","Yes","Refused","Dont know")

data$ap09c.factor = factor(data$ap09c, levels = c("0","1","7","8"))
levels(data$ap09c.factor) = c("No","Yes","Refused","Dont know")

data$ap09d.factor = factor(data$ap09d, levels = c("1","2","3","4","5","6","8"))
levels(data$ap09d.factor) = c("<=1 /month","2 /month","1 /week","2-3 /week","4-6 /week","Daily","Dont know")

data$ap10.factor = factor(data$ap10, levels = c("0","1","7","8"))
levels(data$ap10.factor) = c("No","Yes","Refused","Dont know")

data$ap10al1.factor = factor(data$ap10al1, levels = c("0","1"))
levels(data$ap10al1.factor) = c("No","Yes")

data$ap10ar1.factor = factor(data$ap10ar1, levels = c("0","1"))
levels(data$ap10ar1.factor) = c("No","Yes")

data$ap10al2.factor = factor(data$ap10al2, levels = c("0","1"))
levels(data$ap10al2.factor) = c("No","Yes")

data$ap10ar2.factor = factor(data$ap10ar2, levels = c("0","1"))
levels(data$ap10ar2.factor) = c("No","Yes")

data$ap10al3.factor = factor(data$ap10al3, levels = c("0","1"))
levels(data$ap10al3.factor) = c("No","Yes")

data$ap10ar3.factor = factor(data$ap10ar3, levels = c("0","1"))
levels(data$ap10ar3.factor) = c("No","Yes")

data$ap10al4.factor = factor(data$ap10al4, levels = c("0","1"))
levels(data$ap10al4.factor) = c("No","Yes")

data$ap10ar4.factor = factor(data$ap10ar4, levels = c("0","1"))
levels(data$ap10ar4.factor) = c("No","Yes")

data$ap10al5.factor = factor(data$ap10al5, levels = c("0","1"))
levels(data$ap10al5.factor) = c("No","Yes")

data$ap10ar5.factor = factor(data$ap10ar5, levels = c("0","1"))
levels(data$ap10ar5.factor) = c("No","Yes")

data$ap10al6.factor = factor(data$ap10al6, levels = c("0","1"))
levels(data$ap10al6.factor) = c("No","Yes")

data$ap10ar6.factor = factor(data$ap10ar6, levels = c("0","1"))
levels(data$ap10ar6.factor) = c("No","Yes")

data$ap10al7.factor = factor(data$ap10al7, levels = c("0","1"))
levels(data$ap10al7.factor) = c("No","Yes")

data$ap10ar7.factor = factor(data$ap10ar7, levels = c("0","1"))
levels(data$ap10ar7.factor) = c("No","Yes")

data$ap10al8.factor = factor(data$ap10al8, levels = c("0","1"))
levels(data$ap10al8.factor) = c("No","Yes")

data$ap10ar8.factor = factor(data$ap10ar8, levels = c("0","1"))
levels(data$ap10ar8.factor) = c("No","Yes")

data$ap10al9.factor = factor(data$ap10al9, levels = c("0","1"))
levels(data$ap10al9.factor) = c("No","Yes")

data$ap10ar9.factor = factor(data$ap10ar9, levels = c("0","1"))
levels(data$ap10ar9.factor) = c("No","Yes")

data$ap10al10.factor = factor(data$ap10al10, levels = c("0","1"))
levels(data$ap10al10.factor) = c("No","Yes")

data$ap10ar10.factor = factor(data$ap10ar10, levels = c("0","1"))
levels(data$ap10ar10.factor) = c("No","Yes")

data$ap10al11.factor = factor(data$ap10al11, levels = c("0","1"))
levels(data$ap10al11.factor) = c("No","Yes")

data$ap10ar11.factor = factor(data$ap10ar11, levels = c("0","1"))
levels(data$ap10ar11.factor) = c("No","Yes")

data$ap10al12.factor = factor(data$ap10al12, levels = c("0","1"))
levels(data$ap10al12.factor) = c("No","Yes")

data$ap10ar12.factor = factor(data$ap10ar12, levels = c("0","1"))
levels(data$ap10ar12.factor) = c("No","Yes")

data$ap10al13.factor = factor(data$ap10al13, levels = c("0","1"))
levels(data$ap10al13.factor) = c("No","Yes")

data$ap10ar13.factor = factor(data$ap10ar13, levels = c("0","1"))
levels(data$ap10ar13.factor) = c("No","Yes")

data$ap10al14.factor = factor(data$ap10al14, levels = c("0","1"))
levels(data$ap10al14.factor) = c("No","Yes")

data$ap10ar14.factor = factor(data$ap10ar14, levels = c("0","1"))
levels(data$ap10ar14.factor) = c("No","Yes")

data$ap10al15.factor = factor(data$ap10al15, levels = c("0","1"))
levels(data$ap10al15.factor) = c("No","Yes")

data$ap10ar15.factor = factor(data$ap10ar15, levels = c("0","1"))
levels(data$ap10ar15.factor) = c("No","Yes")

data$ap10al16.factor = factor(data$ap10al16, levels = c("0","1"))
levels(data$ap10al16.factor) = c("No","Yes")

data$ap10ar16.factor = factor(data$ap10ar16, levels = c("0","1"))
levels(data$ap10ar16.factor) = c("No","Yes")

data$ap10al17.factor = factor(data$ap10al17, levels = c("0","1"))
levels(data$ap10al17.factor) = c("No","Yes")

data$ap10ar17.factor = factor(data$ap10ar17, levels = c("0","1"))
levels(data$ap10ar17.factor) = c("No","Yes")

data$ap10al18.factor = factor(data$ap10al18, levels = c("0","1"))
levels(data$ap10al18.factor) = c("No","Yes")

data$ap10ar18.factor = factor(data$ap10ar18, levels = c("0","1"))
levels(data$ap10ar18.factor) = c("No","Yes")

data$ap10al19.factor = factor(data$ap10al19, levels = c("0","1"))
levels(data$ap10al19.factor) = c("No","Yes")

data$ap10ar19.factor = factor(data$ap10ar19, levels = c("0","1"))
levels(data$ap10ar19.factor) = c("No","Yes")

data$ap10b1.factor = factor(data$ap10b1, levels = c("0","1","2","3","4","8"))
levels(data$ap10b1.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap10b2.factor = factor(data$ap10b2, levels = c("0","1","2","3","4","8"))
levels(data$ap10b2.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap10b3.factor = factor(data$ap10b3, levels = c("0","1","2","3","4","8"))
levels(data$ap10b3.factor) = c("None","Mild","Moderate","Severe","Extreme","Dont know")

data$ap11.factor = factor(data$ap11, levels = c("0","1","7","8"))
levels(data$ap11.factor) = c("No","Yes","Refused","Dont know")

data$ap11ar1.factor = factor(data$ap11ar1, levels = c("0","1"))
levels(data$ap11ar1.factor) = c("No","Yes")

data$ap11al1.factor = factor(data$ap11al1, levels = c("0","1"))
levels(data$ap11al1.factor) = c("No","Yes")

data$ap11ar2.factor = factor(data$ap11ar2, levels = c("0","1"))
levels(data$ap11ar2.factor) = c("No","Yes")

data$ap11al2.factor = factor(data$ap11al2, levels = c("0","1"))
levels(data$ap11al2.factor) = c("No","Yes")

data$ap11ar3.factor = factor(data$ap11ar3, levels = c("0","1"))
levels(data$ap11ar3.factor) = c("No","Yes")

data$ap11al3.factor = factor(data$ap11al3, levels = c("0","1"))
levels(data$ap11al3.factor) = c("No","Yes")

data$ap11ar4.factor = factor(data$ap11ar4, levels = c("0","1"))
levels(data$ap11ar4.factor) = c("No","Yes")

data$ap11al4.factor = factor(data$ap11al4, levels = c("0","1"))
levels(data$ap11al4.factor) = c("No","Yes")

data$ap11ar5.factor = factor(data$ap11ar5, levels = c("0","1"))
levels(data$ap11ar5.factor) = c("No","Yes")

data$ap11al5.factor = factor(data$ap11al5, levels = c("0","1"))
levels(data$ap11al5.factor) = c("No","Yes")

data$ap11ar6.factor = factor(data$ap11ar6, levels = c("0","1"))
levels(data$ap11ar6.factor) = c("No","Yes")

data$ap11al6.factor = factor(data$ap11al6, levels = c("0","1"))
levels(data$ap11al6.factor) = c("No","Yes")

data$ap11ar7.factor = factor(data$ap11ar7, levels = c("0","1"))
levels(data$ap11ar7.factor) = c("No","Yes")

data$ap11al7.factor = factor(data$ap11al7, levels = c("0","1"))
levels(data$ap11al7.factor) = c("No","Yes")

data$ap11ar8.factor = factor(data$ap11ar8, levels = c("0","1"))
levels(data$ap11ar8.factor) = c("No","Yes")

data$ap11al8.factor = factor(data$ap11al8, levels = c("0","1"))
levels(data$ap11al8.factor) = c("No","Yes")

data$ap11ar9.factor = factor(data$ap11ar9, levels = c("0","1"))
levels(data$ap11ar9.factor) = c("No","Yes")

data$ap11al9.factor = factor(data$ap11al9, levels = c("0","1"))
levels(data$ap11al9.factor) = c("No","Yes")

data$ap11ar10.factor = factor(data$ap11ar10, levels = c("0","1"))
levels(data$ap11ar10.factor) = c("No","Yes")

data$ap11al10.factor = factor(data$ap11al10, levels = c("0","1"))
levels(data$ap11al10.factor) = c("No","Yes")

data$ap11ar11.factor = factor(data$ap11ar11, levels = c("0","1"))
levels(data$ap11ar11.factor) = c("No","Yes")

data$ap11al11.factor = factor(data$ap11al11, levels = c("0","1"))
levels(data$ap11al11.factor) = c("No","Yes")

data$ap11ar12.factor = factor(data$ap11ar12, levels = c("0","1"))
levels(data$ap11ar12.factor) = c("No","Yes")

data$ap11al12.factor = factor(data$ap11al12, levels = c("0","1"))
levels(data$ap11al12.factor) = c("No","Yes")

data$ap11ar13.factor = factor(data$ap11ar13, levels = c("0","1"))
levels(data$ap11ar13.factor) = c("No","Yes")

data$ap11al13.factor = factor(data$ap11al13, levels = c("0","1"))
levels(data$ap11al13.factor) = c("No","Yes")

data$ap11ar14.factor = factor(data$ap11ar14, levels = c("0","1"))
levels(data$ap11ar14.factor) = c("No","Yes")

data$ap11al14.factor = factor(data$ap11al14, levels = c("0","1"))
levels(data$ap11al14.factor) = c("No","Yes")

data$ap11ar15.factor = factor(data$ap11ar15, levels = c("0","1"))
levels(data$ap11ar15.factor) = c("No","Yes")

data$ap11al15.factor = factor(data$ap11al15, levels = c("0","1"))
levels(data$ap11al15.factor) = c("No","Yes")

data$ap11ar16.factor = factor(data$ap11ar16, levels = c("0","1"))
levels(data$ap11ar16.factor) = c("No","Yes")

data$ap11al16.factor = factor(data$ap11al16, levels = c("0","1"))
levels(data$ap11al16.factor) = c("No","Yes")

data$pa01.factor = factor(data$pa01, levels = c("0","1","7","8"))
levels(data$pa01.factor) = c("No","Yes","Refused","Dont know")

data$pa02.factor = factor(data$pa02, levels = c("0","1","7","8"))
levels(data$pa02.factor) = c("No","Yes","Refused","Dont know")

data$pa03.factor = factor(data$pa03, levels = c("0","1","7","8"))
levels(data$pa03.factor) = c("No","Yes","Refused","Dont know")

data$pa04.factor = factor(data$pa04, levels = c("0","1","7","8"))
levels(data$pa04.factor) = c("No","Yes","Refused","Dont know")

data$pa05.factor = factor(data$pa05, levels = c("0","1","7","8"))
levels(data$pa05.factor) = c("No","Yes","Refused","Dont know")

data$pa06.factor = factor(data$pa06, levels = c("0","1","7","8"))
levels(data$pa06.factor) = c("No","Yes","Refused","Dont know")

data$pa07.factor = factor(data$pa07, levels = c("0","1","7","8"))
levels(data$pa07.factor) = c("No","Yes","Refused","Dont know")

data$pa08.factor = factor(data$pa08, levels = c("0","1","7","8"))
levels(data$pa08.factor) = c("No","Yes","Refused","Dont know")

data$pa09.factor = factor(data$pa09, levels = c("0","1","7","8"))
levels(data$pa09.factor) = c("No","Yes","Refused","Dont know")

data$pa09a.factor = factor(data$pa09a, levels = c("0","1","7","8"))
levels(data$pa09a.factor) = c("No","Yes","Refused","Dont know")

data$pa09b.factor = factor(data$pa09b, levels = c("1","2","3","4","5","6","7","8","9"))
levels(data$pa09b.factor) = c("bad weather","too busy/no time","injury","health/illness","lost interest/partner","felt unsafe","refused","dont know","other")

data$pa10.factor = factor(data$pa10, levels = c("0","1","7","8"))
levels(data$pa10.factor) = c("No","Yes","Refused","Dont know")

data$pa10f.factor = factor(data$pa10f, levels = c("0","1","2","8"))
levels(data$pa10f.factor) = c("stroll","moderate","brisk","dont know")

data$pa10a.factor = factor(data$pa10a, levels = c("0","1","7","8"))
levels(data$pa10a.factor) = c("No","Yes","Refused","Dont know")

data$pa10b.factor = factor(data$pa10b, levels = c("1","2","3","4","5","6","7","8","9"))
levels(data$pa10b.factor) = c("bad weather","too busy/no time","injury","health/illness","lost interest/partner","felt unsafe","refused","dont know","other")

data$pa11.factor = factor(data$pa11, levels = c("0","1","7","8"))
levels(data$pa11.factor) = c("No","Yes","Refused","Dont know")

data$pa11a.factor = factor(data$pa11a, levels = c("0","1","7","8"))
levels(data$pa11a.factor) = c("No","Yes","Refused","Dont know")

data$pa11b.factor = factor(data$pa11b, levels = c("1","2","3","4","5","6","7","8","9"))
levels(data$pa11b.factor) = c("bad weather","too busy/no time","injury","health/illness","lost interest/partner","felt unsafe","refused","dont know","other")

data$pa12.factor = factor(data$pa12, levels = c("0","1","7","8"))
levels(data$pa12.factor) = c("No","Yes","Refused","Dont know")

data$pa12a.factor = factor(data$pa12a, levels = c("0","1","7","8"))
levels(data$pa12a.factor) = c("No","Yes","Refused","Dont know")

data$pa12b.factor = factor(data$pa12b, levels = c("1","2","3","4","5","6","7","8","9"))
levels(data$pa12b.factor) = c("bad weather","too busy/no time","injury","health/illness","lost interest/partner","felt unsafe","refused","dont know","other")

data$pa13.factor = factor(data$pa13, levels = c("0","1","7","8"))
levels(data$pa13.factor) = c("No","Yes","Refused","Dont know")

data$pa13c1.factor = factor(data$pa13c1, levels = c("1","10","11","12","13","2","3","4","5","6","7","77","8","88","9"))
levels(data$pa13c1.factor) = c("Cycling etc","rowing","xc skiing","other 1","other 2","swimming","running","soccer","basketball","volleyball","aerobics etc","refused","racquet sports","Dont know","stair-steppers etc")

data$pa13e1.factor = factor(data$pa13e1, levels = c("1","2","3","7","8"))
levels(data$pa13e1.factor) = c("Leisurely","Moderate","Vigorous","Refused","Dont know")

data$pa13c2.factor = factor(data$pa13c2, levels = c("1","10","11","12","13","2","3","4","5","6","7","77","8","88","9"))
levels(data$pa13c2.factor) = c("Cycling etc","rowing","xc skiing","other 1","other 2","swimming","running","soccer","basketball","volleyball","aerobics etc","refused","racquet sports","Dont know","stair-steppers etc")

data$pa13e2.factor = factor(data$pa13e2, levels = c("1","2","3","7","8"))
levels(data$pa13e2.factor) = c("Leisurely","Moderate","Vigorous","Refused","Dont know")

data$pa13c3.factor = factor(data$pa13c3, levels = c("1","10","11","12","13","2","3","4","5","6","7","77","8","88","9"))
levels(data$pa13c3.factor) = c("Cycling etc","rowing","xc skiing","other 1","other 2","swimming","running","soccer","basketball","volleyball","aerobics etc","refused","racquet sports","Dont know","stair-steppers etc")

data$pa13e3.factor = factor(data$pa13e3, levels = c("1","2","3","7","8"))
levels(data$pa13e3.factor) = c("Leisurely","Moderate","Vigorous","Refused","Dont know")

data$pa13c4.factor = factor(data$pa13c4, levels = c("1","10","11","12","13","2","3","4","5","6","7","77","8","88","9"))
levels(data$pa13c4.factor) = c("Cycling etc","rowing","xc skiing","other 1","other 2","swimming","running","soccer","basketball","volleyball","aerobics etc","refused","racquet sports","Dont know","stair-steppers etc")

data$pa13e4.factor = factor(data$pa13e4, levels = c("1","2","3","7","8"))
levels(data$pa13e4.factor) = c("Leisurely","Moderate","Vigorous","Refused","Dont know")

data$pa13a.factor = factor(data$pa13a, levels = c("0","1","7","8"))
levels(data$pa13a.factor) = c("No","Yes","Refused","Dont know")

data$pa13b.factor = factor(data$pa13b, levels = c("1","2","3","4","5","6","7","8","9"))
levels(data$pa13b.factor) = c("bad weather","too busy/no time","injury","health/illness","lost interest/partner","felt unsafe","refused","dont know","other")

data$pa14.factor = factor(data$pa14, levels = c("0","1","7","8"))
levels(data$pa14.factor) = c("No","Yes","Refused","Dont know")

data$pa14c1.factor = factor(data$pa14c1, levels = c("1","10","11","12","13","2","3","4","5","6","7","77","8","88","9"))
levels(data$pa14c1.factor) = c("golf","fishing","skiing","other 1","other 2","bowl/boccie","dancing","skating etc","table tennis","billiards","horseback riding","refused","hunting","dont know","sailing/boating")

data$pa14c2.factor = factor(data$pa14c2, levels = c("1","10","11","12","13","2","3","4","5","6","7","77","8","88","9"))
levels(data$pa14c2.factor) = c("golf","fishing","skiing","other 1","other 2","bowl/boccie","dancing","skating etc","table tennis","billiards","horseback riding","refused","hunting","dont know","sailing/boating")

data$pa14c3.factor = factor(data$pa14c3, levels = c("1","10","11","12","13","2","3","4","5","6","7","77","8","88","9"))
levels(data$pa14c3.factor) = c("golf","fishing","skiing","other 1","other 2","bowl/boccie","dancing","skating etc","table tennis","billiards","horseback riding","refused","hunting","dont know","sailing/boating")

data$pa14c4.factor = factor(data$pa14c4, levels = c("1","10","11","12","13","2","3","4","5","6","7","77","8","88","9"))
levels(data$pa14c4.factor) = c("golf","fishing","skiing","other 1","other 2","bowl/boccie","dancing","skating etc","table tennis","billiards","horseback riding","refused","hunting","dont know","sailing/boating")

data$pa14a.factor = factor(data$pa14a, levels = c("0","1","7","8"))
levels(data$pa14a.factor) = c("No","Yes","Refused","Dont know")

data$pa14b.factor = factor(data$pa14b, levels = c("1","2","3","4","5","6","7","8","9"))
levels(data$pa14b.factor) = c("bad weather","too busy/no time","injury","health/illness","lost interest/partner","felt unsafe","refused","dont know","other")

data$oact01.factor = factor(data$oact01, levels = c("0","1","7","8"))
levels(data$oact01.factor) = c("No","Yes","Refused","Dont know")

data$oact01c.factor = factor(data$oact01c, levels = c("1","2","3","4","7","8"))
levels(data$oact01c.factor) = c("mainly sitting","some standing and walking","mostly standing and walking","walking and heavy manual work","refused","dont know")

data$oact02.factor = factor(data$oact02, levels = c("0","1","7","8"))
levels(data$oact02.factor) = c("No","Yes","Refused","Dont know")

data$oact02c.factor = factor(data$oact02c, levels = c("1","2","3","4","7","8"))
levels(data$oact02c.factor) = c("mainly sitting","some standing and walking","mostly standing and walking","walking and heavy manual work","refused","dont know")

data$oact03.factor = factor(data$oact03, levels = c("0","1","7","8"))
levels(data$oact03.factor) = c("No","Yes","Refused","Dont know")

data$oact04.factor = factor(data$oact04, levels = c("0","1","2","3","4","7","8"))
levels(data$oact04.factor) = c("Less than once per week","1 time per week","2 to 3 times per week","4 to 6 times per week","At least once a day","Refused","Dont know")

data$oact05.factor = factor(data$oact05, levels = c("0","1","2","3","4","7","8"))
levels(data$oact05.factor) = c("Less than once per week","1 time per week","2 to 3 times per week","4 to 6 times per week","At least once a day","Refused","Dont know")

data$oact06a.factor = factor(data$oact06a, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06a.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06b.factor = factor(data$oact06b, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06b.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06c.factor = factor(data$oact06c, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06c.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06d.factor = factor(data$oact06d, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06d.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06e.factor = factor(data$oact06e, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06e.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06f.factor = factor(data$oact06f, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06f.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06g.factor = factor(data$oact06g, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06g.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06h.factor = factor(data$oact06h, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06h.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06i.factor = factor(data$oact06i, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06i.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06j.factor = factor(data$oact06j, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06j.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06k.factor = factor(data$oact06k, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06k.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06l.factor = factor(data$oact06l, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06l.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06m.factor = factor(data$oact06m, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06m.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06n.factor = factor(data$oact06n, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06n.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06o.factor = factor(data$oact06o, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06o.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06p.factor = factor(data$oact06p, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06p.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact06q.factor = factor(data$oact06q, levels = c("0","1","2","3","4","7","8"))
levels(data$oact06q.factor) = c("Not at all","Less than once a month","Less than once a week","At least every week","Almost daily","Refused","Dont know")

data$oact07.factor = factor(data$oact07, levels = c("0","1","2","3","4","5","6","7","8"))
levels(data$oact07.factor) = c("Zero","More than 0 up to 7 hrs","More than 7 up to 14 hrs","More than 14 up to 21 hrs","More than 21 up to 28 hrs","More than 28 up to 35 hrs","More than 35 hrs","Refused","Dont know")

data$smk01.factor = factor(data$smk01, levels = c("0","1","7","8"))
levels(data$smk01.factor) = c("No","Yes","Refused","Dont know")

data$smk01a.factor = factor(data$smk01a, levels = c("0","1","7","8"))
levels(data$smk01a.factor) = c("No","Yes","Refused","Dont know")

data$smk01d.factor = factor(data$smk01d, levels = c("0","1","7","8"))
levels(data$smk01d.factor) = c("No","Yes","Refused","Dont know")

data$smk02.factor = factor(data$smk02, levels = c("0","1","7","8"))
levels(data$smk02.factor) = c("No","Yes","Refused","Dont know")

data$smk02c.factor = factor(data$smk02c, levels = c("0","1","7","8"))
levels(data$smk02c.factor) = c("No","Yes","Refused","Dont know")

data$smk03.factor = factor(data$smk03, levels = c("0","1","7","8"))
levels(data$smk03.factor) = c("No","Yes","Refused","Dont know")

data$smk03c.factor = factor(data$smk03c, levels = c("0","1","7","8"))
levels(data$smk03c.factor) = c("No","Yes","Refused","Dont know")

data$alc01.factor = factor(data$alc01, levels = c("0","1","7","8"))
levels(data$alc01.factor) = c("No","Yes","Refused","Dont know")

data$alc01a.factor = factor(data$alc01a, levels = c("0","1","2","3","4","5","6","7","8"))
levels(data$alc01a.factor) = c("less than one","1-3 drinks","4-7 drinks","8-14 drinks","15-21 drinks","22-28 drinks","more than 28","refused","dont know")

data$alc01b.factor = factor(data$alc01b, levels = c("0","1","2","3","4","5","6","7","8"))
levels(data$alc01b.factor) = c("less than one","1-3 drinks","4-7 drinks","8-14 drinks","15-21 drinks","22-28 drinks","more than 28","refused","dont know")

data$alc01c.factor = factor(data$alc01c, levels = c("1","2","3","4","5","6","7","77","8","88"))
levels(data$alc01c.factor) = c("dislike alcohol","religious/moral reasons","health reasons","former alcoholic","alcohol abuse in family","no occasion","dietary issues","refused","other","dont know")

data$alc02.factor = factor(data$alc02, levels = c("0","1","7","8"))
levels(data$alc02.factor) = c("No","Yes","Refused","Dont know")

data$alc03.factor = factor(data$alc03, levels = c("0","1","7","8"))
levels(data$alc03.factor) = c("No","Yes","Refused","Dont know")

data$psy01.factor = factor(data$psy01, levels = c("0","1","10","2","3","4","5","6","7","77","8","88","9"))
levels(data$psy01.factor) = c("0","1","10","2","3","4","5","6","7","77","8","88","9")

data$psy02.factor = factor(data$psy02, levels = c("0","1","7","8"))
levels(data$psy02.factor) = c("Disagree","Agree","Refused","Dont know")

data$psy02a.factor = factor(data$psy02a, levels = c("1","2","8"))
levels(data$psy02a.factor) = c("Somewhat","Strongly","Dont know")

data$psy02b.factor = factor(data$psy02b, levels = c("1","2","8"))
levels(data$psy02b.factor) = c("Somewhat","Strongly","Dont know")

data$psy03.factor = factor(data$psy03, levels = c("0","1","7","8"))
levels(data$psy03.factor) = c("Disagree","Agree","Refused","Dont know")

data$psy03a.factor = factor(data$psy03a, levels = c("1","2","8"))
levels(data$psy03a.factor) = c("Somewhat","Strongly","Dont know")

data$psy03b.factor = factor(data$psy03b, levels = c("1","2","8"))
levels(data$psy03b.factor) = c("Somewhat","Strongly","Dont know")

data$psy04.factor = factor(data$psy04, levels = c("0","1","7","8"))
levels(data$psy04.factor) = c("No","Yes","Refused","Dont know")

data$psy04a.factor = factor(data$psy04a, levels = c("1","2","3","7","8"))
levels(data$psy04a.factor) = c("A little more","Some more","A lot more","Refused","Dont know")

data$pss02.factor = factor(data$pss02, levels = c("0","1","2","3","4","7","8"))
levels(data$pss02.factor) = c("Never","Almost never","Sometimes","Fairly often","Very often","Refused","Dont know")

data$pss03.factor = factor(data$pss03, levels = c("0","1","2","3","4","7","8"))
levels(data$pss03.factor) = c("Never","Almost never","Sometimes","Fairly often","Very often","Refused","Dont know")

data$pss07.factor = factor(data$pss07, levels = c("0","1","2","3","4","7","8"))
levels(data$pss07.factor) = c("Very often","Fairly often","Sometimes","Almost never","Never","Refused","Dont know")

data$pss06.factor = factor(data$pss06, levels = c("0","1","2","3","4","7","8"))
levels(data$pss06.factor) = c("Very often","Fairly often","Sometimes","Almost never","Never","Refused","Dont know")

data$pss11.factor = factor(data$pss11, levels = c("0","1","2","3","4","7","8"))
levels(data$pss11.factor) = c("Never","Almost never","Sometimes","Fairly often","Very often","Refused","Dont know")

data$pss14.factor = factor(data$pss14, levels = c("0","1","2","3","4","7","8"))
levels(data$pss14.factor) = c("Never","Almost never","Sometimes","Fairly often","Very often","Refused","Dont know")

data$cmq01.factor = factor(data$cmq01, levels = c("0","1","2","3","4","7","8"))
levels(data$cmq01.factor) = c("Less than once per week","1 time per week","2 to 3 times per week","4 to 6 times per week","At least once a day","Refused","Dont know")

data$cmq02.factor = factor(data$cmq02, levels = c("0","1","2","3","4","7","8"))
levels(data$cmq02.factor) = c("Never","Rarely","Sometimes","Often","Always","Refused","Dont know")

data$cmq03.factor = factor(data$cmq03, levels = c("0","1","2","3","4","7","8"))
levels(data$cmq03.factor) = c("Never","Rarely","Sometimes","Often","Always","Refused","Dont know")

data$cmq04.factor = factor(data$cmq04, levels = c("0","1","2","3","4","7","8"))
levels(data$cmq04.factor) = c("Never","Rarely","Sometimes","Often","Always","Refused","Dont know")

data$cmq05.factor = factor(data$cmq05, levels = c("0","1","2","3","4","7","8"))
levels(data$cmq05.factor) = c("Never","Rarely","Sometimes","Often","Always","Refused","Dont know")

data$sf01.factor = factor(data$sf01, levels = c("1","2","3","4","5","7","8"))
levels(data$sf01.factor) = c("Excellent","Very good","Good","Fair","Poor","Refused","Dont know")

data$sf02.factor = factor(data$sf02, levels = c("1","2","3","7","8"))
levels(data$sf02.factor) = c("Yes limited a lot","Yes limited a little","No not limited at all","Refused","Dont know")

data$sf03.factor = factor(data$sf03, levels = c("1","2","3","7","8"))
levels(data$sf03.factor) = c("Yes limited a lot","Yes limited a little","No not limited at all","Refused","Dont know")

data$sf04.factor = factor(data$sf04, levels = c("1","2","7","8"))
levels(data$sf04.factor) = c("Yes","No","Refused","Dont know")

data$sf05.factor = factor(data$sf05, levels = c("1","2","7","8"))
levels(data$sf05.factor) = c("Yes","No","Refused","Dont know")

data$sf06.factor = factor(data$sf06, levels = c("1","2","7","8"))
levels(data$sf06.factor) = c("Yes","No","Refused","Dont know")

data$sf07.factor = factor(data$sf07, levels = c("1","2","7","8"))
levels(data$sf07.factor) = c("Yes","No","Refused","Dont know")

data$sf08.factor = factor(data$sf08, levels = c("1","2","3","4","5","7","8"))
levels(data$sf08.factor) = c("Not at all","Slightly","Moderately","Quite a bit","Extremely","Refused","Dont know")

data$sf09.factor = factor(data$sf09, levels = c("1","2","3","4","5","6","7","8"))
levels(data$sf09.factor) = c("All","Most","A good bit","Some","A little","None","Refused","Dont know")

data$sf10.factor = factor(data$sf10, levels = c("1","2","3","4","5","6","7","8"))
levels(data$sf10.factor) = c("All","Most","A good bit","Some","A little","None","Refused","Dont know")

data$sf11.factor = factor(data$sf11, levels = c("1","2","3","4","5","6","7","8"))
levels(data$sf11.factor) = c("All","Most","A good bit","Some","A little","None","Refused","Dont know")

data$sf12.factor = factor(data$sf12, levels = c("1","2","3","4","5","7","8"))
levels(data$sf12.factor) = c("All","Most","Some","A little","None","Refused","Dont know")

