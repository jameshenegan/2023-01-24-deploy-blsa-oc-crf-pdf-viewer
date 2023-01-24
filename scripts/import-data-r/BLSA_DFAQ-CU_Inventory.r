#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_DFAQ-CU_Inventory.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_DFAInv)="CRF Version"
label(data$date_DFAInv)="Date Completed"
label(data$everused)="Have you ever used cannabis"
label(data$lastusage)="When did you last use cannabis"
label(data$usagetoday)="How high are you right now"
label(data$avguse)="Average frequency you currently use cannabis"
label(data$howlongfreq)="How long have you been using cannabis at this frequency"
label(data$beforelongfreq)="Before the period of time you indicated above how frequently did you use cannabis"
label(data$pastweek)="How many days of the past week did you use cannabis"
label(data$dayspastmth)="How many days of the past month did you use cannabis"
label(data$entirelife)="How many times have you used cannabis in your entire life"
label(data$duringweek)="Pattern of cannabis use throughout the week"
label(data$preusehours)="How many hours after waking up do you typically first use cannabis"
label(data$weekday)="How many times a day on a typical weekday do you use cannabis"
label(data$weekend)="How many times a day on a typical weekend do you use cannabis"
label(data$pmethod)="What is the primary method you use to ingest cannabis"
label(data$potherm)="Primary method Other"
label(data$othmethod)="Other methods of use at least 25 percent"
label(data$otherm)="Other method Other"
label(data$pform)="Primary form of cannabis you use"
label(data$potherf)="Primary form Other"
label(data$oform)="Other forms of cannabis you use at least 25 percent"
label(data$oforms)="Other form Other"
label(data$sessionamt)="In a typical session how much marijuana do you personally use"
label(data$sessionamtother)="Session how much marijuana Other"
label(data$dayamt)="On a typical day how much marijuana do you personally use"
label(data$dayamtother)="Day how much marijuana Other"
label(data$weekamt)="In a typical week how much marijuana do you personally use"
label(data$weekamtother)="Week how much marijuana Other"
label(data$numsessions)="On a typical day how many sessions do you have"
label(data$thcamt)="Average THC content of marijuana you typically use"
label(data$sessionhits)="Session Cannabis concentrates how many hits do you personally take"
label(data$dayhits)="Day Cannabis concentrates how many hits do you personally take"
label(data$yesterdayhits)="Yesterday Cannabis concentrates how many hits did you personally take"
label(data$daynumsessions)="Day cannabis concentrates how many sessions do you have"
label(data$avgconthcamt)="Concentrates THC content"
label(data$sessionmilligrams)="Edibles how many milligrams of THC do you ingest in a typical session"
label(data$currentage)="Current age"
label(data$canntotalyears)="How many years in total have you used cannabis"
label(data$agetriedcannabis)="How old were you when you FIRST tried cannabis"
label(data$regusedlifetime)="Has there been any time in your life when you used cannabis regularly (2 or more times per month for 6 months or longer)?"
label(data$startedyears)="How old were you when you FIRST STARTED using cannabis regularly (2 or more times/month)?"
label(data$regused6mth)="Has there been any time in your life when you used cannabis on a daily or near daily basis for 6 months or longer"
label(data$dailyuseage)="How old were you when you FIRST STARTED using cannabis on a daily or nearly basis"
label(data$beforeage16)="What is the frequency that you used cannabis before the age of 16"
label(data$medicinaluse)="Do you have a physicianâ€™s recommendation to use cannabis for medicinal purposes"
label(data$medcondition)="Which medical condition(s) do you use cannabis for"
label(data$recpercentuse)="What percentage of the time do you use cannabis for recreational (rather than medicinal) purposes"
label(data$canabistypeuse)="What type of medical cannabis do you use"
label(data$conthcamt)="If you use THC only what is the average THC content"
label(data$concbdamt)="If you use CBD only what is the average CBD content"
label(data$conboththcamt)="If you use both THC and CBD, what is the average THC content"
label(data$crf_parent_name_DFAInv)="CRF Parent Name"
label(data$item_group_repeat_DFAInv)="Item Group Repeate"
label(data$oform_0)="Other forms of cannabis you use at least 25 percent : None (Checkbox Indicator)"
label(data$oform_a)="Other forms of cannabis you use at least 25 percent : Marijuana (Checkbox Indicator)"
label(data$oform_b)="Other forms of cannabis you use at least 25 percent : Concentrates (e.g. Oil Was Shatter Butane Hash Oil Dabs) (Checkbox Indicator)"
label(data$oform_c)="Other forms of cannabis you use at least 25 percent : Edibles (Checkbox Indicator)"
label(data$oform_d)="Other forms of cannabis you use at least 25 percent : Other (Checkbox Indicator)"
label(data$othmethod_0)="Other methods of use at least 25 percent : None (Checkbox Indicator)"
label(data$othmethod_1)="Other methods of use at least 25 percent : Joints (Checkbox Indicator)"
label(data$othmethod_2)="Other methods of use at least 25 percent : Blunts (cigar sized joints) (Checkbox Indicator)"
label(data$othmethod_3)="Other methods of use at least 25 percent : Hand pipe (Checkbox Indicator)"
label(data$othmethod_4)="Other methods of use at least 25 percent : Bong (water pipe) (Checkbox Indicator)"
label(data$othmethod_5)="Other methods of use at least 25 percent : Hookah (Checkbox Indicator)"
label(data$othmethod_6)="Other methods of use at least 25 percent : Vaporizer (e.g. Volcano Vape pen) (Checkbox Indicator)"
label(data$othmethod_7)="Other methods of use at least 25 percent : Edibles (Checkbox Indicator)"
label(data$study_name_DFAInv)="Study Name"

