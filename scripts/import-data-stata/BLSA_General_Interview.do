clear
import delimited "../data-csv/BLSA_General_Interview.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_genint "CRF Version"

label variable obsdate_idate "Date Completed"

// Generate 'date version' of the 'obsdate_idate' variable
gen _obsdate_idate = date(obsdate_idate, "YMD")
format _obsdate_idate %td

label variable blank_genint "Blank Form"

label variable itid "Tester ID"

label variable itype "Interview conducted with"
label define _nk01190YLr 0 "Participant only" 1 "Participant and proxy" 2 "Proxy only" 3 "Telephone interview" 4 "Interview not done"
label values itype _nk01190YLr

label variable demo01 "DOB"

// Generate 'date version' of the 'demo01' variable
gen _demo01 = date(demo01, "YMD")
format _demo01 %td

label variable demo02 "Age today"

label variable demo03 "Current marital status"
label define _klx1peOyJA 1 "Married" 2 "Living with a partner" 3 "Separated" 4 "Divorced" 5 "Widowed" 6 "Never married" 7 "Refused" 8 "Don't know"
label values demo03 _klx1peOyJA

label variable demo04 "How many other people currently live in your household"
label define _Hj4OkaC2wb 0 "Lives alone" 1 "1 other" 2 "2 others" 3 "3 or more" 7 "Refused" 8 "Don't know"
label values demo04 _Hj4OkaC2wb

label variable demo05 "Type of housing"
label define _PGA5bbtsWH 1 "Single family home" 2 "Co-op condominium apartment" 3 "Continuing care community" 4 "Assisted Living" 5 "Long term care facility" 7 "Refused" 8 "Don't know"
label values demo05 _PGA5bbtsWH

label variable demo06 "Were you born in US"
label define _Rye3DHlni7 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values demo06 _Rye3DHlni7

label variable demo07 "Is English your first language"
label define _XXgjMLS19z 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values demo07 _XXgjMLS19z

label variable demo08 "Are you Spanish Hispanic or Latino orgin"
label define _i2L8DmQs4b 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values demo08 _i2L8DmQs4b

label variable demo09 "Race you consider yourself to be"
label define _UiBEAWBePo 1 "White" 2 "Black or African American" 3 "American Indian or Alaska Native" 4 "Asian" 5 "Native Hawaiian or Other Pacific Islander" 6 "Two or more races" 7 "Refused" 8 "Don't know"
label values demo09 _UiBEAWBePo

label variable demo10 "Highest grade in school completed"

label variable demo11 "Do you have Medicare"
label define _mqiO1cJXVa 0 "No under 65" 1 "Yes" 2 "No age 65+" 7 "Refused" 8 "Don't know"
label values demo11 _mqiO1cJXVa

label variable demo11a "What type of Medicare"
label define _Bja0Pdhur3 1 "Part A only" 2 "Part A and B only" 3 "Medicare + Choice" 7 "Refused" 8 "Don't know"
label values demo11a _Bja0Pdhur3

label variable demo11b "Do you have a Medigap plan"
label define _XWfwp6qB8e 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values demo11b _XWfwp6qB8e

label variable demo12 "Do you have private health insurance"
label define _UIERe3P7g0 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values demo12 _UIERe3P7g0

label variable demo13 "Do any of your health care plans include prescription drug coverage"
label define _vjco7s2CPF 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values demo13 _vjco7s2CPF

label variable demo14 "Is your income from all sources more or less than 10000"
label define _fMmSfrtUwg 0 "Less than $10000" 1 "More than $10000" 7 "Refused" 8 "Don't know"
label values demo14 _fMmSfrtUwg

label variable demo14a "Income more than 25000"
label define _pg6kOmSV6D 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values demo14a _pg6kOmSV6D

label variable demo14b "Income more than 50000"
label define _ZCHx7ORV0T 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values demo14b _ZCHx7ORV0T

label variable demo15 "How well does your family income take care of family needs"
label define _H1GZnLVFkF 1 "Poorly" 2 "Fairly well" 3 "Very well" 7 "Refused" 8 "Don't know"
label values demo15 _H1GZnLVFkF

label variable demo16 "Have you delayed getting medical care due to money problems past 12 mo"
label define _cw10Nws3S0 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values demo16 _cw10Nws3S0

label variable demo17 "Have you gone withoug medications due to money problems past 12 mo"
label define _bFtJRJLalV 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values demo17 _bFtJRJLalV

label variable pf01 "Do you have difficulty walking a quarter mile due to health"
label define _AdQciVWkLm 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf01 _AdQciVWkLm

label variable pf01a "How much difficulty walking a quarter mile"
label define _emZunRR0cl 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf01a _emZunRR0cl

label variable pf01b "How easy is it to walk quarter mile"
label define _l2hA5wDctO 1 " Not so easy" 2 "Somewhat easy" 3 "VeryEasy" 7 "Refused" 8 " Don't know"
label values pf01b _l2hA5wDctO

label variable pf01c "Do you have difficulty walking one mile due to health"
label define _Pgwmdv2UJL 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf01c _Pgwmdv2UJL

label variable pf01d "How easy is it to walk one mile"
label define _ZmoYZUwnSk 1 " Not so easy" 2 "Somewhat easy" 3 "VeryEasy" 7 "Refused" 8 " Don't know"
label values pf01d _ZmoYZUwnSk

label variable pf02 "Do you have difficulty walking up 10 steps due to health"
label define _doagRdnsv7 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf02 _doagRdnsv7

label variable pf02a "How much difficulty walking up 10 steps"
label define _s4W7eWQ5H0 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf02a _s4W7eWQ5H0

label variable pf02b "How easy is it to walk up 10 steps"
label define _ipXo3DpZ6X 1 " Not so easy" 2 "Somewhat easy" 3 "VeryEasy" 7 "Refused" 8 " Don't know"
label values pf02b _ipXo3DpZ6X

label variable pf02c "Do you have difficulty walking up 20 steps due to health"
label define _EuTFolnvbp 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf02c _EuTFolnvbp

label variable pf02d "How easy is it to walk up 20 steps"
label define _Bz73ukXgV8 1 " Not so easy" 2 "Somewhat easy" 3 "VeryEasy" 7 "Refused" 8 " Don't know"
label values pf02d _Bz73ukXgV8

label variable pf03 "How difficulty lifting or carrying something weighing 10 lbs"
label define _JIGat8XJYr 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf03 _JIGat8XJYr

label variable pf03a "How much difficulty lifting or carrying 10 lbs"
label define _mjWZF9uvGc 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf03a _mjWZF9uvGc

label variable pf03b "How easy is it to lift or carry 10 lbs"
label define _HsGWqCbYBF 1 " Not so easy" 2 "Somewhat easy" 3 "VeryEasy" 7 "Refused" 8 " Don't know"
label values pf03b _HsGWqCbYBF

label variable pf03c "Do you have difficulty lifting or carrying 20 lbs"
label define _GT3nS9q0vC 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf03c _GT3nS9q0vC

label variable pf03d "How easy is it to lift or carry 20 lbs"
label define _CBzhrVTIjz 1 " Not so easy" 2 "Somewhat easy" 3 "VeryEasy" 7 "Refused" 8 " Don't know"
label values pf03d _CBzhrVTIjz

label variable pf04 "Do you have difficulty standing up from a chair without using arms"
label define _FGDsjy0V4r 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf04 _FGDsjy0V4r

label variable pf04a "How much difficulty do you have rising without using your arms"
label define _cpzyavlHZa 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf04a _cpzyavlHZa

label variable pf04b "How easy is it for you to stand up from a chair without using your arms"
label define _CELdsODYdr 1 " Not so easy" 2 "Somewhat easy" 3 "VeryEasy" 7 "Refused" 8 " Don't know"
label values pf04b _CELdsODYdr

label variable pf05 "Do you have difficulty stooping crouching or kneeling"
label define _NAI7ALT6bK 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf05 _NAI7ALT6bK

label variable pf05a "How much difficulty do you have stooping crouching or kneeling"
label define _JiaqyTi1IM 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf05a _JiaqyTi1IM

label variable pf05b "How easy is it for you to stoop crouch or kneel"
label define _UFRBwpCr0j 1 " Not so easy" 2 "Somewhat easy" 3 "VeryEasy" 7 "Refused" 8 " Don't know"
label values pf05b _UFRBwpCr0j

label variable pf06 "Do you have difficulty raising arms up over head"
label define _cwhqbXfoTU 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf06 _cwhqbXfoTU

label variable pf06a "How much difficulty do you have raising arms up over head"
label define _XHBn1lAAEh 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf06a _XHBn1lAAEh

label variable pf06b "How easy is it for you to raising arms up over head"
label define _i8JqMn9bwA 1 " Not so easy" 2 "Somewhat easy" 3 "VeryEasy" 7 "Refused" 8 " Don't know"
label values pf06b _i8JqMn9bwA

label variable pf07 "Do you have difficulty using your fingers to grasp or handle"
label define _PIIpcURBaj 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf07 _PIIpcURBaj

label variable pf07a "How much difficulty do you have using your fingers to grasp"
label define _BBnDxnMlQ8 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf07a _BBnDxnMlQ8

label variable pf07b "How easy is it for you to using your fingers to grasp or handle"
label define _dGKdDag1Rx 1 " Not so easy" 2 "Somewhat easy" 3 "VeryEasy" 7 "Refused" 8 " Don't know"
label values pf07b _dGKdDag1Rx

label variable pf08 "Do you have difficulty getting in and out of bed or chairs"
label define _aXjk9rVus4 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf08 _aXjk9rVus4

label variable pf08a "How much difficulty do you have getting in and out of bed or chairs"
label define _jDEOyEbBxi 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf08a _jDEOyEbBxi

label variable pf08b "Need equipment or help getting in and out of bed or chairs"
label define _nHgbwSP9zu 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf08b _nHgbwSP9zu

label variable pf09 "Do you have difficulty bathing or showering"
label define _KQo8PJqMTE 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf09 _KQo8PJqMTE

label variable pf09a "How much difficulty do you have bathing or showering"
label define _gN9OE0PYh1 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf09a _gN9OE0PYh1

