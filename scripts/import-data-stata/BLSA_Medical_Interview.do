clear
import delimited "../data-csv/BLSA_Medical_Interview.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_medint "CRF Version"

label variable obsdate_mdhxdate "Date Completed"

// Generate 'date version' of the 'obsdate_mdhxdate' variable
gen _obsdate_mdhxdate = date(obsdate_mdhxdate, "YMD")
format _obsdate_mdhxdate %td

label variable blank_medint "Blank Form"

label variable mdhxtid "Tester ID"

label variable mdhxtyp "Interview conducted with"
label define _BeQ2kWgcuY 0 "Participant only" 1 "Participant and proxy" 2 "Proxy only" 3 "Telephone interview" 4 "Interview not done"
label values mdhxtyp _BeQ2kWgcuY

label variable mdhx1 "Have you seen a Md PA or NP for any reason within the past 2 years"
label define _tBhxjyrh6a 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx1 _tBhxjyrh6a

label variable mdhx2 "How often do you have a routine physical examination"
label define _yt3uiH6sNr 1 "At least annually" 2 "At least biannually" 3 "At least every 5 years" 4 "Less than every 5 years" 5 "Does not get routine exams" 7 "Refused" 8 "Do not know"
label values mdhx2 _yt3uiH6sNr

label variable mdhx2f1 "Did you receive the flu shot this year"
label define _DnizNYDthk 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx2f1 _DnizNYDthk

label variable mdhx2f2 "If no do you plan to get the flu shot this year"
label define _AthmLK35Fg 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx2f2 _AthmLK35Fg

label variable mdhx3 "Has doctor ever said you had a heart attack or myocardial infarction"
label define _CIUbXffxvy 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx3 _CIUbXffxvy

label variable mdhx3a "If yes how long ago most recent heart attack"
label define _DabFhqKqqO 1 "Within 1 year" 2 "Within 2 years" 3 "Within 5 years" 4 "Over 5 years" 7 "Refused" 8 "Don't know"
label values mdhx3a _DabFhqKqqO

label variable mdhx4 "Has doctor ever said you had a heart failure or CHF"
label define _VZT4pI1fte 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx4 _VZT4pI1fte

label variable mdhx5 "Has doctor ever said you had angina chest pain due to heart or coronary artery disease"
label define _SsDWfomMCp 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx5 _SsDWfomMCp

label variable mdhx6 "Has doctor ever said you had chronic bronchitis emphysema or COPD"
label define _QapSSGwAwQ 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx6 _QapSSGwAwQ

label variable mdhx7 "Has doctor ever said you had asthma"
label define _dnPb9ur2lK 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx7 _dnPb9ur2lK

label variable mdhx7a "If yes do you still have asthma"
label define _OyOIhL4oRJ 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx7a _OyOIhL4oRJ

label variable mdhx8 "Has doctor ever said you had cirrhosis or liver disease"
label define _B4NY2lM5gJ 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx8 _B4NY2lM5gJ

label variable mdhx9 "Has doctor ever said you had hepatitis"
label define _Wmy5AJIyzL 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx9 _Wmy5AJIyzL

label variable mdhx10 "Has doctor ever said you had HIV or AIDS"
label define _fX87xxTd2Z 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx10 _fX87xxTd2Z

label variable mdhx11 "Has doctor ever said you had kidney disease nephritis or renal insufficiency"
label define _XZgW7m8Ml9 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx11 _XZgW7m8Ml9

label variable mdhx12 "Has doctor ever said you had a stroke mini stroke or slight stroke"
label define _Wnc4eQ7YWV 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx12 _Wnc4eQ7YWV

label variable mdhx12a "If yes how long ago most recent stroke"
label define _Ru7YjMs2sP 1 "Within 1 year" 2 "Within 2 years" 3 "Within 5 years" 4 "Over 5 years" 7 "Refused" 8 "Don't know"
label values mdhx12a _Ru7YjMs2sP

label variable mdhx13 "Has doctor ever said you had a transient ischemic attack or TIA"
label define _ZnSoztbisv 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx13 _ZnSoztbisv

label variable mdhx13a "If yes how long ago most recent TIA"
label define _p9dbPzT9S5 1 "Within 1 year" 2 "Within 2 years" 3 "Within 5 years" 4 "Over 5 years" 7 "Refused" 8 "Don't know"
label values mdhx13a _p9dbPzT9S5

label variable mdhx14 "Has doctor ever said you had peripheral neuropathy or nerve damage in your lower legs feet or hands"
label define _dBwWbauUvp 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx14 _dBwWbauUvp

label variable mdhx15 "Has doctor ever said you had high blood pressure or hypertension"
label define _q5vaOcDm6o 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx15 _q5vaOcDm6o

label variable mdhx15a "If yes are you currently taking prescribed medications for BP"
label define _qW8g7mEtCI 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx15a _qW8g7mEtCI

label variable mdhx15b "If no meds do you still have high blood pressure"
label define _zcFPQsjMXW 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx15b _zcFPQsjMXW

label variable mdhx15c "If yes to high BP are you following lifestyle recommendations"
label define _KEHCjSZ0dq 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx15c _KEHCjSZ0dq

label variable mdhx16 "Has doctor ever said you had diabetes glucose intolerance or high blood sugar"
label define _sfySZAjFSJ 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx16 _sfySZAjFSJ

label variable mdhx16a "If yes are you currently taking diabetes medication"
label define _I7cpKYtqZO 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx16a _I7cpKYtqZO

label variable mdhx16b "If no meds do you still have high blood sugar"
label define _c4HagmK2U0 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx16b _c4HagmK2U0

label variable mdhx16c "If yes to high blood sugar are you following lifestyle recommendations"
label define _stqRlGLic7 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx16c _stqRlGLic7

label variable mdhx17 "Has doctor ever said you had high cholesterol triglycerides"
label define _jmowmP48bB 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx17 _jmowmP48bB

label variable mdhx17b "If not currently taking medication, do you still have high cholesterol (lipids)?"
label define _iUw4zgxeMt 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx17b _iUw4zgxeMt

label variable mdhx17c "If yes to high cholesterol are you following lifestyle recommendations"
label define _IzdzhV0szO 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx17c _IzdzhV0szO

label variable mdhx18 "Had bypass surgery carotid endarterectomy or aortic aneurysm repair"
label define _nMRhGQKxv9 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx18 _nMRhGQKxv9

label variable mdhx18a1 "Coronary bypass surgery heart bypass or CABG"
label define _BjwRZN8JLC 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx18a1 _BjwRZN8JLC

label variable mdhx18a2 "Angioplasty of coronary arteries"
label define _q3HKx4C5DM 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx18a2 _q3HKx4C5DM

