clear
import delimited "../data-csv/BLSA_Activity_Related_Fatigue_Scale.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_actrelfatsca "CRF Version"

label variable obsdate_arfsdate "Visit Date"

// Generate 'date version' of the 'obsdate_arfsdate' variable
gen _obsdate_arfsdate = date(obsdate_arfsdate, "YMD")
format _obsdate_arfsdate %td

label variable arfstid "Tester ID"

label variable blank_actrelfatsca "Blank Form"

label variable lwalk30_p "Leisurely walk for 30 min physical fatigue"
label define _EfnlI4xjLr 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values lwalk30_p _EfnlI4xjLr

label variable lwalk30_m "Leisurely Walk 30 Min Mental fatigue"
label define _y9W4RmxWLU 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values lwalk30_m _y9W4RmxWLU

label variable lwalk30_yn "Leisurely Walk 30 Min Done activity"
label define _Mx6FC4iRwy 0 "No" 1 "Yes"
label values lwalk30_yn _Mx6FC4iRwy

label variable bwalk1hr_p "Brisk walk for 1 hr physical fatigue"
label define _OT1SwdPJYq 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values bwalk1hr_p _OT1SwdPJYq

label variable bwalk1hr_m "Brisk walk for 1 hr Mental fatigue"
label define _Ykwo5J0zpP 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values bwalk1hr_m _Ykwo5J0zpP

label variable bwalk1hr_yn "Brisk walk for 1 hr Done activity"
label define _jFw7RidjXu 0 "No" 1 "Yes"
label values bwalk1hr_yn _jFw7RidjXu

label variable lthouse_p "Light Household Activity physical fatigue"
label define _LHm0U1K0ok 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values lthouse_p _LHm0U1K0ok

label variable lthouse_m "Light Household Activity Mental fatigue"
label define _E5bbMQA2xh 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values lthouse_m _E5bbMQA2xh

label variable lthouse_yn "Light Household Activity Done activity"
label define _h7wY5gQ84i 0 "No" 1 "Yes"
label values lthouse_yn _h7wY5gQ84i

label variable hvygard_p "Heavy Gardening Yard Work physical fatigue"
label define _rK0QA7hY0p 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values hvygard_p _rK0QA7hY0p

label variable hvygard_m "Heavy Gardening Yard Work Mental fatigue"
label define _wU8GAeMOeA 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values hvygard_m _wU8GAeMOeA

label variable hvygard_yn "Heavy Gardening Yard Work Done activity"
label define _Xp4elMMlHI 0 "No" 1 "Yes"
label values hvygard_yn _Xp4elMMlHI

label variable tv_p "Watching TV for 2Hr physical fatigue"
label define _ZAYcmMqSBS 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values tv_p _ZAYcmMqSBS

label variable tv_m "Watching TV for 2Hr Mental fatigue"
label define _Mf64DWrTUK 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values tv_m _Mf64DWrTUK

label variable tv_yn "Watching TV for 2Hr Done activity"
label define _IsSRkUCcUl 0 "No" 1 "Yes"
label values tv_yn _IsSRkUCcUl

label variable sit_p "Sit quietly for 1Hr physical fatigue"
label define _w0wuIe4Qy6 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values sit_p _w0wuIe4Qy6

label variable sit_m "Sit quietly for 1Hr Mental fatigue"
label define _DGcZtDnKNt 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values sit_m _DGcZtDnKNt

label variable sit_yn "Sit quietly for 1Hr Done activity"
label define _K7bl85qAs3 0 "No" 1 "Yes"
label values sit_yn _K7bl85qAs3

label variable modhvystr_p "Moderate to heavy intensity strength training for 30 min physical fatigue"
label define _O1EHuDZ8Iv 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values modhvystr_p _O1EHuDZ8Iv

label variable modhvystr_m "Moderate to heavy intensity strength training for 30 min Mental fatigue"
label define _RGukThzVQf 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values modhvystr_m _RGukThzVQf

label variable modhvystr_yn "Moderate to heavy intensity strength training for 30 min Done activity"
label define _ruPoDkxTL0 0 "No" 1 "Yes"
label values modhvystr_yn _ruPoDkxTL0

label variable pptsocial_p "Participating in social activity for 1 hour physical fatigue"
label define _HBQEU7j6lC 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values pptsocial_p _HBQEU7j6lC

label variable pptsocial_m "Participating in social activity for 1 hour Mental fatigue"
label define _mqg46ARs5a 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values pptsocial_m _mqg46ARs5a

label variable pptsocial_yn "Participating in social activity for 1 hour Done activity"
label define _tE5RuwbORl 0 "No" 1 "Yes"
label values pptsocial_yn _tE5RuwbORl

