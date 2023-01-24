clear
import delimited "../data-csv/BLSA_Vision_Test.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_vistes "CRF Version"

label variable obsdate_visdate "Vision Date Completed"

// Generate 'date version' of the 'obsdate_visdate' variable
gen _obsdate_visdate = date(obsdate_visdate, "YMD")
format _obsdate_visdate %td

label variable visscdt "Date Completed"

// Generate 'date version' of the 'visscdt' variable
gen _visscdt = date(visscdt, "YMD")
format _visscdt %td

label variable blank_vistes "Blank Form"

label variable visscid "Tester ID"

label variable vissc1_vistes "Do you wear glasses or contact lenses"
label define _GHI8Vwwqfe 0 "Never" 1 "Near only (eg reading)" 2 "Distance only (eg driving watching TV)" 3 "For both distance and near"
label values vissc1_vistes _GHI8Vwwqfe

label variable vissc2_vistes "Did you bring your glasses"
label define _MWIqa1TYS3 0 "No" 1 "Yes"
label values vissc2_vistes _MWIqa1TYS3

label variable vissc2a_vistes "Type of glasses or contact lenses"
label define _fnrVI3Vvoq 1 "Glasses" 2 "Contact Lenses"
label values vissc2a_vistes _fnrVI3Vvoq

label variable vissc2a1_vistes "Glasses"
label define _cK04CykZeV 1 "Single vision" 2 "Bifocal" 3 "Trifocals" 4 "Progressives"
label values vissc2a1_vistes _cK04CykZeV

label variable vissc2b_vistes "Contact Lenses"
label define _okjSQ7ldej 1 "Soft" 2 "RGP (hard)" 8 "Unknown"
label values vissc2b_vistes _okjSQ7ldej

label variable vissc2b1_vistes "Contact lenses for distance bifocal or monovision"
label define _iXucrar8Gp 1 "Distance" 2 "Bifocal" 3 "Monovision"
label values vissc2b1_vistes _iXucrar8Gp

label variable vissc2b2_vistes "Which eye distance"
label define _pFGNcC8BcF 1 "Right" 2 "Left" 8 "Unknown"
label values vissc2b2_vistes _pFGNcC8BcF

label variable vistid "VisionTester ID"

label variable visst1 "Stereopsis Line 1"

label variable visst2 "Stereopsis Line 2"

label variable visst3 "Stereopsis Line 3"

label variable visst4 "Stereopsis Line 4"

label variable visst5 "Stereopsis Line 5"

label variable visst6 "Stereopsis Line 6"

label variable visst7 "Stereopsis Line 7"

label variable visst8 "Stereopsis Line 8"

label variable visst9 "Stereopsis Line 9"

label variable visstdon "Stereopsis test completed"
label define _BtWkLdSAYi 0 "No" 1 "Yes"
label values visstdon _BtWkLdSAYi

label variable visstrnd "Stereopsis reason not done"
label define _Fdj3RAx1UM 555 "Physical problems" 666 "Cognitive problems" 777 "Physical and cognitive" 888 "Refused*" 999 "Technical problems"
label values visstrnd _Fdj3RAx1UM

label variable visstgls "Did participant wear glasses"
label define _oSLTYnLMsd 0 "No" 1 "Yes"
label values visstgls _oSLTYnLMsd

label variable visva11 "Glare lights off column 1 high contrast"
label define _aLBFmOlPI9 0 ">100" 1 "100" 2 "80" 3 "63" 4 "50" 5 "40" 6 "32" 7 "25" 8 "20" 9 "16"
label values visva11 _aLBFmOlPI9

label variable visva12 "Glare lights off column 2 medium contrast"
label define _HxexIwLcvW 0 ">100" 1 "100" 2 "80" 3 "63" 4 "50" 5 "40" 6 "32" 7 "25" 8 "20" 9 "16"
label values visva12 _HxexIwLcvW

label variable visva13 "Glare lights off column 3 low contrast"
label define _aqLz6ueEi7 0 ">100" 1 "100" 2 "80" 3 "63" 4 "50" 5 "40" 6 "32" 7 "25" 8 "20" 9 "16"
label values visva13 _aqLz6ueEi7

label variable viscsdis "Test distance"
label define _kT2FdbhPh1 4 "4" 8 "8"
label values viscsdis _kT2FdbhPh1

label variable viscs1b0 "Do you see the bars in the first circles see line B"
label define _WOmiwX9msk 0 "No" 1 "Yes"
label values viscs1b0 _WOmiwX9msk

label variable viscs1b1 "Glare lights off Line B1"
label define _vwRSyU7Dxp 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs1b1 _vwRSyU7Dxp