label variable mdhx18a3 "Bypass procedure on leg or femoral arteries"
label define _GTjOGkZ6aj 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx18a3 _GTjOGkZ6aj

label variable mdhx18a4 "Angioplasty on leg or femoral arteries"
label define _oSIThvsQu3 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx18a4 _oSIThvsQu3

label variable mdhx18a5 "Carotid endarterectomy surgery on your neck arteries"
label define _WnjBTXj8kS 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx18a5 _WnjBTXj8kS

label variable mdhx18a6 "Repair of aortic aneurysm"
label define _sfCtdeI8LN 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx18a6 _sfCtdeI8LN

label variable mdhx19 "Ever told you had cancer or malignant growth"
label define _CtBpR7Qghb 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx19 _CtBpR7Qghb

label variable mdh19a1 "Bladder cancer YN"
label define _iuLzrhLecR 0 "No" 1 "Yes"
label values mdh19a1 _iuLzrhLecR

label variable mdh19b1 "Age first told had bladder cancer"

label variable mdh19c1 "Had recurrence of bladder cancer"
label define _A7NFLHgIib 0 "No" 1 "Yes"
label values mdh19c1 _A7NFLHgIib

label variable mdh19d1 "Age most recent recurrence of bladder cancer"

label variable mdh19a2 "Brain cancer YN"
label define _sC43J4MeMP 0 "No" 1 "Yes"
label values mdh19a2 _sC43J4MeMP

label variable mdh19b2 "Age first told had brain cancer"

label variable mdh19c2 "Had recurrence of brain cancer"
label define _rIP6pF5wsC 0 "No" 1 "Yes"
label values mdh19c2 _rIP6pF5wsC

label variable mdh19d2 "Age most recent recurrence of brain cancer"

label variable mdh19a3 "Breast cancer YN"
label define _TkCqikFKbo 0 "No" 1 "Yes"
label values mdh19a3 _TkCqikFKbo

label variable mdh19b3 "Age first told had Breast cancer"

label variable mdh19c3 "Had recurrence of Breast cancer"
label define _h8fL98i6G6 0 "No" 1 "Yes"
label values mdh19c3 _h8fL98i6G6

label variable mdh19d3 "Age most recent recurrence of Breast cancer"

label variable mdh19a4 "Cervical cancer YN"
label define _MNYMHUUT3x 0 "No" 1 "Yes"
label values mdh19a4 _MNYMHUUT3x

label variable mdh19b4 "Age first told had Cervical cancer"

label variable mdh19c4 "Had recurrence of Cervical cancer"
label define _y07sZJLUfL 0 "No" 1 "Yes"
label values mdh19c4 _y07sZJLUfL

label variable mdh19d4 "Age most recent recurrence of Cervical cancer"

label variable mdh19a5 "Colon Rectal cancer YN"
label define _IWzWxncBaO 0 "No" 1 "Yes"
label values mdh19a5 _IWzWxncBaO

label variable mdh19b5 "Age first told had Colon Rectal cancer"

label variable mdh19c5 "Had recurrence of Colon Rectal cancer"
label define _pC7DleDckj 0 "No" 1 "Yes"
label values mdh19c5 _pC7DleDckj

label variable mdh19d5 "Age most recent recurrence of Colon Rectal cancer"

label variable mdh19a6 "Endometrial cancer YN"
label define _tdE9LAuuqk 0 "No" 1 "Yes"
label values mdh19a6 _tdE9LAuuqk

label variable mdh19b6 "Age first told had Endometrial cancer"

label variable mdh19c6 "Had recurrence of Endometrial cancer"
label define _iLPhuyKSnC 0 "No" 1 "Yes"
label values mdh19c6 _iLPhuyKSnC

label variable mdh19d6 "Age most recent recurrence of Endometrial cancer"

label variable mdh19a7 "Leukemia cancer YN"
label define _NqJdpYKRb1 0 "No" 1 "Yes"
label values mdh19a7 _NqJdpYKRb1

label variable mdh19b7 "Age first told had Leukemia cancer"

label variable mdh19c7 "Had recurrence of Leukemia cancer"
label define _Oq22dwpxkT 0 "No" 1 "Yes"
label values mdh19c7 _Oq22dwpxkT

label variable mdh19d7 "Age most recent recurrence of Leukemia cancer"

label variable mdh19a8 "Liver cancer YN"
label define _nceGKpcgSS 0 "No" 1 "Yes"
label values mdh19a8 _nceGKpcgSS

label variable mdh19b8 "Age first told had Liver cancer"

label variable mdh19c8 "Had recurrence of Liver cancer"
label define _aEhglU7j90 0 "No" 1 "Yes"
label values mdh19c8 _aEhglU7j90

label variable mdh19d8 "Age most recent recurrence of Liver cancer"

label variable mdh19a9 "Lung cancer YN"
label define _RQfsUsgh3K 0 "No" 1 "Yes"
label values mdh19a9 _RQfsUsgh3K

label variable mdh19b9 "Age first told had Lung cancer"

label variable mdh19c9 "Had recurrence of Lung cancer"
label define _tQMOcbP7X6 0 "No" 1 "Yes"
label values mdh19c9 _tQMOcbP7X6

label variable mdh19d9 "Age most recent recurrence of Lung cancer"

label variable mdh19a10 "Lymphoma cancer YN"
label define _G7cCKG82KT 0 "No" 1 "Yes"
label values mdh19a10 _G7cCKG82KT

label variable mdh19b10 "Age first told had Lymphoma cancer"

label variable mdh19c10 "Had recurrence of Lymphoma cancer"
label define _JebrmjELkh 0 "No" 1 "Yes"
label values mdh19c10 _JebrmjELkh

label variable mdh19d10 "Age most recent recurrence of Lymphoma cancer"

label variable mdh19a11 "Melanoma cancer YN"
label define _VwuJLp8kVw 0 "No" 1 "Yes"
label values mdh19a11 _VwuJLp8kVw

label variable mdh19b11 "Age first told had Melanoma cancer"

label variable mdh19c11 "Had recurrence of Melanoma cancer"
label define _eMaeDWDn1w 0 "No" 1 "Yes"
label values mdh19c11 _eMaeDWDn1w

label variable mdh19d11 "Age most recent recurrence of Melanoma cancer"

label variable mdh19a12 "Ovarian cancer YN"
label define _HyxQj5K34b 0 "No" 1 "Yes"
label values mdh19a12 _HyxQj5K34b

label variable mdh19b12 "Age first told had Ovarian cancer"

label variable mdh19c12 "Had recurrence of Ovarian cancer"
label define _XrRoPWukrE 0 "No" 1 "Yes"
label values mdh19c12 _XrRoPWukrE

label variable mdh19d12 "Age most recent recurrence of Ovarian cancer"