#Create new variables for factors
data$everused.factor = factor(data$everused, levels = c("0","1"))
levels(data$everused.factor) = c("No","Yes")

data$lastusage.factor = factor(data$lastusage, levels = c("1","10","11","2","3","4","5","6","7","8","9"))
levels(data$lastusage.factor) = c("Over a year ago","today*","I am currently high*","9 - 12 months ago","6 - 9 months ago","3 - 6 months ago ","1 - 3 months ago","less than 1 month ago","last week","this week","yesterday")

data$usagetoday.factor = factor(data$usagetoday, levels = c("0","1","2","3","4"))
levels(data$usagetoday.factor) = c("I am not at all high","I am a little bit high","I am moderately high","I am very high","I am extremely high")

data$avguse.factor = factor(data$avguse, levels = c("0","1","10","11","12","2","3","4","5","6","7","8","9"))
levels(data$avguse.factor) = c("I do not use cannabis","less than once a year","5 - 6 times a week ","once a day","more than once a day","once a year","once every 3-6 months (2-4 times/yr)","once every 2 months (6 times/yr)","once a month (12 times/yr)","2 - 3 times a month","once a week","twice a week","3 - 4 times a week")

data$howlongfreq.factor = factor(data$howlongfreq, levels = c("1","10","11","12","2","3","4","5","6","7","8","9"))
levels(data$howlongfreq.factor) = c("less than 1 month","10 - 15 years","15 - 20 years","more than 20 years","1 - 3 months","3 - 6 months","6 - 9 months","9 - 12 months","1 - 2 years","2 - 3 years","3 - 5 years","5 - 10 years")

data$beforelongfreq.factor = factor(data$beforelongfreq, levels = c("0","1","10","11","12","2","3","4","5","6","7","8","9"))
levels(data$beforelongfreq.factor) = c("I do not use cannabis","less than once a year","5 - 6 times a week ","once a day","more than once a day","once a year","once every 3-6 months (2-4 times/yr)","once every 2 months (6 times/yr)","once a month (12 times/yr)","2 - 3 times a month","once a week","twice a week","3 - 4 times a week")

data$pastweek.factor = factor(data$pastweek, levels = c("0","1","2","3","4","5","6","7"))
levels(data$pastweek.factor) = c("0 days","1 day","2 days","3 days","4 days","5 days","6 days","7 days")

data$entirelife.factor = factor(data$entirelife, levels = c("1","10","2","3","4","5","6","7","8","9"))
levels(data$entirelife.factor) = c("1 - 5 times in my life","More than 10000 times in my life","6 - 10 times in my life","11 - 50 times in my life","51 -100 times in my life","101 - 500 times in my life","501 - 1000 times in my life","1001 - 2000 times in my life","2001 - 5000 times in my life","5001 - 10000 times in my life")

data$duringweek.factor = factor(data$duringweek, levels = c("0","1","2","3"))
levels(data$duringweek.factor) = c("I do not use cannabis at all","I only use cannabis on weekends","I only use cannabis on weekdays","I use cannabis on weekends and weekdays")

data$preusehours.factor = factor(data$preusehours, levels = c("0","1","2","3","4","5","6","7","8"))
levels(data$preusehours.factor) = c("I do not use cannabis at all","12 - 18 hours after waking up","9 - 12 hours after waking up","6 - 9 hours after waking up","3 - 6 hours after waking up","1 - 3 hours after waking up","within 1 hour of waking up","within 1/2 hour of waking up","immediately upon waking up")