label variable viscs1b2 "Glare lights off Line B2"
label define _MQ23DrOhvO 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs1b2 _MQ23DrOhvO

label variable viscs1b3 "Glare lights off Line B3"
label define _YBa2vnrPdj 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs1b3 _YBa2vnrPdj

label variable viscs1b4 "Glare lights off Line B4"
label define _Q0YjFDACIK 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs1b4 _Q0YjFDACIK

label variable viscs1b5 "Glare lights off Line B5"
label define _onNwbf38X5 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs1b5 _onNwbf38X5

label variable viscs1b6 "Glare lights off Line B6"
label define _CdSu4dsX5Q 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs1b6 _CdSu4dsX5Q

label variable viscs1b7 "Glare lights off Line B7"
label define _OitqrAOB6I 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs1b7 _OitqrAOB6I

label variable viscs1b8 "Glare lights off Line B8"
label define _WW9vV4xClz 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs1b8 _WW9vV4xClz

label variable viscs1c0 "Lights off Do you see the bars in the first circles see line C"
label define _QOFvwroxiD 0 "No" 1 "Yes"
label values viscs1c0 _QOFvwroxiD

label variable viscs1c1 "Glare lights off Line C1"
label define _LvvkQFbyc1 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs1c1 _LvvkQFbyc1

label variable viscs1c2 "Glare lights off Line C2"
label define _z7Rbd7QEh4 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs1c2 _z7Rbd7QEh4

label variable viscs1c3 "Glare lights off Line C3"
label define _vz5C03voKz 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs1c3 _vz5C03voKz

label variable viscs1c4 "Glare lights off Line C4"
label define _IQmYvOuIcq 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs1c4 _IQmYvOuIcq

label variable viscs1c5 "Glare lights off Line C5"
label define _S8hvb6rxpp 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs1c5 _S8hvb6rxpp

label variable viscs1c6 "Glare lights off Line C6"
label define _yY1RXXiT1X 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs1c6 _yY1RXXiT1X

label variable viscs1c7 "Glare lights off Line C7"
label define _DYbJQG6jQJ 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs1c7 _DYbJQG6jQJ

label variable viscs1c8 "Glare lights off Line C8"
label define _PtoddQSevm 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs1c8 _PtoddQSevm

label variable visva21 "Glare lights on column 1 high contrast"
label define _PSSJ4ZKlxN 0 ">100" 1 "100" 2 "80" 3 "63" 4 "50" 5 "40" 6 "32" 7 "25" 8 "20" 9 "16"
label values visva21 _PSSJ4ZKlxN

label variable visva22 "Glare lights on column 2 medium contrast"
label define _NE4ebNvj2v 0 ">100" 1 "100" 2 "80" 3 "63" 4 "50" 5 "40" 6 "32" 7 "25" 8 "20" 9 "16"
label values visva22 _NE4ebNvj2v

label variable visva23 "Glare lights on column 3 low contrast"
label define _jwfhf4tJXR 0 ">100" 1 "100" 2 "80" 3 "63" 4 "50" 5 "40" 6 "32" 7 "25" 8 "20" 9 "16"
label values visva23 _jwfhf4tJXR

label variable viscs2b0 "Light on Do you see the bars in the first circles see line B"
label define _I5uVa3FDVr 0 "No" 1 "Yes"
label values viscs2b0 _I5uVa3FDVr

label variable viscs2b1 "Glare lights on Line B1"
label define _WjFweKBpJy 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs2b1 _WjFweKBpJy

label variable viscs2b2 "Glare lights on Line B2"
label define _KpuBGJJism 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs2b2 _KpuBGJJism

label variable viscs2b3 "Glare lights on Line B3"
label define _fj1e21uxrM 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs2b3 _fj1e21uxrM

label variable viscs2b4 "Glare lights on Line B4"
label define _pNcqlz5mQA 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs2b4 _pNcqlz5mQA

label variable viscs2b5 "Glare lights on Line B5"
label define _JcWcF2H9zo 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs2b5 _JcWcF2H9zo

label variable viscs2b6 "Glare lights on Line B6"
label define _TqzCe6ucRI 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs2b6 _TqzCe6ucRI

label variable viscs2b7 "Glare lights on Line B7"
label define _wto2GQixPt 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs2b7 _wto2GQixPt

label variable viscs2b8 "Glare lights on Line B8"
label define _Lj2uXhkRoW 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs2b8 _Lj2uXhkRoW

label variable viscs2c0 "Lights on Do you see the bars in the first circles see line C"
label define _ohnYTuMbEs 0 "No" 1 "Yes"
label values viscs2c0 _ohnYTuMbEs