label variable mdh19a13 "Pancreatic cancer YN"
label define _IRWsbZFBFN 0 "No" 1 "Yes"
label values mdh19a13 _IRWsbZFBFN

label variable mdh19b13 "Age first told had Pancreatic cancer"

label variable mdh19c13 "Had recurrence of Pancreatic cancer"
label define _Bi7JhEqqCR 0 "No" 1 "Yes"
label values mdh19c13 _Bi7JhEqqCR

label variable mdh19d13 "Age most recent recurrence of Pancreatic cancer"

label variable mdh19a14 "Prostate cancer YN"
label define _pRgbUuhfkx 0 "No" 1 "Yes"
label values mdh19a14 _pRgbUuhfkx

label variable mdh19b14 "Age first told had Prostate cancer"

label variable mdh19c14 "Had recurrence of Prostate cancer"
label define _QQXy7CEZCb 0 "No" 1 "Yes"
label values mdh19c14 _QQXy7CEZCb

label variable mdh19d14 "Age most recent recurrence of Prostate cancer"

label variable mdh19a15 "Skin Basal cancer YN"
label define _SnfPevRvfW 0 "No" 1 "Yes"
label values mdh19a15 _SnfPevRvfW

label variable mdh19b15 "Age first told had Skin Basal cancer"

label variable mdh19c15 "Had recurrence of Skin Basal cancer"
label define _SU64Itj6qt 0 "No" 1 "Yes"
label values mdh19c15 _SU64Itj6qt

label variable mdh19d15 "Age most recent recurrence of Skin Basal cancer"

label variable mdh19a16 "Skin Squamous cancer YN"
label define _xI7i00I7pK 0 "No" 1 "Yes"
label values mdh19a16 _xI7i00I7pK

label variable mdh19b16 "Age first told had Skin Squamous cancer"

label variable mdh19c16 "Had recurrence of Skin Squamous cancer"
label define _ioGAq2UwUO 0 "No" 1 "Yes"
label values mdh19c16 _ioGAq2UwUO

label variable mdh19d16 "Age most recent recurrence of Skin Squamous cancer"

label variable mdh19a17 "Stomach cancer YN"
label define _CAafWggLrV 0 "No" 1 "Yes"
label values mdh19a17 _CAafWggLrV

label variable mdh19b17 "Age first told had Stomach cancer"

label variable mdh19c17 "Had recurrence of Stomach cancer"
label define _t1Fc5dfVDx 0 "No" 1 "Yes"
label values mdh19c17 _t1Fc5dfVDx

label variable mdh19d17 "Age most recent recurrence of Stomach cancer"

label variable mdh19a18 "Thyroid cancer YN"
label define _YBSDTOhuYh 0 "No" 1 "Yes"
label values mdh19a18 _YBSDTOhuYh

label variable mdh19b18 "Age first told had Thyroid cancer"

label variable mdh19c18 "Had recurrence of Thyroid cancer"
label define _avjIt7wIT2 0 "No" 1 "Yes"
label values mdh19c18 _avjIt7wIT2

label variable mdh19d18 "Age most recent recurrence of Thyroid cancer"

label variable mdh19a19 "Other cancer YN"
label define _cBNs73BtE4 0 "No" 1 "Yes"
label values mdh19a19 _cBNs73BtE4

label variable mdh19b19 "Age first told had Other cancer"

label variable mdh19d19 "Had recurrence of Other cancer"
label define _pU9ggzU9r8 0 "No" 1 "Yes"
label values mdh19d19 _pU9ggzU9r8

label variable mdh19e19 "Age most recent recurrence of Othercancer"

label variable mdh19c19 "Other cancer specify"

label variable mdh19a19e "Type of treatment for cancers"

label variable mdh19a19ecom "Other cancer treatment"

label variable mdhx20 "Has doctor ever said you had arthritis or osteoarthritis"
label define _AuTY66pPNn 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx20 _AuTY66pPNn

label variable mdhx20a1 "Arthritis in Knees"
label define _tar8Bcb3Ef 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx20a1 _tar8Bcb3Ef

label variable mdhx20a2 "Arthritis in Hips"
label define _fKSjYBx0Hj 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx20a2 _fKSjYBx0Hj

label variable mdhx20a3 "Arthritis in Hands"
label define _iS6dYiaxcx 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx20a3 _iS6dYiaxcx

label variable mdhx20a4 "Arthritis in Back"
label define _yQK3y7qzd6 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx20a4 _yQK3y7qzd6

label variable mdhx20a5 "Arthritis in Neck"
label define _jvGHh0TZoI 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx20a5 _jvGHh0TZoI

label variable mdhx20a6 "Arthritis in Feet"
label define _E7C3rk1KJi 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx20a6 _E7C3rk1KJi

label variable mdhx20a7 "Arthritis in Shoulders"
label define _sM2Mu094OO 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx20a7 _sM2Mu094OO

label variable mdhx21 "Has doctor ever said you had spinal stenosis"
label define _kYlwQcpsZF 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx21 _kYlwQcpsZF

label variable mdhx22 "Has doctor ever said you had osteoporosis"
label define _JIxiGMNPiM 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx22 _JIxiGMNPiM

label variable mdhx22a "Are you currently following lifestyle recommendations or taking over the counter calcium or Vit D supplements to manage your osteoporosis"
label define _twVbUHBkyf 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx22a _twVbUHBkyf

label variable mdhx23 "Has doctor ever said you had connective tissue disease"
label define _n7ng0paI81 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx23 _n7ng0paI81

label variable mdhx24 "Has doctor ever said you had Parkinsons disease"
label define _NyVK8ETOyV 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx24 _NyVK8ETOyV

label variable mdhx25 "Has doctor ever said you had Intermittent Claudication or PAD"
label define _yuRZgmaXKl 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx25 _yuRZgmaXKl

label variable mdhx26 "Has doctor ever said you had varicose veins damage to the veins in lower legs phlebitis or venous insufficiency"
label define _cneqp9H1i3 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx26 _cneqp9H1i3

label variable mdhx27a "Has doctor ever said you had Cataracts"
label define _pviZ7dWV59 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx27a _pviZ7dWV59

label variable mdhx27aa "Which eye Cataracts"
label define _MC2PZRrmiL 1 "Right eye only" 2 "Left eye only" 3 "Both eyes"
label values mdhx27aa _MC2PZRrmiL

label variable mdhx27b "If had cataracts in both eyes was this at the same time"
label define _unafTcYFxW 0 "No" 1 "Yes" 8 "Don't know"
label values mdhx27b _unafTcYFxW

label variable mdhx27f "Have you ever had cataract surgery"
label define _RIY0Biz0tp 0 "No" 1 "Yes" 8 "Don't know"
label values mdhx27f _RIY0Biz0tp

