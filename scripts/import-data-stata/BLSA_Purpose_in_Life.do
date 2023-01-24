clear
import delimited "../data-csv/BLSA_Purpose_in_Life.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_purinlif "CRF Version"

label variable date_purinlif "Visit Date"

// Generate 'date version' of the 'date_purinlif' variable
gen _date_purinlif = date(date_purinlif, "YMD")
format _date_purinlif %td

label variable q1 "I feel good when I think of what I've done in the past and what I hope to do in the future"
label define _GEc1RHwiUQ 1 "Strongly disagree" 2 "Disagree" 3 "Neutral" 4 "Agree" 5 "Strongly agree"
label values q1 _GEc1RHwiUQ

label variable q2 "I live life one day at a time and don't really think about the future"
label define _pTf4MCNJ0D 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree"
label values q2 _pTf4MCNJ0D

label variable q3 "I tend to focus on the present because the future nearly always brings me problems"
label define _HwCliaspkt 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree"
label values q3 _HwCliaspkt

label variable q4 "I have a sense of direction and purpose in life"
label define _V3jmMkJ18u 1 "Strongly disagree" 2 "Disagree" 3 "Neutral" 4 "Agree" 5 "Strongly agree"
label values q4 _V3jmMkJ18u

label variable q5 "My daily activities often seem trivial and unimportant to me"
label define _a0NfatjlgQ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree"
label values q5 _a0NfatjlgQ

label variable q6 "I used to set goals for myself but that now seems like a waste of time"
label define _sDiUZZWzzI 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree"
label values q6 _sDiUZZWzzI

label variable q7 "I enjoy making plans for the future and working them to a reality"
label define _KiA1bZxd9p 1 "Strongly disagree" 2 "Disagree" 3 "Neutral" 4 "Agree" 5 "Strongly agree"
label values q7 _KiA1bZxd9p

label variable q8 "I am an active person in carrying out the plans I set for myself"
label define _k1bXPSSU3E 1 "Strongly disagree" 2 "Disagree" 3 "Neutral" 4 "Agree" 5 "Strongly agree"
label values q8 _k1bXPSSU3E

label variable q9 "Some people wander aimlessly through life but I am not one of them"
label define _v9msOeofNk 1 "Strongly disagree" 2 "Disagree" 3 "Neutral" 4 "Agree" 5 "Strongly agree"
label values q9 _v9msOeofNk

label variable crf_parent_name_purinlif "CRF Parent Name"

label variable study_name_purinlif "Study Name"

