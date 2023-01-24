#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Pet_Questionnaire.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_PetQue)="CRF Version"
label(data$date_PetQue)="Date Completed"
label(data$blank_PetQue)="Blank Form"
label(data$hai01)="Do you currently have any pets"
label(data$hai02da)="Currently have dog"
label(data$hai02db)="How many dogs"
label(data$hai02ca)="Currently have cat"
label(data$hai02cb)="How many cats"
label(data$hai02sa)="Currently have small mammal"
label(data$hai02sb)="How many small mammals"
label(data$hai02ba)="Currently have birds"
label(data$hai02bb)="How many birds"
label(data$hai02fa)="Currently have fish"
label(data$hai02fb)="How many fish"
label(data$hai02ra)="Currently have reptile"
label(data$hai02rb)="How many reptiles"
label(data$hai02oa)="Currently have Other pets"
label(data$hai02ob)="How many other"
label(data$hai03r1)="Enjoy love animals"
label(data$hai02r2)="Protection"
label(data$hai02r3)="Companionship"
label(data$hai02r4)="Playmate for child"
label(data$hai02r5)="Something I could take care of"
label(data$hai02r6)="Something to keep me busy"
label(data$hai02r7)="Want something to keep me active"
label(data$hai03r8)="Therapy (eg guide dog)"
label(data$hai03r9)="Was given this pet"
label(data$hai03r10)="Other"
label(data$hai03r11)="Don't know"
label(data$hai03r12)="Refused"
label(data$hai04)="Most important reason for pet"
label(data$hai05)="How long have you had the pet you've had the longest"
label(data$poh1yr)="Pet ownership 1 year"
label(data$poh1yrother)="Pet ownership 1 year other"
label(data$poh2yr)="Pet ownership 2 year"
label(data$poh2yrother)="Pet ownership 2 year other"
label(data$poh3yr)="Pet ownership 3 year"
label(data$poh3yrother)="Pet ownership 3 year other"
label(data$poh4yr)="Pet ownership 4 year"
label(data$poh4yrother)="Pet ownership 4 year other"
label(data$poh5yr)="Pet ownership 5 year"
label(data$poh5yrother)="Pet ownership 5 year other"
label(data$poh6yr)="Pet ownership 6 year"
label(data$poh6yrother)="Pet ownership 6 year other"
label(data$poh7yr)="Pet ownership 7 year"
label(data$poh7yrother)="Pet ownership 7 year other"
label(data$poh8yr)="Pet ownership 8 year"
label(data$poh8yrother)="Pet ownership 8 year other"
label(data$poh9yr)="Pet ownership 9 year"
label(data$poh9yrother)="Pet ownership 9 year other"
label(data$poh10yr)="Pet ownership 10 year"
label(data$poh10yrother)="Pet ownership 19 year other"
label(data$hai07)="How often have you declined to visit family or friends"
label(data$hai08)="How often have you delayed refused medical care"
label(data$hai09)="How often have pet expenses impacted your ability to pay for necessities"
label(data$hai10)="How often have you needed medical attention because you were scratched bitten or tripped by pet"
label(data$hai11)="Pet encourages you to be more socially active"
label(data$hai12)="Does having a pet(s) encourage you to take better care of your health"
label(data$hai16)="What is your favorite pet"
label(data$hai16com)="Favorite pet other comment"
label(data$hai13)="Whose decision was it to get the pet"
label(data$hai14)="Who is most responsible for the care and feeding of your pet"
label(data$hai15)="Rate pets overall health"
label(data$hai17a)="My pet means more to me than any of my friends"
label(data$hai17b)="Quite often I confide in my pet"
label(data$hai17c)="Believe pets should have same rights privileges as family members"
label(data$hai17d)="Believe my pet is my best friend"
label(data$hai17e)="Often my feelings toward people are affected by the way they react to my pet"
label(data$hai17f)="Love pet because it is more loyal than most people"
label(data$hai17g)="Enjoy showing others pictures of pet"
label(data$hai17h)="I think my pet is just a pet"
label(data$hai17i)="I love my pet because it never judges me"
label(data$hai17j)="My pet knows when I'm feeling bad"
label(data$hai17k)="Often talk to other people about my pet"
label(data$hai17l)="My pet understands me"
label(data$hai17m)="Believe loving my pet helps me stay healthy"
label(data$hai17n)="Pets deserve as much respect as humans do"
label(data$hai17o)="My pet and I have a very close relationship"
label(data$hai17p)="I would do almost anything to take care of my pet"
label(data$hai17q)="I play with my pet quite often"
label(data$hai17r)="I consider my pet to be a great companion"
label(data$hai17s)="My pet makes me feel happy"
label(data$hai17t)="I feel that my pet is a part of my family"
label(data$hai17u)="I am not very attached to my pet"
label(data$hai17v)="Owning a pet adds to my happiness"
label(data$hai17w)="I consider my pet to be a friend"
label(data$hai18)="Do you walk your dog"
label(data$hai19)="What is the main reason you don't walk your dog"
label(data$hai20a)="How many times per day numeric"
label(data$hai20b)="Walk less than 1x day Dk Refused"
label(data$hai21m)="How many minutes walk dog"
label(data$hai21h)="How many hours walk dog"
label(data$hai21d)="Walk dog Dk Refused"
label(data$hai22)="Walk more or less because you have dog"
label(data$hai23)="Do you walk faster or slower when you walk without your dog"
label(data$hai24)="Do you walk longer or shorter distance when you walk without your dog"
label(data$hai25)="Why don't you have a pet"
label(data$hai26)="Have you ever had a pet"
label(data$hai27d)="Had a dog in the past"
label(data$hai27c)="Had a Cat in the past"
label(data$hai27s)="Had a small mammal"
label(data$hai27b)="Had a Bird in the past"
label(data$hai74f)="Had Fish in the past"
label(data$hai27r)="Had a reptile in the past"
label(data$hai27o)="Had Other pet in the past"
label(data$hai28)="How many years has it been since you last had a pet"
label(data$hai29)="Did you consider your pet a friend"
label(data$hai30)="Did you talk to your pet"
label(data$hai31)="Owning a pet added to your happiness"
label(data$hai32)="Did you talk to others about your pet"
label(data$hai33)="Did you play with your pet"
label(data$hai34)="Did your pet know how you felt about things"
label(data$hai35)="Do you have regular contact with other peoples pets"
label(data$hai36d)="Have regular contact with Dog"
label(data$hai36c)="Have regular contact with Cat"
label(data$hai36s)="Have regular contact with small mammal"
label(data$hai36b)="Have regular contact with Bird"
label(data$hai36f)="Have regular contact with Fish"
label(data$hai36r)="Have regular contact with Reptile"
label(data$hai36o)="Have regular contact with Other pet"
label(data$hai37)="Do you help feed or care for any of these pets?"
label(data$hai38)="If answer to Q32 is a dog how often do you walk with someone else's dog"
label(data$crf_parent_name_PetQue)="CRF Parent Name"
label(data$event_repeat)="Event Repeat"
label(data$hai02r2_1)="Protection : Protection (Checkbox Indicator)"
label(data$hai02r3_1)="Companionship : Conpanionship (Checkbox Indicator)"
label(data$hai02r4_1)="Playmate for child : Playmate for child (Checkbox Indicator)"
label(data$hai02r5_1)="Something I could take care of : Want something I could take care of (Checkbox Indicator)"
label(data$hai02r6_1)="Something to keep me busy : Want something to keep me busy (occupy time) (Checkbox Indicator)"
label(data$hai02r7_1)="Want something to keep me active : Want something to keep me active (exercise) (Checkbox Indicator)"
label(data$hai03r10_1)="Other : Other (Checkbox Indicator)"
label(data$hai03r1_1)="Enjoy love animals : Enjoy (love) animals (Checkbox Indicator)"
label(data$hai03r11_8)="Don't know : Don't know (Checkbox Indicator)"
label(data$hai03r12_7)="Refused : Refused (Checkbox Indicator)"
label(data$hai03r8_1)="Therapy (eg guide dog) : Therapy (e.g. guide dog) (Checkbox Indicator)"
label(data$item_group_repeat_PetQue)="Item Group Repeate"
label(data$poh10yr_1)="Pet ownership 10 year : Dog (Checkbox Indicator)"
label(data$poh10yr_2)="Pet ownership 10 year : Cat (Checkbox Indicator)"
label(data$poh10yr_3)="Pet ownership 10 year : Bird (Checkbox Indicator)"
label(data$poh10yr_4)="Pet ownership 10 year : Other (Checkbox Indicator)"
label(data$poh10yr_5)="Pet ownership 10 year : Small Mammal (Checkbox Indicator)"
label(data$poh10yr_6)="Pet ownership 10 year : Fish (Checkbox Indicator)"
label(data$poh10yr_7)="Pet ownership 10 year : Reptile (Checkbox Indicator)"
label(data$poh1yr_1)="Pet ownership 1 year : Dog (Checkbox Indicator)"
label(data$poh1yr_2)="Pet ownership 1 year : Cat (Checkbox Indicator)"
label(data$poh1yr_3)="Pet ownership 1 year : Bird (Checkbox Indicator)"
label(data$poh1yr_4)="Pet ownership 1 year : Other (Checkbox Indicator)"
label(data$poh1yr_5)="Pet ownership 1 year : Small Mammal (Checkbox Indicator)"
label(data$poh1yr_6)="Pet ownership 1 year : Fish (Checkbox Indicator)"
label(data$poh1yr_7)="Pet ownership 1 year : Reptile (Checkbox Indicator)"
label(data$poh2yr_1)="Pet ownership 2 year : Dog (Checkbox Indicator)"
label(data$poh2yr_2)="Pet ownership 2 year : Cat (Checkbox Indicator)"
label(data$poh2yr_3)="Pet ownership 2 year : Bird (Checkbox Indicator)"
label(data$poh2yr_4)="Pet ownership 2 year : Other (Checkbox Indicator)"
label(data$poh2yr_5)="Pet ownership 2 year : Small Mammal (Checkbox Indicator)"
label(data$poh2yr_6)="Pet ownership 2 year : Fish (Checkbox Indicator)"
label(data$poh2yr_7)="Pet ownership 2 year : Reptile (Checkbox Indicator)"
label(data$poh3yr_1)="Pet ownership 3 year : Dog (Checkbox Indicator)"
label(data$poh3yr_2)="Pet ownership 3 year : Cat (Checkbox Indicator)"
label(data$poh3yr_3)="Pet ownership 3 year : Bird (Checkbox Indicator)"
label(data$poh3yr_4)="Pet ownership 3 year : Other (Checkbox Indicator)"
label(data$poh3yr_5)="Pet ownership 3 year : Small Mammal (Checkbox Indicator)"
label(data$poh3yr_6)="Pet ownership 3 year : Fish (Checkbox Indicator)"
label(data$poh3yr_7)="Pet ownership 3 year : Reptile (Checkbox Indicator)"
label(data$poh4yr_1)="Pet ownership 4 year : Dog (Checkbox Indicator)"
label(data$poh4yr_2)="Pet ownership 4 year : Cat (Checkbox Indicator)"
label(data$poh4yr_3)="Pet ownership 4 year : Bird (Checkbox Indicator)"
label(data$poh4yr_4)="Pet ownership 4 year : Other (Checkbox Indicator)"
label(data$poh4yr_5)="Pet ownership 4 year : Small Mammal (Checkbox Indicator)"
label(data$poh4yr_6)="Pet ownership 4 year : Fish (Checkbox Indicator)"
label(data$poh4yr_7)="Pet ownership 4 year : Reptile (Checkbox Indicator)"
label(data$poh5yr_1)="Pet ownership 5 year : Dog (Checkbox Indicator)"
label(data$poh5yr_2)="Pet ownership 5 year : Cat (Checkbox Indicator)"
label(data$poh5yr_3)="Pet ownership 5 year : Bird (Checkbox Indicator)"
label(data$poh5yr_4)="Pet ownership 5 year : Other (Checkbox Indicator)"
label(data$poh5yr_5)="Pet ownership 5 year : Small Mammal (Checkbox Indicator)"
label(data$poh5yr_6)="Pet ownership 5 year : Fish (Checkbox Indicator)"
label(data$poh5yr_7)="Pet ownership 5 year : Reptile (Checkbox Indicator)"
label(data$poh6yr_1)="Pet ownership 6 year : Dog (Checkbox Indicator)"
label(data$poh6yr_2)="Pet ownership 6 year : Cat (Checkbox Indicator)"
label(data$poh6yr_3)="Pet ownership 6 year : Bird (Checkbox Indicator)"
label(data$poh6yr_4)="Pet ownership 6 year : Other (Checkbox Indicator)"
label(data$poh6yr_5)="Pet ownership 6 year : Small Mammal (Checkbox Indicator)"
label(data$poh6yr_6)="Pet ownership 6 year : Fish (Checkbox Indicator)"
label(data$poh6yr_7)="Pet ownership 6 year : Reptile (Checkbox Indicator)"
label(data$poh7yr_1)="Pet ownership 7 year : Dog (Checkbox Indicator)"
label(data$poh7yr_2)="Pet ownership 7 year : Cat (Checkbox Indicator)"
label(data$poh7yr_3)="Pet ownership 7 year : Bird (Checkbox Indicator)"
label(data$poh7yr_4)="Pet ownership 7 year : Other (Checkbox Indicator)"
label(data$poh7yr_5)="Pet ownership 7 year : Small Mammal (Checkbox Indicator)"
label(data$poh7yr_6)="Pet ownership 7 year : Fish (Checkbox Indicator)"
label(data$poh7yr_7)="Pet ownership 7 year : Reptile (Checkbox Indicator)"
label(data$poh8yr_1)="Pet ownership 8 year : Dog (Checkbox Indicator)"
label(data$poh8yr_2)="Pet ownership 8 year : Cat (Checkbox Indicator)"
label(data$poh8yr_3)="Pet ownership 8 year : Bird (Checkbox Indicator)"
label(data$poh8yr_4)="Pet ownership 8 year : Other (Checkbox Indicator)"
label(data$poh8yr_5)="Pet ownership 8 year : Small Mammal (Checkbox Indicator)"
label(data$poh8yr_6)="Pet ownership 8 year : Fish (Checkbox Indicator)"
label(data$poh8yr_7)="Pet ownership 8 year : Reptile (Checkbox Indicator)"
label(data$poh9yr_1)="Pet ownership 9 year : Dog (Checkbox Indicator)"
label(data$poh9yr_2)="Pet ownership 9 year : Cat (Checkbox Indicator)"
label(data$poh9yr_3)="Pet ownership 9 year : Bird (Checkbox Indicator)"
label(data$poh9yr_4)="Pet ownership 9 year : Other (Checkbox Indicator)"
label(data$poh9yr_5)="Pet ownership 9 year : Small Mammal (Checkbox Indicator)"
label(data$poh9yr_6)="Pet ownership 9 year : Fish (Checkbox Indicator)"
label(data$study_name_PetQue)="Study Name"