label variable mdhx27g "Which eye cataract surgery"
label define _qK1E5G0x1s 1 "Right eye only" 2 "Left eye only" 3 "Both eyes"
label values mdhx27g _qK1E5G0x1s

label variable mdhx27c "Has doctor ever said you had Glaucoma"
label define _E6lUmNz8j4 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx27c _E6lUmNz8j4

label variable mdhx27cc "Which eye Glaucoma"
label define _HTUIOYkO0e 1 "Right eye only" 2 "Left eye only" 3 "Both eyes"
label values mdhx27cc _HTUIOYkO0e

label variable mdhx27d "Has doctor ever said you had problems with your retina retinopathy or retinal changes"
label define _MAD0Xr6XHj 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx27d _MAD0Xr6XHj

label variable mdhx27dd "Which eye Retina problems"
label define _CQOsAVM2C3 1 "Right eye only" 2 "Left eye only" 3 "Both eyes"
label values mdhx27dd _CQOsAVM2C3

label variable mdhx27e "Has doctor ever said you had Maculardegeneration"
label define _fK7K0yogXp 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx27e _fK7K0yogXp

label variable mdhx27ee "Which eye Maculardegeneration"
label define _TMSAA7Zq9q 1 "Right eye only" 2 "Left eye only" 3 "Both eyes"
label values mdhx27ee _TMSAA7Zq9q

label variable mdhx27i "Ever been diagnosed by a clinician as having dry eye syndrome"
label define _HFKSYtzs3i 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx27i _HFKSYtzs3i

label variable mdhx27j "How often do your eyes feel dry"
label define _toAsby684f 0 "Never" 1 "Sometimes" 3 "Often" 4 "Constantly" 7 "Refused" 8 "Don't know"
label values mdhx27j _toAsby684f

label variable mdhx27k "How often do your eyes feel irritated"
label define _Nvxs2mF3uY 0 "Never" 1 "Sometimes" 3 "Often" 4 "Constantly" 7 "Refused" 8 "Don't know"
label values mdhx27k _Nvxs2mF3uY

label variable mdhx28 "Has doctor ever said you had a stomach gastric or duodenal ulcer"
label define _yUpyf4qTJD 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx28 _yUpyf4qTJD

label variable mdhx28a "Do you still have a stomach gastric or duodenal ulcer"
label define _NYUouYkNQs 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx28a _NYUouYkNQs

label variable mdhx29 "Has doctor ever said you had depression"
label define _q0OBkoedUw 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx29 _q0OBkoedUw

label variable mdhx29a "Have you ever received treatment medications and or counseling for depression"
label define _mB0YgXgmQL 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx29a _mB0YgXgmQL

label variable cvrs1 "Have you ever had pain or discomfort in your chest"
label define _CjMF2T07pe 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs1 _CjMF2T07pe

label variable cvrs1a "Have you had any pain or discomfort in your chest since your last BLSA visit or within 2 years if first visit"
label define _bKd4JWCGKx 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs1a _bKd4JWCGKx

label variable cvrs1b "Do you get it when you walk uphill or hurry"
label define _IwMD9Raf2N 0 "No" 1 "Yes" 2 "Never hurry/walk uphill" 7 "Refused" 8 "Do not know"
label values cvrs1b _IwMD9Raf2N

label variable cvrs1c "Do you get it when you walk at an ordinary pace on a level surface"
label define _XZn5mkIYGc 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs1c _XZn5mkIYGc

label variable cvrs1d "What do you do if you get any pain or discomfort in your chest while walking"
label define _Me5Mel9gjT 1 "Stop/slow down" 2 "Take nitroglycerine" 3 "Continue at same pace" 7 "Refused" 8 "Don't know"
label values cvrs1d _Me5Mel9gjT

label variable cvrs1e "If you stand still is the pain relieved or not relieved"
label define _aMIkADzzWW 1 "Relieved" 2 "Not relieved" 7 " Don't know" 8 "Refused"
label values cvrs1e _aMIkADzzWW

label variable cvrs1f "How soon is chest pain relieved"
label define _IQhPDFXfrQ 1 "10 minutes or less" 2 "More than 10 minutes" 8 " Don't know"
label values cvrs1f _IQhPDFXfrQ

label variable cvrs1g1 "Chest Pain location Middle or upper sternum"
label define _hjRAkSe5lv 0 "No" 1 "Yes" 8 "Don't know"
label values cvrs1g1 _hjRAkSe5lv

label variable cvrs1g2 "Chest Pain location Lower sternum"
label define _XFPvtIs85C 0 "No" 1 "Yes" 8 "Don't know"
label values cvrs1g2 _XFPvtIs85C

label variable cvrs1g3 "Chest Pain location Left anterior chest"
label define _tRMCKxcmW3 0 "No" 1 "Yes" 8 "Don't know"
label values cvrs1g3 _tRMCKxcmW3

label variable cvrs1g4 "Chest Pain location Left arm"
label define _LFxApedMgm 0 "No" 1 "Yes" 8 "Don't know"
label values cvrs1g4 _LFxApedMgm

label variable cvrs1g5 "Chest Pain location anywhere else"
label define _uFMUMscDxZ 0 "No" 1 "Yes" 8 "Don't know"
label values cvrs1g5 _uFMUMscDxZ

label variable cvrs1h "Chest Pain when was your most recent episode"
label define _nqZIU0ffe9 1 "Past month" 2 " Past 3 months" 3 "Past 6 months" 4 "Past 12 months" 5 "Over 12 months ago" 8 "Don't know"
label values cvrs1h _nqZIU0ffe9

label variable cvrs1i "Have you had severe pain across the front of your chest lasting half an hr or more since your last BLSA visit or within past 2 years"
label define _Ze258zL5Z0 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs1i _Ze258zL5Z0

label variable cvrs1j "What did your doctor say it was"
label define _uTofV6ZPGZ 0 "Did not see doctor" 1 "Angina" 2 "Heart attack" 3 "Gas/Indigestion" 7 "Refused" 8 "Don't know"
label values cvrs1j _uTofV6ZPGZ

label variable cvrs2 "Do you get pain or discomfort in either leg when you walk"
label define _b0ZWwbmqsY 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs2 _b0ZWwbmqsY

label variable cvrs2a "Does the leg pain begin when you are standing still or sitting"
label define _N3xnxnP63l 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs2a _N3xnxnP63l

label variable cvrs2b "Do you get this pain in your calf"
label define _o18TOENXkX 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs2b _o18TOENXkX

label variable cvrs2c "Do you get this pain if you walk uphill or hurry"
label define _exOpfJsQFp 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs2c _exOpfJsQFp