label variable pf09b "Need equipment or help bathing or showering"
label define _gNznYEfN1u 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf09b _gNznYEfN1u

label variable pf10 "Do you have difficulty dressing"
label define _zq4dGUjdnm 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf10 _zq4dGUjdnm

label variable pf10a "How much difficulty do you have dressing"
label define _tkErnLo2t9 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf10a _tkErnLo2t9

label variable pf10b "Need equipment or help dressing"
label define _OeSbHY87sR 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf10b _OeSbHY87sR

label variable pf11 "Do you have difficulty eating example holding fork cutting food"
label define _NBbZnysjjl 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf11 _NBbZnysjjl

label variable pf11a "How much difficulty do you have eating"
label define _HJHmfRsLe6 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf11a _HJHmfRsLe6

label variable pf11b "Need equipment or help eating"
label define _VZHTIPDWD8 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf11b _VZHTIPDWD8

label variable pf12 "Do you have difficulty using the toilet including getting to the toilet"
label define _yEo1i4Aex7 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf12 _yEo1i4Aex7

label variable pf12a "How much difficulty do you have using the toilet"
label define _izeTS21xDA 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf12a _izeTS21xDA

label variable pf12b "Need equipment or help using the toilet"
label define _DgzkFP1Qgl 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf12b _DgzkFP1Qgl

label variable pf13 "Do you have difficulty walking across a small room"
label define _YTqjlaHfVK 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf13 _YTqjlaHfVK

label variable pf13a "How much difficulty do you have walking across a small room"
label define _sXXWsuC1UE 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf13a _sXXWsuC1UE

label variable pf13b "Need equipment or help walking across a small room"
label define _h9UAYG9xkz 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf13b _h9UAYG9xkz

label variable pf14 "Do you have difficulty doing light housework"
label define _PMxOV0qIXl 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf14 _PMxOV0qIXl

label variable pf14a "How much difficulty do you have walking across a small room"
label define _TEYSNNGa3W 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf14a _TEYSNNGa3W

label variable pf14b "Is do not do light housework due to health related reasons"
label define _RgBl35a3Qy 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf14b _RgBl35a3Qy

label variable pf15 "Do you have difficulty doing heavy housework"
label define _uRwidQFPVd 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf15 _uRwidQFPVd

label variable pf15a "How much difficulty do you have walking across a small room"
label define _ofjhVhQP3C 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf15a _ofjhVhQP3C

label variable pf15b "Is do not do heavy housework due to health related reasons"
label define _VKwBLd1D0f 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf15b _VKwBLd1D0f

label variable pf16 "Do you have difficulty preparing your own meals"
label define _LCefDYrfwZ 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf16 _LCefDYrfwZ

label variable pf16a "How much difficulty do you have preparing your own meals"
label define _tE599bRFAp 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf16a _tE599bRFAp

label variable pf16b "Is do not do preparing your own meals due to health related reasons"
label define _l8QWg7vyNe 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf16b _l8QWg7vyNe

label variable pf17 "Do you have difficulty shopping for personal items"
label define _OzuIIwdwdF 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf17 _OzuIIwdwdF

label variable pf17a "How much difficulty do you have shopping for personal items"
label define _JEIJtowtDI 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf17a _JEIJtowtDI

label variable pf17b "Is do not do shopping for personal items due to health related reasons"
label define _yOycy8pcPm 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf17b _yOycy8pcPm

label variable pf18 "Do you have difficulty using the telephone"
label define _trr7h8dhIB 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf18 _trr7h8dhIB

label variable pf18a "How much difficulty do you have using the telephone"
label define _F8o3R5skgg 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf18a _F8o3R5skgg

label variable pf18b "Is do not do using the telephone due to health related reasons"
label define _dxUKXOPBSV 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf18b _dxUKXOPBSV

label variable pf19 "Do you have difficulty taking medications"
label define _Fw76t8mxvK 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf19 _Fw76t8mxvK

label variable pf19a "How much difficulty do you have taking medications"
label define _FHfeJ5SyP0 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf19a _FHfeJ5SyP0

label variable pf19b "Is do not do taking medications due to health related reasons"
label define _lYxYZCOTZp 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf19b _lYxYZCOTZp

label variable pf20 "Do you have difficulty managing your money by yourself"
label define _YcH9uNk27F 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf20 _YcH9uNk27F

label variable pf20a "How much difficulty do you have managing your money"
label define _jAJHmz0WRH 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf20a _jAJHmz0WRH

label variable pf20b "Is do not do managing your money due to health related reasons"
label define _Poflr4jQmk 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pf20b _Poflr4jQmk

label variable pf21 "Do you have difficulty driving"
label define _NQZC21bMvU 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know/Do not do"
label values pf21 _NQZC21bMvU

label variable pf21a "How much difficulty do you have driving"
label define _hBYFE1CPzI 1 "A little" 2 "Some" 3 "A lot" 4 "Unable to do" 7 "Refused" 8 "Don't know"
label values pf21a _hBYFE1CPzI

label variable pf21b "Is do not do driving due to health related reasons"
label define _Dj4vkpuDbQ 1 "Never drove" 2 "No car" 3 "Vision" 4 "Health" 5 "Lost license" 7 "Refused" 8 "Don't know"
label values pf21b _Dj4vkpuDbQ

label variable ghsx01 "Past 12 months been a patient in a hospital for one or more nights"
label define _BFRP66msGj 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx01 _BFRP66msGj

label variable ghsx01a "How many different times during past 12 months patient in hospital overnight"

label variable ghsx02 "Past 12 months stay in bed most of the day due to injury or illness"
label define _OKQkQKxrJL 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx02 _OKQkQKxrJL

label variable ghsx02a "How many days did you stay in bed all day due to illness or injury"

label variable ghsx03 "Past 12 months cut down on things you usually do because of illness or injury"
label define _jMErNFMhwJ 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx03 _jMErNFMhwJ

label variable ghsx03a "How many days did you cut down on things you usually do because of illness or injury"

label variable ghsx04 "Past mo how many times felt unusually tired most of the day"
label define _A7X92bB2Xe 0 "None" 1 "Some" 2 "Most" 3 "All" 7 "Refused" 8 "Don't know"
label values ghsx04 _A7X92bB2Xe

label variable ghsx05 "Past mo how weak did you feel"
label define _EbZgE7lAJ9 0 "0 Not weak at all" 1 "1" 10 "10 Very weak" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 77 "Refused" 8 "8" 88 "Don't know" 9 "9"
label values ghsx05 _EbZgE7lAJ9

label variable ghsx06 "Past mo energy level"
label define _SVd9ZjkbAX 0 "0 No energy at all" 1 "1" 10 "10 Most energy" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 77 "Refused" 8 "8" 88 "Don't know" 9 "9"
label values ghsx06 _SVd9ZjkbAX

label variable ghsx07 "Past mo have trouble falling asleep"
label define _n14FaV8Mld 0 "0 Never" 1 "1/week" 2 "1-2/week" 3 "3-4/week" 4 "5+/week" 8 "Don't know"
label values ghsx07 _n14FaV8Mld

label variable ghsx08 "Past mo wake up several times at night"
label define _ivjVyhZNPn 0 "0 Never" 1 "1/week" 2 "1-2/week" 3 "3-4/week" 4 "5+/week" 8 "Don't know"
label values ghsx08 _ivjVyhZNPn

label variable ghsx09 "Past mo wake up earlier than you planned to"
label define _m58V2Ndy8f 0 "0 Never" 1 "1/week" 2 "1-2/week" 3 "3-4/week" 4 "5+/week" 8 "Don't know"
label values ghsx09 _m58V2Ndy8f

label variable ghsx10 "Past mo have trouble getting back to sleep if work up too early"
label define _gD2IJqyYfP 0 "0 Never" 1 "1/week" 2 "1-2/week" 3 "3-4/week" 4 "5+/week" 8 "Don't know"
label values ghsx10 _gD2IJqyYfP

label variable ghsx11 "Past mo take sleeping pills or other meds to help you sleep"
label define _si74571bjF 0 "0 Never" 1 "1/week" 2 "1-2/week" 3 "3-4/week" 4 "5+/week" 8 "Don't know"
label values ghsx11 _si74571bjF

label variable ghsx12 "Past mo have loud snoring at night"
label define _PAU4WA340A 0 "0 Never" 1 "1/week" 2 "1-2/week" 3 "3-4/week" 4 "5+/week" 8 "Don't know"
label values ghsx12 _PAU4WA340A

label variable ghsx13 "Past mo have choking or gasping while sleeping"
label define _iuvAqh8TzO 0 "0 Never" 1 "1/week" 2 "1-2/week" 3 "3-4/week" 4 "5+/week" 8 "Don't know"
label values ghsx13 _iuvAqh8TzO

label variable ghsx14 "Past mo have excessive daytime sleepiness"
label define _qun229SQpJ 0 "0 Never" 1 "1/week" 2 "1-2/week" 3 "3-4/week" 4 "5+/week" 8 "Don't know"
label values ghsx14 _qun229SQpJ

label variable ghsx15 "Past mo overall typical night sleep"
label define _K4zHwq9iKe 0 "Very sound or restful" 1 "Sound or restful" 2 "Average quality" 3 "Restless" 4 "Very Restless" 7 "Refused" 8 "Don't know"
label values ghsx15 _K4zHwq9iKe

label variable ghsx16 "Past mo how many hours of sleep each night"
label define _t0W2OLNUZ2 0 "More than 7" 1 "More than 6 up to 7" 2 "More than 5 up to 6" 3 " 5 or fewer" 7 "Refused" 8 "Don't know"
label values ghsx16 _t0W2OLNUZ2

label variable ghsx17 "In general appetite or desire to eat"
label define _ARNz18WLAE 0 "Very poor" 1 "Poor" 2 "Moderate" 3 "Good" 4 "Very good" 7 "Refused" 8 "Don't know"
label values ghsx17 _ARNz18WLAE

label variable ghsx18 "Current weight"