label variable hostsocial_p "Hosting a social event for 1 hour physical fatigue"
label define _I0PSkSdqNq 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values hostsocial_p _I0PSkSdqNq

label variable hostsocial_m "Hosting a social event for 1 hour Mental fatigue"
label define _xJ0KMkxaXW 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values hostsocial_m _xJ0KMkxaXW

label variable hostsocial_yn "Hosting a social event for 1 hour Done activity"
label define _QRjHZQjFM5 0 "No" 1 "Yes"
label values hostsocial_yn _QRjHZQjFM5

label variable highactivity_p "High intensity activity for 30 min physical fatigue"
label define _rhbrUM1Wfg 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values highactivity_p _rhbrUM1Wfg

label variable highactivity_m "High intensity activity for 30 min Mental fatigue"
label define _Ttr4Xpj7c3 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values highactivity_m _Ttr4Xpj7c3

label variable highactivity_yn "High intensity activity for 30 min Done activity"
label define _HjKeXcenJI 0 "No" 1 "Yes"
label values highactivity_yn _HjKeXcenJI

label variable lwalk30_e "Leisurely Walk 30 Min Energy Level"
label define _rOW28PvGfS -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values lwalk30_e _rOW28PvGfS

label variable lwalk1hr_p "Leisurely walk for 1 hr physical fatigue"
label define _L3OsiGIuWq 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values lwalk1hr_p _L3OsiGIuWq

label variable lwalk1hr_m "Leisurely Walk 1 hr Mental fatigue"
label define _o9JHYZvEp9 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values lwalk1hr_m _o9JHYZvEp9

label variable lwalk1hr_e "Leisurely Walk 1 hr Energy Level"
label define _hxDRhSWPwt -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values lwalk1hr_e _hxDRhSWPwt

label variable lwalk1hr_yn "Leisurely Walk 1 hr Done activity"
label define _rd5XeozaEd 0 "No" 1 "Yes"
label values lwalk1hr_yn _rd5XeozaEd

label variable bwalk30_p "Brisk walk for 30 min physical fatigue"
label define _Son3no0U3I 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values bwalk30_p _Son3no0U3I

label variable bwalk30_m "Brisk walk for 30 min Mental fatigue"
label define _IsaE2Bkfv8 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values bwalk30_m _IsaE2Bkfv8

label variable bwalk30_e "Brisk walk for 30 min Energy Level"
label define _WA82wNBVXZ -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values bwalk30_e _WA82wNBVXZ

label variable bwalk30_yn "Brisk walk for 30 min Done activity"
label define _Y9sIiWhPih 0 "No" 1 "Yes"
label values bwalk30_yn _Y9sIiWhPih

label variable bwalk1hr_e "Brisk walk for 1 hr Energy Level"
label define _jMcpTOk9JQ -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values bwalk1hr_e _jMcpTOk9JQ

label variable lthouse_e "Light Household Activity Energy level"
label define _XTGZQhnGNy -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values lthouse_e _XTGZQhnGNy

label variable modhouse_p "Moderate Household Activity 30 min physical fatigue"
label define _WLbUNF2gSx 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values modhouse_p _WLbUNF2gSx

label variable modhouse_m "Moderate Household Activity 30 min Mental fatigue"
label define _vYrK0FBuMc 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values modhouse_m _vYrK0FBuMc

label variable modhouse_e "Moderate Household Activity 30 min Energy level"
label define _Ords4lcyPE -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values modhouse_e _Ords4lcyPE

label variable modhouse_yn "Moderate Household Activity 30 min Done activity"
label define _cFmGkJg76C 0 "No" 1 "Yes"
label values modhouse_yn _cFmGkJg76C

label variable hvyhouse_p "Heavy Household Activity physical fatigue"
label define _BdQMNtY0FB 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values hvyhouse_p _BdQMNtY0FB

label variable hvyhouse_m "Heavy Household Activity Mental fatigue"
label define _KAEd9NqT1g 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values hvyhouse_m _KAEd9NqT1g

label variable hvyhouse_e "Heavy Household Activity Energy level"
label define _zK38rFrFXW -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values hvyhouse_e _zK38rFrFXW

label variable hvyhouse_yn "Heavy Household Activity Done activity"
label define _HriwBbZWST 0 "No" 1 "Yes"
label values hvyhouse_yn _HriwBbZWST

label variable hvygard_e "Heavy Gardening Yard Work energy level"
label define _TgfVQstGYr -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values hvygard_e _TgfVQstGYr

label variable read_p "Reading 1 hour physical fatigue"
label define _QuP9VaaNL6 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values read_p _QuP9VaaNL6

label variable read_m "Reading 1 hour Mental fatigue"
label define _OuhvOCg0SB 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values read_m _OuhvOCg0SB