label variable cvrs2d "Do you get this pain when you walk at an ordinary pace on a level surface"
label define _pWmsDK2etx 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs2d _pWmsDK2etx

label variable cvrs2e "Does this leg pain ever disappear while you are still walking"
label define _yWH5r0R0kj 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs2e _yWH5r0R0kj

label variable cvrs2f "What happens to the leg pain if you stop walking and stand still"
label define _w4piUHUS7n 1 "Disappear in 10 minutes or less" 2 "Continue for more than 10 minuters" 7 "Refused" 8 "Don't know"
label values cvrs2f _w4piUHUS7n

label variable cvrs3 "Do you get shortness of breath when you walk uphill hurry or climb single flight of stairs"
label define _ErILeyY2f5 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs3 _ErILeyY2f5

label variable cvrs3a "Do you get shortness of breath when walking at your own pace on a level surface"
label define _LAFtp7J8JS 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs3a _LAFtp7J8JS

label variable cvrs3b "Do you get shortness of breath when lying down flat"
label define _uQXEWs70fU 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs3b _uQXEWs70fU

label variable cvrs4 "In the past 12 months were there times when you had a cough almost every morning"
label define _HNISlnoqKZ 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs4 _HNISlnoqKZ

label variable cvrs4a "Did you have this morning cough for a total of 3 mo or more out of the last 12 months"
label define _Njum3kNiGI 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs4a _Njum3kNiGI

label variable cvrs5 "In the past 12 months have you had wheezing or whistling in your chest at any time"
label define _dBrpOC1TO6 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs5 _dBrpOC1TO6

label variable cvrs5a "Does your chest sound wheezy or whistling most days or nights"
label define _m3ENl9Scxg 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs5a _m3ENl9Scxg

label variable cvrs5b "Have you required medicine or treatment for any episodes of wheezing or whistling"
label define _iaFZ7n4552 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs5b _iaFZ7n4552

label variable cvrs6 "In the past 12 months have you had to sleep on 2 or more pillows to help you breathe"
label define _s4QF5AUSlv 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs6 _s4QF5AUSlv

label variable cvrs7 "In the past 12 months have you been awakened at night by trouble breathing"
label define _xS4QfR4pZu 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs7 _xS4QfR4pZu

label variable cvrs8 "In the past 12 months have you had swelling of your feet or ankles"
label define _akf2ef7x9G 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs8 _akf2ef7x9G

label variable cvrs8a "Does this swelling tend to come on during the day and go down overnight"
label define _L7SJH6gifr 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs8a _L7SJH6gifr

label variable cvrs9 "Since your last BLSA visit or within the past 2 years have you had any sudden loss or changes in speech"
label define _HbAldayr3m 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs9 _HbAldayr3m

label variable cvrs9b "Sudden loss or changes in speech how long did longest episode last"
label define _JGr8BCEajc 1 "Less than 1 hour" 2 "At least 1 but < 24hr" 3 " 24 or more hours" 7 "Refused" 8 " Don't know"
label values cvrs9b _JGr8BCEajc

label variable cvrs10 "Since your last BLSA visit or within the past 2 years have you had any sudden loss of vision complete or partial"
label define _rFzgdrTmuN 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs10 _rFzgdrTmuN

label variable cvrs10b "Sudden loss of vision how long did the worst episode last"
label define _iOfxRGLffC 1 "Less than 1 hour" 2 "At least 1 but < 24hr" 3 " 24 or more hours" 7 "Refused" 8 " Don't know"
label values cvrs10b _iOfxRGLffC

label variable cvrs11 "Since your last BLSA visit or within the past 2 years have you had any sudden spells of double vision"
label define _cDAwnHNCRq 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs11 _cDAwnHNCRq

label variable cvrs11b "Sudden spells of double vision how long did the worst episode last"
label define _drEAyqzBig 1 "Less than 1 hour" 2 "At least 1 but < 24hr" 3 " 24 or more hours" 7 "Refused" 8 " Don't know"
label values cvrs11b _drEAyqzBig

label variable cvrs12 "Since your last BLSA visit or within the past 2 years have you had any sudden numbness tingling or loss of feeling on one side of your body"
label define _QGWSl1Iuxk 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs12 _QGWSl1Iuxk

label variable cvrs12b "Numbness tingling loss of feeling how long did the worst episode last"
label define _QHORtr0CJH 1 "Less than 1 hour" 2 "At least 1 but < 24hr" 3 " 24 or more hours" 7 "Refused" 8 " Don't know"
label values cvrs12b _QHORtr0CJH

label variable cvrs12c "Numbness tingling loss of feeling which side affected"
label define _wcHDSK0Vey 1 "Right side only" 2 "Left side only" 3 "Both sides" 7 "Refused" 8 "Don't know"
label values cvrs12c _wcHDSK0Vey

label variable cvrs13 "Since your last BLSA visit or within the past 2 years have you had any sudden paralysis or weakness on one side of your body"
label define _SLHhJeWDCH 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs13 _SLHhJeWDCH

label variable cvrs13b "Paralysis or weakness how long did the worst episode last"
label define _tp94kBki27 1 "Less than 1 hour" 2 "At least 1 but < 24hr" 3 " 24 or more hours" 7 "Refused" 8 " Don't know"
label values cvrs13b _tp94kBki27

label variable cvrs13c "Paralysis or weakness which side affected"
label define _zXaqmMGYCu 1 "Right side only" 2 "Left side only" 3 "Both sides" 7 "Refused" 8 "Don't know"
label values cvrs13c _zXaqmMGYCu

label variable cvrs14 "Since your last BLSA visit or within the past 2 years have you had any sudden spells of dizziness loss of balance or sensation of spinning"
label define _baim6bllZk 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values cvrs14 _baim6bllZk

label variable cvrs14a "During this time how many spells of dizziness loss of balance have you had"
label define _lKrlzCMnbk 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6 or more" 7 "Refused" 8 "Don't know"
label values cvrs14a _lKrlzCMnbk

label variable cvrs14b "Dizziness loss of balance how long did the longest episode last"
label define _j2pMiOB37s 1 "Less than 1 hour" 2 "At least 1 but < 24hr" 3 " 24 or more hours" 7 "Refused" 8 " Don't know"
label values cvrs14b _j2pMiOB37s

label variable rhx1 "Have you ever been pregnant"
label define _UuMCfKlQ3q 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values rhx1 _UuMCfKlQ3q

label variable rhx1a "How many pregnancies resulted in the birth of a live child"

label variable rhx1b "How old were you when your first child was born"

label variable rhx2 "Have you had a hysterectomy"
label define _Khl9jbMGoD 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values rhx2 _Khl9jbMGoD

label variable rhx2a "How old were you when you had hysterectomy"

