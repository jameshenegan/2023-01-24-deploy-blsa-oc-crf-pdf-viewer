clear
import delimited "../data-csv/BLSA_Psychosocial_Stressors.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_psystr "CRF Version"

label variable date_psystr "Date"

// Generate 'date version' of the 'date_psystr' variable
gen _date_psystr = date(date_psystr, "YMD")
format _date_psystr %td

label variable currentlywork "Are you currently employed"
label define _r5OsABDCIw 0 "No" 1 "Yes"
label values currentlywork _r5OsABDCIw

label variable yesworkq1 "How often does your job involve physical effort"
label define _wnOfNvUahl 1 "a. All of the time" 2 "b. Most of the time" 3 "c. Sometimes" 4 "d. Rarely" 5 "e. Never"
label values yesworkq1 _wnOfNvUahl

label variable yesworkq2 "How often are you walking at your job"
label define _O4WtQNJ5xp 1 "a. All of the time" 2 "b. Most of the time" 3 "c. Sometimes" 4 "d. Rarely" 5 "e. Never"
label values yesworkq2 _O4WtQNJ5xp

label variable yesworkq3 "How often do you sit for a long time at your job"
label define _B9ec0MPTcl 1 "a. All of the time" 2 "b. Most of the time" 3 "c. Sometimes" 4 "d. Rarely" 5 "e. Never"
label values yesworkq3 _B9ec0MPTcl

label variable yesworkq4 "How often do you use your fingers to grasp/handle things at your job (excluding typing)"
label define _ecy94rq5C8 1 "a. All of the time" 2 "b. Most of the time" 3 "c. Sometimes" 4 "d. Rarely" 5 "e. Never"
label values yesworkq4 _ecy94rq5C8

label variable noworkq1 "How often did your job involve physical effort"
label define _FOTuC6g50O 1 "a. All of the time" 2 "b. Most of the time" 3 "c. Sometimes" 4 "d. Rarely" 5 "e. Never"
label values noworkq1 _FOTuC6g50O

label variable noworkq2 "How often were you walking at your job"
label define _Y2s29IYHDE 1 "a. All of the time" 2 "b. Most of the time" 3 "c. Sometimes" 4 "d. Rarely" 5 "e. Never"
label values noworkq2 _Y2s29IYHDE

label variable noworkq3 "How often did you sit for a long time at your job"
label define _W6nL1QjMkw 1 "a. All of the time" 2 "b. Most of the time" 3 "c. Sometimes" 4 "d. Rarely" 5 "e. Never"
label values noworkq3 _W6nL1QjMkw

label variable noworkq4 "How often did you use your fingers to grasp/handle things at your job (excluding typing)"
label define _bwJVbuz0YI 1 "a. All of the time" 2 "b. Most of the time" 3 "c. Sometimes" 4 "d. Rarely" 5 "e. Never"
label values noworkq4 _bwJVbuz0YI

label variable discriminate5a "Were discouraged by a teacher from seeking higher education"
label define _Z9ndzRFvbq 0 "0 times" 1 "1 - 5 times " 2 "6 - 10 times" 3 "11 - 20 times" 4 ">20 times"
label values discriminate5a _Z9ndzRFvbq

label variable discriminate5b "You were not hired for a job"
label define _XepxSF11xb 0 "0 times" 1 "1 - 5 times " 2 "6 - 10 times" 3 "11 - 20 times" 4 ">20 times"
label values discriminate5b _XepxSF11xb

label variable discriminate5c "You were not given a promotion"
label define _xhcsNK4E8n 0 "0 times" 1 "1 - 5 times " 2 "6 - 10 times" 3 "11 - 20 times" 4 ">20 times"
label values discriminate5c _xhcsNK4E8n

label variable discriminate5d "You were fired"
label define _D7NJBd8Jjl 0 "0 times" 1 "1 - 5 times " 2 "6 - 10 times" 3 "11 - 20 times" 4 ">20 times"
label values discriminate5d _D7NJBd8Jjl

label variable discriminate5e "You were prevented from renting or buying a home in the neighborhood you wanted"
label define _ODwHuVURke 0 "0 times" 1 "1 - 5 times " 2 "6 - 10 times" 3 "11 - 20 times" 4 ">20 times"
label values discriminate5e _ODwHuVURke

label variable discriminate5f "You were hassled by the police"
label define _nFmVnOXh6x 0 "0 times" 1 "1 - 5 times " 2 "6 - 10 times" 3 "11 - 20 times" 4 ">20 times"
label values discriminate5f _nFmVnOXh6x

label variable discriminate5g "You were denied a bank loan"
label define _tIsIK70jkJ 0 "0 times" 1 "1 - 5 times " 2 "6 - 10 times" 3 "11 - 20 times" 4 ">20 times"
label values discriminate5g _tIsIK70jkJ

label variable discriminate5h "You were denied or provided inferior medical care"
label define _xUU4fEN9qO 0 "0 times" 1 "1 - 5 times " 2 "6 - 10 times" 3 "11 - 20 times" 4 ">20 times"
label values discriminate5h _xUU4fEN9qO

