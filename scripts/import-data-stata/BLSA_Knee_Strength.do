clear
import delimited "../data-csv/BLSA_Knee_Strength.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_knestr "CRF Version"

label variable obsdate_ksdate "Date Completed"

// Generate 'date version' of the 'obsdate_ksdate' variable
gen _obsdate_ksdate = date(obsdate_ksdate, "YMD")
format _obsdate_ksdate %td

label variable blank_knestr "Blank Form"

label variable kstid "Tester ID"

label variable ks001 "Does BP during PE exceed 220/115"
label define _VaASj595xm 0 "No" 1 "Yes" 8 "Don't know"
label values ks001 _VaASj595xm

label variable ks003 "Ever been told you had aneurysm in the brain"
label define _NNTnlUFArN 0 "No" 1 "Yes" 8 "Don't know"
label values ks003 _NNTnlUFArN

label variable ks004 "Told you had a cerebral hemmorage in the last 6 months"
label define _XQvecsFDdq 0 "No" 1 "Yes" 8 "Don't know"
label values ks004 _XQvecsFDdq

label variable ks005 "Have had knee surgery"
label define _PrLDVENXjS 0 "No" 1 "Yes" 8 "Don't know"
label values ks005 _PrLDVENXjS

label variable ks005a "Surgery on right left or both"
label define _TygZLsOubS 1 "Right" 2 "Left" 3 "Both" 8 "Don't know"
label values ks005a _TygZLsOubS

label variable ks005b "Right knee surgery"
label define _vAWAUtwVr6 1 "Joint" 2 "Bone" 3 "Ligament" 4 "Meniscus" 5 "Cartilage" 6 "Knee cap" 7 "Tendon" 8 "Others" 9 "Don't know"
label values ks005b _vAWAUtwVr6

label variable ks005c "Left knee surgery"
label define _ZPX3C9CAvF 1 "Joint" 2 "Bone" 3 "Ligament" 4 "Meniscus" 5 "Cartilage" 6 "Knee cap" 7 "Tendon" 8 "Others" 9 "Don't know"
label values ks005c _ZPX3C9CAvF

label variable ks006 "Had an injury that made one leg weaker than the other"
label define _iBHTgVNoaJ 0 "No" 1 "Yes" 8 "Don't know"
label values ks006 _iBHTgVNoaJ

label variable ks006a "Which leg is stronger"
label define _zY3IbY9Ums 1 "Right" 2 "Left" 8 "Don't know"
label values ks006a _zY3IbY9Ums

label variable ks007 "Difficult to bend or straighten knee"
label define _pyXAEYZ4PS 0 "No" 1 "Yes" 8 "Don't know"
label values ks007 _pyXAEYZ4PS

label variable ks007a "Which knee difficult to bend or straighten"
label define _FNfa6ctrXM 1 "Right" 2 "Left" 3 "Both" 8 "Don't know"
label values ks007a _FNfa6ctrXM

label variable ks024 "Do you have any pain in your knee when you walk up or down stairs"
label define _l5ZX9q2emJ 0 "No" 1 "Yes" 8 "Don't know"
label values ks024 _l5ZX9q2emJ

label variable ks024a "Which knee has pain when walking up or down stairs"
label define _t0Yd0RY6IZ 1 "Right" 2 "Left" 3 "Both" 8 "Don't know"
label values ks024a _t0Yd0RY6IZ

label variable ks024b "How often do you have pain when walking up or down stairs"
label define _ETR4dtyG82 1 "Occassionally" 2 "Weekly" 3 "Daily" 8 "Don't know"
label values ks024b _ETR4dtyG82

label variable ks008 "Prior year which leg tested"
label define _Shp0kVwOSy 1 "Right" 2 "Left" 3 "First time" 4 "Both" 8 "Don't know"
label values ks008 _Shp0kVwOSy

label variable ks025 "Do you have any pain now"
label define _O7L4XlXqBC 0 "No" 1 "Yes" 8 "Don't know"
label values ks025 _O7L4XlXqBC

label variable ks025a "Low back pain"
label define _J7FYWYnjAz 0 "0" 1 "1" 10 "10" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9"
label values ks025a _J7FYWYnjAz