label variable rhx3 "Have you had one or both overies removed"
label define _H7D8YWly0P 0 "No" 1 "One" 2 "Both" 7 "Refused" 8 "Don't know"
label values rhx3 _H7D8YWly0P

label variable rhx3a "Age first ovary removed"

label variable rhx3b "Agesecond ovary removed"

label variable rhx4 "Have you ever taken birth control pills"
label define _vUoVtKE6mc 0 "No" 1 "Yes in the past" 2 "Yes currently" 7 "Refused" 8 "Don't know"
label values rhx4 _vUoVtKE6mc

label variable rhx5 "Have you gone through menopause"
label define _H6PKfaWBdj 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values rhx5 _H6PKfaWBdj

label variable rhx5a "How old were you when you went through menopause"

label variable rhx5b "How many months ago was your last menstrual period"

label variable rhx5c "How many periods have you had in the last 12 months"

label variable rhx6 "Ever taken estrogen as hormone replacement therapy"
label define _YqXrbTEiGp 0 "No" 1 "Yes currently" 2 "Yes in the past" 3 "Pre-/perimenopausal" 7 "Refused" 8 "Don't know"
label values rhx6 _YqXrbTEiGp

label variable rhx6a "How old were you when you started taking estrogen"

label variable rhx6b "How many years did you take have you been taking estrogen"

label variable rhx6c1 "Take estrogen pills"
label define _Zl46rTMrsd 0 "No" 1 "Yes"
label values rhx6c1 _Zl46rTMrsd

label variable rhx6c2 "Use estrogen patch"
label define _vowyIsITpD 0 "No" 1 "Yes"
label values rhx6c2 _vowyIsITpD

label variable rhx6c3 "Use estrogen cream"
label define _O9r36wQdAJ 0 "No" 1 "Yes"
label values rhx6c3 _O9r36wQdAJ

label variable rhx7 "Ever taken progesterone alone or along with estrogen as hormone replacement therapy"
label define _NMxHPNVcwx 0 "No" 1 "Yes currently" 2 "Yes in the past" 3 "Pre-/perimenopausal" 7 "Refused" 8 "Don't know"
label values rhx7 _NMxHPNVcwx

label variable rhx7a "How many years did you take have you been taking progesterone"

label variable pros1 "Ever told you had BPH benign prostatic hyperplasia or enlarged prostate"
label define _frJ11bJnQP 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values pros1 _frJ11bJnQP

label variable pros1a "Have you ever had surgery for an enlarged prostate"
label define _ZxoMZrKo3B 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values pros1a _ZxoMZrKo3B

label variable pros2 "Have you experienced any pain or discomfort in the perineum testicles tip of penis pubic or bladder area"
label define _e1wu7Dth4k 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values pros2 _e1wu7Dth4k

label variable pros2a1 "Area have pain or discomfort perineum"
label define _Z3LbHd7ViJ 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values pros2a1 _Z3LbHd7ViJ

label variable pros2a2 "Area have pain or discomfort testicles"
label define _x5ovuDQ2Mc 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values pros2a2 _x5ovuDQ2Mc

label variable pros2a3 "Area have pain or discomfort tip of penis"
label define _ONiJfROIXe 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values pros2a3 _ONiJfROIXe

label variable pros2a4 "Area have pain or discomfort bladder area"
label define _VJIjUn8kaf 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values pros2a4 _VJIjUn8kaf

label variable pros2a5 "Area have pain or discomfort during urination"
label define _CMSnoqERc2 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values pros2a5 _CMSnoqERc2

label variable pros2a6 "Area have pain or discomfort during or after sexual climax"
label define _LemGwVw7hB 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values pros2a6 _LemGwVw7hB

label variable pros2b "In the past month how often have you had pain or discomfort"
label define _nesSvrY9rK 0 "Never" 1 "Rarely" 2 "Sometimes" 3 "Often" 4 "Usually" 5 "Always" 7 "Refused" 8 "Don't know"
label values pros2b _nesSvrY9rK

label variable pros2c "Describe average pain or discomfort in any of these areas in the past month"
label define _cInaCeiQWE 0 "0 no pain" 1 "1" 10 "10 pain as bad as you can imagine" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 77 "Refused" 8 "8" 88 "Don't know" 9 "9"
label values pros2c _cInaCeiQWE

label variable pros3 "In the past 6 months have you been sexually active"
label define _wrn7IxVmKA 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values pros3 _wrn7IxVmKA

label variable pros3a "In the past 6 months have you used any medicatins or devices to help you get and keep an erection"
label define _g47xRRsCcJ 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values pros3a _g47xRRsCcJ

label variable pros4 "How would you rate your ability Without medication if used to get and keep an erection"
label define _cmiDDlsXC0 1 "Very low" 2 "Low" 3 "Moderate" 4 "High" 5 "Very high" 7 "Refused" 8 "Don't know"
label values pros4 _cmiDDlsXC0

label variable up1 "During the past month how often have you had a sensation of not emptying your bladder completely"
label define _ZmT36s0Ssv 0 "Not at all" 1 "Less than 1 time in 5" 2 "Less than half the time" 3 " About half the time" 4 " More than half the time" 5 " Almost always" 7 "Refused" 8 "Don't know"
label values up1 _ZmT36s0Ssv

label variable up2 "During the past month how often have you had to urinate less than 2 hours after you finished urinating"
label define _LSkiQwOLBN 0 "Not at all" 1 "Less than 1 time in 5" 2 "Less than half the time" 3 " About half the time" 4 " More than half the time" 5 " Almost always" 7 "Refused" 8 "Don't know"
label values up2 _LSkiQwOLBN

label variable up3 "During the past month how often have you found you stopped and started again several times when you urinate"
label define _pnZi9qbA82 0 "Not at all" 1 "Less than 1 time in 5" 2 "Less than half the time" 3 " About half the time" 4 " More than half the time" 5 " Almost always" 7 "Refused" 8 "Don't know"
label values up3 _pnZi9qbA82

label variable up4 "During the past month how often have you found it difficult to postpone urination"
label define _v2HuWSXXk4 0 "Not at all" 1 "Less than 1 time in 5" 2 "Less than half the time" 3 " About half the time" 4 " More than half the time" 5 " Almost always" 7 "Refused" 8 "Don't know"
label values up4 _v2HuWSXXk4

label variable up5 "During the past month how often have you had a weak urinary stream"
label define _p7WsC9u9lc 0 "Not at all" 1 "Less than 1 time in 5" 2 "Less than half the time" 3 " About half the time" 4 " More than half the time" 5 " Almost always" 7 "Refused" 8 "Don't know"
label values up5 _p7WsC9u9lc