label variable eventsq6 "In the past year have you experienced a chronic disease or disability"
label define _Zp1PxSheuA 0 "No" 1 "Yes"
label values eventsq6 _Zp1PxSheuA

label variable eventsq7 "In the past year have you experienced a frequent minor illnesses"
label define _GsLrL9cI5y 0 "No" 1 "Yes"
label values eventsq7 _GsLrL9cI5y

label variable eventsq8 "In the past year have you experienced emotional problems"
label define _UimQWZk8E2 0 "No" 1 "Yes"
label values eventsq8 _UimQWZk8E2

label variable eventsq9 "In the past year have you experienced alcohol/substance problems"
label define _cQkbfUrhwa 0 "No" 1 "Yes"
label values eventsq9 _cQkbfUrhwa

label variable eventsq10 "In the past year have you experienced financial problems"
label define _qklHSFfQcl 0 "No" 1 "Yes"
label values eventsq10 _qklHSFfQcl

label variable eventsq11 "In the past year have you experienced school/work problems"
label define _w203FA17fY 0 "No" 1 "Yes"
label values eventsq11 _w203FA17fY

label variable eventsq12 "In the past year have you experienced difficulty finding/keeping a job"
label define _q382Zsr3Li 0 "No" 1 "Yes"
label values eventsq12 _q382Zsr3Li

label variable eventsq13 "In the past year have you experienced marital/relationship problems"
label define _k5RYwrkxDz 0 "No" 1 "Yes"
label values eventsq13 _k5RYwrkxDz

label variable eventsq14 "In the past year have you experienced legal problems"
label define _aCxeMrpzXJ 0 "No" 1 "Yes"
label values eventsq14 _aCxeMrpzXJ

label variable eventsq15 "In the past year have you experienced difficulty getting along with others"
label define _UaBcPXjY67 0 "No" 1 "Yes"
label values eventsq15 _UaBcPXjY67

label variable eventsq16 "In the past year have you experienced a difficulty not yet asked"
label define _tgqdFsFjAo 0 "No" 1 "Yes"
label values eventsq16 _tgqdFsFjAo

label variable eventsq6a "Do you have a significant other"
label define _s2oVMWVflG 0 "No" 1 "Yes"
label values eventsq6a _s2oVMWVflG

label variable eventsq6ai "Has your significant other experienced a chronic disease or disability in the past year"
label define _v7Mcrc0YH2 0 "No" 1 "Yes"
label values eventsq6ai _v7Mcrc0YH2

label variable eventsq7a "Has your significant other experienced frequent minor illnesses in the past year"
label define _TftYqgg4AQ 0 "No" 1 "Yes"
label values eventsq7a _TftYqgg4AQ

label variable eventsq8a "Has your significant other experienced emotional problems in the past year"
label define _dvuOJFnXYz 0 "No" 1 "Yes"
label values eventsq8a _dvuOJFnXYz

label variable eventsq9a "Has your significant other experienced alcohol/substance problems in the past year"
label define _oA9FMTTeCc 0 "No" 1 "Yes"
label values eventsq9a _oA9FMTTeCc

label variable eventsq10a "Has your significant other experienced financial problems in the past year"
label define _iQaRDAtnz6 0 "No" 1 "Yes"
label values eventsq10a _iQaRDAtnz6

label variable eventsq11a "Has your significant other experienced school/work problems in the past year"
label define _uIKfPUV6RH 0 "No" 1 "Yes"
label values eventsq11a _uIKfPUV6RH

label variable eventsq12a "Has your significant other experienced difficulty finding/keeping a job in the past year"
label define _iUUSw8SbFZ 0 "No" 1 "Yes"
label values eventsq12a _iUUSw8SbFZ

label variable eventsq13a "Has your significant other experienced marital/relationship problems in the past year"
label define _du3eTthI5E 0 "No" 1 "Yes"
label values eventsq13a _du3eTthI5E

label variable eventsq14a "Has your significant other experienced legal problems in the past year"
label define _JmrNBUpQGp 0 "No" 1 "Yes"
label values eventsq14a _JmrNBUpQGp

label variable eventsq15a "Has your significant other experienced difficulty getting along with others in the past year"
label define _dZiPCV9JQf 0 "No" 1 "Yes"
label values eventsq15a _dZiPCV9JQf

label variable eventsq16a "Has your significant other experienced difficulty not yet asked in the past year"
label define _GQl7fCR0Od 0 "No" 1 "Yes"
label values eventsq16a _GQl7fCR0Od

label variable eventsq6b "Do you have a child / children"
label define _KKtGvajBeR 0 "No" 1 "Yes"
label values eventsq6b _KKtGvajBeR

label variable eventsq6bi "Has your child experienced a chronic disease or disability in the past year"
label define _hAuLsuKluS 0 "No" 1 "Yes"
label values eventsq6bi _hAuLsuKluS