label variable ghsx19 "Since this time last yr weight changed by 5 lbs or more"
label define _PsNSK8o6tA 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx19 _PsNSK8o6tA

label variable ghsx19a "Did you gain or loose weight"
label define _jJU9gIGUxt 1 "Gain" 2 "Lose" 7 "Refused" 8 "Don't know"
label values ghsx19a _jJU9gIGUxt

label variable ghsx19b "Were you trying to gain or lose weight"
label define _LTdoM9v3x4 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx19b _LTdoM9v3x4

label variable ghsx19c "How many pounds did you gain or lose"

label variable ghsx20 "Present time trying to lose weight"
label define _CzER487mcc 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx20 _CzER487mcc

label variable ghsx21 "How would you rate your overall oral health"
label define _iY5QHHdjaY 1 "Excellent" 2 "Very good" 3 "Good" 4 "Fair" 5 "Poor" 7 "Refused" 8 "Don't know"
label values ghsx21 _iY5QHHdjaY

label variable ghsx22 "Been told by dentist you have gum disease"
label define _HmpciGRkf7 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx22 _HmpciGRkf7

label variable ghsx22a "When were you last treated for gum disease"
label define _jwgDA6bRVy 0 "Never" 1 "Within 12 months" 2 "Over 12 months" 7 "Refused" 8 "Don't know"
label values ghsx22a _jwgDA6bRVy

label variable ghsx22b "Have you lost teeth because of gum disease"
label define _TdCBJkQrXD 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx22b _TdCBJkQrXD

label variable ghsx22c "How old were you when you lost your first tooth because of gum disease"

label variable ghsx23 "During the past 3 months how much pain in your gums or teeth"
label define _LAXp820sPV 0 "None at all" 1 "A little" 2 "Some" 3 "A great deal" 7 "Refused" 8 "Don't know"
label values ghsx23 _LAXp820sPV

label variable ghsx24 "Does your mouth feel dry when eating"
label define _a5b9rAqNYu 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx24 _a5b9rAqNYu

label variable ghsx24a "Problems chewing or swallowing that limit ability to eat"
label define _ZdVdAsZ9Ga 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx24a _ZdVdAsZ9Ga

label variable ghsx25 "Do you have glasses or contact lenses"
label define _B6n7BnObJK 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx25 _B6n7BnObJK

label variable ghsx25a "When do you wear them"
label define _GxkbPhoq84 0 "Never" 1 "For reading or driving" 2 "Sometimes" 3 "Most of the time" 7 "Refused" 8 "Don't know"
label values ghsx25a _GxkbPhoq84

label variable ghsx26 "Rate your current eyesite with glasses or contacts if you wear them"
label define _sz8B9LyRbs 0 "Blind" 1 "Very poor" 2 "Poor" 3 "Fair" 4 "Good" 5 "Excellent" 7 "Refused" 8 "Don't know"
label values ghsx26 _sz8B9LyRbs

label variable ghsx27 "How much difficulty reading ordinary print in newspapers"
label define _SjcNbOl64G 0 "No difficulty" 1 "A little difficulty" 2 "Moderate difficulty" 3 "Extreme difficulty" 4 "Stopped due to eyesight" 5 "Don't do other reasons" 7 "Refused" 8 "Don't know"
label values ghsx27 _SjcNbOl64G

label variable ghsx28 "How much difficulty recognizing people you know from across a room"
label define _S5pVk9as8l 0 "No difficulty" 1 "A little difficulty" 2 "Moderate difficulty" 3 "Extreme difficulty" 7 "Refused" 8 "Don't know"
label values ghsx28 _S5pVk9as8l

label variable ghsx29 "Because of eyesight have difficulty going down steps curbs in dim light or at night"
label define _wa0oKoZPNQ 0 "No difficulty" 1 "A little difficulty" 2 "Moderate difficulty" 3 "Extreme difficulty" 4 "Stopped due to eyesight" 5 "Don't do other reasons" 7 "Refused" 8 "Don't know"
label values ghsx29 _wa0oKoZPNQ

label variable ghsx30 "Because of eyesight have difficulty noticing objects off to the side while walking alone"
label define _CJjN5v41tE 0 "No difficulty" 1 "A little difficulty" 2 "Moderate difficulty" 3 "Extreme difficulty" 4 "Stopped due to eyesight" 5 "Don't do other reasons" 7 "Refused" 8 "Don't know"
label values ghsx30 _CJjN5v41tE

label variable ghsx31 "Do you wear a hearing aid"
label define _nbOL9rIdjK 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx31 _nbOL9rIdjK

label variable ghsx32 "How would you rate your current hearing ability with hearing aid if used"
label define _vS5mKtH42r 0 "Deaf" 1 "Very poor" 2 "Poor" 3 "Fair" 4 "Good" 5 "Excellent" 7 "Refused" 8 "Don't know"
label values ghsx32 _vS5mKtH42r

label variable ghsx33 "Do you have any problem keeping your balance when walking on level surface"
label define _an7gAeoTHL 0 "Never" 1 "Sometimes" 2 "Often" 3 "Very often" 4 "Always" 7 "Refused" 8 "Don't know"
label values ghsx33 _an7gAeoTHL

label variable ghsx34 "Do you have any problem keeping your balance when standing with eyes closed"
label define _SpIa5yUoCR 0 "Never" 1 "Sometimes" 2 "Often" 3 "Very often" 4 "Always" 7 "Refused" 8 "Don't know"
label values ghsx34 _SpIa5yUoCR

label variable ghsx35 "Do you ever feel dizzy or light headed after standing up"
label define _bFYK7YRsHr 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx35 _bFYK7YRsHr

label variable ghsx36 "In the past 12 mo have you fainted blacked out lost consciousness"
label define _npf3CMNESN 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx36 _npf3CMNESN

label variable ghsx36a "In the past 12 mo how many times have you fainted blacked out lost consciousness"
label define _Gr41cI6Sa5 1 "One" 2 "Two or three" 3 "Four or more" 7 "Refused" 8 "Don't know"
label values ghsx36a _Gr41cI6Sa5

label variable ghsx37 "In the past 12 mo have you fallen and landed on the ground or floor"
label define _T2oewTo6kU 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx37 _T2oewTo6kU

label variable ghsx37a "How many times hae you fallen to the ground in the past 12 mo"
label define _mJe1ss5OVn 1 "One" 2 "Two or three" 3 "Four or five" 4 "Six or more" 7 "Refused" 8 "Don't know"
label values ghsx37a _mJe1ss5OVn

label variable ghsx37b "Break or fractured a bone on any fall in the past 12 mo"
label define _vSGxrBfBdF 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx37b _vSGxrBfBdF

label variable ghsx37c "Hit or injure your head on a fall in the past 12 mo"
label define _lPYvIA0JUn 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx37c _lPYvIA0JUn

label variable ghsx37d "Have a sprain or strain on any fall in the past 12 mo"
label define _IzY3iXjP62 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx37d _IzY3iXjP62

label variable ghsx37e "Had bruise or bleeding on any fall in the past 12 mo"
label define _Zyg1Bvix6Y 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx37e _Zyg1Bvix6Y

label variable ghsx37f "What type of activity were you doing at the time of your worst fall"
label define _vXyBspeZLZ 1 "Normal/Usual" 2 "Usual/Risky" 3 "Intoxicated" 7 "Refused" 8 "Don't know"
label values ghsx37f _vXyBspeZLZ

label variable ghsx38 "Did you limit your activities because of fear of falling in the past 12 mo"
label define _fZVqqckCRq 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ghsx38 _fZVqqckCRq

label variable ghsx38a "How often did you limit activities because of fear of falling"
label define _S36L31ToUW 1 "Rarely" 2 "Some of the time" 3 "Most of the time" 4 "All of the time" 7 "Refused" 8 "Don't know"
label values ghsx38a _S36L31ToUW

label variable ap01 "Had low back pain past year"
label define _bCaBLjDVOi 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap01 _bCaBLjDVOi

label variable ap01a "Rate your usual back pain over the past year"
label define _xLF44vjL1A 0 "0 No pain" 1 "1" 10 "10 Extremely intense pain" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 77 "Refused" 8 "8" 88 "DK" 9 "9"
label values ap01a _xLF44vjL1A

label variable ap01b "Have you needed to limit your typical daily activities as a result of low back pain"
label define _QpAkLVpf04 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap01b _QpAkLVpf04

label variable ap01c "Estimate how many days you have needed to limit activities in the past year due to low back pain"

label variable ap01d "Longest consecutive time in weeks you have had low back pain"

label variable ap01e "Do you currently have low back pain"
label define _Rxmgqb0DKK 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap01e _Rxmgqb0DKK

label variable ap01f "Rate your low back pain past week"
label define _maE2JPmXxM 0 "0 No pain" 1 "1" 10 "10 Extremely intense pain" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 77 "Refused" 8 "8" 88 "DK" 9 "9"
label values ap01f _maE2JPmXxM

label variable ap02 "Have you had pain or aching most days for at least one month in or around either knee"
label define _y6MunClrI6 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap02 _y6MunClrI6

label variable ap02a "Had knee pain lasting at least one month during past 12 months"
label define _oN1MyOJSXC 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap02a _oN1MyOJSXC

label variable ap02b "Which knee had pain during past 12 mo"
label define _kqARqdtl8y 1 "Right only" 2 "Left only" 3 "Both" 7 "Refused" 8 "Don't know"
label values ap02b _kqARqdtl8y

label variable ap02c "In the past 12 mo how often did you have pain in your left knee"
label define _TNilwOvsas 1 "Rarely" 2 "Monthly" 3 "Daily" 7 "Don't know" 8 "Always"
label values ap02c _TNilwOvsas

label variable ap02d1 "In the past 30 days how much pain in left knee while walking on a flat surface"
label define _lrOomMQYJC 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap02d1 _lrOomMQYJC

label variable ap02d2 "In the past 30 days how much pain in left knee while going up or down stairs"
label define _HFSb79jVPl 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap02d2 _HFSb79jVPl

label variable ap02d3 "In the past 30 days how much pain in left knee while sitting or lying down"
label define _yXp86YQd14 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap02d3 _yXp86YQd14