label variable up6 "During the past month how often have you had to push or strain to begin urinatin"
label define _kbClOg6R2D 0 "Not at all" 1 "Less than 1 time in 5" 2 "Less than half the time" 3 " About half the time" 4 " More than half the time" 5 " Almost always" 7 "Refused" 8 "Don't know"
label values up6 _kbClOg6R2D

label variable up7 "During the past month how many times did you typically get up at night to urinate"
label define _zlliEOdjlZ 0 "None" 1 "One time" 2 "Two times" 3 "Three times" 4 "Four times" 5 "Five or more times" 7 "Refused" 8 "Don't know"
label values up7 _zlliEOdjlZ

label variable up8 "During the past month how much have your urinary symptoms kept you from doing the kings of things you usually do"
label define _fpdB7uQ5V7 0 "None" 1 "Only a little" 3 "Some" 4 "A lot" 7 "Refused" 8 "Don't know"
label values up8 _fpdB7uQ5V7

label variable up9 "If you were to spend the rest of your life with your symptoms just the way they have been over the past month how would you feel"
label define _jRJbA9rHFQ 0 "Very satisfied" 1 "Mostly satisfied" 2 "Mixed" 3 "Mostly dissatisfied" 4 "Very dissatisfied" 7 "Refused" 8 "Don't know"
label values up9 _jRJbA9rHFQ

label variable up10 "Past week did you leak even a small amount of urine"
label define _wTnFKU9DuB 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values up10 _wTnFKU9DuB

label variable up10a "Past week how many times did you leak urine when coughing lifting or exercising"

label variable up10b "Past week how many times had sense of urgency and could not get to a toilet fast enough"

label variable up10c "Past week how many times did you leak urine unrelated to an activity or urge to urinate"

label variable up11 "Past 12 months did you leak even a small amount of urine"
label define _mmyQchUeDt 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values up11 _mmyQchUeDt

label variable up11a "In the past 12 months how often have you leaked urine"
label define _eErzd14Wb2 0 "Less than once per month" 1 "One or more times per month" 2 "One or more times per week" 3 "Every day" 7 "Refused" 8 "Don't know"
label values up11a _eErzd14Wb2

label variable up11b "In the past 12 months when did you leak urine"
label define _o3I5edFHbi 1 "With an activity like coughing lifting or exercising" 2 "When you have the urge to urinate but can't get to a toilet fast enough" 3 "You leak urine unrelated to an activity or urge" 4 "Both with activy and inability to get to toilet fast enough" 7 "Refused" 8 "Don't know"
label values up11b _o3I5edFHbi

label variable up12 "In the past 12 months did you ever lose control of normal bowel movements"
label define _UnVki69OTT 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values up12 _UnVki69OTT

label variable up12a "In the past 12 months how often have you lost control of normal bowel movements"
label define _MdItQQosCZ 0 "Less than once per month" 1 "One or more times per month" 2 "One or more times per week" 3 "Every day" 7 "Refused" 8 "Don't know"
label values up12a _MdItQQosCZ

label variable mchx17a "If yes to high cholesterol are you currently taking prescribed medications for BP"
label define _mffCPHeQR6 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mchx17a _mffCPHeQR6

label variable coviddx "Has a doctor ever diagnosed you with COVID-19"
label define _o06Cv2JrbJ 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values coviddx _o06Cv2JrbJ

label variable covidvac "Did you receive a vaccination for COVID-19"
label define _Fn5hSzag8z 0 "No" 1 "Yes"
label values covidvac _Fn5hSzag8z

label variable nocovidvac "Do you plan to get a COVID-19 vaccine"
label define _mQNr1peDRz 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values nocovidvac _mQNr1peDRz

label variable novaccom "No covid vaccind comment"

label variable whatvac "What vaccine did you receive"
label define _QkM6N55Ln3 1 "Pfizer" 2 "Moderna" 3 "Johnson and Johnson" 4 "Other"
label values whatvac _QkM6N55Ln3

label variable whenvac1 "What dates were you vaccinated First date"

// Generate 'date version' of the 'whenvac1' variable
gen _whenvac1 = date(whenvac1, "YMD")
format _whenvac1 %td

label variable whenvac2 "What dates were you vaccinated Second date if applicable"

// Generate 'date version' of the 'whenvac2' variable
gen _whenvac2 = date(whenvac2, "YMD")
format _whenvac2 %td

label variable covidcomment "COVID comments"

label variable cvbooster "Did you receive a COVID-19 Booster"
label define _rD3vGix6aS 0 "No" 1 "Yes"
label values cvbooster _rD3vGix6aS

label variable booster1 "What vaccine booster did you receive 1"
label define _b6px9DKzq1 1 "Pfizer" 2 "Moderna" 3 "Johnson and Johnson" 4 " Other"
label values booster1 _b6px9DKzq1

label variable whenbooster1 "What date did you receive Booster 1"

// Generate 'date version' of the 'whenbooster1' variable
gen _whenbooster1 = date(whenbooster1, "YMD")
format _whenbooster1 %td

label variable booster2 "What vaccine booster did you receive 2"
label define _IKBiZubOuD 1 "Pfizer" 2 "Moderna" 3 "Johnson and Johnson" 4 " Other"
label values booster2 _IKBiZubOuD

label variable whenbooster2 "What dates were you vaccinated First date"

// Generate 'date version' of the 'whenbooster2' variable
gen _whenbooster2 = date(whenbooster2, "YMD")
format _whenbooster2 %td

label variable boostercom "Booster comment"

label variable auto_id_medint "Unique Teleform Number"

label variable mdhx17a "If yes to high cholesterol are you currently taking prescribed medications for BP"
label define _LEPAqbkMYs 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values mdhx17a _LEPAqbkMYs

label variable cvrs9a "How many episodes of loss or change in speach did you have"
label define _B6kvBuz2PA 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6 or more" 7 "Refused" 8 "Don't know"
label values cvrs9a _B6kvBuz2PA

label variable cvrs10a "How many episodes of loss of vision have you had"
label define _YFVm2lsX6z 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6 or more" 7 "Refused" 8 "Don't know"
label values cvrs10a _YFVm2lsX6z

label variable cvrs10c "Worst episode which eye affected"
label define _LEqJluO9jn 1 "Right eye only" 2 "Left eye only" 3 "Both eyes" 7 "Refused" 8 "Don't know"
label values cvrs10c _LEqJluO9jn

label variable cvrs11a "How many episodes of double vision have you had"
label define _kpSThjT3Q4 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6 or more" 7 "Refused" 8 "Don't know"
label values cvrs11a _kpSThjT3Q4

label variable cvrs12a "How many episodes of numbness tingling have you had"
label define _UY0RnxfCtT 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6 or more" 7 "Refused" 8 "Don't know"
label values cvrs12a _UY0RnxfCtT