label variable eventsq7b "Has our child experienced frequent minor illnesses in the past year"
label define _dBh3tzVloW 0 "No" 1 "Yes"
label values eventsq7b _dBh3tzVloW

label variable eventsq8b "Has our child experienced emotional problems in the past year"
label define _WvSQXaHO00 0 "No" 1 "Yes"
label values eventsq8b _WvSQXaHO00

label variable eventsq9b "Has our child experienced alcohol/substance problems in the past year"
label define _pS6UaR7LC4 0 "No" 1 "Yes"
label values eventsq9b _pS6UaR7LC4

label variable eventsq10b "Has our child experienced financial problems in the past year"
label define _EFTWpoyxBd 0 "No" 1 "Yes"
label values eventsq10b _EFTWpoyxBd

label variable eventsq11b "Has our child experienced school/work problems in the past year"
label define _FH1fEQUSH1 0 "No" 1 "Yes"
label values eventsq11b _FH1fEQUSH1

label variable eventsq12b "Has our child experienced difficulty finding/keeping a job in the past year"
label define _qeRcfhNQPt 0 "No" 1 "Yes"
label values eventsq12b _qeRcfhNQPt

label variable eventsq13b "Has our child experienced marital/relationship problems in the past year"
label define _yOzy57hjPN 0 "No" 1 "Yes"
label values eventsq13b _yOzy57hjPN

label variable eventsq14b "Has our child experienced legal problems in the past year"
label define _sQCZhL1GnB 0 "No" 1 "Yes"
label values eventsq14b _sQCZhL1GnB

label variable eventsq15b "Has our child experienced difficulty getting along with others in the past year"
label define _LAUHhVst9n 0 "No" 1 "Yes"
label values eventsq15b _LAUHhVst9n

label variable eventsq16b "Has our child experienced difficulty not yet asked in the past year"
label define _RYGnXUghLT 0 "No" 1 "Yes"
label values eventsq16b _RYGnXUghLT

label variable childhoodq17 "Were you raised in a single or dual parent/guardian household"
label define _XKPl9vfEyt 1 "Single" 2 "Dual"
label values childhoodq17 _XKPl9vfEyt

label variable childhoodq17a "What is the gender of your parent/guardian"
label define _EhIaocrFXa 1 "1. Woman" 2 "2. Man" 3 "3. Other"
label values childhoodq17a _EhIaocrFXa

label variable childhoodq17b "What are the genders combinations of your parents/guardians"
label define _jdMen9l04S 1 "1. Woman and Man" 2 "2. Woman and Woman" 3 "3. Man and Man" 4 "4. Other"
label values childhoodq17b _jdMen9l04S

label variable childhoodq18 "What is the highest level of education your Mother/Stepmother/Female guardian completed"
label define _nFeJXQKZuy 1 "a. College or Higher" 2 "b. Some College" 3 "c. High School/GED" 4 "d. Less than High School" 5 "e. Unknown"
label values childhoodq18 _nFeJXQKZuy

label variable childhoodq19 "What is the highest level of education your Father/Stepfather/Male guardian completed"
label define _O88B8Mpvp5 1 "a. College or Higher" 2 "b. Some College" 3 "c. High School/GED" 4 "d. Less than High School" 5 "e. Unknown"
label values childhoodq19 _O88B8Mpvp5

label variable childhoodq20 "What is the highest level of education your parent/guardian completed"
label define _VcwzDIcf1Y 1 "a. College or Higher" 2 "b. Some College" 3 "c. High School/GED" 4 "d. Less than High School" 5 "e. Unknown"
label values childhoodq20 _VcwzDIcf1Y

label variable childhoodq21 "What is the highest level of education your parent 1/guardian 1 completed"
label define _kLvzrJvOJH 1 "a. College or Higher" 2 "b. Some College" 3 "c. High School/GED" 4 "d. Less than High School" 5 "e. Unknown"
label values childhoodq21 _kLvzrJvOJH

label variable childhoodq22 "What is the highest level of education your parent 2/guardian 2 completed"
label define _f7bKCIAkdo 1 "a. College or Higher" 2 "b. Some College" 3 "c. High School/GED" 4 "d. Less than High School" 5 "e. Unknown"
label values childhoodq22 _f7bKCIAkdo

label variable childhoodq23 "As a child did your family ever receive government subsidies"
label define _vUByQaDnNu 0 "No" 1 "Yes"
label values childhoodq23 _vUByQaDnNu

label variable childhoodq24 "As a child how was your family's financial situation compared to other families"
label define _lFMdI0tJg1 1 "Better off" 2 "About the same as" 3 "Worse off"
label values childhoodq24 _lFMdI0tJg1

label variable eventsq16com "Explain yes You have experienced difficulty not yet asked"

label variable eventsq16acom "Explain yes Your significant other experienced difficulty not yet asked"

label variable crf_parent_name_psystr "CRF Parent Name"

label variable study_name_psystr "Study Name"