label variable ap02d4 "In the past 30 days how much pain in left knee while standing"
label define _cIHaj2vuNa 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap02d4 _cIHaj2vuNa

label variable ap02d5 "In the past 30 days how much pain in left knee while getting in or out of a chair"
label define _Wt9PZNmRbl 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap02d5 _Wt9PZNmRbl

label variable ap02e "In the past 12 mo how often did you have pain in your Right knee"
label define _Q3hYthXbfo 1 "Rarely" 2 "Monthly" 3 "Daily" 7 "Don't know" 8 "Always"
label values ap02e _Q3hYthXbfo

label variable ap02f1 "In the past 30 days how much pain in Right knee while walking on a flat surface"
label define _rjxKrCUUNh 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap02f1 _rjxKrCUUNh

label variable ap02f2 "In the past 30 days how much pain in Right knee while going up or down stairs"
label define _qxeSyX9azZ 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap02f2 _qxeSyX9azZ

label variable ap02f3 "In the past 30 days how much pain in Right knee while sitting or lying down"
label define _nBLI2jABhU 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap02f3 _nBLI2jABhU

label variable ap02f4 "In the past 30 days how much pain in Right knee while standing"
label define _ukInMcRmCR 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap02f4 _ukInMcRmCR

label variable ap02f5 "In the past 30 days how much pain in Right knee while getting in or out of a chair"
label define _PHl0shDtJS 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap02f5 _PHl0shDtJS

label variable ap02g "Most days in past 12 mo did you have stiffness in either of your knees"
label define _lzoqBlzY5D 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap02g _lzoqBlzY5D

label variable ap02h "Is this stiffness in the left right or both knees"
label define _kILXEpOFb3 1 "Right only" 2 "Left only" 3 "Both" 7 "Refused" 8 "Don't know"
label values ap02h _kILXEpOFb3

label variable ap02i "How severe is this stiffness after you first wake up or after sitting or lying down"
label define _QkNzHKhW7P 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 7 "Refused" 8 "Don't know"
label values ap02i _QkNzHKhW7P

label variable ap03 "Have you had pain most days for at least one month in or around either hip"
label define _z6laAm1sZ7 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap03 _z6laAm1sZ7

label variable ap03a "Had hip pain lasting at least one month during past 12 months"
label define _zCcxhfTNjt 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap03a _zCcxhfTNjt

label variable ap03b "Which hip had pain during past 12 mo"
label define _TtHDw1MTW1 1 "Right only" 2 "Left only" 3 "Both" 7 "Refused" 8 "Don't know"
label values ap03b _TtHDw1MTW1

label variable ap03c "In the past 12 mo how severe was the pain in your left hip"
label define _js1YVqxWrw 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03c _js1YVqxWrw

label variable ap03d1 "In the past 30 days how much pain in left hip while walking on a flat surface"
label define _N0yJTS2rpj 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03d1 _N0yJTS2rpj

label variable ap03d2 "In the past 30 days how much pain in left hip while going up or down stairs"
label define _LVfyiP23r2 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03d2 _LVfyiP23r2

label variable ap03d3 "In the past 30 days how much pain in left hip while sitting or lying down"
label define _RG2WrSl6wW 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03d3 _RG2WrSl6wW

label variable ap03d4 "In the past 30 days how much pain in left hip while standing"
label define _bjj2A310rm 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03d4 _bjj2A310rm

label variable ap03d5 "In the past 30 days how much pain in left hip while getting in or out of a chair"
label define _dj0jPudjkZ 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03d5 _dj0jPudjkZ

label variable ap03e "In the past 12 mo how severe was the pain in your Right hip"
label define _Xl3XjLennK 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03e _Xl3XjLennK

label variable ap03f1 "In the past 30 days how much pain in Right hip while walking on a flat surface"
label define _EPct3NEUaV 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03f1 _EPct3NEUaV

label variable ap03f2 "In the past 30 days how much pain in Right hip while going up or down stairs"
label define _UFFKT6fHJL 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03f2 _UFFKT6fHJL

label variable ap03f3 "In the past 30 days how much pain in Right hip while sitting or lying down"
label define _Yzn7NQDlKq 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03f3 _Yzn7NQDlKq

label variable ap03f4 "In the past 30 days how much pain in Right hip while standing"
label define _ikJmpCsFZm 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03f4 _ikJmpCsFZm

label variable ap03f5 "In the past 30 days how much pain in Right hip while getting in or out of a chair"
label define _Sgx5J58HRa 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap03f5 _Sgx5J58HRa

label variable ap04 "In the past 12 months have you had pain lasting at least one month in either shoulder"
label define _kLnEUsfXFz 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap04 _kLnEUsfXFz

label variable ap04a "In the past 12 months have you had pain in the left right or both shoulders"
label define _bbHeg6Oci3 1 "Right only" 2 "Left only" 3 "Both" 7 "Refused" 8 "Don't know"
label values ap04a _bbHeg6Oci3

label variable ap04b "How severe was the pain in your shoulder usually"
label define _JhBYhpulkx 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap04b _JhBYhpulkx

label variable ap05 "In the past 12 months had neck pain lasting at least one month"
label define _e8wUbnwPrN 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap05 _e8wUbnwPrN

label variable ap05a "How severe was the pain in your neck usually"
label define _lUfk5k73mt 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap05a _lUfk5k73mt

label variable ap06 "In the past 12 months have you had numbness prickly feeling tingling sudden stabbing burning pain in legs or feet"
label define _bNw1sWmXFk 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap06 _bNw1sWmXFk

label variable ap07 "In the past 12 months have you had a headaches lasting more than 4 hours"
label define _i61shR9IS9 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap07 _i61shR9IS9

label variable ap07a "How often did you have headaches lasting more than 4 hrs in the past 12 mo"
label define _XmwlXwd736 1 "< 1/month" 2 "1-3 /month" 3 "1-2 /week" 4 ">2 /week" 7 "Refused" 8 "Don't know"
label values ap07a _XmwlXwd736

label variable ap07b "Is the pain usually mostly on one side of your head"
label define _Nyus76yvik 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap07b _Nyus76yvik

label variable ap07c "Does the headache usually throb pulsate or pound"
label define _acfTzo7u6n 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap07c _acfTzo7u6n

label variable ap07d "Headache usually accompanied by nausea and or vomiting"
label define _GQVxP7t49q 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap07d _GQVxP7t49q

label variable ap07e "During headache do lights usually bother you or make the headache worse"
label define _yfEcUUWGeY 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap07e _yfEcUUWGeY

label variable ap07f "During headache do sounds usually bother you or make headache worse"
label define _n086exz7sv 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap07f _n086exz7sv

label variable ap07g "Ever notice spots jagged lines or heat waves in one or both eyes before you get the headache"
label define _TX4FaeX9wI 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap07g _TX4FaeX9wI

label variable ap08 "Have or have had recurrent uncomfortable feelings or sensations in your legs while sitting or lying down"
label define _vIQ1yZ0pES 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap08 _vIQ1yZ0pES

label variable ap09 "Have or have had feeling of recurrent need orurge to move your legs while sitting or lying down"
label define _gajIFjsfpj 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap09 _gajIFjsfpj

label variable ap09a "Are you more likely to have these feelings when resting or physically active"
label define _g6RtvLALT3 0 "Active" 1 "Resting" 7 "Refused" 8 "Don't know"
label values ap09a _g6RtvLALT3

label variable ap09b "Do these feelings get better while you are actually moving around"
label define _DfXKMoMvtX 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap09b _DfXKMoMvtX

label variable ap09c "Are these feelings worse at night or in the evening than at other times of day"
label define _dcLLksbd0a 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap09c _dcLLksbd0a

label variable ap09d "In the past 12 months how often did you get these feelings"
label define _iC8yafF5xg 1 "<=1 /month" 2 "2 /month" 3 "1 /week" 4 "2-3 /week" 5 "4-6 /week" 6 "Daily" 8 "Don't know"
label values ap09d _iC8yafF5xg

label variable ap10 "In the past 12 months have you had pain lasting at least one month in your feet toes or ankles"
label define _cN7RlzkjTU 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap10 _cN7RlzkjTU

label variable ap10al1 "Left foot top 1"
label define _YSkKuvcwH4 0 "No" 1 "Yes"
label values ap10al1 _YSkKuvcwH4

label variable ap10ar1 "Right foot top 1"
label define _ulm0KL8WIV 0 "No" 1 "Yes"
label values ap10ar1 _ulm0KL8WIV

label variable ap10al2 "Left foot top 2"
label define _mmjogxCToD 0 "No" 1 "Yes"
label values ap10al2 _mmjogxCToD

label variable ap10ar2 "Right foot top 2"
label define _JMeghpI8dQ 0 "No" 1 "Yes"
label values ap10ar2 _JMeghpI8dQ

label variable ap10al3 "Left foot top 3"
label define _YETTNUXP5g 0 "No" 1 "Yes"
label values ap10al3 _YETTNUXP5g

label variable ap10ar3 "Right foot top 3"
label define _Kzpb35nTAs 0 "No" 1 "Yes"
label values ap10ar3 _Kzpb35nTAs

label variable ap10al4 "Left foot top 4"
label define _aOqYSKXqvj 0 "No" 1 "Yes"
label values ap10al4 _aOqYSKXqvj

label variable ap10ar4 "Right foot top 4"
label define _pEvdK9e4E3 0 "No" 1 "Yes"
label values ap10ar4 _pEvdK9e4E3

label variable ap10al5 "Left foot top 5"
label define _qHAikGybHW 0 "No" 1 "Yes"
label values ap10al5 _qHAikGybHW

label variable ap10ar5 "Right foot top 5"
label define _w6TyfnDtkP 0 "No" 1 "Yes"
label values ap10ar5 _w6TyfnDtkP

label variable ap10al6 "Left foot top 6"
label define _ipmtP7dqjE 0 "No" 1 "Yes"
label values ap10al6 _ipmtP7dqjE