label variable cvrs12d "Did abnormal sensation start in one part of body and spread to another"
label define _FVptpHbz5a 1 "Spread" 2 "Stayed" 7 "Refused" 8 "Don't know"
label values cvrs12d _FVptpHbz5a

label variable cvrs13a "How many episodes of paralysis or weakness have you had"
label define _Ex6VoHIrKL 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6 or more" 7 "Refused" 8 "Don't know"
label values cvrs13a _Ex6VoHIrKL

label variable cvrs13d "Did paralysis weakness start in one part of body and spread to another"
label define _S00fdU76pd 1 "Spread" 2 "Stayed" 7 "Refused" 8 "Don't know"
label values cvrs13d _S00fdU76pd

label variable rhx4a "How many yrs use birth control"

label variable dhx01 "Lifetime had 4 wks or longer when daily felt sad empty or depressed"
label define _CRKaIIGjUN 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx01 _CRKaIIGjUN

label variable dhx02 "Lifetime had 4 wks or longer when you lost interest in most things"
label define _z4IdvEOF5N 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx02 _z4IdvEOF5N

label variable dhx03 "during period 4wks when sad did you lack energy or feel tired all the time"
label define _OOu1sqlg1f 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx03 _OOu1sqlg1f

label variable dhx04 "Did you have less appetite than usual almost every day"
label define _w6CahJhMJg 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx04 _w6CahJhMJg

label variable dhx05 "Did you lose weight without trying to as much as 2 lbs a wk for several weeks"
label define _bmLvCiK7Ig 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx05 _bmLvCiK7Ig

label variable dhx06 "Did you have a much larger appetite than is usual for you almost every day for 2 wks or more"
label define _CPxOZeH9Yj 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx06 _CPxOZeH9Yj

label variable dhx07 "Did increased appetite cause weight gain of 2 lbs a wk for several wks"
label define _H0ZAt7pZkB 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx07 _H0ZAt7pZkB

label variable dhx08 "Have trouble sleeping almost every night for 4 wks or more"
label define _DSpa3bgKYX 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx08 _DSpa3bgKYX

label variable dhx09 "Were you sleeping too much almost every day"
label define _aYADh4m2xX 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx09 _aYADh4m2xX

label variable dhx10 "Were you talking or moving more slowly than is normal almost daily for 2 wks"
label define _cd6FkLYM5l 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx10 _cd6FkLYM5l

label variable dhx11 "Were you unable to sit still all the time"
label define _CvBmRYh4rC 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx11 _CvBmRYh4rC

label variable dhx12 "Did you feel worthless or guilty nearly every day"
label define _q1y91FnjNS 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx12 _q1y91FnjNS

label variable dhx13 "Did you feel you were not as good as other people"
label define _uYVMW6uQgF 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx13 _uYVMW6uQgF

label variable dhx14 "Have little self confidence that you wouldn't try to have your say about anything"
label define _Sq5Tqw2xO3 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx14 _Sq5Tqw2xO3

label variable dhx15 "Have more trouble concentrating than normal"
label define _iAmjJ1aBBI 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx15 _iAmjJ1aBBI

label variable dhx16 "Did you thoughts come much slower than usual"
label define _twGbIBYyoh 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx16 _twGbIBYyoh

label variable dhx17 "Unable to makeup your mind"
label define _hRj7lLCa6a 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx17 _hRj7lLCa6a

label variable dhx18 "Did you think a lot about death"
label define _FBCQ5KqPUL 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx18 _FBCQ5KqPUL

label variable dhx19 "Feel so low you thought a lot about committing suicide"
label define _ffut7pFOTT 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx19 _ffut7pFOTT

label variable dhx20 "Did you attempt suicide"
label define _X02dxsuPFt 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx20 _X02dxsuPFt

label variable dhx21 "Had 2 yrs or more in your life when you felt depressed or sad most days"
label define _ZFFQhkPsDb 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx21 _ZFFQhkPsDb

label variable dhx22 "Did any period like that ever last 2 yrs without an interruption of 2 full months when you felt ok"
label define _uHZh3GnEro 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx22 _uHZh3GnEro

label variable dhx23 "Have trouble sleeping"
label define _C2qulJb6Qn 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx23 _C2qulJb6Qn

label variable dhx24 "Sleep too much"
label define _FwTVOjBlq5 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx24 _FwTVOjBlq5

label variable dhx25 "Very little appetite for food"
label define _ZmBCztPPJD 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx25 _ZmBCztPPJD

label variable dhx26 "Eat much more than usual"
label define _IbMwiuGmUS 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx26 _IbMwiuGmUS

label variable dhx27 "Lack energy feel tired"
label define _cLMIh2IJFF 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx27 _cLMIh2IJFF

label variable dhx28 "Feel you were not as good as other people"
label define _WD5FP20prG 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx28 _WD5FP20prG

label variable dhx29 "Little self confidence"
label define _xtoEs8bpxb 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx29 _xtoEs8bpxb

label variable dhx30 "A lot more trouble concentrating"
label define _bpKnZsTnBE 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx30 _bpKnZsTnBE

label variable dhx31 "Unable to make up your mind"
label define _Nw7HlG1Jme 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx31 _Nw7HlG1Jme

label variable dhx32 "Were you often in tears"
label define _R7jlLUxhqD 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx32 _R7jlLUxhqD

label variable dhx33 "Feel hopeless"
label define _ZHj9AniuY7 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx33 _ZHj9AniuY7

label variable dhx34 "Feel you could not cope with your everyday life and responsibilities"
label define _DRuvkwg52M 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx34 _DRuvkwg52M

label variable dhx35 "Feel that your life had always been bad and wasn't going to get any better"
label define _YJDQ9F0Dov 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx35 _YJDQ9F0Dov

label variable dhx36 "No longer wanted to spend time with friends and relatives"
label define _XX7diZrcg7 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx36 _XX7diZrcg7

label variable dhx37 "Less talkative than is usual"
label define _wTMrMOe1rS 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx37 _wTMrMOe1rS

label variable dhx38 "Lose interest in most things"
label define _Xtnq8ygM1s 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx38 _Xtnq8ygM1s

label variable dhx39 "Interest in sex a lot less than usual"
label define _luIO13SdhR 0 "No" 1 "Yes" 7 "Refused" 8 "Do not know"
label values dhx39 _luIO13SdhR

label variable crf_parent_name_medint "CRF Parent Name"

label variable item_group_repeat_medint "Item Group Repeate"

label variable mdh19a19e_1 "Type of treatment for cancers : Chemotherapy (Checkbox Indicator)"

label variable mdh19a19e_2 "Type of treatment for cancers : Radiation (Checkbox Indicator)"

label variable mdh19a19e_3 "Type of treatment for cancers : Surgery (Checkbox Indicator)"

label variable study_name_medint "Study Name"