label variable ks025b "Right hip pain"
label define _XYyox3c8MH 0 "0" 1 "1" 10 "10" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9"
label values ks025b _XYyox3c8MH

label variable ks025c "Left hip pain"
label define _ecc2mdlvhr 0 "0" 1 "1" 10 "10" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9"
label values ks025c _ecc2mdlvhr

label variable ks025d "Right knee pain"
label define _MUUDrY31aS 0 "0" 1 "1" 10 "10" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9"
label values ks025d _MUUDrY31aS

label variable ks025e "Left knee pain"
label define _Y8XkJkVxql 0 "0" 1 "1" 10 "10" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9"
label values ks025e _Y8XkJkVxql

label variable ks010a "Right seat bottom depth"

label variable ks010b "Right lever arm"

label variable ks010c "Right limb weight"

label variable ks011a "Right leg concentric test YN"
label define _g9LOBZSB7G 0 "No" 1 "Yes"
label values ks011a _g9LOBZSB7G

label variable ks011b "Right leg concentric trials at 30 degree"
label define _jYSLN3Uv0I 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks011b _jYSLN3Uv0I

label variable ks011brnd "R concentric 30 degree test terminated"
label define _JJpihy1LXx 1 "Requested by Participant" 2 "Tester's decision"
label values ks011brnd _JJpihy1LXx

label variable ks011c "Right leg concentric trials at 180 degree"
label define _frltu0dgIX 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks011c _frltu0dgIX

label variable ks011crnd "R concentric 180 degree test terminated"
label define _dLRCk2yy1n 1 "Requested by Participant" 2 "Tester's decision"
label values ks011crnd _dLRCk2yy1n

label variable ks011d "Right leg concentric RND"
label define _qyDES6QhbE 1 "Ineligible" 2 "Technical" 3 "No Tester" 4 "Time" 7 "Refused" 8 "Don't know"
label values ks011d _qyDES6QhbE

label variable ks013a "Right leg Isometric test YN"
label define _kIF6peWgfr 0 "No" 1 "Yes"
label values ks013a _kIF6peWgfr

label variable ks013b "Right leg Isometric trials at 120 degree"
label define _KuOclvi870 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks013b _KuOclvi870

label variable ks013c "Right leg Isometric trials at 140 degree"
label define _yfScqBNhLc 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks013c _yfScqBNhLc

label variable ks013brnd "R Isometric test terminated"
label define _IED0U77Gif 1 "Requested by Participant" 2 "Tester's decision"
label values ks013brnd _IED0U77Gif

label variable ks013d "Right leg Isometric RND"
label define _Au6sUqPLvL 1 "Ineligible" 2 "Technical" 3 "No Tester" 4 "Time" 7 "Refused" 8 "Don't know"
label values ks013d _Au6sUqPLvL

label variable ks020a "Left seat bottom depth"

label variable ks020b "Left lever arm"

label variable ks020c "Left limb weight"

label variable ks021a "Left leg concentric test YN"
label define _G97mXJgcih 0 "No" 1 "Yes"
label values ks021a _G97mXJgcih

label variable ks021b "Left leg concentric trials at 30 degree"
label define _KCdmVlnJjf 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks021b _KCdmVlnJjf

label variable ks021brnd "L concentric 30 degree test terminated"
label define _s0xVBpwvcW 1 "Requested by Participant" 2 "Tester's decision"
label values ks021brnd _s0xVBpwvcW

label variable ks021c "Left leg concentric trials at 180 degree"
label define _niJf2SpF7t 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks021c _niJf2SpF7t

label variable ks021crnd "L concentric 180 degree test terminated"
label define _USs3iusZFu 1 "Requested by Participant" 2 "Tester's decision"
label values ks021crnd _USs3iusZFu

label variable ks021d "Left leg concentric RND"
label define _JCCMwOOLQH 1 "Ineligible" 2 "Technical" 3 "No Tester" 4 "Time" 7 "Refused" 8 "Don't know"
label values ks021d _JCCMwOOLQH

label variable ks023a "Left leg Isometric test YN"
label define _vPzO3LEMaJ 0 "No" 1 "Yes"
label values ks023a _vPzO3LEMaJ

label variable ks023b "Left leg Isometric trials at 120 degree"
label define _uNAp7dKzoN 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks023b _uNAp7dKzoN