label variable viscs2c1 "Glare lights on Line C1"
label define _QuS5qRDBjW 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs2c1 _QuS5qRDBjW

label variable viscs2c2 "Glare lights on Line C2"
label define _B6FKsk54Rj 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs2c2 _B6FKsk54Rj

label variable viscs2c3 "Glare lights on Line C3"
label define _A4P2LsjRxE 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs2c3 _A4P2LsjRxE

label variable viscs2c4 "Glare lights on Line C4"
label define _se17oomv3g 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs2c4 _se17oomv3g

label variable viscs2c5 "Glare lights on Line C5"
label define _cxCFke19Vr 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs2c5 _cxCFke19Vr

label variable viscs2c6 "Glare lights on Line C6"
label define _zh6J8OTScT 0 "Top" 1 "Bottom" 9 "Blank"
label values viscs2c6 _zh6J8OTScT

label variable viscs2c7 "Glare lights on Line C7"
label define _lJ0LCpul08 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs2c7 _lJ0LCpul08

label variable viscs2c8 "Glare lights on Line C8"
label define _X3LveOfcgG 0 "Bottom" 1 "Top" 9 "Blank"
label values viscs2c8 _X3LveOfcgG

label variable visvadon "Was visual acuity completed"
label define _H96Y2lv8mb 0 "No" 1 "Yes"
label values visvadon _H96Y2lv8mb

label variable visvarnd "Visual acuity reason not done"
label define _EcIIfelX1w 555 "Physical problems" 666 "Cognitive problems" 777 "Physical and cognitive" 888 "Refused*" 999 "Technical problems"
label values visvarnd _EcIIfelX1w

label variable visvagls "Visual acuity did particpant wear glasses"
label define _u9ZRjJY4Rz 0 "No" 1 "Yes"
label values visvagls _u9ZRjJY4Rz

label variable viscsdon "Was contrast sensitivity completed"
label define _tsOIg8TdIk 0 "No" 1 "Yes"
label values viscsdon _tsOIg8TdIk

label variable viscsrnd "Contrast sensitivity reason not done"
label define _AJXnbDoIy1 555 "Physical problems" 666 "Cognitive problems" 777 "Physical and cognitive" 888 "Refused*" 999 "Technical problems"
label values viscsrnd _AJXnbDoIy1

label variable viscsgls "Contrast sensitivity did particpant wear glasses"
label define _Cmf9sBreyM 0 "No" 1 "Yes"
label values viscsgls _Cmf9sBreyM

label variable visvalta "Visual Acuity and Visual Field Alerts YN"
label define _kfqk7bXHmF 0 "No - Go to STANDARD ALERT" 1 "Yes - Go to B"
label values visvalta _kfqk7bXHmF

label variable visvaltb "Alerts"
label define _GxtY07P3Qi 1 "Within the past few days - EMERGENCY ALERT" 2 "Within the past few weeks - URGENT ALERT" 3 "More than a few weeks ago - STANDARD ALERT"
label values visvaltb _GxtY07P3Qi

label variable visvfid "Visual Field Tester ID"

label variable visvfdt "Visual Field Date"

// Generate 'date version' of the 'visvfdt' variable
gen _visvfdt = date(visvfdt, "YMD")
format _visvfdt %td

label variable visvfdis_vistes "Does participant have marked discrepency of vision between eyes"
label define _i1lCAJ4anD 0 "No" 1 "Yes"
label values visvfdis_vistes _i1lCAJ4anD

label variable vissc3a1_vistes "Right eye sphere Rx"

label variable vissc3a2_vistes "Right eye cylinder Rx"

label variable vissc3a3_vistes "Right eye Axis Rx"

label variable vissc3a4_vistes "Right eye sphere Rx final"

label variable vissc3b1_vistes "Left eye sphere Rx"

label variable vissc3b2_vistes "Left eye cylinder Rx"

label variable vissc3b3_vistes "Left eye Axis Rx"

label variable vissc3b4_vistes "Left eye sphere Rx final"

label variable vissc3c_vistes "Near add"

label variable visvfdon_vistes "Was visual field assessment completed"
label define _AgnVAiAvpa 0 "No" 1 "Yes"
label values visvfdon_vistes _AgnVAiAvpa

label variable visvfrnd_vistes "Why visual field not done"
label define _GggJkf6Bhm 555 "Physical problems (*includes if participant has marked discrepancy of vision between eyes)" 666 "Physical and cognitive" 777 "Cognitive problems" 888 "Refused" 999 "Technical problems"
label values visvfrnd_vistes _GggJkf6Bhm

label variable auto_id_vistes "Unique Teleform Number"

label variable crf_parent_name_vistes "CRF Parent Name"

label variable study_name_vistes "Study Name"