label variable ap10ar6 "Right foot top 6"
label define _bY4u4v6C4h 0 "No" 1 "Yes"
label values ap10ar6 _bY4u4v6C4h

label variable ap10al7 "Left foot top 7"
label define _uOaxMamYif 0 "No" 1 "Yes"
label values ap10al7 _uOaxMamYif

label variable ap10ar7 "Right foot top 7"
label define _L28bmWgCDF 0 "No" 1 "Yes"
label values ap10ar7 _L28bmWgCDF

label variable ap10al8 "Left foot top 8"
label define _xYQDww1CJ3 0 "No" 1 "Yes"
label values ap10al8 _xYQDww1CJ3

label variable ap10ar8 "Right foot top 8"
label define _wSa1kl5gb0 0 "No" 1 "Yes"
label values ap10ar8 _wSa1kl5gb0

label variable ap10al9 "Left foot top 9"
label define _hsggGMyo38 0 "No" 1 "Yes"
label values ap10al9 _hsggGMyo38

label variable ap10ar9 "Right foot top 9"
label define _rI7qbEOVIi 0 "No" 1 "Yes"
label values ap10ar9 _rI7qbEOVIi

label variable ap10al10 "Left foot bottom 10"
label define _zHiEyPG7lO 0 "No" 1 "Yes"
label values ap10al10 _zHiEyPG7lO

label variable ap10ar10 "Right foot bottom 10"
label define _lPXdjXhnNa 0 "No" 1 "Yes"
label values ap10ar10 _lPXdjXhnNa

label variable ap10al11 "Left foot bottom 11"
label define _GNx7J7Tngt 0 "No" 1 "Yes"
label values ap10al11 _GNx7J7Tngt

label variable ap10ar11 "Right foot bottom 11"
label define _wC7GoQCVgZ 0 "No" 1 "Yes"
label values ap10ar11 _wC7GoQCVgZ

label variable ap10al12 "Left foot bottom 12"
label define _hvX5ZArHLF 0 "No" 1 "Yes"
label values ap10al12 _hvX5ZArHLF

label variable ap10ar12 "Right foot bottom 12"
label define _m0eQty7aMv 0 "No" 1 "Yes"
label values ap10ar12 _m0eQty7aMv

label variable ap10al13 "Left foot bottom 13"
label define _BMuOvkaYc3 0 "No" 1 "Yes"
label values ap10al13 _BMuOvkaYc3

label variable ap10ar13 "Right foot bottom 13"
label define _XFVWSu3L2E 0 "No" 1 "Yes"
label values ap10ar13 _XFVWSu3L2E

label variable ap10al14 "Left foot bottom 14"
label define _mITLwqZSpL 0 "No" 1 "Yes"
label values ap10al14 _mITLwqZSpL

label variable ap10ar14 "Right foot bottom 14"
label define _ceeQAPYnhi 0 "No" 1 "Yes"
label values ap10ar14 _ceeQAPYnhi

label variable ap10al15 "Left foot bottom 15"
label define _nM8cyT0z09 0 "No" 1 "Yes"
label values ap10al15 _nM8cyT0z09

label variable ap10ar15 "Right foot bottom 15"
label define _YobhYDbtjf 0 "No" 1 "Yes"
label values ap10ar15 _YobhYDbtjf

label variable ap10al16 "Left foot bottom 16"
label define _vJ2DaViTm9 0 "No" 1 "Yes"
label values ap10al16 _vJ2DaViTm9

label variable ap10ar16 "Right foot bottom 16"
label define _GRmFkn4iBl 0 "No" 1 "Yes"
label values ap10ar16 _GRmFkn4iBl

label variable ap10al17 "Left foot bottom 17"
label define _WiTPn064t2 0 "No" 1 "Yes"
label values ap10al17 _WiTPn064t2

label variable ap10ar17 "Right foot bottom 17"
label define _PXwEWK6RK8 0 "No" 1 "Yes"
label values ap10ar17 _PXwEWK6RK8

label variable ap10al18 "Left foot bottom 18"
label define _fc2VZUmHkN 0 "No" 1 "Yes"
label values ap10al18 _fc2VZUmHkN

label variable ap10ar18 "Right foot bottom 18"
label define _EkT0mscm7h 0 "No" 1 "Yes"
label values ap10ar18 _EkT0mscm7h

label variable ap10al19 "Left foot bottom 19"
label define _tl0vQJejMT 0 "No" 1 "Yes"
label values ap10al19 _tl0vQJejMT

label variable ap10ar19 "Right foot bottom 19"
label define _NOGNFcOt1M 0 "No" 1 "Yes"
label values ap10ar19 _NOGNFcOt1M

label variable ap10b1 "Past 30 days how much pain in feet ankles or toes while walking on flat surface"
label define _cjvGXyndNC 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap10b1 _cjvGXyndNC

label variable ap10b2 "Past 30 days how much pain in feet ankles or toes while going up or down stairs"
label define _ng18DMmRQU 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap10b2 _ng18DMmRQU

label variable ap10b3 "Past 30 days how much pain in feet ankles or toes while standing upright"
label define _lIwNJzxqGd 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe" 4 "Extreme" 8 "Don't know"
label values ap10b3 _lIwNJzxqGd

label variable ap11 "In the past 12 months have you had pain lasting at least one month in joints of hands or wrist"
label define _RcItZpolaW 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ap11 _RcItZpolaW

label variable ap11ar1 "Right hand 1"
label define _gr7NXz1KrO 0 "No" 1 "Yes"
label values ap11ar1 _gr7NXz1KrO

label variable ap11al1 "Left hand 1"
label define _DZOlC8tkJf 0 "No" 1 "Yes"
label values ap11al1 _DZOlC8tkJf

label variable ap11ar2 "Right hand 2"
label define _ZD6aqAAlC9 0 "No" 1 "Yes"
label values ap11ar2 _ZD6aqAAlC9

label variable ap11al2 "Left hand 2"
label define _WjUyUsY044 0 "No" 1 "Yes"
label values ap11al2 _WjUyUsY044

label variable ap11ar3 "Right hand 3"
label define _Mm43oH8rnz 0 "No" 1 "Yes"
label values ap11ar3 _Mm43oH8rnz

label variable ap11al3 "Left hand 3"
label define _ZpA03b1f2T 0 "No" 1 "Yes"
label values ap11al3 _ZpA03b1f2T

label variable ap11ar4 "Right hand 4"
label define _d0Xnq7Jces 0 "No" 1 "Yes"
label values ap11ar4 _d0Xnq7Jces

label variable ap11al4 "Left hand 4"
label define _BasPVZMpDF 0 "No" 1 "Yes"
label values ap11al4 _BasPVZMpDF

label variable ap11ar5 "Right hand 5"
label define _q3HlZTXFnb 0 "No" 1 "Yes"
label values ap11ar5 _q3HlZTXFnb

label variable ap11al5 "Left hand 5"
label define _G9rnb8WjPJ 0 "No" 1 "Yes"
label values ap11al5 _G9rnb8WjPJ

label variable ap11ar6 "Right hand 6"
label define _uSI0hmZRWo 0 "No" 1 "Yes"
label values ap11ar6 _uSI0hmZRWo

label variable ap11al6 "Left hand 6"
label define _kurGJhqKni 0 "No" 1 "Yes"
label values ap11al6 _kurGJhqKni

label variable ap11ar7 "Right hand 7"
label define _oWFzk1eYAJ 0 "No" 1 "Yes"
label values ap11ar7 _oWFzk1eYAJ

label variable ap11al7 "Left hand 7"
label define _FRPqnFHbZX 0 "No" 1 "Yes"
label values ap11al7 _FRPqnFHbZX

label variable ap11ar8 "Right hand 8"
label define _C08wGupMSK 0 "No" 1 "Yes"
label values ap11ar8 _C08wGupMSK

label variable ap11al8 "Left hand 8"
label define _kWVhHdltwI 0 "No" 1 "Yes"
label values ap11al8 _kWVhHdltwI

label variable ap11ar9 "Right hand 9"
label define _ZWd8ZaSniF 0 "No" 1 "Yes"
label values ap11ar9 _ZWd8ZaSniF

label variable ap11al9 "Left hand 9"
label define _vpZYSWbVqS 0 "No" 1 "Yes"
label values ap11al9 _vpZYSWbVqS

label variable ap11ar10 "Right hand 10"
label define _te1mWfRinW 0 "No" 1 "Yes"
label values ap11ar10 _te1mWfRinW

label variable ap11al10 "Left hand 10"
label define _aq6JVXDbsd 0 "No" 1 "Yes"
label values ap11al10 _aq6JVXDbsd

label variable ap11ar11 "Right hand 11"
label define _MwteBgFJxo 0 "No" 1 "Yes"
label values ap11ar11 _MwteBgFJxo

label variable ap11al11 "Left hand 11"
label define _Qs53Rr06lK 0 "No" 1 "Yes"
label values ap11al11 _Qs53Rr06lK

label variable ap11ar12 "Right hand 12"
label define _J12abMrlJg 0 "No" 1 "Yes"
label values ap11ar12 _J12abMrlJg

label variable ap11al12 "Left hand 12"
label define _ACKpd029In 0 "No" 1 "Yes"
label values ap11al12 _ACKpd029In

label variable ap11ar13 "Right hand 13"
label define _he2qAIRWIm 0 "No" 1 "Yes"
label values ap11ar13 _he2qAIRWIm

label variable ap11al13 "Left hand 13"
label define _He6VGAn0AZ 0 "No" 1 "Yes"
label values ap11al13 _He6VGAn0AZ

label variable ap11ar14 "Right hand 14"
label define _FmW0AysA9Q 0 "No" 1 "Yes"
label values ap11ar14 _FmW0AysA9Q

label variable ap11al14 "Left hand 14"
label define _fiG321iawX 0 "No" 1 "Yes"
label values ap11al14 _fiG321iawX

label variable ap11ar15 "Right hand 15"
label define _Jj7C3ltd1t 0 "No" 1 "Yes"
label values ap11ar15 _Jj7C3ltd1t

