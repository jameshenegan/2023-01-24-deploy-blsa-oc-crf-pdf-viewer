clear
import delimited "../data-csv/blsa_der_physicalfunction.csv", bindquote(strict)

label variable idno "BLSA ID"

label variable visit "Visit Number"

label variable adl_trans "ADL - any difficulty getting in and out of bed or chair"
label define _NwdUrAqCQE1g 0 "none" 1 "a little" 2 "some" 3 "a lot" 4 "unable to do"
label values adl_trans _NwdUrAqCQE1g

label variable adl_bathe "ADL - any difficulty bathing or showering"
label define _ajjT349LFj4U 0 "none" 1 "a little" 2 "some" 3 "a lot" 4 "unable to do"
label values adl_bathe _ajjT349LFj4U

label variable adl_dress "ADL - any difficulty dressing"
label define _enXRf3o78odQ 0 "none" 1 "a little" 2 "some" 3 "a lot" 4 "unable to do"
label values adl_dress _enXRf3o78odQ

label variable adl_eat "ADL - any difficulty eating"
label define _vtF7ZvQL28eI 0 "none" 1 "a little" 2 "some" 3 "a lot" 4 "unable to do"
label values adl_eat _vtF7ZvQL28eI

label variable adl_toilet "ADL - any difficulty using the toilet"
label define _K2Ci4A7z6XKD 0 "none" 1 "a little" 2 "some" 3 "a lot" 4 "unable to do"
label values adl_toilet _K2Ci4A7z6XKD

label variable adl_walk "ADL - any difficulty walking across a small room"
label define _E26C5RJI040a 0 "none" 1 "a little" 2 "some" 3 "a lot" 4 "unable to do"
label values adl_walk _E26C5RJI040a

label variable adl_total "ADL - total score"

label variable handgripright "Hand grip muscles right (kg)"

label variable handgripleft "Hand grip muscles left (kg)"

label variable handgripmax "Maximum hand grip (kg)"

label variable chairstandscore "SPPB - chair stand score"

label variable standbalancescore "SPPB - standing balance score"

label variable usualgaitspeed "Usual gait speed (m/s)"

label variable gaitspeedscore "SPPB - gait speed score"

label variable sppb "SPPB - score"

label variable walkquartermile "Difficulty/ease walking 1/4 mile"
label define _bHYzjQ0a2T40 0 "unable to do" 1 "a lot of difficulty" 2 "some difficulty" 3 "a little difficulty" 4 "not so easy" 5 "somewhat easy" 6 "very easy"
label values walkquartermile _bHYzjQ0a2T40

label variable walkonemile "Difficulty/ease walking 1 mile if no difficulty walking 1/4 mile"
label define _pKj63X9U4g18 0 "difficult" 1 "not so easy" 2 "somewhat easy" 3 "very easy"
label values walkonemile _pKj63X9U4g18

label variable walkcapacity "Walking ability summary score"

label variable liftcarry10 "Difficulty/ease lifting/carrying 10 lbs"
label define _Byh541oGlzy8 0 "unable to do" 1 "a lot of difficulty" 2 "some difficulty" 3 "a little difficulty" 4 "not so easy" 5 "somewhat easy" 6 "very easy"
label values liftcarry10 _Byh541oGlzy8

label variable adl_nmiss "ADL - number missing"

label variable adl_number "ADL - number with any difficulty (if all non-missing)"

label variable adlh_trans "ADL - need special equipment getting in and out of bed or chair"
label define _Brtk37hr78O8 0 "No" 1 "Yes"
label values adlh_trans _Brtk37hr78O8

label variable adlh_bathe "ADL - need special equipment bathing or showering"
label define _eXFFAnKL1l15 0 "No" 1 "Yes"
label values adlh_bathe _eXFFAnKL1l15

label variable adlh_dress "ADL - need special equipment dressing"
label define _T98316V9g1Ew 0 "No" 1 "Yes"
label values adlh_dress _T98316V9g1Ew

label variable adlh_eat "ADL - need special equipment eating"
label define _W91442V41YR2 0 "No" 1 "Yes"
label values adlh_eat _W91442V41YR2

label variable adlh_toilet "ADL - need special equipment using the toilet"
label define _o8z9g51SIK62 0 "No" 1 "Yes"
label values adlh_toilet _o8z9g51SIK62

label variable adlh_walk "ADL - need special equipment walking across a small room"
label define _t4W6T33ce9ho 0 "No" 1 "Yes"
label values adlh_walk _t4W6T33ce9ho

label variable wkindex "ADL - Walking capacity summary score"

label variable wkindexa "ADL - Difficulty walk quarter mile"

label variable wkindexb "ADL - Difficulty walking one mile"

label variable stindex "ADL - Climbing stairs capacity summary score"

label variable stindexa "ADL - Difficulty walking up 10 steps"

label variable stindexb "ADL - Difficulty walking up 20 steps"

label variable lcindex "ADL - Lifting/carrying capacity summary score"

label variable lcindexa "ADL - Difficulty lifting/carrying 10 lbs"

label variable lcindexb "ADL - Difficulty lifting/carrying 20 lbs"