label variable ks023c "Left leg Isometric trials at 140 degree"
label define _ULL0Jd1c6A 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks023c _ULL0Jd1c6A

label variable ks023crnd "L Isometric test terminated"
label define _qVoTIqJhJ0 1 "Requested by Participant" 2 "Tester's decision"
label values ks023crnd _qVoTIqJhJ0

label variable ks023d "Left leg Isometric RND"
label define _jwjRlol7FF 1 "Ineligible" 2 "Technical" 3 "No Tester" 4 "Time" 7 "Refused" 8 "Don't know"
label values ks023d _jwjRlol7FF

label variable ks004a3m "Past 3 months had low back pain that limited activity for 10 days"
label define _hUh4Gz6KLK 0 "No" 1 "Yes" 8 "Don't know"
label values ks004a3m _hUh4Gz6KLK

label variable ksrcom "Right leg comment"

label variable kslcom "Left leg comment"

label variable ks004a "Past year had low back pain that limited activity for 10 days"
label define _Fae235lZAW 0 "No" 1 "Yes" 8 "Don't know"
label values ks004a _Fae235lZAW

label variable auto_id_knestr "Unique Teleform Number"

label variable ks002 "From DXA is bone mineral density T score of either hip more than four standard deviations below the population mean or less than 0.5 g/cm-squared"
label define _u8F22lpGtH 0 "No" 1 "Yes" 8 "Don't know"
label values ks002 _u8F22lpGtH

label variable ks009 "Any pain in right left or both knees that stopped you from pushing hard"
label define _hHBFHh3LlT 0 "No test both sides" 1 "Right test left side only" 2 "Left test right side only" 3 "Both do NOT test" 8 " Don't know go to Kin-Com exam"
label values ks009 _hHBFHh3LlT

label variable ks009a "Can other side be tested"
label define _TWYUEdUFAQ 0 "No" 1 "Yes"
label values ks009a _TWYUEdUFAQ

label variable ks009b "Pain in your knee stopped you from pushing hard"
label define _BLDHN2Pemq 0 "No" 1 "Yes" 8 "Don't know"
label values ks009b _BLDHN2Pemq

label variable ksdate2 "Date Completed"

// Generate 'date version' of the 'ksdate2' variable
gen _ksdate2 = date(ksdate2, "YMD")
format _ksdate2 %td

label variable kstid2 "Tester ID"

label variable ks012a "Right leg eccentric test YN"
label define _rYK2mI7UIx 0 "No" 1 "Yes"
label values ks012a _rYK2mI7UIx

label variable ks012b "Right leg eccentric trials at 30 degree"
label define _tllGhAQv0J 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks012b _tllGhAQv0J

label variable ks012c "Right leg eccentric trials at 180 degree"
label define _h3ABtSupgA 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks012c _h3ABtSupgA

label variable ks012d "Right leg eccentric RND"
label define _dKXDgHrGBk 1 "Ineligible" 2 "Technical" 3 "No Tester" 4 "Time" 7 "Refused" 8 "Don't know"
label values ks012d _dKXDgHrGBk

label variable ksdate3 "Date Completed"

// Generate 'date version' of the 'ksdate3' variable
gen _ksdate3 = date(ksdate3, "YMD")
format _ksdate3 %td

label variable kstid3 "Tester ID"

label variable ks022a "Right leg eccentric test YN"
label define _g3utCAN9vb 0 "No" 1 "Yes"
label values ks022a _g3utCAN9vb

label variable ks022b "Right leg eccentric trials at 30 degree"
label define _QqZ8ztjLUn 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks022b _QqZ8ztjLUn

label variable ks022c "Right leg eccentric trials at 180 degree"
label define _ctLOI9FgFb 0 "0" 1 "1" 2 "2" 3 "3" 4 "4+"
label values ks022c _ctLOI9FgFb

label variable ks022d "Right leg eccentric RND"
label define _InC3OWWEOi 1 "Ineligible" 2 "Technical" 3 "No Tester" 4 "Time" 7 "Refused" 8 "Don't know"
label values ks022d _InC3OWWEOi

label variable crf_parent_name_knestr "CRF Parent Name"

label variable study_name_knestr "Study Name"