label variable ap11al15 "Left hand 15"
label define _gbzxE2O3Pi 0 "No" 1 "Yes"
label values ap11al15 _gbzxE2O3Pi

label variable ap11ar16 "Right hand 16"
label define _BKLfN3EewG 0 "No" 1 "Yes"
label values ap11ar16 _BKLfN3EewG

label variable ap11al16 "Left hand 16"
label define _E0gsKFf4aH 0 "No" 1 "Yes"
label values ap11al16 _E0gsKFf4aH

label variable pa01 "In the past 2 weeks did you walk up any flights of stairs"
label define _wa39pGHgw1 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa01 _wa39pGHgw1

label variable pa01a "About how many flights did you walk up in the past 2 weeks"

label variable pa01b "Climb up how many flights carrying at least 10 lbs"

label variable pa02 "In the past 2 weeks did you walk down any flights of stairs"
label define _MaxmYGfqb8 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa02 _MaxmYGfqb8

label variable pa02a "About how many flights did you walk down in the past 2 weeks"

label variable pa02b "Descend how many flights carrying at least 10 lbs"

label variable pa03 "In the past 2 weeks did you do any outdoor work"
label define _Nf3IrSfHKY 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa03 _Nf3IrSfHKY

label variable pa03a "How many hours did you spend doing outdoor work in the past 2 weeks"

label variable pa04 "In the past 2 weeks did you do any household updating maintenance or repair"
label define _XZigj7TexP 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa04 _XZigj7TexP

label variable pa04a "How many hours did you spend doing outdoor work in the past 2 weeks"

label variable pa05 "In the past 2 weeks did you do any heavy major chores"
label define _ipuczq6VRP 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa05 _ipuczq6VRP

label variable pa05a "How many hours did you spend doing heavy or major chores in the past 2 weeks"

label variable pa06 "In the past 2 weeks did you do any light housework"
label define _zqMQquT0A9 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa06 _zqMQquT0A9

label variable pa06a "How many hours did you spend doing light housework"

label variable pa07 "In the past 2 weeks did you do any grocery shopping"
label define _F7Y1vDqSRQ 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa07 _F7Y1vDqSRQ

label variable pa07a "About how many bags of groceries did you buy in the past 2 weeks"

label variable pa08 "In the past 2 weeks did you do any laundry"
label define _JRYSBHL4jo 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa08 _JRYSBHL4jo

label variable pa08a "About how many loads of laundry in the past 2 weeks"

label variable pa09 "Did you do any brisk walking in the past 2 weeks"
label define _AZpLzbKZKc 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa09 _AZpLzbKZKc

label variable pa09c "How many times did you go for a brisk walk in the past 2 weeks"

label variable pa09d "How many minutes did you brisk walk each time on average"

label variable pa09e1 "About how far did you brisk walk each time in blocks"

label variable pa09e2 "About how far did you brisk walk each time miles"

label variable pa09a "Did you do any brisk walking in the past 12 months"
label define _UGptStmnCi 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa09a _UGptStmnCi

label variable pa09b "Main reason you have not done any brisk walking in the past 2 weeks"
label define _c27NhblidK 1 "bad weather" 2 "too busy/no time" 3 "injury" 4 "health/illness" 5 "lost interest/partner" 6 "felt unsafe" 7 "refused" 8 "don't know" 9 "other"
label values pa09b _c27NhblidK

label variable pa10 "Did you do any casual walking in the past 2 weeks"
label define _rePzrKhFEZ 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa10 _rePzrKhFEZ

label variable pa10c "How many times did you go for a casual walk in the past 2 weeks"

label variable pa10d "How many minutes did you casual walk each time on average"

label variable pa10e1 "About how far did you casual walk each time in blocks"

label variable pa10e2 "About how far did you casual walk each time miles"

label variable pa10f "When you casual walk do you usually walk at a brisk moderate pace or leisurely stroll"
label define _pVFp3dPj0O 0 "stroll" 1 "moderate" 2 "brisk" 8 "don't know"
label values pa10f _pVFp3dPj0O

label variable pa10a "Did you do any casual walking in the past 12 months"
label define _RVQ4Mr1bq5 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa10a _RVQ4Mr1bq5

label variable pa10b "Main reason you have not done any casual walking in the past 2 weeks"
label define _AzlrXN0EcV 1 "bad weather" 2 "too busy/no time" 3 "injury" 4 "health/illness" 5 "lost interest/partner" 6 "felt unsafe" 7 "refused" 8 "don't know" 9 "other"
label values pa10b _AzlrXN0EcV

label variable pa11 "Did you do any weight or circuit training in the past 2 weeks"
label define _lQZAgkRU2y 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa11 _lQZAgkRU2y

label variable pa11c "How many times did you do weight training in the past 2 weeks"

label variable pa11d "How many minutes did you weight train each time on average"

label variable pa11a "Did you do any weight or circuit training in the past 12 months"
label define _pH6ttl7vb4 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa11a _pH6ttl7vb4

label variable pa11b "Main reason you have not done any weight or circuit training in the past 2 weeks"
label define _Bbza5q9tbv 1 "bad weather" 2 "too busy/no time" 3 "injury" 4 "health/illness" 5 "lost interest/partner" 6 "felt unsafe" 7 "refused" 8 "don't know" 9 "other"
label values pa11b _Bbza5q9tbv

label variable pa12 "Did you do any flexibility training in the past 2 weeks"
label define _ahkizmsEwb 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa12 _ahkizmsEwb

label variable pa12c "How many times did you do flexibility training in the past 2 weeks"

label variable pa12d "How many minutes did you flexibility training each time on average"

label variable pa12a "Did you do any flexibility training in the past 12 months"
label define _VeLjyqP2i2 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa12a _VeLjyqP2i2

label variable pa12b "Main reason you have not done any flexibility training in the past 2 weeks"
label define _vn8ATmHhvD 1 "bad weather" 2 "too busy/no time" 3 "injury" 4 "health/illness" 5 "lost interest/partner" 6 "felt unsafe" 7 "refused" 8 "don't know" 9 "other"
label values pa12b _vn8ATmHhvD

label variable pa13 "Did you do any vigorous exercise activities in the past w weeks"
label define _xcvIGthwA7 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa13 _xcvIGthwA7

label variable pa13c1 "Vigorous activity first named"
label define _HnkmBYlplt 1 "Cycling etc" 10 "rowing" 11 "xc skiing" 12 "other 1" 13 "other 2" 2 "swimming" 3 "running" 4 "soccer" 5 "basketball" 6 "volleyball" 7 "aerobics etc" 77 "refused" 8 "racquet sports" 88 "Don't know" 9 "stair-steppers etc"
label values pa13c1 _HnkmBYlplt

label variable pa13d1 "How many hours first activity"

label variable pa13e1 "Vigorous activity level first activity"
label define _pmnp7KOwFT 1 "Leisurely" 2 "Moderate" 3 "Vigorous" 7 "Refused" 8 "Don't know"
label values pa13e1 _pmnp7KOwFT

label variable pa13c2 "Vigorous activity second named"
label define _K9Ijfxedye 1 "Cycling etc" 10 "rowing" 11 "xc skiing" 12 "other 1" 13 "other 2" 2 "swimming" 3 "running" 4 "soccer" 5 "basketball" 6 "volleyball" 7 "aerobics etc" 77 "refused" 8 "racquet sports" 88 "Don't know" 9 "stair-steppers etc"
label values pa13c2 _K9Ijfxedye

label variable pa13d2 "How many hours second activity"

label variable pa13e2 "Vigorous activity level second activity"
label define _MlZCI5AAF2 1 "Leisurely" 2 "Moderate" 3 "Vigorous" 7 "Refused" 8 "Don't know"
label values pa13e2 _MlZCI5AAF2

label variable pa13c3 "Vigorous activity third named"
label define _vvCIrIYUhT 1 "Cycling etc" 10 "rowing" 11 "xc skiing" 12 "other 1" 13 "other 2" 2 "swimming" 3 "running" 4 "soccer" 5 "basketball" 6 "volleyball" 7 "aerobics etc" 77 "refused" 8 "racquet sports" 88 "Don't know" 9 "stair-steppers etc"
label values pa13c3 _vvCIrIYUhT

label variable pa13d3 "How many hours third activity"

label variable pa13e3 "Vigorous activity level third activity"
label define _UAiqxi0LYJ 1 "Leisurely" 2 "Moderate" 3 "Vigorous" 7 "Refused" 8 "Don't know"
label values pa13e3 _UAiqxi0LYJ

label variable pa13c4 "Vigorous activity fourth named"
label define _ZJu7SadCvF 1 "Cycling etc" 10 "rowing" 11 "xc skiing" 12 "other 1" 13 "other 2" 2 "swimming" 3 "running" 4 "soccer" 5 "basketball" 6 "volleyball" 7 "aerobics etc" 77 "refused" 8 "racquet sports" 88 "Don't know" 9 "stair-steppers etc"
label values pa13c4 _ZJu7SadCvF

label variable pa13d4 "How many hours fourth activity"

label variable pa13e4 "Vigorous activity level fourth activity"
label define _zjRYMVw1fW 1 "Leisurely" 2 "Moderate" 3 "Vigorous" 7 "Refused" 8 "Don't know"
label values pa13e4 _zjRYMVw1fW

label variable pa13f "Other Exercise"

label variable pa13a "Did you do any exercise activities in the past 12 mo"
label define _o8dMsJjQGJ 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa13a _o8dMsJjQGJ

label variable pa13b "reason you havae not done any exercise activities past 2 weeks"
label define _wpFH55kGYx 1 "bad weather" 2 "too busy/no time" 3 "injury" 4 "health/illness" 5 "lost interest/partner" 6 "felt unsafe" 7 "refused" 8 "don't know" 9 "other"
label values pa13b _wpFH55kGYx

label variable pa14 "Did you do any recreational activities in the past w weeks"
label define _bX3vuvdigD 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa14 _bX3vuvdigD