data$pmethod.factor = factor(data$pmethod, levels = c("0","1","2","3","4","5","6","7","8"))
levels(data$pmethod.factor) = c("I do not use cannabis","Joints","Blunts (cigar sized joints)","Hand pipe","Bong (water pipe)","Hookah","Vaporizer (e.g. Volcano Vape pen)","Edibles","Other")

data$thcamt.factor = factor(data$thcamt, levels = c("1","2","3","4","5","6","7"))
levels(data$thcamt.factor) = c("0 - 4%","5 - 9%","10 - 14%"," 15 - 19%","20 - 24%","25 - 30%","greater than 30%")

data$avgconthcamt.factor = factor(data$avgconthcamt, levels = c("1","10","2","3","4","5","6","7","8","9"))
levels(data$avgconthcamt.factor) = c("0 - 9%","greater than 90%","10 - 19%","20 - 29%","30 - 39%","40 - 49%","50 - 59%","60 - 69%","0 - 79%","80 - 90%")

data$regusedlifetime.factor = factor(data$regusedlifetime, levels = c("0","1"))
levels(data$regusedlifetime.factor) = c("No","Yes")

data$regused6mth.factor = factor(data$regused6mth, levels = c("0","1"))
levels(data$regused6mth.factor) = c("No","Yes")

data$beforeage16.factor = factor(data$beforeage16, levels = c("0","1","10","11","12","2","3","4","5","6","7","8","9"))
levels(data$beforeage16.factor) = c("more than once a day","once a day","once a year","less than once a year","never","5 - 6 times a week","3 - 4 times a week","twice a week","once a week","2 - 3 times a month","once a month","once every 2 months (6 times/yr.)","once every 3-6 months (2-4 times/yr.)")

data$medicinaluse.factor = factor(data$medicinaluse, levels = c("0","1","2"))
levels(data$medicinaluse.factor) = c("No","Yes","Yes but I use it for both medicinal and recreational purposes")

data$canabistypeuse.factor = factor(data$canabistypeuse, levels = c("1","2","3"))
levels(data$canabistypeuse.factor) = c("THC only","CBD only","Both THC and CBC")

data$conthcamt.factor = factor(data$conthcamt, levels = c("1","10","2","3","4","5","6","7","8","9"))
levels(data$conthcamt.factor) = c("0 - 9%","greater than 90%","10 - 19%","20 - 29%","30 - 39%","40 - 49%","50 - 59%","60 - 69%","0 - 79%","80 - 90%")

data$conboththcamt.factor = factor(data$conboththcamt, levels = c("1","10","2","3","4","5","6","7","8","9"))
levels(data$conboththcamt.factor) = c("0 - 9%","greater than 90%","10 - 19%","20 - 29%","30 - 39%","40 - 49%","50 - 59%","60 - 69%","0 - 79%","80 - 90%")

data$pform.factor = factor(data$pform, levels = c("0","A","B","C","D"))
levels(data$pform.factor) = c("None","Marijuana","Concentrates (e.g. Oil Was Shatter Butane Hash Oil Dabs)","Edibles","Other")

data$sessionamt.factor = factor(data$sessionamt, levels = c("_0","_0.125","_0.25","_0.5","_0.75","_14","_25","_3.5","_7"))
levels(data$sessionamt.factor) = c("Other","1/8 of a gram = 0.125 grams","1/4 of a gram = 0.25 grams","1/2 of a gram = 0.5 grams","3/4 of a gram = 0.75 grams","1/2 ounce = 14 grams","1 ounce = 28 grams","1/8 of a ounce = 3.5 grams","1/4 of an ounce = 7 grams")

data$dayamt.factor = factor(data$dayamt, levels = c("_0","_0.125","_0.25","_0.5","_0.75","_14","_25","_3.5","_7"))
levels(data$dayamt.factor) = c("Other","1/8 of a gram = 0.125 grams","1/4 of a gram = 0.25 grams","1/2 of a gram = 0.5 grams","3/4 of a gram = 0.75 grams","1/2 ounce = 14 grams","1 ounce = 28 grams","1/8 of a ounce = 3.5 grams","1/4 of an ounce = 7 grams")

data$weekamt.factor = factor(data$weekamt, levels = c("_0","_0.125","_0.25","_0.5","_0.75","_14","_25","_3.5","_7"))
levels(data$weekamt.factor) = c("Other","1/8 of a gram = 0.125 grams","1/4 of a gram = 0.25 grams","1/2 of a gram = 0.5 grams","3/4 of a gram = 0.75 grams","1/2 ounce = 14 grams","1 ounce = 28 grams","1/8 of a ounce = 3.5 grams","1/4 of an ounce = 7 grams")