#Create new variables for factors
data$hai01.factor = factor(data$hai01, levels = c("0","1","7","8"))
levels(data$hai01.factor) = c("No","Yes","Refused","Dont know")

data$hai02da.factor = factor(data$hai02da, levels = c("0","1","7","8"))
levels(data$hai02da.factor) = c("No","Yes","Refused","Dont know")

data$hai02ca.factor = factor(data$hai02ca, levels = c("0","1","7","8"))
levels(data$hai02ca.factor) = c("No","Yes","Refused","Dont know")

data$hai02sa.factor = factor(data$hai02sa, levels = c("0","1","7","8"))
levels(data$hai02sa.factor) = c("No","Yes","Refused","Dont know")

data$hai02ba.factor = factor(data$hai02ba, levels = c("0","1","7","8"))
levels(data$hai02ba.factor) = c("No","Yes","Refused","Dont know")

data$hai02fa.factor = factor(data$hai02fa, levels = c("0","1","7","8"))
levels(data$hai02fa.factor) = c("No","Yes","Refused","Dont know")

data$hai02ra.factor = factor(data$hai02ra, levels = c("0","1","7","8"))
levels(data$hai02ra.factor) = c("No","Yes","Refused","Dont know")

data$hai02oa.factor = factor(data$hai02oa, levels = c("0","1","7","8"))
levels(data$hai02oa.factor) = c("No","Yes","Refused","Dont know")