label variable read_e "Reading 1 hour Energy level"
label define _rShVqCxh1f -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values read_e _rShVqCxh1f

label variable read_yn "Reading 1 hour Done activity"
label define _Tx1gANJM6u 0 "No" 1 "Yes"
label values read_yn _Tx1gANJM6u

label variable tv_e "Watch TV for 2 hours Energy level"
label define _BVYLOx6uAS -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values tv_e _BVYLOx6uAS

label variable sit_e "Sit quietly for hour Energy level"
label define _tM5BKRC42Q -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values sit_e _tM5BKRC42Q

label variable paper_p "Doing paper work 1 hour physical fatigue"
label define _GIDJ9RN14P 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values paper_p _GIDJ9RN14P

label variable paper_m "Doing paper work 1 hour Mental fatigue"
label define _jZnM5oTg2I 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values paper_m _jZnM5oTg2I

label variable paper_e "Doing paper work 1 hour Energy level"
label define _eDXXZC8eSS -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values paper_e _eDXXZC8eSS

label variable paper_yn "Doing paper work 1 hour Done activity"
label define _J8mut1b8cU 0 "No" 1 "Yes"
label values paper_yn _J8mut1b8cU

label variable comp_p "Using a computer 1 hour physical fatigue"
label define _epL4Vb7IrL 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values comp_p _epL4Vb7IrL

label variable comp_m "Using a computer 1 hour Mental fatigue"
label define _s059da9T4b 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values comp_m _s059da9T4b

label variable comp_e "Using a computer 1 hour Energy level"
label define _XO39SdvUWy -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values comp_e _XO39SdvUWy

label variable comp_yn "Using a computer 1 hour Done activity"
label define _GGRRb9LFIL 0 "No" 1 "Yes"
label values comp_yn _GGRRb9LFIL

label variable ltstrength_p "Light intensity strength training 30 min physical fatigue"
label define _l8vZFevs92 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values ltstrength_p _l8vZFevs92

label variable ltstrength_m "Light intensity strength training 30 min Mental fatigue"
label define _rV5kzIsXLT 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values ltstrength_m _rV5kzIsXLT

label variable ltstrength_e "Light intensity strength training 30 min Energy level"
label define _ifTSOes8xq -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values ltstrength_e _ifTSOes8xq

label variable ltstrength_yn "Light intensity strength training 30 min Done activity"
label define _bfJw7qD47q 0 "No" 1 "Yes"
label values ltstrength_yn _bfJw7qD47q

label variable modhvystr_e "Moderate to heavy intensity strength training for 30 min Energy level"
label define _iGl4Ta6V7j -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values modhvystr_e _iGl4Ta6V7j

label variable dance_p "Dancing for 30 min physical fatigue"
label define _ADITlL3MqW 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values dance_p _ADITlL3MqW

label variable dance_m "Dancing for 30 min Mental fatigue"
label define _Jr8abgLhZI 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values dance_m _Jr8abgLhZI

label variable dance_e "Dancing for 30 min Energy level"
label define _yNKIPOtnrC -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values dance_e _yNKIPOtnrC

label variable dance_yn "Dancing for 30 min Done activity"
label define _VAPJ0ngUt8 0 "No" 1 "Yes"
label values dance_yn _VAPJ0ngUt8

label variable convo_p "Having a verbal conversaton for 1 hour physical fatigue"
label define _oXxLzjBBvS 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values convo_p _oXxLzjBBvS

label variable convo_m "Having a verbal conversaton for 1 hour Mental fatigue"
label define _CM2jyUQBsm 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values convo_m _CM2jyUQBsm

label variable convo_e "Having a verbal conversaton for 1 hour Energy level"
label define _OTPa6LTBCH -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values convo_e _OTPa6LTBCH

label variable convo_yn "Having a verbal conversaton for 1 hour Done activity"
label define _Yez4kRkwtI 0 "No" 1 "Yes"
label values convo_yn _Yez4kRkwtI

label variable shop_p "Shopping for 1 hr physical fatigue"
label define _yeqKahaTrW 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values shop_p _yeqKahaTrW

label variable shop_m "Shopping for 1 hr Mental fatigue"
label define _BIL6GjrxEH 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values shop_m _BIL6GjrxEH

label variable shop_e "Shopping for 1 hr Energy level"
label define _bws3CTiyNh -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values shop_e _bws3CTiyNh

label variable shop_yn "Shopping for 1 hr Done activity"
label define _F548v4HEjE 0 "No" 1 "Yes"
label values shop_yn _F548v4HEjE

label variable drive_p "Drive a vehicle for 1 hr physical fatigue"
label define _UMh65ZZwm6 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values drive_p _UMh65ZZwm6

label variable drive_m "Drive a vehicle for 1 hr Mental fatigue"
label define _U6VCijvrE7 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values drive_m _U6VCijvrE7

