clear
import delimited "../data-csv/BLSA_OGTT.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_ogt "CRF Version"

label variable obsdate_ogttdate "Date Completed"

// Generate 'date version' of the 'obsdate_ogttdate' variable
gen _obsdate_ogttdate = date(obsdate_ogttdate, "YMD")
format _obsdate_ogttdate %td

label variable blank_ogt "Blank Form"

label variable ogtttid_ogt "Tester ID"

label variable ogtt01_ogt "Do you take insulin to controldiabetes"
label define _HoVVrMDkri 0 "No" 1 "Yes"
label values ogtt01_ogt _HoVVrMDkri

label variable ogtt02a "Was glucose tolerance test done"
label define _DfpHcSrBD7 0 "No" 1 "Yes"
label values ogtt02a _DfpHcSrBD7

label variable ogtt02b "reason not done"
label define _W5Ttu96yHb 1 "Exclusion criteria" 2 "Venous access difficult" 3 "Could not tolerate test beverage" 4 " Other (please specify)" 7 "Refused"
label values ogtt02b _W5Ttu96yHb

label variable ogtt02c "Exclusion criteria"
label define _or4CiAttJT 1 "Exercised this morning" 2 "Taken any steroids in past 3 mo" 3 "Did not fast" 4 "Has fever (or infection within past 3 days)" 5 "Uses insulin"
label values ogtt02c _or4CiAttJT

label variable ogtt02d "reason not done other"

label variable ogtt04 "Was entire glucose drink consumed"
label define _zHGUrelziD 0 "No" 1 "Yes"
label values ogtt04 _zHGUrelziD

label variable ogtt05 "Which protocol was performed"
label define _iTcbn1Qc6e 0 "Short" 1 "Complete"
label values ogtt05 _iTcbn1Qc6e

label variable ogtt05a "Samples collected"

label variable ogtt05b "Reason all samples not colleted"
label define _hTwu3ezeuB 2 "Venous access difficult" 3 "Vasovagal reaction" 4 "Other" 7 "Refused" 9 "Technical problems"
label values ogtt05b _hTwu3ezeuB

label variable ogtt05c "Other reason all samples not collected"

label variable ogtt06 "Body temperature before OGTT"

label variable ogtt07 "Body temperature after OGTT"

label variable ogtt08 "Any steroid use the past 3 months"
label define _qSlefJpZQ5 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values ogtt08 _qSlefJpZQ5

label variable ogtt08a1 "Oral steroid"
label define _jUkvtRwQXA 0 "No" 1 "Yes"
label values ogtt08a1 _jUkvtRwQXA

label variable ogtt08b1 "Oral steroid recency"
label define _Q3InC9sbiM 1 "Within past one wk" 2 "Within past two wk" 3 "Within past 1 mo" 4 "Greater than 1 mo" 7 "Refused" 8 "Don't know"
label values ogtt08b1 _Q3InC9sbiM

label variable ogtt08c1 "Duration of use oral steroid"
label define _CGQFRzifC0 1 "One dose" 2 "Less than 2 weeks" 3 "Greater than 2 weeks" 7 "Refused" 8 "Don't know"
label values ogtt08c1 _CGQFRzifC0

label variable ogtt08a2 "Injectable steroid"
label define _kLki6jsJ5o 0 "No" 1 "Yes"
label values ogtt08a2 _kLki6jsJ5o

label variable ogtt08b2 "Injectable steroid recency"
label define _lxdabdcHQx 1 "Within past one wk" 2 "Within past two wk" 3 "Within past 1 mo" 4 "Greater than 1 mo" 7 "Refused" 8 "Don't know"
label values ogtt08b2 _lxdabdcHQx

label variable ogtt08c2 "Duration of use Injectable steroid"
label define _Fa6Hf4q7nz 1 "One dose" 2 "Less than 2 weeks" 3 "Greater than 2 weeks" 7 "Refused" 8 "Don't know"
label values ogtt08c2 _Fa6Hf4q7nz

label variable ogtt08a3 "Topical steroid"
label define _NvugUO25pW 0 "No" 1 "Yes"
label values ogtt08a3 _NvugUO25pW

label variable ogtt08b3 "Topical steroid recency"
label define _REfKmBBhzk 1 "Within past one wk" 2 "Within past two wk" 3 "Within past 1 mo" 4 "Greater than 1 mo" 7 "Refused" 8 "Don't know"
label values ogtt08b3 _REfKmBBhzk

label variable ogtt08c3 "Duration of use Topical steroid"
label define _REKguikIF1 1 "One dose" 2 "Less than 2 weeks" 3 "Greater than 2 weeks" 7 "Refused" 8 "Don't know"
label values ogtt08c3 _REKguikIF1

label variable ogtt08a4 "Nasal steroid"
label define _ceDeNT9JIU 0 "No" 1 "Yes"
label values ogtt08a4 _ceDeNT9JIU

label variable ogtt08b4 "Nasal steroid recency"
label define _NoELycSMOw 1 "Within past one wk" 2 "Within past two wk" 3 "Within past 1 mo" 4 "Greater than 1 mo" 7 "Refused" 8 "Don't know"
label values ogtt08b4 _NoELycSMOw

label variable ogtt08c4 "Duration of use Nasal steroid"
label define _oIlvZgeWCu 1 "One dose" 2 "Less than 2 weeks" 3 "Greater than 2 weeks" 7 "Refused" 8 "Don't know"
label values ogtt08c4 _oIlvZgeWCu

label variable ogtt08a5 "Inhaled steroid"
label define _llSyI6eQbH 0 "No" 1 "Yes"
label values ogtt08a5 _llSyI6eQbH

label variable ogtt08b5 "Inhaled steroid recency"
label define _su61tWy6JZ 1 "Within past one wk" 2 "Within past two wk" 3 "Within past 1 mo" 4 "Greater than 1 mo" 7 "Refused" 8 "Don't know"
label values ogtt08b5 _su61tWy6JZ

label variable ogtt08c5 "Duration of use Inhaled steroid"
label define _LqYIU1YiIU 1 "One dose" 2 "Less than 2 weeks" 3 "Greater than 2 weeks" 7 "Refused" 8 "Don't know"
label values ogtt08c5 _LqYIU1YiIU

label variable auto_id_ogt "Unique Teleform Number"

label variable crf_parent_name_ogt "CRF Parent Name"

label variable item_group_repeat_ogt "Item Group Repeate"

label variable ogtt05a_0 "Samples collected : 0 (Checkbox Indicator)"

label variable ogtt05a_100 "Samples collected : 100 (Checkbox Indicator)"

label variable ogtt05a_120 "Samples collected : 120 (Checkbox Indicator)"

label variable ogtt05a_20 "Samples collected : 20 (Checkbox Indicator)"

label variable ogtt05a_40 "Samples collected : 40 (Checkbox Indicator)"

label variable ogtt05a_60 "Samples collected : 60 (Checkbox Indicator)"

label variable study_name_ogt "Study Name"