label variable pa14c1 "Recreational activity first named"
label define _mwlXbMnN8h 1 "golf" 10 "fishing" 11 "skiing" 12 "other 1" 13 "other 2" 2 "bowl/boccie" 3 "dancing" 4 "skating etc" 5 "table tennis" 6 "billiards" 7 "horseback riding" 77 "refused" 8 "hunting" 88 "don't know" 9 "sailing/boating"
label values pa14c1 _mwlXbMnN8h

label variable pa14d1 "How many hours first activity"

label variable pa14c2 "Recreational activity second named"
label define _KlcW0IGi29 1 "golf" 10 "fishing" 11 "skiing" 12 "other 1" 13 "other 2" 2 "bowl/boccie" 3 "dancing" 4 "skating etc" 5 "table tennis" 6 "billiards" 7 "horseback riding" 77 "refused" 8 "hunting" 88 "don't know" 9 "sailing/boating"
label values pa14c2 _KlcW0IGi29

label variable pa14d2 "How many hours second activity"

label variable pa14c3 "Recreational activity third named"
label define _MCsUuhi1fr 1 "golf" 10 "fishing" 11 "skiing" 12 "other 1" 13 "other 2" 2 "bowl/boccie" 3 "dancing" 4 "skating etc" 5 "table tennis" 6 "billiards" 7 "horseback riding" 77 "refused" 8 "hunting" 88 "don't know" 9 "sailing/boating"
label values pa14c3 _MCsUuhi1fr

label variable pa14d3 "How many hours third activity"

label variable pa14c4 "Recreational activity fourth named"
label define _FBY9llkdm6 1 "golf" 10 "fishing" 11 "skiing" 12 "other 1" 13 "other 2" 2 "bowl/boccie" 3 "dancing" 4 "skating etc" 5 "table tennis" 6 "billiards" 7 "horseback riding" 77 "refused" 8 "hunting" 88 "don't know" 9 "sailing/boating"
label values pa14c4 _FBY9llkdm6

label variable pa14d4 "How many hours fourth activity"

label variable pa14f "Other recreational activities"

label variable pa14a "Did you do any exercise activities in the past 12 mo"
label define _vvCeVKy7jy 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values pa14a _vvCeVKy7jy

label variable pa14b "reason you havae not done any recreational activities past 2 weeks"
label define _fWaS1l098N 1 "bad weather" 2 "too busy/no time" 3 "injury" 4 "health/illness" 5 "lost interest/partner" 6 "felt unsafe" 7 "refused" 8 "don't know" 9 "other"
label values pa14b _fWaS1l098N

label variable oact01 "Do you currently work for pay"
label define _JjNv1b6dOY 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values oact01 _JjNv1b6dOY

label variable oact01a "On average how many hours do you work per week all jobs combined"

label variable oact01b "How many months of the year do you work"

label variable oact01c "Type of work activity"
label define _bevTjEgVCp 1 "mainly sitting" 2 "some standing and walking" 3 "mostly standing and walking" 4 "walking and heavy manual work" 7 "refused" 8 "don't know"
label values oact01c _bevTjEgVCp

label variable oact02 "Do you currently do volunteer work"
label define _icxqREpexZ 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values oact02 _icxqREpexZ

label variable oact02a "On average how many hours do you volunteer?"

label variable oact02b "How many months of the year do you do volunteer work"

label variable oact02c "Type of volunteer activity"
label define _Gc7xbFYDaI 1 "mainly sitting" 2 "some standing and walking" 3 "mostly standing and walking" 4 "walking and heavy manual work" 7 "refused" 8 "don't know"
label values oact02c _Gc7xbFYDaI

label variable oact03 "Do you currently provide any regular care or assistance to a child or disabled or sick adult"
label define _UqHMgr00gd 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values oact03 _UqHMgr00gd

label variable oact03a "About how many hours per week provide care to another person"

label variable oact04 "About how often do you get together with friends or neighbors"
label define _Hqfhqqx1qr 0 "Less than once per week" 1 "1 time per week" 2 "2 to 3 times per week" 3 "4 to 6 times per week" 4 "At least once a day" 7 "Refused" 8 "Don't know"
label values oact04 _Hqfhqqx1qr

label variable oact05 "About how often do you get together with your children or other relatives"
label define _uc2dcSE9ez 0 "Less than once per week" 1 "1 time per week" 2 "2 to 3 times per week" 3 "4 to 6 times per week" 4 "At least once a day" 7 "Refused" 8 "Don't know"
label values oact05 _uc2dcSE9ez

label variable oact06a "How often in the past 12 mo did you do a crossword or other word puzzle"
label define _rhbYI1441F 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06a _rhbYI1441F

label variable oact06b "How often in the past 12 mo did you do a jigsaw puzzle"
label define _kzWjF2bwQg 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06b _kzWjF2bwQg

label variable oact06c "How often in the past 12 mo did you read a newspaper or magazine article"
label define _Z1G3FdHR4W 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06c _Z1G3FdHR4W

label variable oact06d "How often in the past 12 mo did you read from a book"
label define _lyuaLMleMd 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06d _lyuaLMleMd

label variable oact06e "How often in the past 12 mo did you play board games bingo bridge or other card games"
label define _HdkgnuZZeO 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06e _HdkgnuZZeO

label variable oact06f "How often in the past 12 mo did you use a computer"
label define _ELvHXlC7a8 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06f _ELvHXlC7a8

label variable oact06g "How often in the past 12 mo did you play a musical instrument"
label define _IUqZwkWvLj 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06g _IUqZwkWvLj

label variable oact06h "How often in the past 12 mo did you do recreational games like darts horshoes pool"
label define _wJGXAuxiTE 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06h _wJGXAuxiTE

label variable oact06i "How often in the past 12 mo did you write a letter article poem or story"
label define _Lg3l2NUX0g 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06i _Lg3l2NUX0g

label variable oact06j "How often in the past 12 mo did you travel 100 miles or more from your home"
label define _M7DEtVCdF3 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06j _M7DEtVCdF3

label variable oact06k "How often in the past 12 mo did you do handcrafts needlework sewing carpentry wood working model building"
label define _ExXNoiO70n 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06k _ExXNoiO70n

label variable oact06l "How often in the past 12 mo did you do art projects photography sketch draw paint sculpt"
label define _pSmmxeHOl0 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06l _pSmmxeHOl0

label variable oact06m "How often in the past 12 mo did you do go out to a movie the theater a concert or show"
label define _ZCAnujnaLk 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06m _ZCAnujnaLk

label variable oact06n "How often in the past 12 mo did you do visit a museum aquarium zoo or science center"
label define _a0LMSFfNLj 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06n _a0LMSFfNLj

label variable oact06o "How often in the past 12 mo did you do attend a sports event like baseball or football game"
label define _WSswD4upJx 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06o _WSswD4upJx

label variable oact06p "How often in the past 12 mo did you do attend a course class lecture discussion public meeting"
label define _Zyyd2Z5LqR 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06p _Zyyd2Z5LqR

label variable oact06q "How often in the past 12 mo did you participatae in church club or other community activities apart from any mentioned above"
label define _EfOFFCPcxo 0 "Not at all" 1 "Less than once a month" 2 "Less than once a week" 3 "At least every week" 4 "Almost daily" 7 "Refused" 8 "Don't know"
label values oact06q _EfOFFCPcxo

label variable oact07 "About how many hours per week on average do you watch television"
label define _eW4o6oKLcw 0 "Zero" 1 "More than 0 up to 7 hrs" 2 "More than 7 up to 14 hrs" 3 "More than 14 up to 21 hrs" 4 "More than 21 up to 28 hrs" 5 "More than 28 up to 35 hrs" 6 "More than 35 hrs" 7 "Refused" 8 "Don't know"
label values oact07 _eW4o6oKLcw

label variable oact08 "About how many hours per week on average do you spend reading books newspapers magazines"

label variable smk01 "Have you smoked at least 100 cigarettes over your entire life"
label define _xyz50MAyAD 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values smk01 _xyz50MAyAD

label variable smk01a "Have you ever smoked on a regular basis that is daily for at least 6 months"
label define _bkpWeFrL8F 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values smk01a _bkpWeFrL8F

label variable smk01b "How old were you when you first started smoking cigarettes regularly"

label variable smk01c "On average over the entire time you have smoked how many cigarettes have you usually smoked per day"

label variable smk01d "Do you smoke cigarettes now"
label define _F6By8XQsub 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values smk01d _F6By8XQsub

label variable smk01e "On average how many cigarettes a day do you smoke now"

label variable smk01f "How many times have you seriously tried to quit smoking"

label variable smk01g "How old were you when you stopped smoking cigarettes"

label variable smk02 "Have you smoked at least 50 cigars over your entire life"
label define _YfYbUHZvxi 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values smk02 _YfYbUHZvxi

label variable smk02a "How old were you when you first started smoking cigars"

label variable smk02b "On average over the entire time you have smoked how many cigars have you usually smoked per week"

label variable smk02c "Do you smoke cigars now"
label define _HAU0JenAHb 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values smk02c _HAU0JenAHb

label variable smk02d "On average how many cigars a week do you smoke now"

label variable smk02e "Age when you stop smoking cigars"

label variable smk03 "Have you smoked at least 3 packages of pipe tobacco over your entire life"
label define _hdnJ6cJNY4 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values smk03 _hdnJ6cJNY4

label variable smk03a "How old were you when you first started smoking a pipe"

label variable smk03b "On average over the entire time you have smoked a pipe how many pipefuls have you usually smoked per week"

label variable smk03c "Do you smoke a pipe now"
label define _z1zNxBzLd6 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values smk03c _z1zNxBzLd6

label variable smk03d "On average how many pipefuls a week do you smoke now"

label variable smk03e "Age when you stop smoking a pipe"

label variable alc01 "In the past 12 mo did you drink any alcoholic beverages"
label define _tfF8jsZRBo 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values alc01 _tfF8jsZRBo

label variable alc01a "In a typical week over the past 12 mo how many alcoholic beverages did you have"
label define _WBD5TS7Wvg 0 "less than one" 1 "1-3 drinks" 2 "4-7 drinks" 3 "8-14 drinks" 4 "15-21 drinks" 5 "22-28 drinks" 6 "more than 28" 7 "refused" 8 "don't know"
label values alc01a _WBD5TS7Wvg