data$hai04.factor = factor(data$hai04, levels = c("1","10","2","3","4","5","6","7","8","9","98","99"))
levels(data$hai04.factor) = c("Enjoy (love) animals","Other","Protection","Companionship","Playmate for child","Want something I could take care of","Want something to keep me busy (occupy the time)","Want something to keep me active (get exercise)","Therapy (eg: guide dog)","Was given this pet","Dont know","Refused")

data$hai05.factor = factor(data$hai05, levels = c("1","2","3","4","5","6","7","8"))
levels(data$hai05.factor) = c("Less than 1 year","1-2 years","3-5 years","6-9 years","10+ years","Always","Refused","Dont know")

data$hai07.factor = factor(data$hai07, levels = c("0","1","2","3","4"))
levels(data$hai07.factor) = c("Never","Almost never","Afew times","Several times","Often")

data$hai08.factor = factor(data$hai08, levels = c("0","1","2","3","4"))
levels(data$hai08.factor) = c("Never","Almost never","Afew times","Several times","Often")

data$hai09.factor = factor(data$hai09, levels = c("0","1","2","3","4"))
levels(data$hai09.factor) = c("Never","Almost never","Afew times","Several times","Often")

data$hai10.factor = factor(data$hai10, levels = c("0","1","2","3","4"))
levels(data$hai10.factor) = c("Never","Almost never","Afew times","Several times","Often")