label variable drive_e "Drive a vehicle for 1 hr Energy level"
label define _Kxi0YfZPrA -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values drive_e _Kxi0YfZPrA

label variable drive_yn "Drive a vehicle for 1 hr Done activity"
label define _INYOE7mpfl 0 "No" 1 "Yes"
label values drive_yn _INYOE7mpfl

label variable clbmtg_p "Attend club mtg for 1 hr physical fatigue"
label define _MFhyaHmGVj 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values clbmtg_p _MFhyaHmGVj

label variable clbmtg_m "Attend club mtg for 1 hr Mental fatigue"
label define _ngACFk6mIP 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values clbmtg_m _ngACFk6mIP

label variable clbmtg_e "Attend club mtg for 1 hr Energy level"
label define _uT02HVoMk9 -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values clbmtg_e _uT02HVoMk9

label variable clbmtg_yn "Attend club mtg for 1 hr Done activity"
label define _jbS6kLWcim 0 "No" 1 "Yes"
label values clbmtg_yn _jbS6kLWcim

label variable concert_p "Attend concert lecture movie or sporting event 2 hr physical fatigue"
label define _Ji2GqlA0HC 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values concert_p _Ji2GqlA0HC

label variable concert_m "Attend concert lecture movie or sporting event 2 hr Mental fatigue"
label define _EBiVCMsp28 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values concert_m _EBiVCMsp28

label variable concert_e "Attend concert lecture movie or sporting event 2 hr Energy level"
label define _Az1Nh2Jtif -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values concert_e _Az1Nh2Jtif

label variable concert_yn "Attend concert lecture movie or sporting event 2 hr Done activity"
label define _P8AxJ2PEVt 0 "No" 1 "Yes"
label values concert_yn _P8AxJ2PEVt

label variable pptsocial_e "Participating in social activity for 1 hour Energy level"
label define _eaq4MlNImO -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values pptsocial_e _eaq4MlNImO

label variable hostsocial_e "Hosting a social event for 1 hour Energy level"
label define _Q49LivmNKG -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values hostsocial_e _Q49LivmNKG

label variable ltactivity_p "Light intensity activity for 30 min physical fatigue"
label define _dbFP688TrD 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values ltactivity_p _dbFP688TrD

label variable ltactivity_m "Light intensity activity for 30 min Mental fatigue"
label define _RyCpEzWAMa 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values ltactivity_m _RyCpEzWAMa

label variable ltactivity_e "Light intensity activity for 30 min Energy level"
label define _RkD2AwMyWI -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values ltactivity_e _RkD2AwMyWI

label variable ltactivity_yn "Light intensity activity for 30 min Done activity"
label define _D0DB0xv1qI 0 "No" 1 "Yes"
label values ltactivity_yn _D0DB0xv1qI

label variable modactivity_p "Moderate intensity activity for 30 min physical fatigue"
label define _Nhhx2yOPvB 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values modactivity_p _Nhhx2yOPvB

label variable modactivity_m "Moderate intensity activity for 30 min Mental fatigue"
label define _LwGyy4OGRS 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values modactivity_m _LwGyy4OGRS

label variable modactivity_e "Moderate intensity activity for 30 min Energy level"
label define _WSHwoClLXP -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values modactivity_e _WSHwoClLXP

label variable modactivity_yn "Moderate intensity activity for 30 min Done activity"
label define _ZmLORH80MB 0 "No" 1 "Yes"
label values modactivity_yn _ZmLORH80MB

label variable highactivity_e "High intensity activity for 30 min Energy level"
label define _GqT9ZkuGQ3 -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values highactivity_e _GqT9ZkuGQ3

label variable pastmonth_e "Usual energy level past month on a scale of 1 to 10"
label define _q8IqWIUdgu 0 "0 no energy at all" 1 "1" 10 "10 most energy ever" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9"
label values pastmonth_e _q8IqWIUdgu

label variable quest_p "Completing this questionnaire physical fatigue"
label define _BqeJRAUDVP 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values quest_p _BqeJRAUDVP

label variable quest_m "Completing this questionnaire Mental fatigue"
label define _gd84Ncdz3R 0 "0 No fatigue" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Extreme fatigue"
label values quest_m _gd84Ncdz3R

label variable quest_e "Completing this questionnaire Energy level"
label define _JisITNWD6p -1 "-1" -2 "-2" -3 "-3" -4 "-4" -5 "-5 Lost most energy" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5 Gained most energy"
label values quest_e _JisITNWD6p

label variable auto_id_actrelfatsca "Unique Teleform Number"

label variable crf_parent_name_actrelfatsca "CRF Parent Name"

label variable study_name_actrelfatsca "Study Name"