label variable alc01b "In a typical week over the past 12 mo how many of these drinks were red wine"
label define _XeO8iHYe0e 0 "less than one" 1 "1-3 drinks" 2 "4-7 drinks" 3 "8-14 drinks" 4 "15-21 drinks" 5 "22-28 drinks" 6 "more than 28" 7 "refused" 8 "don't know"
label values alc01b _XeO8iHYe0e

label variable alc01c "What is the primary reason youdid not drink any alcoholic beverages in the past 12 months?"
label define _zK2omHFzPd 1 "dislike alcohol" 2 "religious/moral reasons" 3 "health reasons" 4 "former alcoholic" 5 "alcohol abuse in family" 6 "no occasion" 7 "dietary issues" 77 "refused" 8 "other" 88 "don't know"
label values alc01c _zK2omHFzPd

label variable alc02 "Did you ever drink more alcoholic beverages than you do now"
label define _LK3K8xnxW0 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values alc02 _LK3K8xnxW0

label variable alc03 "Was there ever a time in your life when you had 5 or more drinks of alcoholic beverage almost every day"
label define _zSALOx4fJ1 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values alc03 _zSALOx4fJ1

label variable psy01 "Using a scale from 0 extremely unhappy to 10 very happy how happy are you"
label define _zxLhdZxIuJ 0 "0" 1 "1" 10 "10" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 77 "77" 8 "8" 88 "88" 9 "9"
label values psy01 _zxLhdZxIuJ

label variable psy02 "I can do just about anything I really set my mind to Agree Disagree"
label define _KWYTQbP07Y 0 "Disagree" 1 "Agree" 7 "Refused" 8 "Don't know"
label values psy02 _KWYTQbP07Y

label variable psy02a "Do just about anything agree strongly or somewhat"
label define _Ku0U10qsSy 1 "Somewhat" 2 "Strongly" 8 "Don't know"
label values psy02a _Ku0U10qsSy

label variable psy02b "Do just about anything disagree strongly or somewhat"
label define _YBz4XmnT6d 1 "Somewhat" 2 "Strongly" 8 "Don't know"
label values psy02b _YBz4XmnT6d

label variable psy03 "Often feel helpless dealing with the problems of life Agree Disagree"
label define _TCkGbif02J 0 "Disagree" 1 "Agree" 7 "Refused" 8 "Don't know"
label values psy03 _TCkGbif02J

label variable psy03a "Often feel helpless dealing with the problems of life Agree strongly or somewhat"
label define _RouVTHLEHr 1 "Somewhat" 2 "Strongly" 8 "Don't know"
label values psy03a _RouVTHLEHr

label variable psy03b "Often feel helpless dealing with the problems of life Disagree strongly or womewhat"
label define _cCTHh0Bmfe 1 "Somewhat" 2 "Strongly" 8 "Don't know"
label values psy03b _cCTHh0Bmfe

label variable psy04 "In the past year could you use more emotional support than you receive"
label define _hEp1Eke9SL 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values psy04 _hEp1Eke9SL

label variable psy04a "Would you say you needed a lot more some more or a little more"
label define _zKJas3U2xq 1 "A little more" 2 "Some more" 3 "A lot more" 7 "Refused" 8 "Don't know"
label values psy04a _zKJas3U2xq

label variable pss02 "In the last month felt unable to control the important things in your life"
label define _y6XZJBWu4Q 0 "Never" 1 "Almost never" 2 "Sometimes" 3 "Fairly often" 4 "Very often" 7 "Refused" 8 "Don't know"
label values pss02 _y6XZJBWu4Q

label variable pss03 "In the last month felt nervous and stressed"
label define _NwInmkjU9W 0 "Never" 1 "Almost never" 2 "Sometimes" 3 "Fairly often" 4 "Very often" 7 "Refused" 8 "Don't know"
label values pss03 _NwInmkjU9W

label variable pss07 "In the last month felt that things were going your way"
label define _EnrJw4xL3N 0 "Very often" 1 "Fairly often" 2 "Sometimes" 3 "Almost never" 4 "Never" 7 "Refused" 8 "Don't know"
label values pss07 _EnrJw4xL3N

label variable pss06 "In the last month felt confident about your ability to handle your personal problems"
label define _uvo3aXlLed 0 "Very often" 1 "Fairly often" 2 "Sometimes" 3 "Almost never" 4 "Never" 7 "Refused" 8 "Don't know"
label values pss06 _uvo3aXlLed

label variable pss11 "In the last month been angered because of things that happened that were outside of your control"
label define _TRBo1WWpWn 0 "Never" 1 "Almost never" 2 "Sometimes" 3 "Fairly often" 4 "Very often" 7 "Refused" 8 "Don't know"
label values pss11 _TRBo1WWpWn

label variable pss14 "In the last month felt difficulties were piling up so hight that you could not overcome them"
label define _vqdAyCF4yj 0 "Never" 1 "Almost never" 2 "Sometimes" 3 "Fairly often" 4 "Very often" 7 "Refused" 8 "Don't know"
label values pss14 _vqdAyCF4yj

label variable cmq01 "In a typical week within the past month how mahy times did you leave your home for any reason"
label define _CU9NGF4GVU 0 "Less than once per week" 1 "1 time per week" 2 "2 to 3 times per week" 3 "4 to 6 times per week" 4 "At least once a day" 7 "Refused" 8 "Don't know"
label values cmq01 _CU9NGF4GVU

label variable cmq02 "When you leave your home how often do you go alone"
label define _fttrDPlOjb 0 "Never" 1 "Rarely" 2 "Sometimes" 3 "Often" 4 "Always" 7 "Refused" 8 "Don't know"
label values cmq02 _fttrDPlOjb

label variable cmq03 "When away from home how often do you limit the amount of walking"
label define _htaIiUjS4F 0 "Never" 1 "Rarely" 2 "Sometimes" 3 "Often" 4 "Always" 7 "Refused" 8 "Don't know"
label values cmq03 _htaIiUjS4F

label variable cmq04 "How often do you purposly avoid leaving your home when it is dark or raining"
label define _iHnDQerH6r 0 "Never" 1 "Rarely" 2 "Sometimes" 3 "Often" 4 "Always" 7 "Refused" 8 "Don't know"
label values cmq04 _iHnDQerH6r

label variable cmq05 "How often do you purposly avoid a situation in which you would have to walk on an uneven surface?"
label define _JTNbkAXc09 0 "Never" 1 "Rarely" 2 "Sometimes" 3 "Often" 4 "Always" 7 "Refused" 8 "Don't know"
label values cmq05 _JTNbkAXc09

label variable sf01 "In general would you say your health is"
label define _fLbmrp0pH6 1 "Excellent" 2 "Very good" 3 "Good" 4 "Fair" 5 "Poor" 7 "Refused" 8 "Don't know"
label values sf01 _fLbmrp0pH6

label variable sf02 "Does your health now limit you in moderate activities"
label define _WwIBBLxNns 1 "Yes limited a lot" 2 "Yes limited a little" 3 "No not limited at all" 7 "Refused" 8 "Don't know"
label values sf02 _WwIBBLxNns

label variable sf03 "Does your health now limit you in climbing several flights of stairs"
label define _UsQnoSsarf 1 "Yes limited a lot" 2 "Yes limited a little" 3 "No not limited at all" 7 "Refused" 8 "Don't know"
label values sf03 _UsQnoSsarf

label variable sf04 "During the past 4 wks did you accomplish less than you would like due to physicala health"
label define _B1iFyN2NFb 1 "Yes" 2 "No" 7 "Refused" 8 "Don't know"
label values sf04 _B1iFyN2NFb

label variable sf05 "During the past 4 wks were you limited in the kind of work or other activities as a result of your physical health"
label define _HNkSkfpWGu 1 "Yes" 2 "No" 7 "Refused" 8 "Don't know"
label values sf05 _HNkSkfpWGu

label variable sf06 "During the past 4 weeks have you accomplished less than you would like due to emotional problems"
label define _HRY9dRcGAl 1 "Yes" 2 "No" 7 "Refused" 8 "Don't know"
label values sf06 _HRY9dRcGAl

label variable sf07 "During the past 4 weeks have you not done work or other activities as carefully as usual due to emotional problems"
label define _q3NmsEQhSf 1 "Yes" 2 "No" 7 "Refused" 8 "Don't know"
label values sf07 _q3NmsEQhSf

label variable sf08 "During the past 4 weeks how much did pain interfere with your normal work"
label define _aj62njDE3r 1 "Not at all" 2 "Slightly" 3 "Moderately" 4 "Quite a bit" 5 "Extremely" 7 "Refused" 8 "Don't know"
label values sf08 _aj62njDE3r

label variable sf09 "How much of the time during the past 4 weeks felt calm and peaceful"
label define _TEjmRsvN1r 1 "All" 2 "Most" 3 "A good bit" 4 "Some" 5 "A little" 6 "None" 7 "Refused" 8 "Don't know"
label values sf09 _TEjmRsvN1r

label variable sf10 "How much of the time during the past 4 weeks had a lot of energy"
label define _VAwIBq7IPz 1 "All" 2 "Most" 3 "A good bit" 4 "Some" 5 "A little" 6 "None" 7 "Refused" 8 "Don't know"
label values sf10 _VAwIBq7IPz

label variable sf11 "How much of the time during the past 4 weeks felt downhearted and blue"
label define _QgDVnH3m7Y 1 "All" 2 "Most" 3 "A good bit" 4 "Some" 5 "A little" 6 "None" 7 "Refused" 8 "Don't know"
label values sf11 _QgDVnH3m7Y

label variable sf12 "During the past 4 weeks how much of the time have your physical health or emotional problems interfered with your social activities"
label define _iMUFSAhL2X 1 "All" 2 "Most" 3 "Some" 4 "A little" 5 "None" 7 "Refused" 8 "Don't know"
label values sf12 _iMUFSAhL2X

label variable auto_id_genint "Unique Teleform Number"

label variable crf_parent_name_genint "CRF Parent Name"

label variable study_name_genint "Study Name"