data$hai11.factor = factor(data$hai11, levels = c("0","1","2","3"))
levels(data$hai11.factor) = c("No","A little","Some","A lot")

data$hai12.factor = factor(data$hai12, levels = c("0","1","2","3"))
levels(data$hai12.factor) = c("No","A little","Some","A lot")

data$hai16.factor = factor(data$hai16, levels = c("1","2","3"))
levels(data$hai16.factor) = c("Dog","Cat","Other")

data$hai13.factor = factor(data$hai13, levels = c("1","2","3","7","8"))
levels(data$hai13.factor) = c("You alone","You and someone else","Someone else alone","Refused","Dont know")

data$hai14.factor = factor(data$hai14, levels = c("1","2","3","7","8"))
levels(data$hai14.factor) = c("You alone","You and someone else","Someone else alone","Refused","Dont know")

data$hai15.factor = factor(data$hai15, levels = c("1","2","3","4","5","7","8"))
levels(data$hai15.factor) = c("Excellent","Very good","Good","Fair","Poor","Refused","Dont know")

data$hai17a.factor = factor(data$hai17a, levels = c("1","2","3","4","8"))
levels(data$hai17a.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17b.factor = factor(data$hai17b, levels = c("1","2","3","4","8"))
levels(data$hai17b.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17c.factor = factor(data$hai17c, levels = c("1","2","3","4","8"))
levels(data$hai17c.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17d.factor = factor(data$hai17d, levels = c("1","2","3","4","8"))
levels(data$hai17d.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17e.factor = factor(data$hai17e, levels = c("1","2","3","4","8"))
levels(data$hai17e.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17f.factor = factor(data$hai17f, levels = c("1","2","3","4","8"))
levels(data$hai17f.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17g.factor = factor(data$hai17g, levels = c("1","2","3","4","8"))
levels(data$hai17g.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17h.factor = factor(data$hai17h, levels = c("1","2","3","4","8"))
levels(data$hai17h.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17i.factor = factor(data$hai17i, levels = c("1","2","3","4","8"))
levels(data$hai17i.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17j.factor = factor(data$hai17j, levels = c("1","2","3","4","8"))
levels(data$hai17j.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17k.factor = factor(data$hai17k, levels = c("1","2","3","4","8"))
levels(data$hai17k.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17l.factor = factor(data$hai17l, levels = c("1","2","3","4","8"))
levels(data$hai17l.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17m.factor = factor(data$hai17m, levels = c("1","2","3","4","8"))
levels(data$hai17m.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17n.factor = factor(data$hai17n, levels = c("1","2","3","4","8"))
levels(data$hai17n.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17o.factor = factor(data$hai17o, levels = c("1","2","3","4","8"))
levels(data$hai17o.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17p.factor = factor(data$hai17p, levels = c("1","2","3","4","8"))
levels(data$hai17p.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17q.factor = factor(data$hai17q, levels = c("1","2","3","4","8"))
levels(data$hai17q.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17r.factor = factor(data$hai17r, levels = c("1","2","3","4","8"))
levels(data$hai17r.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17s.factor = factor(data$hai17s, levels = c("1","2","3","4","8"))
levels(data$hai17s.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17t.factor = factor(data$hai17t, levels = c("1","2","3","4","8"))
levels(data$hai17t.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17u.factor = factor(data$hai17u, levels = c("1","2","3","4","8"))
levels(data$hai17u.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17v.factor = factor(data$hai17v, levels = c("1","2","3","4","8"))
levels(data$hai17v.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai17w.factor = factor(data$hai17w, levels = c("1","2","3","4","8"))
levels(data$hai17w.factor) = c("Disagree Strongly","Disagree Somewhat","Agree Somewhat","Agree Strongly","Dont know")

data$hai18.factor = factor(data$hai18, levels = c("0","1","7","8"))
levels(data$hai18.factor) = c("No","Yes","Refused","Dont know")

data$hai19.factor = factor(data$hai19, levels = c("1","10","11","2","3","4","5","6","7","8","9","98","99"))
levels(data$hai19.factor) = c("Dog too old or unable to walk","Dog too big/too strong","Other","Dog self-exercised goes out by him/herself","Outdoor dog stays in pen","Dod not well behaved doesnt walk well on leash","Respondent too old or unable to walk","Someone else walks the dog","Respondent has no time or interest","Bad weather too cold/hot","Dog doesnt like to walk/exercise","Dont know","Refused")

data$hai20b.factor = factor(data$hai20b, levels = c("1","7","8"))
levels(data$hai20b.factor) = c("Less than once per day","Refused","Dont know")

data$hai21d.factor = factor(data$hai21d, levels = c("7","8"))
levels(data$hai21d.factor) = c("Refused","Dont know")

data$hai22.factor = factor(data$hai22, levels = c("1","2","3","4","5","7","8"))
levels(data$hai22.factor) = c("A lot more","Somewhat more","About the same","Somewhat less","A lot less","Refused","Dont know")

data$hai23.factor = factor(data$hai23, levels = c("1","2","3","4","5","6","7","8"))
levels(data$hai23.factor) = c("A lot faster","Somewhat faster","About the same speed","Somewhat slower","A lot slower","Never walk without my dog","Refused","Dont know")

data$hai24.factor = factor(data$hai24, levels = c("1","2","3","4","5","6","7","8"))
levels(data$hai24.factor) = c("Much longer distance","Somewhat longer distance","About the same distance","Somewhat shorter distance","Much shorter distance","Never walk without my dog","Refused","Dont know")

data$hai25.factor = factor(data$hai25, levels = c("1","2","3","4","5","6","7","8"))
levels(data$hai25.factor) = c("No interest","Too expensive","Too much time or work to care for pet","Allergies (own or household member)","Health risks","Other","Refused","Dont know")

data$hai26.factor = factor(data$hai26, levels = c("0","1","7","8"))
levels(data$hai26.factor) = c("No","Yes","Refused","Dont know")

data$hai27d.factor = factor(data$hai27d, levels = c("0","1","7","8"))
levels(data$hai27d.factor) = c("No","Yes","Refused","Dont know")

data$hai27c.factor = factor(data$hai27c, levels = c("0","1","7","8"))
levels(data$hai27c.factor) = c("No","Yes","Refused","Dont know")

data$hai27s.factor = factor(data$hai27s, levels = c("0","1","7","8"))
levels(data$hai27s.factor) = c("No","Yes","Refused","Dont know")

data$hai27b.factor = factor(data$hai27b, levels = c("0","1","7","8"))
levels(data$hai27b.factor) = c("No","Yes","Refused","Dont know")

data$hai74f.factor = factor(data$hai74f, levels = c("0","1","7","8"))
levels(data$hai74f.factor) = c("No","Yes","Refused","Dont know")

data$hai27r.factor = factor(data$hai27r, levels = c("0","1","7","8"))
levels(data$hai27r.factor) = c("No","Yes","Refused","Dont know")

data$hai27o.factor = factor(data$hai27o, levels = c("0","1","7","8"))
levels(data$hai27o.factor) = c("No","Yes","Refused","Dont know")

data$hai28.factor = factor(data$hai28, levels = c("1","2","3","4","5","6","7","8","9"))
levels(data$hai28.factor) = c("Less than 1 year","1-2 years","3-5 years","6-9 years","10-19 years","20-29 years","30+ years","Dont know","Refused")

data$hai29.factor = factor(data$hai29, levels = c("0","1","7","8"))
levels(data$hai29.factor) = c("No","Yes","Refused","Dont know")

data$hai30.factor = factor(data$hai30, levels = c("0","1","7","8"))
levels(data$hai30.factor) = c("No","Yes","Refused","Dont know")

data$hai31.factor = factor(data$hai31, levels = c("0","1","7","8"))
levels(data$hai31.factor) = c("No","Yes","Refused","Dont know")

data$hai32.factor = factor(data$hai32, levels = c("0","1","7","8"))
levels(data$hai32.factor) = c("No","Yes","Refused","Dont know")

data$hai33.factor = factor(data$hai33, levels = c("0","1","7","8"))
levels(data$hai33.factor) = c("No","Yes","Refused","Dont know")

data$hai34.factor = factor(data$hai34, levels = c("0","1","7","8"))
levels(data$hai34.factor) = c("No","Yes","Refused","Dont know")

data$hai35.factor = factor(data$hai35, levels = c("0","1","7","8"))
levels(data$hai35.factor) = c("No","Yes","Refused","Dont know")

data$hai36d.factor = factor(data$hai36d, levels = c("0","1","7","8"))
levels(data$hai36d.factor) = c("No","Yes","Refused","Dont know")

data$hai36c.factor = factor(data$hai36c, levels = c("0","1","7","8"))
levels(data$hai36c.factor) = c("No","Yes","Refused","Dont know")

data$hai36s.factor = factor(data$hai36s, levels = c("0","1","7","8"))
levels(data$hai36s.factor) = c("No","Yes","Refused","Dont know")

data$hai36b.factor = factor(data$hai36b, levels = c("0","1","7","8"))
levels(data$hai36b.factor) = c("No","Yes","Refused","Dont know")

data$hai36f.factor = factor(data$hai36f, levels = c("0","1","7","8"))
levels(data$hai36f.factor) = c("No","Yes","Refused","Dont know")

data$hai36r.factor = factor(data$hai36r, levels = c("0","1","7","8"))
levels(data$hai36r.factor) = c("No","Yes","Refused","Dont know")

data$hai36o.factor = factor(data$hai36o, levels = c("0","1","7","8"))
levels(data$hai36o.factor) = c("No","Yes","Refused","Dont know")

data$hai37.factor = factor(data$hai37, levels = c("0","1","7","8"))
levels(data$hai37.factor) = c("No","Yes","Refused","Dont know")

data$hai38.factor = factor(data$hai38, levels = c("1","2","3","4","7","8"))
levels(data$hai38.factor) = c("Never","Once a week or less","Several times a week","Once a day or more","Refused","Dont know")

